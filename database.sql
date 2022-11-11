-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 09:40 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talashcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_items`
--

CREATE TABLE `project_items` (
  `pitem_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `item_title` varchar(150) DEFAULT NULL,
  `item_qty` varchar(150) DEFAULT NULL,
  `item_unit` varchar(150) DEFAULT NULL,
  `item_desc` varchar(150) DEFAULT NULL,
  `item_rate` varchar(150) DEFAULT NULL,
  `item_tax` varchar(150) DEFAULT NULL,
  `item_amount` varchar(150) DEFAULT NULL,
  `item_takhfif` varchar(150) DEFAULT NULL,
  `item_ext` varchar(150) DEFAULT NULL,
  `item_code` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity_log`
--

CREATE TABLE `tblactivity_log` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblactivity_log`
--

INSERT INTO `tblactivity_log` (`id`, `description`, `date`, `staffid`) VALUES
(1, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-21 15:13:19', 'mohammadreza zamani'),
(2, 'Non Existing User Tried to Login [Email: talashcrm@gmail.com, Is Staff Member: No, IP: ::1]', '2022-08-21 15:16:55', 'mohammadreza zamani'),
(3, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-21 15:22:27', 'mohammadreza zamani'),
(4, 'Non Existing User Tried to Login [Email: talashcrm@gmail.com, Is Staff Member: No, IP: ::1]', '2022-08-21 15:28:46', NULL),
(5, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-21 15:28:48', 'mohammadreza zamani'),
(6, 'Non Existing User Tried to Login [Email: mdrazamani@gmail.com, Is Staff Member: Yes, IP: ::1]', '2022-08-21 15:55:44', NULL),
(7, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-21 15:55:48', 'mohammadreza zamani'),
(8, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-08-21 16:04:31', 'mohammadreza zamani'),
(9, 'Non Existing User Tried to Login [Email: talashcrm@gmail.com, Is Staff Member: No, IP: ::1]', '2022-08-21 16:36:59', 'mohammadreza zamani'),
(10, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-21 17:59:30', 'mohammadreza zamani'),
(11, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-23 12:26:01', 'mohammadreza zamani'),
(12, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-23 12:33:03', 'mohammadreza zamani'),
(13, 'New Department Added [بازرگانی داخلی, ID: 1]', '2022-08-23 14:19:10', 'mohammadreza zamani'),
(14, 'New Staff Member Added [ID: 2, الناز زمانی غرقه]', '2022-08-23 14:23:05', 'mohammadreza zamani'),
(15, 'Staff Member Updated [ID: 2, الناز زمانی غرقه]', '2022-08-23 14:29:47', 'mohammadreza zamani'),
(16, 'Staff Member Updated [ID: 2, الناز زمانی غرقه]', '2022-08-23 14:34:58', 'mohammadreza zamani'),
(17, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-23 14:38:49', 'mohammadreza zamani'),
(18, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-23 14:40:12', 'mohammadreza zamani'),
(19, 'New Warehouse Item Added [ID:1, فلومتر اندرس هاوزر]', '2022-08-23 14:42:09', 'mohammadreza zamani'),
(20, 'New Client Created [ID: 1, From Staff: 1]', '2022-08-23 14:44:32', 'mohammadreza zamani'),
(21, 'New Project Created [ID: 1]', '2022-08-23 14:46:04', 'mohammadreza zamani'),
(22, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-23 14:57:58', 'mohammadreza zamani'),
(23, 'New Proposal Created [ID: 1]', '2022-08-23 15:05:55', 'mohammadreza zamani'),
(24, 'Proposal Converted to Estimate [EstimateID: 1, ProposalID: 1]', '2022-08-23 15:07:03', 'mohammadreza zamani'),
(25, 'New Proposal Created [ID: 2]', '2022-08-23 15:58:10', 'mohammadreza zamani'),
(26, 'New Template Added [ID: 1, pargaran]', '2022-08-23 15:59:42', 'mohammadreza zamani'),
(27, 'Proposal Status Changes [ProposalID:2, Status:Accepted,Client Action: 1]', '2022-08-23 16:02:07', 'mohammadreza zamani'),
(28, 'Credit Note Created [ID: 1]', '2022-08-23 16:17:44', 'mohammadreza zamani'),
(29, 'Proposal Converted to Invoice [InvoiceID: 2, ProposalID: 2]', '2022-08-23 16:30:38', 'mohammadreza zamani'),
(30, 'New Proposal Created [ID: 3]', '2022-08-23 16:35:22', 'mohammadreza zamani'),
(31, 'Proposal Converted to Invoice [InvoiceID: 3, ProposalID: 3]', '2022-08-23 16:49:43', 'mohammadreza zamani'),
(32, 'New Proposal Created [ID: 4]', '2022-08-23 16:57:44', 'mohammadreza zamani'),
(33, 'Proposal Status Changes [ProposalID:4, Status:Accepted,Client Action: 0]', '2022-08-23 18:33:45', 'mohammadreza zamani'),
(34, 'Proposal Status Changes [ProposalID:4, Status:Accepted,Client Action: 0]', '2022-08-23 18:37:25', 'mohammadreza zamani'),
(35, 'Template Deleted [Name: pargaran]', '2022-08-23 18:38:16', 'mohammadreza zamani'),
(36, 'Invoice Status Updated [Invoice Number: INV-000003, From: پرداخت نشده To: بخشی پرداخت شده]', '2022-08-23 18:39:54', 'mohammadreza zamani'),
(37, 'Payment Recorded [ID:1, Invoice Number: INV-000003, Total: 293,250.00ريال]', '2022-08-23 18:39:54', 'mohammadreza zamani'),
(38, 'Payment Updated [Number:1]', '2022-08-23 18:40:37', 'mohammadreza zamani'),
(39, 'Credit Applied to Invoice [ Invoice: INV-000001, Credit: CN-000001 ]', '2022-08-23 18:44:16', 'mohammadreza zamani'),
(40, 'Invoice Status Updated [Invoice Number: INV-000001, From: پرداخت نشده To: بخشی پرداخت شده]', '2022-08-23 18:44:16', 'mohammadreza zamani'),
(41, 'Invoice Status Updated [Invoice Number: INV-000001, From: بخشی پرداخت شده To: پرداخت نشده]', '2022-08-23 18:44:30', 'mohammadreza zamani'),
(42, 'Proposal Converted to Invoice [InvoiceID: 4, ProposalID: 1]', '2022-08-23 19:59:22', 'mohammadreza zamani'),
(43, 'New Proposal Created [ID: 5]', '2022-08-23 20:54:46', 'mohammadreza zamani'),
(44, 'Proposal Status Changes [ProposalID:5, Status:تائید شده,Client Action: 0]', '2022-08-23 20:56:51', 'mohammadreza zamani'),
(45, 'Proposal Status Changes [ProposalID:3, Status:تائید شده,Client Action: 0]', '2022-08-23 21:00:57', 'mohammadreza zamani'),
(46, 'Proposal Status Changes [ProposalID:3, Status:تائید شده,Client Action: 0]', '2022-08-23 21:01:45', 'mohammadreza zamani'),
(47, 'New Proposal Created [ID: 6]', '2022-08-23 21:02:20', 'mohammadreza zamani'),
(48, 'Proposal Status Changes [ProposalID:6, Status:تائید شده,Client Action: 0]', '2022-08-23 21:02:24', 'mohammadreza zamani'),
(49, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-25 15:26:29', 'mohammadreza zamani'),
(50, 'New Proposal Created [ID: 7]', '2022-08-25 15:38:03', 'mohammadreza zamani'),
(51, 'Proposal Status Changes [ProposalID:7, Status:7,Client Action: 0]', '2022-08-25 15:38:09', 'mohammadreza zamani'),
(52, 'Proposal Status Changes [ProposalID:7, Status:تائید شده,Client Action: 0]', '2022-08-25 15:39:31', 'mohammadreza zamani'),
(53, 'New Warehouse Item Added [ID:2, الکتروموتور تستی]', '2022-08-25 16:35:13', 'mohammadreza zamani'),
(54, 'Contact Created [ID: 1]', '2022-08-25 17:11:09', 'mohammadreza zamani'),
(55, 'New Ticket Created [ID: 1]', '2022-08-25 17:12:19', 'mohammadreza zamani'),
(56, 'New Proposal Created [ID: 8]', '2022-08-25 17:39:56', 'mohammadreza zamani'),
(57, 'Proposal Status Changes [ProposalID:8, Status:تائید شده,Client Action: 0]', '2022-08-25 17:40:54', 'mohammadreza zamani'),
(58, 'Invoice Status Updated [Invoice Number: INV-000004, From: پرداخت نشده To: پرداخت شده]', '2022-08-25 17:48:23', 'mohammadreza zamani'),
(59, 'Payment Recorded [ID:2, Invoice Number: INV-000004, Total: 146,250.00ريال]', '2022-08-25 17:48:23', 'mohammadreza zamani'),
(60, 'New Payment Mode Added [ID: 2, Name:کارت به کارت]', '2022-08-25 17:55:05', 'mohammadreza zamani'),
(61, 'New Payment Mode Added [ID: 3, Name:نقدی]', '2022-08-25 17:55:14', 'mohammadreza zamani'),
(62, 'New Payment Mode Added [ID: 4, Name:چک بانکی]', '2022-08-25 17:55:23', 'mohammadreza zamani'),
(63, 'New Payment Mode Added [ID: 5, Name:حواله بین بانکی]', '2022-08-25 17:55:39', 'mohammadreza zamani'),
(64, 'Non Existing User Tried to Login [Email: tomass@gmail.com, Is Staff Member: Yes, IP: ::1]', '2022-08-26 12:35:07', NULL),
(65, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-26 12:35:13', 'mohammadreza zamani'),
(66, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-26 13:07:37', 'mohammadreza zamani'),
(67, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-26 13:07:54', 'mohammadreza zamani'),
(68, 'Customer Info Updated [ID: 1]', '2022-08-26 18:46:18', 'mohammadreza zamani'),
(69, 'Customer Info Updated [ID: 1]', '2022-08-26 18:50:58', 'mohammadreza zamani'),
(70, 'Customer Info Updated [ID: 1]', '2022-08-26 19:00:29', 'mohammadreza zamani'),
(71, 'Contact Created [ID: 2]', '2022-08-26 19:06:46', 'mohammadreza zamani'),
(72, 'New Proposal Created [ID: 9]', '2022-08-26 19:07:59', 'mohammadreza zamani'),
(73, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-26 20:04:29', 'mohammadreza zamani'),
(74, 'Staff Member Updated [ID: 1, mohammadreza zamani]', '2022-08-26 21:21:20', 'mohammadreza zamani'),
(75, 'Staff Member Updated [ID: 2, الناز زمانی غرقه]', '2022-08-26 21:25:50', 'mohammadreza zamani'),
(76, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-08-26 21:26:09', 'الناز زمانی غرقه'),
(77, 'New Role Added [ID: 2.مدیر بازرگانی داخلی]', '2022-08-26 21:29:27', 'mohammadreza zamani'),
(78, 'Staff Member Updated [ID: 2, الناز زمانی غرقه]', '2022-08-26 21:29:52', 'mohammadreza zamani'),
(79, 'Role Updated [ID: 2, Name: مدیر بازرگانی داخلی]', '2022-08-26 21:31:39', 'mohammadreza zamani'),
(80, 'Role Updated [ID: 2, Name: مدیر بازرگانی داخلی]', '2022-08-26 21:34:08', 'mohammadreza zamani'),
(81, 'Role Updated [ID: 2, Name: مدیر بازرگانی داخلی]', '2022-08-26 21:34:25', 'mohammadreza zamani'),
(82, 'New Proposal Created [ID: 10]', '2022-08-26 21:35:06', 'الناز زمانی غرقه'),
(83, 'Staff Member Updated [ID: 1, محمددرضا زمانی]', '2022-08-26 22:05:14', 'mohammadreza zamani'),
(84, 'Staff Member Updated [ID: 1, محمددرضا زمانی]', '2022-08-26 22:05:57', 'محمددرضا زمانی'),
(85, 'Proposal Status Changes [ProposalID:10, Status:تائید شده,Client Action: 0]', '2022-08-27 01:33:59', 'محمددرضا زمانی'),
(86, 'Non Existing User Tried to Login [Email: talashcrm2@gmail.com, Is Staff Member: Yes, IP: ::1]', '2022-08-28 21:09:00', NULL),
(87, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-28 21:09:08', 'محمددرضا زمانی'),
(88, 'Contact Created [ID: 3]', '2022-08-28 21:33:50', 'محمددرضا زمانی'),
(89, 'New Client Created [ID: 2, From Staff: 1]', '2022-08-28 21:36:02', 'محمددرضا زمانی'),
(90, 'Contact Created [ID: 4]', '2022-08-28 21:36:25', 'محمددرضا زمانی'),
(91, 'New Project Created [ID: 2]', '2022-08-28 22:26:43', 'محمددرضا زمانی'),
(92, 'Non Existing User Tried to Login [Email: talashcrm@gmail.com, Is Staff Member: No, IP: ::1]', '2022-08-30 12:51:29', NULL),
(93, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-08-30 12:51:43', 'محمددرضا زمانی'),
(94, 'New Project Created [ID: 3]', '2022-08-30 14:28:45', 'محمددرضا زمانی'),
(95, 'New Project Created [ID: 4]', '2022-08-30 15:25:45', 'محمددرضا زمانی'),
(96, 'New Project Created [ID: 5]', '2022-08-30 15:35:04', 'محمددرضا زمانی'),
(97, 'New Project Created [ID: 6]', '2022-08-30 15:38:18', 'محمددرضا زمانی'),
(98, 'New Project Created [ID: 7]', '2022-08-30 15:40:03', 'محمددرضا زمانی'),
(99, 'New Project Created [ID: 8]', '2022-08-30 15:42:45', 'محمددرضا زمانی'),
(100, 'New Proposal Created [ID: 11]', '2022-08-30 15:47:55', 'محمددرضا زمانی'),
(101, 'Contact Created [ID: 5]', '2022-08-30 16:21:48', 'محمددرضا زمانی'),
(102, 'New Proposal Created [ID: 12]', '2022-08-30 16:58:33', 'محمددرضا زمانی'),
(103, 'New Proposal Created [ID: 13]', '2022-08-30 17:02:21', 'محمددرضا زمانی'),
(104, 'New Proposal Created [ID: 14]', '2022-08-30 17:06:09', 'محمددرضا زمانی'),
(105, 'Proposal Status Changes [ProposalID:13, Status:تائید شده,Client Action: 0]', '2022-08-30 17:32:01', 'محمددرضا زمانی'),
(106, 'Proposal Status Changes [ProposalID:12, Status:تائید شده,Client Action: 0]', '2022-08-30 17:32:40', 'محمددرضا زمانی'),
(107, 'Proposal Status Changes [ProposalID:11, Status:تائید شده,Client Action: 0]', '2022-08-30 17:33:34', 'محمددرضا زمانی'),
(108, 'New Project Created [ID: 9]', '2022-08-30 17:47:41', 'محمددرضا زمانی'),
(109, 'New Proposal Created [ID: 15]', '2022-08-30 17:48:45', 'محمددرضا زمانی'),
(110, 'Proposal Status Changes [ProposalID:15, Status:تائید شده,Client Action: 0]', '2022-08-30 17:48:51', 'محمددرضا زمانی'),
(111, 'New Proposal Created [ID: 16]', '2022-08-30 17:56:04', 'محمددرضا زمانی'),
(112, 'New Proposal Created [ID: 17]', '2022-08-30 17:57:07', 'محمددرضا زمانی'),
(113, 'Proposal Status Changes [ProposalID:17, Status:تائید شده,Client Action: 0]', '2022-08-30 17:59:37', 'محمددرضا زمانی'),
(114, 'Non Existing User Tried to Login [Email: mdrazamani@gmail.com, Is Staff Member: Yes, IP: ::1]', '2022-09-01 12:55:39', NULL),
(115, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-01 12:55:49', 'محمددرضا زمانی'),
(116, 'Staff Member Updated [ID: 1, محمددرضا زمانی]', '2022-09-01 12:58:52', 'محمددرضا زمانی'),
(117, 'Staff Member Updated [ID: 1, محمددرضا زمانی]', '2022-09-01 13:02:01', 'محمددرضا زمانی'),
(118, 'New Customer Group Created [ID:1, Name:مشتریان خوب]', '2022-09-01 13:06:17', 'محمددرضا زمانی'),
(119, 'New Client Created [ID: 3, From Staff: 1]', '2022-09-01 13:10:07', 'محمددرضا زمانی'),
(120, 'New Client Created [ID: 4, From Staff: 1]', '2022-09-01 13:32:47', 'محمددرضا زمانی'),
(121, 'New Leads Status Added [StatusID: 2, Name: تبدیل به پروژه]', '2022-09-01 13:41:45', 'محمددرضا زمانی'),
(122, 'New Lead Added [ID: 1]', '2022-09-01 13:42:41', 'محمددرضا زمانی'),
(123, 'New Web to Lead Form Added [فرم درخواست]', '2022-09-01 14:17:59', 'محمددرضا زمانی'),
(124, 'New Leads Status Added [StatusID: 3, Name: سلام]', '2022-09-01 15:10:45', 'محمددرضا زمانی'),
(125, 'New Leads Source Added [SourceID: 3, Name: سلام]', '2022-09-01 16:07:55', 'محمددرضا زمانی'),
(126, 'New Lead Added [ID: 2]', '2022-09-01 16:36:36', 'محمددرضا زمانی'),
(127, 'New Lead Added [ID: 3]', '2022-09-01 16:46:54', 'محمددرضا زمانی'),
(128, 'New Lead Added [ID: 4]', '2022-09-01 16:54:52', 'محمددرضا زمانی'),
(129, 'New Lead Added [ID: 5]', '2022-09-01 16:56:49', 'محمددرضا زمانی'),
(130, 'New Lead Added [ID: 6]', '2022-09-01 16:59:45', 'محمددرضا زمانی'),
(131, 'New Lead Added [ID: 7]', '2022-09-01 17:11:17', 'محمددرضا زمانی'),
(132, 'New Leads Status Added [StatusID: 4, Name: ایجاد شده]', '2022-09-01 17:24:43', 'محمددرضا زمانی'),
(133, 'New Leads Status Added [StatusID: 5, Name: در انتظار]', '2022-09-01 17:24:57', 'محمددرضا زمانی'),
(134, 'New Leads Status Added [StatusID: 6, Name: پروژه شده]', '2022-09-01 17:25:36', 'محمددرضا زمانی'),
(135, 'New Leads Status Added [StatusID: 7, Name: زباله]', '2022-09-01 17:25:59', 'محمددرضا زمانی'),
(136, 'New Leads Source Added [SourceID: 4, Name: گوگل]', '2022-09-01 17:26:18', 'محمددرضا زمانی'),
(137, 'New Leads Source Added [SourceID: 5, Name: بازار]', '2022-09-01 17:26:25', 'محمددرضا زمانی'),
(138, 'New Lead Added [ID: 8]', '2022-09-01 17:31:30', 'محمددرضا زمانی'),
(139, 'New Lead Added [ID: 9]', '2022-09-01 17:48:16', 'محمددرضا زمانی'),
(140, 'Lead Attachment Deleted [ID: 9]', '2022-09-01 18:10:49', 'محمددرضا زمانی'),
(141, 'New Lead Added [ID: 10]', '2022-09-01 19:53:15', 'محمددرضا زمانی'),
(142, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-02 13:58:50', 'محمددرضا زمانی'),
(143, 'Lead Deleted [Deleted by: محمددرضا زمانی, ID: 8]', '2022-09-02 19:51:06', 'محمددرضا زمانی'),
(144, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-04 10:42:09', 'محمددرضا زمانی'),
(145, 'New Custom Field Added [سلام]', '2022-09-04 13:44:28', 'محمددرضا زمانی'),
(146, 'Custom Field Status Changed [FieldID: 1 - Active: 1]', '2022-09-04 13:44:53', 'محمددرضا زمانی'),
(147, 'Custom Field Status Changed [FieldID: 1 - Active: 0]', '2022-09-04 13:45:04', 'محمددرضا زمانی'),
(148, 'Custom Field Deleted [1]', '2022-09-04 13:45:06', 'محمددرضا زمانی'),
(149, 'New Custom Field Added [pargaran]', '2022-09-04 13:45:39', 'محمددرضا زمانی'),
(150, 'Custom Field Deleted [2]', '2022-09-04 13:46:47', 'محمددرضا زمانی'),
(151, 'New Custom Field Added [کد کالا (product Number)]', '2022-09-04 13:47:28', 'محمددرضا زمانی'),
(152, 'Custom Field Updated [کد کالا (product Number)]', '2022-09-04 13:47:52', 'محمددرضا زمانی'),
(153, 'New Custom Field Added [کد کالا (product Number)]', '2022-09-04 13:50:49', 'محمددرضا زمانی'),
(154, 'Custom Field Updated [کد کالا (product Number)]', '2022-09-04 13:51:16', 'محمددرضا زمانی'),
(155, 'New Custom Field Added [کد کالا (product NUmber)]', '2022-09-04 13:53:23', 'محمددرضا زمانی'),
(156, 'Custom Field Deleted [5]', '2022-09-04 13:54:46', 'محمددرضا زمانی'),
(157, 'New Custom Field Added [مخاطب]', '2022-09-04 13:55:42', 'محمددرضا زمانی'),
(158, 'New Custom Field Added [میزان اهمیت]', '2022-09-04 13:59:09', 'محمددرضا زمانی'),
(159, 'New Lead Added [ID: 11]', '2022-09-04 14:00:36', 'محمددرضا زمانی'),
(160, 'Custom Field Deleted [6]', '2022-09-04 14:01:11', 'محمددرضا زمانی'),
(161, 'Custom Field Deleted [7]', '2022-09-04 14:01:17', 'محمددرضا زمانی'),
(162, 'New Lead Added [ID: 12]', '2022-09-04 14:04:31', 'محمددرضا زمانی'),
(163, 'Custom Field Status Changed [FieldID: 3 - Active: 0]', '2022-09-04 14:05:58', 'محمددرضا زمانی'),
(164, 'Custom Field Status Changed [FieldID: 4 - Active: 0]', '2022-09-04 14:05:59', 'محمددرضا زمانی'),
(165, 'New Lead Added [ID: 13]', '2022-09-04 14:06:47', 'محمددرضا زمانی'),
(166, 'Custom Field Status Changed [FieldID: 3 - Active: 1]', '2022-09-04 14:08:44', 'محمددرضا زمانی'),
(167, 'Custom Field Status Changed [FieldID: 4 - Active: 1]', '2022-09-04 14:08:45', 'محمددرضا زمانی'),
(168, 'New Lead Added [ID: 14]', '2022-09-04 14:11:56', 'محمددرضا زمانی'),
(169, 'Custom Field Updated [کد کالا (product Number)]', '2022-09-04 14:14:27', 'محمددرضا زمانی'),
(170, 'New Custom Field Added [مخاطب]', '2022-09-04 14:27:01', 'محمددرضا زمانی'),
(171, 'New Client Created [ID: 5, From Staff: 1]', '2022-09-04 14:30:09', 'محمددرضا زمانی'),
(172, 'New Lead Added [ID: 15]', '2022-09-04 14:59:29', 'محمددرضا زمانی'),
(173, 'New Lead Added [ID: 16]', '2022-09-04 15:01:34', 'محمددرضا زمانی'),
(174, 'New Lead Added [ID: 17]', '2022-09-04 16:59:50', 'محمددرضا زمانی'),
(175, 'New Lead Added [ID: 18]', '2022-09-04 17:00:27', 'محمددرضا زمانی'),
(176, 'Non Existing User Tried to Login [Email: talashcrm@gamil.com, Is Staff Member: Yes, IP: ::1]', '2022-09-04 22:53:30', NULL),
(177, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-04 22:54:19', 'محمددرضا زمانی'),
(178, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-04 22:55:41', 'محمددرضا زمانی'),
(179, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-04 22:55:55', 'محمددرضا زمانی'),
(180, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-05 22:34:15', 'محمددرضا زمانی'),
(181, 'New Project Created [ID: 245646]', '2022-09-05 23:06:24', 'محمددرضا زمانی'),
(182, 'New Proposal Created [ID: 18]', '2022-09-05 23:12:26', 'محمددرضا زمانی'),
(183, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-06 11:40:22', 'محمددرضا زمانی'),
(184, 'New Lead Added [ID: 243658]', '2022-09-06 16:44:20', 'محمددرضا زمانی'),
(185, 'New Lead Added [ID: 243659]', '2022-09-06 16:46:34', 'محمددرضا زمانی'),
(186, 'New Lead Added [ID: 243660]', '2022-09-06 16:49:17', 'محمددرضا زمانی'),
(187, 'New Lead Added [ID: 243661]', '2022-09-06 16:53:18', 'محمددرضا زمانی'),
(188, 'New Lead Added [ID: 243662]', '2022-09-06 16:54:10', 'محمددرضا زمانی'),
(189, 'New Lead Added [ID: 243663]', '2022-09-06 17:00:15', 'محمددرضا زمانی'),
(190, 'New Lead Added [ID: 243664]', '2022-09-06 17:49:46', 'محمددرضا زمانی'),
(191, 'New Lead Added [ID: 243665]', '2022-09-06 18:46:43', 'محمددرضا زمانی'),
(192, 'New Lead Added [ID: 243666]', '2022-09-06 18:48:11', 'محمددرضا زمانی'),
(193, 'New Lead Added [ID: 243667]', '2022-09-06 18:50:09', 'محمددرضا زمانی'),
(194, 'New Lead Added [ID: 243668]', '2022-09-06 18:54:02', 'محمددرضا زمانی'),
(195, 'New Lead Added [ID: 243669]', '2022-09-06 18:54:36', 'محمددرضا زمانی'),
(196, 'Custom Field Updated [مخاطب]', '2022-09-06 18:56:28', 'محمددرضا زمانی'),
(197, 'New Lead Added [ID: 243670]', '2022-09-06 18:57:05', 'محمددرضا زمانی'),
(198, 'New Lead Added [ID: 243671]', '2022-09-06 18:58:02', 'محمددرضا زمانی'),
(199, 'New Lead Added [ID: 243672]', '2022-09-06 18:59:31', 'محمددرضا زمانی'),
(200, 'New Lead Added [ID: 243673]', '2022-09-06 19:00:38', 'محمددرضا زمانی'),
(201, 'New Lead Added [ID: 243674]', '2022-09-06 19:01:16', 'محمددرضا زمانی'),
(202, 'New Lead Added [ID: 243675]', '2022-09-06 19:04:33', 'محمددرضا زمانی'),
(203, 'New Lead Added [ID: 243676]', '2022-09-06 19:05:14', 'محمددرضا زمانی'),
(204, 'New Project Created [ID: 245647]', '2022-09-06 23:00:40', 'محمددرضا زمانی'),
(205, 'New Project Created [ID: 245648]', '2022-09-06 23:01:33', 'محمددرضا زمانی'),
(206, 'New Project Created [ID: 245649]', '2022-09-06 23:04:19', 'محمددرضا زمانی'),
(207, 'New Lead Added [ID: 243677]', '2022-09-07 00:38:44', 'محمددرضا زمانی'),
(208, 'New Lead Added [ID: 243678]', '2022-09-07 00:40:19', 'محمددرضا زمانی'),
(209, 'Non Existing User Tried to Login [Email: talashcrm@gmail.com, Is Staff Member: No, IP: ::1]', '2022-09-13 12:31:10', NULL),
(210, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-13 12:31:21', 'محمددرضا زمانی'),
(211, 'New Project Created [ID: 245650]', '2022-09-13 13:25:24', 'محمددرضا زمانی'),
(212, 'Staff Member Updated [ID: 1, محمددرضا زمانی]', '2022-09-13 16:15:00', 'محمددرضا زمانی'),
(213, 'Staff Member Updated [ID: 1, محمددرضا زمانی]', '2022-09-13 16:15:23', 'محمددرضا زمانی'),
(214, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-09-13 19:38:57', 'محمددرضا زمانی'),
(215, 'New Project Created [ID: 245652]', '2022-09-13 20:09:51', 'محمددرضا زمانی'),
(216, 'Non Existing User Tried to Login [Email: admin@example.com, Is Staff Member: Yes, IP: ::1]', '2022-09-18 15:57:28', NULL),
(217, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-18 15:57:41', 'محمددرضا زمانی'),
(218, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-09-18 16:33:06', 'الناز زمانی غرقه'),
(219, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-20 21:30:03', 'محمددرضا زمانی'),
(220, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-09-20 21:30:27', 'الناز زمانی غرقه'),
(221, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-22 12:53:29', 'محمددرضا زمانی'),
(222, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-24 21:39:20', 'محمددرضا زمانی'),
(223, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-25 11:19:18', 'محمددرضا زمانی'),
(224, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-26 13:55:06', 'محمددرضا زمانی'),
(225, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-26 19:08:45', 'محمددرضا زمانی'),
(226, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-27 15:45:49', 'محمددرضا زمانی'),
(227, 'New Custom Field Added [hello]', '2022-09-27 18:47:21', 'محمددرضا زمانی'),
(228, 'Custom Field Updated [برند]', '2022-09-27 18:49:08', 'محمددرضا زمانی'),
(229, 'Custom Field Updated [برند]', '2022-09-27 18:50:10', 'محمددرضا زمانی'),
(230, 'Custom Field Updated [کد کالا (product Number)]', '2022-09-27 18:50:35', 'محمددرضا زمانی'),
(231, 'New Custom Field Added [کشور سازنده]', '2022-09-27 18:51:57', 'محمددرضا زمانی'),
(232, 'Custom Field Updated [کد کالا (product Number)]', '2022-09-27 18:53:16', 'محمددرضا زمانی'),
(233, 'Custom Field Updated [برند]', '2022-09-27 18:53:24', 'محمددرضا زمانی'),
(234, 'Custom Field Updated [کشور سازنده]', '2022-09-27 18:53:30', 'محمددرضا زمانی'),
(235, 'New Custom Field Added [محصول جایگزین]', '2022-09-27 18:54:46', 'محمددرضا زمانی'),
(236, 'New Custom Field Added [کد جایگزین]', '2022-09-27 18:55:04', 'محمددرضا زمانی'),
(237, 'New Custom Field Added [کشور سازنده]', '2022-09-27 18:57:04', 'محمددرضا زمانی'),
(238, 'New Custom Field Added [برند جایگزین]', '2022-09-27 18:57:47', 'محمددرضا زمانی'),
(239, 'Custom Field Updated [کشور سازنده جایگزین]', '2022-09-27 18:58:01', 'محمددرضا زمانی'),
(240, 'Custom Field Updated [کد کالا (product Number)]', '2022-09-27 18:59:03', 'محمددرضا زمانی'),
(241, 'Custom Field Updated [برند]', '2022-09-27 18:59:49', 'محمددرضا زمانی'),
(242, 'Custom Field Updated [کشور سازنده]', '2022-09-27 19:00:27', 'محمددرضا زمانی'),
(243, 'New Custom Field Added [وزن(gr)]', '2022-09-27 19:02:56', 'محمددرضا زمانی'),
(244, 'New Custom Field Added [طول(cm)]', '2022-09-27 19:03:39', 'محمددرضا زمانی'),
(245, 'New Custom Field Added [عرض(cm)]', '2022-09-27 19:03:56', 'محمددرضا زمانی'),
(246, 'New Custom Field Added [ارتفاع(cm)]', '2022-09-27 19:04:16', 'محمددرضا زمانی'),
(247, 'Custom Field Updated [عرض(cm)]', '2022-09-27 19:04:37', 'محمددرضا زمانی'),
(248, 'Custom Field Updated [وزن(g)]', '2022-09-27 19:05:11', 'محمددرضا زمانی'),
(249, 'Custom Field Status Changed [FieldID: 18 - Active: 0]', '2022-09-27 19:07:20', 'محمددرضا زمانی'),
(250, 'Custom Field Status Changed [FieldID: 17 - Active: 0]', '2022-09-27 19:07:20', 'محمددرضا زمانی'),
(251, 'Custom Field Status Changed [FieldID: 16 - Active: 0]', '2022-09-27 19:07:21', 'محمددرضا زمانی'),
(252, 'Custom Field Status Changed [FieldID: 15 - Active: 0]', '2022-09-27 19:07:22', 'محمددرضا زمانی'),
(253, 'Custom Field Status Changed [FieldID: 14 - Active: 0]', '2022-09-27 19:07:23', 'محمددرضا زمانی'),
(254, 'Custom Field Status Changed [FieldID: 13 - Active: 0]', '2022-09-27 19:07:24', 'محمددرضا زمانی'),
(255, 'Custom Field Status Changed [FieldID: 12 - Active: 0]', '2022-09-27 19:07:24', 'محمددرضا زمانی'),
(256, 'Custom Field Status Changed [FieldID: 11 - Active: 0]', '2022-09-27 19:07:26', 'محمددرضا زمانی'),
(257, 'Custom Field Status Changed [FieldID: 10 - Active: 0]', '2022-09-27 19:07:27', 'محمددرضا زمانی'),
(258, 'Custom Field Status Changed [FieldID: 9 - Active: 0]', '2022-09-27 19:07:28', 'محمددرضا زمانی'),
(259, 'Custom Field Status Changed [FieldID: 3 - Active: 0]', '2022-09-27 19:07:32', 'محمددرضا زمانی'),
(260, 'Custom Field Status Changed [FieldID: 9 - Active: 1]', '2022-09-27 21:58:17', 'محمددرضا زمانی'),
(261, 'Custom Field Status Changed [FieldID: 10 - Active: 1]', '2022-09-27 21:58:18', 'محمددرضا زمانی'),
(262, 'Custom Field Status Changed [FieldID: 11 - Active: 1]', '2022-09-27 21:58:18', 'محمددرضا زمانی'),
(263, 'Custom Field Status Changed [FieldID: 12 - Active: 1]', '2022-09-27 21:58:20', 'محمددرضا زمانی'),
(264, 'Custom Field Status Changed [FieldID: 13 - Active: 1]', '2022-09-27 21:58:20', 'محمددرضا زمانی'),
(265, 'Custom Field Status Changed [FieldID: 14 - Active: 1]', '2022-09-27 21:58:21', 'محمددرضا زمانی'),
(266, 'Custom Field Status Changed [FieldID: 15 - Active: 1]', '2022-09-27 21:58:22', 'محمددرضا زمانی'),
(267, 'Custom Field Status Changed [FieldID: 16 - Active: 1]', '2022-09-27 21:58:22', 'محمددرضا زمانی'),
(268, 'Custom Field Status Changed [FieldID: 17 - Active: 1]', '2022-09-27 21:58:22', 'محمددرضا زمانی'),
(269, 'Custom Field Status Changed [FieldID: 18 - Active: 1]', '2022-09-27 21:58:23', 'محمددرضا زمانی'),
(270, 'Custom Field Status Changed [FieldID: 18 - Active: 0]', '2022-09-27 21:59:38', 'محمددرضا زمانی'),
(271, 'Custom Field Status Changed [FieldID: 17 - Active: 0]', '2022-09-27 21:59:38', 'محمددرضا زمانی'),
(272, 'Custom Field Status Changed [FieldID: 16 - Active: 0]', '2022-09-27 21:59:39', 'محمددرضا زمانی'),
(273, 'Custom Field Status Changed [FieldID: 15 - Active: 0]', '2022-09-27 21:59:39', 'محمددرضا زمانی'),
(274, 'Custom Field Status Changed [FieldID: 14 - Active: 0]', '2022-09-27 21:59:40', 'محمددرضا زمانی'),
(275, 'Custom Field Status Changed [FieldID: 14 - Active: 1]', '2022-09-27 21:59:41', 'محمددرضا زمانی'),
(276, 'Custom Field Status Changed [FieldID: 15 - Active: 1]', '2022-09-27 21:59:41', 'محمددرضا زمانی'),
(277, 'Custom Field Status Changed [FieldID: 16 - Active: 1]', '2022-09-27 21:59:41', 'محمددرضا زمانی'),
(278, 'Custom Field Status Changed [FieldID: 17 - Active: 1]', '2022-09-27 21:59:42', 'محمددرضا زمانی'),
(279, 'Custom Field Status Changed [FieldID: 18 - Active: 1]', '2022-09-27 21:59:43', 'محمددرضا زمانی'),
(280, 'Custom Field Status Changed [FieldID: 4 - Active: 0]', '2022-09-27 22:07:01', 'محمددرضا زمانی'),
(281, 'Custom Field Status Changed [FieldID: 3 - Active: 1]', '2022-09-27 22:07:01', 'محمددرضا زمانی'),
(282, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-09-29 13:50:05', 'محمددرضا زمانی'),
(283, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-02 12:47:13', 'محمددرضا زمانی'),
(284, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-02 13:35:42', 'الناز زمانی غرقه'),
(285, 'New Department Added [فروش, ID: 2]', '2022-10-02 19:38:35', 'محمددرضا زمانی'),
(286, 'New Department Added [بازرگانی خارجی, ID: 3]', '2022-10-02 19:38:48', 'محمددرضا زمانی'),
(287, 'New Department Added [فنی, ID: 4]', '2022-10-02 19:38:55', 'محمددرضا زمانی'),
(288, 'New Department Added [مدیریت, ID: 5]', '2022-10-02 19:40:37', 'محمددرضا زمانی'),
(289, 'Department Updated [Name: فروش, ID: 2]', '2022-10-02 19:40:58', 'محمددرضا زمانی'),
(290, 'Department Updated [Name: فنی, ID: 4]', '2022-10-02 19:41:06', 'محمددرضا زمانی'),
(291, 'Department Updated [Name: بازرگانی خارجی, ID: 3]', '2022-10-02 19:41:14', 'محمددرضا زمانی'),
(292, 'Department Updated [Name: بازرگانی داخلی, ID: 1]', '2022-10-02 19:41:19', 'محمددرضا زمانی'),
(293, 'Staff Member Updated [ID: 1, محمدرضا زمانی]', '2022-10-02 19:42:35', 'محمددرضا زمانی'),
(294, 'New Staff Member Added [ID: 3, محمد کاشانی]', '2022-10-02 19:44:19', 'محمدرضا زمانی'),
(295, 'New Staff Member Added [ID: 4, محمد سلیمی]', '2022-10-02 19:44:54', 'محمدرضا زمانی'),
(296, 'New Staff Member Added [ID: 5, سعید سعیدی]', '2022-10-02 19:45:34', 'محمدرضا زمانی'),
(297, 'New Staff Member Added [ID: 6, علی مهرانفر]', '2022-10-02 19:46:20', 'محمدرضا زمانی'),
(298, 'New Staff Member Added [ID: 7, مسعود منتجبی]', '2022-10-02 19:46:52', 'محمدرضا زمانی'),
(299, 'Staff Member Updated [ID: 3, محمد کاشانی]', '2022-10-02 20:24:32', 'محمدرضا زمانی'),
(300, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-02 20:42:03', 'محمد سلیمی'),
(301, 'Staff Member Updated [ID: 4, محمد سلیمی]', '2022-10-02 20:42:26', 'محمدرضا زمانی'),
(302, 'Staff Member Updated [ID: 4, محمد سلیمی]', '2022-10-02 20:45:39', 'محمدرضا زمانی'),
(303, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-03 13:35:09', 'محمدرضا زمانی'),
(304, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-03 13:36:16', 'محمد سلیمی'),
(305, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-03 13:38:42', 'علی مهرانفر'),
(306, 'Staff Member Updated [ID: 6, علی مهرانفر]', '2022-10-03 13:39:26', 'محمدرضا زمانی'),
(307, 'Staff Member Updated [ID: 6, علی مهرانفر]', '2022-10-03 13:40:08', 'محمدرضا زمانی'),
(308, 'Staff Member Updated [ID: 3, محمد کاشانی]', '2022-10-03 13:50:36', 'محمدرضا زمانی'),
(309, 'Staff Member Updated [ID: 3, محمد کاشانی]', '2022-10-03 13:51:15', 'محمدرضا زمانی'),
(310, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-03 13:51:24', 'محمد کاشانی'),
(311, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-03 17:59:26', 'محمدرضا زمانی'),
(312, 'Staff Member Updated [ID: 5, سعید سعیدی]', '2022-10-03 17:59:40', 'محمدرضا زمانی'),
(313, 'Staff Member Updated [ID: 4, محمد سلیمی]', '2022-10-03 17:59:49', 'محمدرضا زمانی'),
(314, 'Staff Member Updated [ID: 5, سعید سعیدی]', '2022-10-03 17:59:56', 'محمدرضا زمانی'),
(315, 'User Successfully Logged In [User Id: 5, Is Staff Member: Yes, IP: ::1]', '2022-10-03 18:00:05', 'سعید سعیدی'),
(316, 'Non Existing User Tried to Login [Email: talashcrm@gamil.com, Is Staff Member: Yes, IP: ::1]', '2022-10-03 18:01:43', NULL),
(317, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-03 18:02:12', 'محمدرضا زمانی'),
(318, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-03 18:02:38', 'محمد کاشانی'),
(319, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-03 18:07:20', 'محمد سلیمی'),
(320, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-03 18:15:09', 'محمد کاشانی'),
(321, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-05 13:30:46', 'محمد کاشانی'),
(322, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-05 13:31:23', 'علی مهرانفر'),
(323, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-05 13:31:51', 'محمد سلیمی'),
(324, 'Failed Login Attempt [Email: talashcrm@gmail.com, Is Staff Member: Yes, IP: ::1]', '2022-10-05 16:06:29', NULL),
(325, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-05 16:06:48', 'محمدرضا زمانی'),
(326, 'New Currency Added [ID: USI]', '2022-10-05 16:11:15', 'محمدرضا زمانی'),
(327, 'Currency Updated [USI]', '2022-10-05 16:11:55', 'محمدرضا زمانی'),
(328, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-05 16:12:26', 'محمد کاشانی'),
(329, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-05 16:13:26', 'علی مهرانفر'),
(330, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-05 22:19:12', 'محمدرضا زمانی'),
(331, 'Currency Updated [DPI]', '2022-10-05 22:19:56', 'محمدرضا زمانی'),
(332, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-05 22:30:22', 'محمد کاشانی'),
(333, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-06 14:04:18', 'محمد کاشانی'),
(334, 'Non Existing User Tried to Login [Email: sallimi@gmail.com, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-06 23:58:29', NULL),
(335, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-06 23:58:38', 'محمد سلیمی'),
(336, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-08 01:03:11', 'محمد کاشانی'),
(337, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-08 01:04:53', 'محمدرضا زمانی'),
(338, 'Custom Field Status Changed [FieldID: 18 - Active: 0]', '2022-10-08 01:05:04', 'محمدرضا زمانی'),
(339, 'Custom Field Status Changed [FieldID: 17 - Active: 0]', '2022-10-08 01:05:04', 'محمدرضا زمانی'),
(340, 'Custom Field Status Changed [FieldID: 16 - Active: 0]', '2022-10-08 01:05:05', 'محمدرضا زمانی'),
(341, 'Custom Field Status Changed [FieldID: 15 - Active: 0]', '2022-10-08 01:05:06', 'محمدرضا زمانی'),
(342, 'Custom Field Status Changed [FieldID: 14 - Active: 0]', '2022-10-08 01:05:06', 'محمدرضا زمانی'),
(343, 'Custom Field Status Changed [FieldID: 13 - Active: 0]', '2022-10-08 01:05:07', 'محمدرضا زمانی'),
(344, 'Custom Field Status Changed [FieldID: 11 - Active: 0]', '2022-10-08 01:05:08', 'محمدرضا زمانی'),
(345, 'Custom Field Status Changed [FieldID: 12 - Active: 0]', '2022-10-08 01:05:08', 'محمدرضا زمانی'),
(346, 'Custom Field Status Changed [FieldID: 10 - Active: 0]', '2022-10-08 01:05:10', 'محمدرضا زمانی'),
(347, 'Custom Field Status Changed [FieldID: 9 - Active: 0]', '2022-10-08 01:05:10', 'محمدرضا زمانی'),
(348, 'Custom Field Status Changed [FieldID: 8 - Active: 0]', '2022-10-08 01:05:12', 'محمدرضا زمانی'),
(349, 'Custom Field Status Changed [FieldID: 8 - Active: 1]', '2022-10-08 01:05:15', 'محمدرضا زمانی'),
(350, 'Custom Field Status Changed [FieldID: 3 - Active: 0]', '2022-10-08 01:05:16', 'محمدرضا زمانی'),
(351, 'New Lead Added [ID: 243679]', '2022-10-08 01:31:39', 'محمدرضا زمانی'),
(352, 'New Lead Added [ID: 243680]', '2022-10-08 01:32:41', 'محمدرضا زمانی'),
(353, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-08 01:33:25', 'محمد کاشانی'),
(354, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-08 01:43:18', 'محمد سلیمی'),
(355, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-12 16:13:57', 'محمدرضا زمانی'),
(356, 'New Reminder Added [LeadID: 243675 Description: square]', '2022-10-12 16:45:56', 'محمدرضا زمانی'),
(357, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-12 18:30:54', 'محمد سلیمی'),
(358, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-12 18:46:28', 'علی مهرانفر'),
(359, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-12 20:56:53', 'محمد کاشانی'),
(360, 'New Lead Added [ID: 243681]', '2022-10-12 22:22:00', 'محمد کاشانی'),
(361, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-13 14:50:32', 'محمد کاشانی'),
(362, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-13 14:50:49', 'محمد سلیمی'),
(363, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-13 14:51:07', 'علی مهرانفر'),
(364, 'New Client Created [ID: 6, From Staff: 3]', '2022-10-13 15:18:14', 'محمد کاشانی'),
(365, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-14 12:42:52', 'محمد کاشانی'),
(366, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-14 12:43:01', 'محمد سلیمی'),
(367, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-14 12:43:21', 'علی مهرانفر'),
(368, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-19 12:50:29', 'محمد کاشانی'),
(369, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-19 12:50:52', 'محمد سلیمی'),
(370, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-19 12:51:17', 'علی مهرانفر'),
(371, 'New Proposal Created [ID: 19]', '2022-10-19 19:03:51', 'محمد سلیمی'),
(372, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-23 13:45:21', 'محمد کاشانی'),
(373, 'User Successfully Logged In [User Id: 4, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-10-23 13:45:37', 'محمد سلیمی'),
(374, 'User Successfully Logged In [User Id: 6, Is Staff Member: Yes, IP: ::1]', '2022-10-23 13:45:55', 'علی مهرانفر'),
(375, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-10-26 18:49:56', 'محمد کاشانی'),
(376, 'Failed Login Attempt [Email: talashcrm@gmail.com, Is Staff Member: Yes, IP: ::1]', '2022-10-27 19:02:44', NULL),
(377, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-10-27 19:03:24', 'محمدرضا زمانی'),
(378, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-11-02 19:31:37', 'محمد کاشانی'),
(379, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-11-03 14:11:18', 'محمد کاشانی'),
(380, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: 127.0.0.1]', '2022-11-03 15:33:59', 'محمد کاشانی'),
(381, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-11-03 17:12:23', 'محمدرضا زمانی'),
(382, 'New Template Added [ID: 1, پیش فاکتور]', '2022-11-03 17:25:13', 'محمدرضا زمانی'),
(383, 'Template updated [Name: پیش فاکتور]', '2022-11-03 17:26:33', 'محمدرضا زمانی'),
(384, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-11-03 22:09:47', 'محمد کاشانی'),
(385, 'User Successfully Logged In [User Id: 3, Is Staff Member: Yes, IP: ::1]', '2022-11-04 18:49:40', 'محمد کاشانی'),
(386, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-11-04 21:22:02', 'محمدرضا زمانی');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblbonus_discipline`
--

CREATE TABLE `tblbonus_discipline` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_criteria` varchar(200) DEFAULT NULL,
  `type` int(3) NOT NULL,
  `apply_for` varchar(50) DEFAULT NULL,
  `from_time` datetime DEFAULT NULL,
  `lever_bonus` int(11) DEFAULT NULL,
  `approver` int(11) DEFAULT NULL,
  `url_file` longtext DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `id_admin` int(3) DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblbonus_discipline_detail`
--

CREATE TABLE `tblbonus_discipline_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_bonus_discipline` int(11) NOT NULL,
  `from_time` datetime DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `department_id` longtext DEFAULT NULL,
  `lever_bonus` int(11) DEFAULT NULL,
  `formality` varchar(50) DEFAULT NULL,
  `formality_value` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblchecklist`
--

CREATE TABLE `tblchecklist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblchecklist_allocation`
--

CREATE TABLE `tblchecklist_allocation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL,
  `company` varchar(191) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT 0,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0,
  `Economic_code` varchar(250) DEFAULT NULL,
  `National_ID` varchar(250) DEFAULT NULL,
  `registration_number` varchar(250) DEFAULT NULL,
  `Signatories` varchar(250) DEFAULT NULL,
  `Company_type` varchar(250) DEFAULT NULL,
  `customer_type` int(11) DEFAULT NULL,
  `NationalCode` varchar(150) DEFAULT NULL,
  `customerName` varchar(150) DEFAULT NULL,
  `customerFamily` varchar(150) DEFAULT NULL,
  `cusEmail` varchar(150) DEFAULT NULL,
  `cusFax` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`, `Economic_code`, `National_ID`, `registration_number`, `Signatories`, `Company_type`, `customer_type`, `NationalCode`, `customerName`, `customerFamily`, `cusEmail`, `cusFax`) VALUES
(1, 'فولاد مبارکه', '123', '02634512405', 104, 'کرج', '0235698562', 'البرز', 'اتااتتاتاتاتا', 'fulad.com', '2022-08-23 14:44:32', 1, NULL, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, NULL, NULL, 'persian', 3, 0, NULL, 1, 1, '123333', '', '121212212', 'علی,حسن,حسین', '', 1, '', '', '', 'fulad@gmail.com', '008866'),
(2, 'ملی مس', '123', '45454', 104, '1212', '121212', '1212', '211212', 'melimess.com', '2022-08-28 21:36:02', 1, NULL, '211212', '1212', '1212', '121212', 104, '211212', '1212', '1212', '121212', 104, NULL, NULL, 'persian', 3, 0, NULL, 1, 1, '45631', '121213232', '23232323', 'علی,حسن,حسین', '1', 1, '', '', '', 'melimess@gmail.com', '212313131'),
(3, '', '123654', '02634512405', 104, 'کرج', '0235698562', 'شاهین ویلا', 'اتااتتاتاتاتا', 'oo.com', '2022-09-01 13:10:07', 1, NULL, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, NULL, NULL, 'persian', 3, 0, NULL, 1, 1, '', '', '', '', '', 2, '123534545', 'محمدرضا', 'زمانی غرقه', 'tomass@gmail.com', '89898655656'),
(4, 'اسودی', '12212', '2332232332', 14, 'sdsdsd', 'sdsdsd', 'sdsdsd', 'sdsdsd', 'maryam.com', '2022-09-01 13:32:47', 1, NULL, 'sdsdsd', 'sdsdsd', 'sdsdsd', 'sdsdsd', 14, 'sdsdsd', 'sdsdsd', 'sdsdsd', 'sdsdsd', 14, NULL, NULL, 'persian', 3, 0, NULL, 1, 1, '', '', '', '', '', 2, '5454545454545', 'مریم', 'اسودی', 'maryam@gmail.com', '5454545454545'),
(5, 'فولاد اهواز', NULL, '02634512405', 104, 'کرج', '0235698562', 'شاهین ویلا', 'اتااتتاتاتاتا', 'sdsdsd.com', '2022-09-04 14:30:09', 1, NULL, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, NULL, NULL, 'persian', 3, 0, NULL, 1, 1, '4545', '4545', '454545', '4545', '', 1, '', '', '', 'tomass@gmail.com', '4545'),
(6, '4545', NULL, '', 0, '', '', '', '', '', '2022-10-13 15:18:14', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 3, '', '', '', '', '', 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblconsents`
--

CREATE TABLE `tblconsents` (
  `id` int(11) NOT NULL,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `opt_in_purpose_description` text DEFAULT NULL,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblconsent_purposes`
--

CREATE TABLE `tblconsent_purposes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT 1,
  `estimate_emails` tinyint(1) NOT NULL DEFAULT 1,
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT 1,
  `contract_emails` tinyint(1) NOT NULL DEFAULT 1,
  `task_emails` tinyint(1) NOT NULL DEFAULT 1,
  `project_emails` tinyint(1) NOT NULL DEFAULT 1,
  `ticket_emails` tinyint(1) NOT NULL DEFAULT 1,
  `sex` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `email_verified_at`, `email_verification_key`, `email_verification_sent_at`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`, `sex`) VALUES
(1, 1, 0, 'اکبر علی', 'قنبری', 'tomass@gmail.com', '', 'مدیریت فنی', '2022-08-25 17:11:09', '$2a$08$bbnV53D6lfxSbG6kx3zSfOqviE.aiGxAyIGa1MLOYZWcBrvrGrgxO', NULL, NULL, '2022-08-25 17:11:09', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1, NULL),
(2, 1, 1, 'علی اصغر', 'محسنی', 'talashcrm2@gmail.com', '+983232323', 'مدیریت فنی', '2022-08-26 19:06:46', '$2a$08$hdnitZI8lppv2i8e.b2eSOWpapl8E2/2YB3mM.p6hJO/STRUm2g3y', NULL, NULL, '2022-08-26 19:06:46', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'rtl', 1, 1, 1, 1, 1, 1, 1, NULL),
(3, 1, 0, 'عبدالالله', 'مافی', 'talashcrm3@gmail.com', '+9802442424', 'کارشناس خرید', '2022-08-28 21:33:50', '$2a$08$N2uLonnTkXNzYcV7SFDCteN1pG2Mi/RZ3G3JBFG3X2wREeOa4rQnq', NULL, NULL, '2022-08-28 21:33:49', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'rtl', 1, 1, 1, 1, 1, 1, 1, NULL),
(4, 2, 1, 'ولی', 'اسحاقی', 'talashcrm5@gmail.com', '+987878787878', 'بازرگانی خارجی', '2022-08-28 21:36:25', '$2a$08$zuVFHSH8KwYJWg//3Fd6OOiL3MYmxKeEenw8x8W9hpmqDlhl0p9wO', NULL, NULL, '2022-08-28 21:36:25', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'rtl', 1, 1, 1, 1, 1, 1, 1, 'male'),
(5, 2, 0, 'ستاره', 'افشار', 'mdrazamani@gmail.com', '02634512405', 'کارشناس خرید', '2022-08-30 16:21:48', '$2a$08$7gADWpYdQQRQoKVnU4Jmx.1L3OR2tIiu6oCm8RiIIH0qPF67VVkCO', NULL, NULL, '2022-08-30 16:21:48', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'ltr', 1, 1, 1, 1, 1, 1, 1, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact_permissions`
--

CREATE TABLE `tblcontact_permissions` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontact_permissions`
--

INSERT INTO `tblcontact_permissions` (`id`, `permission_id`, `userid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 2),
(8, 2, 2),
(9, 3, 2),
(10, 4, 2),
(11, 5, 2),
(12, 6, 2),
(13, 1, 3),
(14, 2, 3),
(15, 3, 3),
(16, 4, 3),
(17, 5, 3),
(18, 6, 3),
(19, 1, 4),
(20, 2, 4),
(21, 3, 4),
(22, 4, 4),
(23, 5, 4),
(24, 6, 4),
(25, 1, 5),
(26, 2, 5),
(27, 3, 5),
(28, 4, 5),
(29, 5, 5),
(30, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts`
--

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT 0,
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT 0,
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT 0,
  `signature` varchar(40) DEFAULT NULL,
  `marked_as_signed` tinyint(1) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts_types`
--

CREATE TABLE `tblcontracts_types` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_comments`
--

CREATE TABLE `tblcontract_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_renewals`
--

CREATE TABLE `tblcontract_renewals` (
  `id` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT 0,
  `is_on_old_expiry_notified` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcountries`
--

CREATE TABLE `tblcountries` (
  `country_id` int(11) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'North Macedonia', 'Republic of North Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
(174, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnotes`
--

CREATE TABLE `tblcreditnotes` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 1,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `clientnote` text DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcreditnotes`
--

INSERT INTO `tblcreditnotes` (`id`, `clientid`, `deleted_customer_name`, `number`, `prefix`, `number_format`, `datecreated`, `date`, `adminnote`, `terms`, `clientnote`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `status`, `project_id`, `discount_percent`, `discount_total`, `discount_type`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_credit_note`, `show_quantity_as`, `reference_no`) VALUES
(1, 1, NULL, 1, 'CN-', 1, '2022-08-23 16:17:44', '2022-08-23', 'عالی است', 'محشر', 'خیلی خوب', 3, '438750.00', '0.00', '698750.00', '260000.00', 1, 1, 1, '0.00', '0.00', '', 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnote_refunds`
--

CREATE TABLE `tblcreditnote_refunds` (
  `id` int(11) NOT NULL,
  `credit_note_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `refunded_on` date NOT NULL,
  `payment_mode` varchar(40) NOT NULL,
  `note` text DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcreditnote_refunds`
--

INSERT INTO `tblcreditnote_refunds` (`id`, `credit_note_id`, `staff_id`, `refunded_on`, `payment_mode`, `note`, `amount`, `created_at`) VALUES
(1, 1, 1, '2022-08-23', '1', 'اره پرداخت شد', '32000.00', '2022-08-23 16:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblcredits`
--

CREATE TABLE `tblcredits` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies`
--

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `symbol` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decimal_separator` varchar(5) DEFAULT NULL,
  `thousand_separator` varchar(5) DEFAULT NULL,
  `placement` varchar(10) DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `price`, `symbol`, `name`, `decimal_separator`, `thousand_separator`, `placement`, `isdefault`) VALUES
(1, 888, '$', 'USD', '.', ',', 'before', 0),
(2, 24224, 'â‚¬', 'EUR', ',', '.', 'before', 0),
(3, 1, 'ريال', 'IRR', '.', ',', 'after', 1),
(4, 2500000, '$', 'DPI', '.', ',', 'before', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrency_rates`
--

CREATE TABLE `tblcurrency_rates` (
  `id` int(11) UNSIGNED NOT NULL,
  `from_currency_id` int(11) DEFAULT NULL,
  `from_currency_name` varchar(100) DEFAULT NULL,
  `from_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `to_currency_id` int(11) DEFAULT NULL,
  `to_currency_name` varchar(100) DEFAULT NULL,
  `to_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrency_rate_logs`
--

CREATE TABLE `tblcurrency_rate_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `from_currency_id` int(11) DEFAULT NULL,
  `from_currency_name` varchar(100) DEFAULT NULL,
  `from_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `to_currency_id` int(11) DEFAULT NULL,
  `to_currency_name` varchar(100) DEFAULT NULL,
  `to_currency_rate` decimal(15,6) NOT NULL DEFAULT 0.000000,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers_groups`
--

CREATE TABLE `tblcustomers_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomers_groups`
--

INSERT INTO `tblcustomers_groups` (`id`, `name`) VALUES
(1, 'مشتریان خوب');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_admins`
--

CREATE TABLE `tblcustomer_admins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_groups`
--

CREATE TABLE `tblcustomer_groups` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomer_groups`
--

INSERT INTO `tblcustomer_groups` (`id`, `groupid`, `customer_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfields`
--

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL,
  `fieldto` varchar(30) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `display_inline` tinyint(1) NOT NULL DEFAULT 0,
  `field_order` int(11) DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT 0,
  `only_admin` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_client_portal` int(11) NOT NULL DEFAULT 0,
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT 0,
  `bs_column` int(11) NOT NULL DEFAULT 12,
  `default_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomfields`
--

INSERT INTO `tblcustomfields` (`id`, `fieldto`, `name`, `slug`, `required`, `type`, `options`, `display_inline`, `field_order`, `active`, `show_on_pdf`, `show_on_ticket_form`, `only_admin`, `show_on_table`, `show_on_client_portal`, `disalow_client_to_edit`, `bs_column`, `default_value`) VALUES
(3, 'items', 'کد کالا (product Number)', 'items_d_ala_product_number', 1, 'input', '', 0, 1, 0, 1, 0, 0, 1, 1, 0, 4, ''),
(4, 'warehouse_name', 'کد کالا (product Number)', 'warehouse_name_d_ala_product_number', 0, 'number', '', 0, 1, 0, 0, 0, 0, 1, 0, 0, 12, ''),
(8, 'leads', 'مخاطب', 'leads_mkhatb', 0, 'input', '', 0, 3, 1, 0, 0, 0, 1, 0, 0, 12, ''),
(9, 'items', 'برند', 'items_hello', 1, 'select', 'زیمنس,اندرس هاوزر,obo,اشکرافت,ویکا,اشنایدر,رکسروت,روزمونت', 0, 2, 0, 1, 0, 0, 1, 1, 0, 4, 'زیمنس'),
(10, 'items', 'کشور سازنده', 'items_shor_sazndh', 1, 'select', 'آلمان,آمریکا,اتریش,سوئیس,ایران', 0, 7, 0, 1, 0, 0, 1, 1, 0, 4, 'آلمان'),
(11, 'items', 'محصول جایگزین', 'items_mhsol_jaygzyn', 0, 'input', '', 0, 0, 0, 1, 0, 0, 1, 1, 0, 3, ''),
(12, 'items', 'کد جایگزین', 'items_d_jaygzyn', 0, 'input', '', 0, 0, 0, 1, 0, 0, 1, 1, 0, 3, ''),
(13, 'items', 'کشور سازنده جایگزین', 'items_shor_sazndh_2', 0, 'select', 'آلمان,آمریکا,اتریش,سوئیس,ایران', 0, 0, 0, 1, 0, 0, 1, 1, 0, 3, ''),
(14, 'items', 'برند جایگزین', 'items_brnd_jaygzyn', 0, 'select', 'زیمنس,اندرس هاوزر', 0, 0, 0, 1, 0, 0, 1, 1, 0, 3, 'زیمنس'),
(15, 'items', 'وزن(g)', 'items_ozn_gr', 1, 'number', '', 0, 8, 0, 1, 0, 0, 1, 1, 0, 3, ''),
(16, 'items', 'طول(cm)', 'items_tol_cm', 1, 'number', '', 0, 9, 0, 1, 0, 0, 1, 1, 0, 3, ''),
(17, 'items', 'عرض(cm)', 'items_arz_cm', 1, 'number', '', 0, 10, 0, 1, 0, 0, 1, 1, 0, 3, ''),
(18, 'items', 'ارتفاع(cm)', 'items_artfaa_cm', 1, 'number', '', 0, 11, 0, 1, 0, 0, 1, 1, 0, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfieldsvalues`
--

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomfieldsvalues`
--

INSERT INTO `tblcustomfieldsvalues` (`id`, `relid`, `fieldid`, `fieldto`, `value`) VALUES
(3, 15, 8, 'leads', 'عبدالالله مافی'),
(4, 16, 8, 'leads', 'اکبر علی قنبری'),
(5, 17, 8, 'leads', 'this_is_my_value'),
(6, 18, 8, 'leads', 'عبدالالله مافی'),
(7, 88, 3, 'items', '123'),
(8, 89, 3, 'items', '321'),
(9, 90, 3, 'items', '123'),
(10, 91, 3, 'items', '321'),
(11, 243658, 8, 'leads', 'عبدالالله مافی'),
(12, 243659, 8, 'leads', 'علی اصغر محسنی'),
(13, 243660, 8, 'leads', 'عبدالالله مافی'),
(14, 243661, 8, 'leads', 'علی اصغر محسنی'),
(15, 243662, 8, 'leads', 'this_is_my_value'),
(16, 243663, 8, 'leads', 'علی اصغر محسنی'),
(17, 98, 3, 'items', '5555555555'),
(18, 243664, 8, 'leads', 'عبدالالله مافی'),
(19, 99, 3, 'items', '333'),
(20, 243665, 8, 'leads', 'اکبر علی قنبری'),
(21, 243666, 8, 'leads', 'عبدالالله مافی'),
(22, 101, 3, 'items', '454544545'),
(23, 243667, 8, 'leads', 'this_is_my_value'),
(24, 102, 3, 'items', '78787878'),
(25, 243668, 8, 'leads', 'علی اصغر محسنی'),
(26, 243669, 8, 'leads', 'this_is_my_value'),
(27, 104, 3, 'items', '6666'),
(28, 105, 3, 'items', '44444'),
(29, 106, 3, 'items', '4545454'),
(30, 243671, 8, 'leads', 'علی اصغر محسنی'),
(31, 107, 3, 'items', '45'),
(32, 243673, 8, 'leads', 'علی اصغر محسنی'),
(33, 109, 3, 'items', '4545'),
(34, 243674, 8, 'leads', 'عبدالالله مافی'),
(35, 110, 3, 'items', '456'),
(36, 243675, 8, 'leads', 'اکبر علی قنبری'),
(37, 243676, 8, 'leads', 'علی اصغر محسنی'),
(38, 113, 3, 'items', '1010'),
(39, 114, 3, 'items', '10'),
(40, 115, 3, 'items', '1010'),
(41, 243677, 8, 'leads', 'عبدالالله مافی'),
(42, 116, 3, 'items', '1010'),
(43, 243678, 8, 'leads', 'اکبر علی قنبری'),
(44, 119, 3, 'items', '1010'),
(45, 120, 3, 'items', '1010'),
(46, 121, 3, 'items', '1010'),
(47, 122, 3, 'items', '1010'),
(48, 123, 3, 'items', '1010'),
(49, 124, 3, 'items', '1010'),
(50, 125, 3, 'items', '1010'),
(51, 126, 3, 'items', '1010'),
(52, 243679, 8, 'leads', 'عبدالالله مافی'),
(53, 243680, 8, 'leads', 'عبدالالله مافی'),
(54, 243681, 8, 'leads', 'عبدالالله مافی');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(191) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT 0,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(191) NOT NULL DEFAULT 'INBOX',
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `calendar_id` mediumtext DEFAULT NULL,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT 0,
  `parent_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`departmentid`, `name`, `imap_username`, `email`, `email_from_header`, `host`, `password`, `encryption`, `folder`, `delete_after_import`, `calendar_id`, `hidefromclient`, `manager_id`, `parent_id`) VALUES
(1, 'بازرگانی داخلی', 'talashcrm@gmail.com', NULL, 0, '', '', '', 'INBOX', 0, NULL, 0, 1, 5),
(2, 'فروش', 'talashcrm@gmail.com', NULL, 0, '', '', '', 'INBOX', 0, NULL, 0, 0, 5),
(3, 'بازرگانی خارجی', 'talashcrm@gmail.com', NULL, 0, '', '', '', 'INBOX', 0, NULL, 0, 0, 5),
(4, 'فنی', 'talashcrm@gmail.com', NULL, 0, '', '', '', 'INBOX', 0, NULL, 0, 0, 5),
(5, 'مدیریت', 'talashcrm@gmail.com', '', 0, '', '', '', 'INBOX', 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbldismissed_announcements`
--

CREATE TABLE `tbldismissed_announcements` (
  `dismissedannouncementid` int(11) NOT NULL,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailtemplates`
--

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style=\"font-size: 12pt;\"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href=\"{invoice_link}\"><span style=\"font-size: 12pt;\">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'Invoice # {invoice_number} ', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<p><span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}<br /></span><br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname}<br /><br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment Â (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the <a href=\"{contract_link}\">{contract_subject}</a> attached.<br /><br />Description: {contract_description}<br /><br /></span><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_public_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created - {project_name}', '<p>Hi {staff_firstname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello&nbsp;{staff_firstname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hi {staff_firstname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hi {staff_firstname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hi {staff_firstname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to set up your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br />Please set your new password in <strong>48 hours</strong>. After that, you won\'t be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br />Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hi {staff_firstname}</p>\r\n<p style=\"text-align: left;\">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\"><strong>{two_factor_auth_code}<br /><br /></strong><span style=\"font-size: 12pt;\">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href=\"{staff_reminder_relation_link}\">here</a> to view&nbsp;<a href=\"{staff_reminder_relation_link}\">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment Â (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi {staff_firstname}<br /><br />A new comment has been made to the contract&nbsp;<strong>{contract_subject}</strong><br /><br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href=\"{subscription_link}\">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br=\"\" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br />This could be due to a change in your card number, your card expiring,<br />cancellation of your credit card, or the card issuer not recognizing the<br />payment and therefore taking action to prevent it.<br /><br />Please update your payment information as soon as possible by logging in here:<br /><a href=\"{crm_url}/login\">{crm_url}/login</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to Staff)', 'Contract Expiration Reminder', 'Hi {staff_firstname}<br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href=\"{lead_link}\">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href=\"{crm_url}\">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
(70, 'contract', 'contract-signed-to-staff', 'english', 'Contract Signed (Sent to Staff)', 'Customer Signed a Contract', 'Hi {staff_firstname}<br /><br />A contract with subject&nbsp;<strong>{contract_subject} </strong>has been successfully signed by the customer.<br /><br />You can view the contract at the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(71, 'subscriptions', 'customer-subscribed-to-staff', 'english', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator)', 'Customer Subscribed to a Subscription', 'The customer <strong>{client_company}</strong> subscribed to a subscription with name&nbsp;<strong>{subscription_name}</strong><br /><br /><strong>ID</strong>:&nbsp;{subscription_id}<br /><strong>Subscription name</strong>:&nbsp;{subscription_name}<br /><strong>Subscription description</strong>:&nbsp;{subscription_description}<br /><br />You can view the subscription by clicking <a href=\"{subscription_link}\">here</a><br />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 10pt;\">&nbsp;</span></div>\r\nBest Regards,<br />{email_signature}<br /><br /><span style=\"font-size: 10pt;\"><span style=\"color: #999999;\">You are receiving this email because you are either administrator or you are creator of the subscription.</span></span>', '{companyname} | CRM', '', 0, 1, 0),
(72, 'client', 'contact-verification-email', 'english', 'Email Verification (Sent to Contact After Registration)', 'Verify Email Address', '<p>Hello&nbsp;{contact_firstname}<br /><br />Please click the button below to verify your email address.<br /><br /><a href=\"{email_verification_url}\">Verify Email Address</a><br /><br />If you did not create an account, no further action is required</p>\r\n<p><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(73, 'client', 'new-customer-profile-file-uploaded-to-staff', 'english', 'New Customer Profile File(s) Uploaded (Sent to Staff)', 'Customer Uploaded New File(s) in Profile', 'Hi!<br /><br />New file(s) is uploaded into the customer ({client_company}) profile by&nbsp;{contact_firstname}<br /><br />You can check the uploaded files into the admin area by clicking <a href=\"{customer_profile_files_admin_link}\">here</a> or at the following link:&nbsp;{customer_profile_files_admin_link}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(74, 'staff', 'event-notification-to-staff', 'english', 'Event Notification (Calendar)', 'Upcoming Event - {event_title}', 'Hi {staff_firstname}! <br /><br />This is a reminder for event <a href=\\\"{event_link}\\\">{event_title}</a> scheduled at {event_start_date}. <br /><br />Regards.', '', '', 0, 1, 0),
(75, 'subscriptions', 'subscription-payment-requires-action', 'english', 'Credit Card Authorization Required - SCA', 'Important: Confirm your subscription {subscription_name} payment', '<p>Hello {contact_firstname}</p>\r\n<p><strong>Your bank sometimes requires an additional step to make sure an online transaction was authorized.</strong><br /><br />Because of European regulation to protect consumers, many online payments now require two-factor authentication. Your bank ultimately decides when authentication is required to confirm a payment, but you may notice this step when you start paying for a service or when the cost changes.<br /><br />In order to pay the subscription <strong>{subscription_name}</strong>, you will need to&nbsp;confirm your payment by clicking on the follow link: <strong><a href=\"{subscription_authorize_payment_link}\">{subscription_authorize_payment_link}</a></strong><br /><br />To view the subscription, please click at the following link: <a href=\"{subscription_link}\"><span>{subscription_link}</span></a><br />or you can login in our dedicated area here: <a href=\"{crm_url}/login\">{crm_url}/login</a> in case you want to update your credit card or view the subscriptions you are subscribed.<br /><br />Best Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(76, 'invoice', 'invoice-due-notice', 'english', 'Invoice Due Notice', 'Your {invoice_number} will be due soon', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}<br /><br /></span>You invoice <span style=\"font-size: 12pt;\"><strong># {invoice_number} </strong>will be due on <strong>{invoice_duedate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(77, 'estimate_request', 'estimate-request-submitted-to-staff', 'english', 'Estimate Request Submitted (Sent to Staff)', 'New Estimate Request Submitted', '<span> Hello,&nbsp;</span><br /><br />{estimate_request_email} submitted an estimate request via the {estimate_request_form_name} form.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />==<br /><br />{estimate_request_submitted_data}<br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(78, 'estimate_request', 'estimate-request-assigned', 'english', 'Estimate Request Assigned (Sent to Staff)', 'New Estimate Request Assigned', '<span> Hello {estimate_request_assigned},&nbsp;</span><br /><br />Estimate request #{estimate_request_id} has been assigned to you.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(79, 'estimate_request', 'estimate-request-received-to-user', 'english', 'Estimate Request Received (Sent to User)', 'Estimate Request Received', 'Hello,<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(80, 'notifications', 'non-billed-tasks-reminder', 'english', 'Non-billed tasks reminder (sent to selected staff members)', 'Action required: Completed tasks are not billed', 'Hello {staff_firstname}<br><br>The following tasks are marked as complete but not yet billed:<br><br>{unbilled_tasks_list}<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(81, 'invoice', 'invoices-batch-payments', 'english', 'Invoices Payments Recorded in Batch (Sent to Customer)', 'We have received your payments', 'Hello {contact_firstname} {contact_lastname}<br><br>Thank you for the payments. Please find the payments details below:<br><br>{batch_payments_list}<br><br>We are looking forward working with you.<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(82, 'client', 'new-client-created', 'bulgarian', 'New Contact Added/Registered (Welcome Email) [bulgarian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(83, 'invoice', 'invoice-send-to-client', 'bulgarian', 'Send Invoice to Customer [bulgarian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(84, 'ticket', 'new-ticket-opened-admin', 'bulgarian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(85, 'ticket', 'ticket-reply', 'bulgarian', 'Ticket Reply (Sent to Customer) [bulgarian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(86, 'ticket', 'ticket-autoresponse', 'bulgarian', 'New Ticket Opened - Autoresponse [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(87, 'invoice', 'invoice-payment-recorded', 'bulgarian', 'Invoice Payment Recorded (Sent to Customer) [bulgarian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(88, 'invoice', 'invoice-overdue-notice', 'bulgarian', 'Invoice Overdue Notice [bulgarian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(89, 'invoice', 'invoice-already-send', 'bulgarian', 'Invoice Already Sent to Customer [bulgarian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(90, 'ticket', 'new-ticket-created-staff', 'bulgarian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [bulgarian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(91, 'estimate', 'estimate-send-to-client', 'bulgarian', 'Send Estimate to Customer [bulgarian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(92, 'ticket', 'ticket-reply-to-admin', 'bulgarian', 'Ticket Reply (Sent to Staff) [bulgarian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(93, 'estimate', 'estimate-already-send', 'bulgarian', 'Estimate Already Sent to Customer [bulgarian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(94, 'contract', 'contract-expiration', 'bulgarian', 'Contract Expiration Reminder (Sent to Customer Contacts) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(95, 'tasks', 'task-assigned', 'bulgarian', 'New Task Assigned (Sent to Staff) [bulgarian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(96, 'tasks', 'task-added-as-follower', 'bulgarian', 'Staff Member Added as Follower on Task (Sent to Staff) [bulgarian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(97, 'tasks', 'task-commented', 'bulgarian', 'New Comment on Task (Sent to Staff) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(98, 'tasks', 'task-added-attachment', 'bulgarian', 'New Attachment(s) on Task (Sent to Staff) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(99, 'estimate', 'estimate-declined-to-staff', 'bulgarian', 'Estimate Declined (Sent to Staff) [bulgarian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(100, 'estimate', 'estimate-accepted-to-staff', 'bulgarian', 'Estimate Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(101, 'proposals', 'proposal-client-accepted', 'bulgarian', 'Customer Action - Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(102, 'proposals', 'proposal-send-to-customer', 'bulgarian', 'Send Proposal to Customer [bulgarian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(103, 'proposals', 'proposal-client-declined', 'bulgarian', 'Customer Action - Declined (Sent to Staff) [bulgarian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(104, 'proposals', 'proposal-client-thank-you', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(105, 'proposals', 'proposal-comment-to-client', 'bulgarian', 'New Comment Â (Sent to Customer/Lead) [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(106, 'proposals', 'proposal-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(107, 'estimate', 'estimate-thank-you-to-customer', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(108, 'tasks', 'task-deadline-notification', 'bulgarian', 'Task Deadline Reminder - Sent to Assigned Members [bulgarian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(109, 'contract', 'send-contract', 'bulgarian', 'Send Contract to Customer [bulgarian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(110, 'invoice', 'invoice-payment-recorded-to-staff', 'bulgarian', 'Invoice Payment Recorded (Sent to Staff) [bulgarian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(111, 'ticket', 'auto-close-ticket', 'bulgarian', 'Auto Close Ticket [bulgarian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(112, 'project', 'new-project-discussion-created-to-staff', 'bulgarian', 'New Project Discussion (Sent to Project Members) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(113, 'project', 'new-project-discussion-created-to-customer', 'bulgarian', 'New Project Discussion (Sent to Customer Contacts) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(114, 'project', 'new-project-file-uploaded-to-customer', 'bulgarian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(115, 'project', 'new-project-file-uploaded-to-staff', 'bulgarian', 'New Project File(s) Uploaded (Sent to Project Members) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(116, 'project', 'new-project-discussion-comment-to-customer', 'bulgarian', 'New Discussion Comment  (Sent to Customer Contacts) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(117, 'project', 'new-project-discussion-comment-to-staff', 'bulgarian', 'New Discussion Comment (Sent to Project Members) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(118, 'project', 'staff-added-as-project-member', 'bulgarian', 'Staff Added as Project Member [bulgarian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(119, 'estimate', 'estimate-expiry-reminder', 'bulgarian', 'Estimate Expiration Reminder [bulgarian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(120, 'proposals', 'proposal-expiry-reminder', 'bulgarian', 'Proposal Expiration Reminder [bulgarian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(121, 'staff', 'new-staff-created', 'bulgarian', 'New Staff Created (Welcome Email) [bulgarian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(122, 'client', 'contact-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(123, 'client', 'contact-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(124, 'client', 'contact-set-password', 'bulgarian', 'Set New Password [bulgarian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(125, 'staff', 'staff-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(126, 'staff', 'staff-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(127, 'project', 'assigned-to-project', 'bulgarian', 'New Project Created (Sent to Customer Contacts) [bulgarian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(128, 'tasks', 'task-added-attachment-to-contacts', 'bulgarian', 'New Attachment(s) on Task (Sent to Customer Contacts) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(129, 'tasks', 'task-commented-to-contacts', 'bulgarian', 'New Comment on Task (Sent to Customer Contacts) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(130, 'leads', 'new-lead-assigned', 'bulgarian', 'New Lead Assigned to Staff Member [bulgarian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(131, 'client', 'client-statement', 'bulgarian', 'Statement - Account Summary [bulgarian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(132, 'ticket', 'ticket-assigned-to-admin', 'bulgarian', 'New Ticket Assigned (Sent to Staff) [bulgarian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(133, 'client', 'new-client-registered-to-admin', 'bulgarian', 'New Customer Registration (Sent to admins) [bulgarian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(134, 'leads', 'new-web-to-lead-form-submitted', 'bulgarian', 'Web to lead form submitted - Sent to lead [bulgarian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(135, 'staff', 'two-factor-authentication', 'bulgarian', 'Two Factor Authentication [bulgarian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(136, 'project', 'project-finished-to-customer', 'bulgarian', 'Project Marked as Finished (Sent to Customer Contacts) [bulgarian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(137, 'credit_note', 'credit-note-send-to-client', 'bulgarian', 'Send Credit Note To Email [bulgarian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(138, 'tasks', 'task-status-change-to-staff', 'bulgarian', 'Task Status Changed (Sent to Staff) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(139, 'tasks', 'task-status-change-to-contacts', 'bulgarian', 'Task Status Changed (Sent to Customer Contacts) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(140, 'staff', 'reminder-email-staff', 'bulgarian', 'Staff Reminder Email [bulgarian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(141, 'contract', 'contract-comment-to-client', 'bulgarian', 'New Comment Â (Sent to Customer Contacts) [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(142, 'contract', 'contract-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(143, 'subscriptions', 'send-subscription', 'bulgarian', 'Send Subscription to Customer [bulgarian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(144, 'subscriptions', 'subscription-payment-failed', 'bulgarian', 'Subscription Payment Failed [bulgarian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(145, 'subscriptions', 'subscription-canceled', 'bulgarian', 'Subscription Canceled (Sent to customer primary contact) [bulgarian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(146, 'subscriptions', 'subscription-payment-succeeded', 'bulgarian', 'Subscription Payment Succeeded (Sent to customer primary contact) [bulgarian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(147, 'contract', 'contract-expiration-to-staff', 'bulgarian', 'Contract Expiration Reminder (Sent to Staff) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(148, 'gdpr', 'gdpr-removal-request', 'bulgarian', 'Removal Request From Contact (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(149, 'gdpr', 'gdpr-removal-request-lead', 'bulgarian', 'Removal Request From Lead (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(150, 'client', 'client-registration-confirmed', 'bulgarian', 'Customer Registration Confirmed [bulgarian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(151, 'contract', 'contract-signed-to-staff', 'bulgarian', 'Contract Signed (Sent to Staff) [bulgarian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(152, 'subscriptions', 'customer-subscribed-to-staff', 'bulgarian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [bulgarian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(153, 'client', 'contact-verification-email', 'bulgarian', 'Email Verification (Sent to Contact After Registration) [bulgarian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(154, 'client', 'new-customer-profile-file-uploaded-to-staff', 'bulgarian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [bulgarian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(155, 'staff', 'event-notification-to-staff', 'bulgarian', 'Event Notification (Calendar) [bulgarian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(156, 'subscriptions', 'subscription-payment-requires-action', 'bulgarian', 'Credit Card Authorization Required - SCA [bulgarian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(157, 'invoice', 'invoice-due-notice', 'bulgarian', 'Invoice Due Notice [bulgarian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(158, 'estimate_request', 'estimate-request-submitted-to-staff', 'bulgarian', 'Estimate Request Submitted (Sent to Staff) [bulgarian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(159, 'estimate_request', 'estimate-request-assigned', 'bulgarian', 'Estimate Request Assigned (Sent to Staff) [bulgarian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(160, 'estimate_request', 'estimate-request-received-to-user', 'bulgarian', 'Estimate Request Received (Sent to User) [bulgarian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(161, 'notifications', 'non-billed-tasks-reminder', 'bulgarian', 'Non-billed tasks reminder (sent to selected staff members) [bulgarian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(162, 'invoice', 'invoices-batch-payments', 'bulgarian', 'Invoices Payments Recorded in Batch (Sent to Customer) [bulgarian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(163, 'client', 'new-client-created', 'catalan', 'New Contact Added/Registered (Welcome Email) [catalan]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(164, 'invoice', 'invoice-send-to-client', 'catalan', 'Send Invoice to Customer [catalan]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(165, 'ticket', 'new-ticket-opened-admin', 'catalan', 'New Ticket Opened (Opened by Staff, Sent to Customer) [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(166, 'ticket', 'ticket-reply', 'catalan', 'Ticket Reply (Sent to Customer) [catalan]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(167, 'ticket', 'ticket-autoresponse', 'catalan', 'New Ticket Opened - Autoresponse [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(168, 'invoice', 'invoice-payment-recorded', 'catalan', 'Invoice Payment Recorded (Sent to Customer) [catalan]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(169, 'invoice', 'invoice-overdue-notice', 'catalan', 'Invoice Overdue Notice [catalan]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(170, 'invoice', 'invoice-already-send', 'catalan', 'Invoice Already Sent to Customer [catalan]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(171, 'ticket', 'new-ticket-created-staff', 'catalan', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [catalan]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(172, 'estimate', 'estimate-send-to-client', 'catalan', 'Send Estimate to Customer [catalan]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(173, 'ticket', 'ticket-reply-to-admin', 'catalan', 'Ticket Reply (Sent to Staff) [catalan]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(174, 'estimate', 'estimate-already-send', 'catalan', 'Estimate Already Sent to Customer [catalan]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(175, 'contract', 'contract-expiration', 'catalan', 'Contract Expiration Reminder (Sent to Customer Contacts) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(176, 'tasks', 'task-assigned', 'catalan', 'New Task Assigned (Sent to Staff) [catalan]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(177, 'tasks', 'task-added-as-follower', 'catalan', 'Staff Member Added as Follower on Task (Sent to Staff) [catalan]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(178, 'tasks', 'task-commented', 'catalan', 'New Comment on Task (Sent to Staff) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(179, 'tasks', 'task-added-attachment', 'catalan', 'New Attachment(s) on Task (Sent to Staff) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(180, 'estimate', 'estimate-declined-to-staff', 'catalan', 'Estimate Declined (Sent to Staff) [catalan]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(181, 'estimate', 'estimate-accepted-to-staff', 'catalan', 'Estimate Accepted (Sent to Staff) [catalan]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(182, 'proposals', 'proposal-client-accepted', 'catalan', 'Customer Action - Accepted (Sent to Staff) [catalan]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(183, 'proposals', 'proposal-send-to-customer', 'catalan', 'Send Proposal to Customer [catalan]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(184, 'proposals', 'proposal-client-declined', 'catalan', 'Customer Action - Declined (Sent to Staff) [catalan]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(185, 'proposals', 'proposal-client-thank-you', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(186, 'proposals', 'proposal-comment-to-client', 'catalan', 'New Comment Â (Sent to Customer/Lead) [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(187, 'proposals', 'proposal-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(188, 'estimate', 'estimate-thank-you-to-customer', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(189, 'tasks', 'task-deadline-notification', 'catalan', 'Task Deadline Reminder - Sent to Assigned Members [catalan]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(190, 'contract', 'send-contract', 'catalan', 'Send Contract to Customer [catalan]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(191, 'invoice', 'invoice-payment-recorded-to-staff', 'catalan', 'Invoice Payment Recorded (Sent to Staff) [catalan]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(192, 'ticket', 'auto-close-ticket', 'catalan', 'Auto Close Ticket [catalan]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(193, 'project', 'new-project-discussion-created-to-staff', 'catalan', 'New Project Discussion (Sent to Project Members) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(194, 'project', 'new-project-discussion-created-to-customer', 'catalan', 'New Project Discussion (Sent to Customer Contacts) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(195, 'project', 'new-project-file-uploaded-to-customer', 'catalan', 'New Project File(s) Uploaded (Sent to Customer Contacts) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(196, 'project', 'new-project-file-uploaded-to-staff', 'catalan', 'New Project File(s) Uploaded (Sent to Project Members) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(197, 'project', 'new-project-discussion-comment-to-customer', 'catalan', 'New Discussion Comment  (Sent to Customer Contacts) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(198, 'project', 'new-project-discussion-comment-to-staff', 'catalan', 'New Discussion Comment (Sent to Project Members) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(199, 'project', 'staff-added-as-project-member', 'catalan', 'Staff Added as Project Member [catalan]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(200, 'estimate', 'estimate-expiry-reminder', 'catalan', 'Estimate Expiration Reminder [catalan]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(201, 'proposals', 'proposal-expiry-reminder', 'catalan', 'Proposal Expiration Reminder [catalan]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(202, 'staff', 'new-staff-created', 'catalan', 'New Staff Created (Welcome Email) [catalan]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(203, 'client', 'contact-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(204, 'client', 'contact-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(205, 'client', 'contact-set-password', 'catalan', 'Set New Password [catalan]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(206, 'staff', 'staff-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(207, 'staff', 'staff-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(208, 'project', 'assigned-to-project', 'catalan', 'New Project Created (Sent to Customer Contacts) [catalan]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(209, 'tasks', 'task-added-attachment-to-contacts', 'catalan', 'New Attachment(s) on Task (Sent to Customer Contacts) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(210, 'tasks', 'task-commented-to-contacts', 'catalan', 'New Comment on Task (Sent to Customer Contacts) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(211, 'leads', 'new-lead-assigned', 'catalan', 'New Lead Assigned to Staff Member [catalan]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(212, 'client', 'client-statement', 'catalan', 'Statement - Account Summary [catalan]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(213, 'ticket', 'ticket-assigned-to-admin', 'catalan', 'New Ticket Assigned (Sent to Staff) [catalan]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(214, 'client', 'new-client-registered-to-admin', 'catalan', 'New Customer Registration (Sent to admins) [catalan]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(215, 'leads', 'new-web-to-lead-form-submitted', 'catalan', 'Web to lead form submitted - Sent to lead [catalan]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(216, 'staff', 'two-factor-authentication', 'catalan', 'Two Factor Authentication [catalan]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(217, 'project', 'project-finished-to-customer', 'catalan', 'Project Marked as Finished (Sent to Customer Contacts) [catalan]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(218, 'credit_note', 'credit-note-send-to-client', 'catalan', 'Send Credit Note To Email [catalan]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(219, 'tasks', 'task-status-change-to-staff', 'catalan', 'Task Status Changed (Sent to Staff) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(220, 'tasks', 'task-status-change-to-contacts', 'catalan', 'Task Status Changed (Sent to Customer Contacts) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(221, 'staff', 'reminder-email-staff', 'catalan', 'Staff Reminder Email [catalan]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(222, 'contract', 'contract-comment-to-client', 'catalan', 'New Comment Â (Sent to Customer Contacts) [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(223, 'contract', 'contract-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(224, 'subscriptions', 'send-subscription', 'catalan', 'Send Subscription to Customer [catalan]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(225, 'subscriptions', 'subscription-payment-failed', 'catalan', 'Subscription Payment Failed [catalan]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(226, 'subscriptions', 'subscription-canceled', 'catalan', 'Subscription Canceled (Sent to customer primary contact) [catalan]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(227, 'subscriptions', 'subscription-payment-succeeded', 'catalan', 'Subscription Payment Succeeded (Sent to customer primary contact) [catalan]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(228, 'contract', 'contract-expiration-to-staff', 'catalan', 'Contract Expiration Reminder (Sent to Staff) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(229, 'gdpr', 'gdpr-removal-request', 'catalan', 'Removal Request From Contact (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(230, 'gdpr', 'gdpr-removal-request-lead', 'catalan', 'Removal Request From Lead (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(231, 'client', 'client-registration-confirmed', 'catalan', 'Customer Registration Confirmed [catalan]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(232, 'contract', 'contract-signed-to-staff', 'catalan', 'Contract Signed (Sent to Staff) [catalan]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(233, 'subscriptions', 'customer-subscribed-to-staff', 'catalan', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [catalan]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(234, 'client', 'contact-verification-email', 'catalan', 'Email Verification (Sent to Contact After Registration) [catalan]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(235, 'client', 'new-customer-profile-file-uploaded-to-staff', 'catalan', 'New Customer Profile File(s) Uploaded (Sent to Staff) [catalan]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(236, 'staff', 'event-notification-to-staff', 'catalan', 'Event Notification (Calendar) [catalan]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(237, 'subscriptions', 'subscription-payment-requires-action', 'catalan', 'Credit Card Authorization Required - SCA [catalan]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(238, 'invoice', 'invoice-due-notice', 'catalan', 'Invoice Due Notice [catalan]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(239, 'estimate_request', 'estimate-request-submitted-to-staff', 'catalan', 'Estimate Request Submitted (Sent to Staff) [catalan]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(240, 'estimate_request', 'estimate-request-assigned', 'catalan', 'Estimate Request Assigned (Sent to Staff) [catalan]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(241, 'estimate_request', 'estimate-request-received-to-user', 'catalan', 'Estimate Request Received (Sent to User) [catalan]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(242, 'notifications', 'non-billed-tasks-reminder', 'catalan', 'Non-billed tasks reminder (sent to selected staff members) [catalan]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(243, 'invoice', 'invoices-batch-payments', 'catalan', 'Invoices Payments Recorded in Batch (Sent to Customer) [catalan]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(244, 'client', 'new-client-created', 'chinese', 'New Contact Added/Registered (Welcome Email) [chinese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(245, 'invoice', 'invoice-send-to-client', 'chinese', 'Send Invoice to Customer [chinese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(246, 'ticket', 'new-ticket-opened-admin', 'chinese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(247, 'ticket', 'ticket-reply', 'chinese', 'Ticket Reply (Sent to Customer) [chinese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(248, 'ticket', 'ticket-autoresponse', 'chinese', 'New Ticket Opened - Autoresponse [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(249, 'invoice', 'invoice-payment-recorded', 'chinese', 'Invoice Payment Recorded (Sent to Customer) [chinese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(250, 'invoice', 'invoice-overdue-notice', 'chinese', 'Invoice Overdue Notice [chinese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(251, 'invoice', 'invoice-already-send', 'chinese', 'Invoice Already Sent to Customer [chinese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(252, 'ticket', 'new-ticket-created-staff', 'chinese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [chinese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(253, 'estimate', 'estimate-send-to-client', 'chinese', 'Send Estimate to Customer [chinese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(254, 'ticket', 'ticket-reply-to-admin', 'chinese', 'Ticket Reply (Sent to Staff) [chinese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(255, 'estimate', 'estimate-already-send', 'chinese', 'Estimate Already Sent to Customer [chinese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(256, 'contract', 'contract-expiration', 'chinese', 'Contract Expiration Reminder (Sent to Customer Contacts) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(257, 'tasks', 'task-assigned', 'chinese', 'New Task Assigned (Sent to Staff) [chinese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(258, 'tasks', 'task-added-as-follower', 'chinese', 'Staff Member Added as Follower on Task (Sent to Staff) [chinese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(259, 'tasks', 'task-commented', 'chinese', 'New Comment on Task (Sent to Staff) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(260, 'tasks', 'task-added-attachment', 'chinese', 'New Attachment(s) on Task (Sent to Staff) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(261, 'estimate', 'estimate-declined-to-staff', 'chinese', 'Estimate Declined (Sent to Staff) [chinese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(262, 'estimate', 'estimate-accepted-to-staff', 'chinese', 'Estimate Accepted (Sent to Staff) [chinese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(263, 'proposals', 'proposal-client-accepted', 'chinese', 'Customer Action - Accepted (Sent to Staff) [chinese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(264, 'proposals', 'proposal-send-to-customer', 'chinese', 'Send Proposal to Customer [chinese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(265, 'proposals', 'proposal-client-declined', 'chinese', 'Customer Action - Declined (Sent to Staff) [chinese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(266, 'proposals', 'proposal-client-thank-you', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(267, 'proposals', 'proposal-comment-to-client', 'chinese', 'New Comment Â (Sent to Customer/Lead) [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(268, 'proposals', 'proposal-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(269, 'estimate', 'estimate-thank-you-to-customer', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(270, 'tasks', 'task-deadline-notification', 'chinese', 'Task Deadline Reminder - Sent to Assigned Members [chinese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(271, 'contract', 'send-contract', 'chinese', 'Send Contract to Customer [chinese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(272, 'invoice', 'invoice-payment-recorded-to-staff', 'chinese', 'Invoice Payment Recorded (Sent to Staff) [chinese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(273, 'ticket', 'auto-close-ticket', 'chinese', 'Auto Close Ticket [chinese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(274, 'project', 'new-project-discussion-created-to-staff', 'chinese', 'New Project Discussion (Sent to Project Members) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(275, 'project', 'new-project-discussion-created-to-customer', 'chinese', 'New Project Discussion (Sent to Customer Contacts) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(276, 'project', 'new-project-file-uploaded-to-customer', 'chinese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(277, 'project', 'new-project-file-uploaded-to-staff', 'chinese', 'New Project File(s) Uploaded (Sent to Project Members) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(278, 'project', 'new-project-discussion-comment-to-customer', 'chinese', 'New Discussion Comment  (Sent to Customer Contacts) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(279, 'project', 'new-project-discussion-comment-to-staff', 'chinese', 'New Discussion Comment (Sent to Project Members) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(280, 'project', 'staff-added-as-project-member', 'chinese', 'Staff Added as Project Member [chinese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(281, 'estimate', 'estimate-expiry-reminder', 'chinese', 'Estimate Expiration Reminder [chinese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(282, 'proposals', 'proposal-expiry-reminder', 'chinese', 'Proposal Expiration Reminder [chinese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(283, 'staff', 'new-staff-created', 'chinese', 'New Staff Created (Welcome Email) [chinese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(284, 'client', 'contact-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(285, 'client', 'contact-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(286, 'client', 'contact-set-password', 'chinese', 'Set New Password [chinese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(287, 'staff', 'staff-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(288, 'staff', 'staff-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(289, 'project', 'assigned-to-project', 'chinese', 'New Project Created (Sent to Customer Contacts) [chinese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(290, 'tasks', 'task-added-attachment-to-contacts', 'chinese', 'New Attachment(s) on Task (Sent to Customer Contacts) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(291, 'tasks', 'task-commented-to-contacts', 'chinese', 'New Comment on Task (Sent to Customer Contacts) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(292, 'leads', 'new-lead-assigned', 'chinese', 'New Lead Assigned to Staff Member [chinese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(293, 'client', 'client-statement', 'chinese', 'Statement - Account Summary [chinese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(294, 'ticket', 'ticket-assigned-to-admin', 'chinese', 'New Ticket Assigned (Sent to Staff) [chinese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(295, 'client', 'new-client-registered-to-admin', 'chinese', 'New Customer Registration (Sent to admins) [chinese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(296, 'leads', 'new-web-to-lead-form-submitted', 'chinese', 'Web to lead form submitted - Sent to lead [chinese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(297, 'staff', 'two-factor-authentication', 'chinese', 'Two Factor Authentication [chinese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(298, 'project', 'project-finished-to-customer', 'chinese', 'Project Marked as Finished (Sent to Customer Contacts) [chinese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(299, 'credit_note', 'credit-note-send-to-client', 'chinese', 'Send Credit Note To Email [chinese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(300, 'tasks', 'task-status-change-to-staff', 'chinese', 'Task Status Changed (Sent to Staff) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(301, 'tasks', 'task-status-change-to-contacts', 'chinese', 'Task Status Changed (Sent to Customer Contacts) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(302, 'staff', 'reminder-email-staff', 'chinese', 'Staff Reminder Email [chinese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(303, 'contract', 'contract-comment-to-client', 'chinese', 'New Comment Â (Sent to Customer Contacts) [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(304, 'contract', 'contract-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(305, 'subscriptions', 'send-subscription', 'chinese', 'Send Subscription to Customer [chinese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(306, 'subscriptions', 'subscription-payment-failed', 'chinese', 'Subscription Payment Failed [chinese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(307, 'subscriptions', 'subscription-canceled', 'chinese', 'Subscription Canceled (Sent to customer primary contact) [chinese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(308, 'subscriptions', 'subscription-payment-succeeded', 'chinese', 'Subscription Payment Succeeded (Sent to customer primary contact) [chinese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(309, 'contract', 'contract-expiration-to-staff', 'chinese', 'Contract Expiration Reminder (Sent to Staff) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(310, 'gdpr', 'gdpr-removal-request', 'chinese', 'Removal Request From Contact (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(311, 'gdpr', 'gdpr-removal-request-lead', 'chinese', 'Removal Request From Lead (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(312, 'client', 'client-registration-confirmed', 'chinese', 'Customer Registration Confirmed [chinese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(313, 'contract', 'contract-signed-to-staff', 'chinese', 'Contract Signed (Sent to Staff) [chinese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(314, 'subscriptions', 'customer-subscribed-to-staff', 'chinese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [chinese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(315, 'client', 'contact-verification-email', 'chinese', 'Email Verification (Sent to Contact After Registration) [chinese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(316, 'client', 'new-customer-profile-file-uploaded-to-staff', 'chinese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [chinese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(317, 'staff', 'event-notification-to-staff', 'chinese', 'Event Notification (Calendar) [chinese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(318, 'subscriptions', 'subscription-payment-requires-action', 'chinese', 'Credit Card Authorization Required - SCA [chinese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(319, 'invoice', 'invoice-due-notice', 'chinese', 'Invoice Due Notice [chinese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(320, 'estimate_request', 'estimate-request-submitted-to-staff', 'chinese', 'Estimate Request Submitted (Sent to Staff) [chinese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(321, 'estimate_request', 'estimate-request-assigned', 'chinese', 'Estimate Request Assigned (Sent to Staff) [chinese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(322, 'estimate_request', 'estimate-request-received-to-user', 'chinese', 'Estimate Request Received (Sent to User) [chinese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(323, 'notifications', 'non-billed-tasks-reminder', 'chinese', 'Non-billed tasks reminder (sent to selected staff members) [chinese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(324, 'invoice', 'invoices-batch-payments', 'chinese', 'Invoices Payments Recorded in Batch (Sent to Customer) [chinese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(325, 'client', 'new-client-created', 'czech', 'New Contact Added/Registered (Welcome Email) [czech]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(326, 'invoice', 'invoice-send-to-client', 'czech', 'Send Invoice to Customer [czech]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(327, 'ticket', 'new-ticket-opened-admin', 'czech', 'New Ticket Opened (Opened by Staff, Sent to Customer) [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(328, 'ticket', 'ticket-reply', 'czech', 'Ticket Reply (Sent to Customer) [czech]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(329, 'ticket', 'ticket-autoresponse', 'czech', 'New Ticket Opened - Autoresponse [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(330, 'invoice', 'invoice-payment-recorded', 'czech', 'Invoice Payment Recorded (Sent to Customer) [czech]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(331, 'invoice', 'invoice-overdue-notice', 'czech', 'Invoice Overdue Notice [czech]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(332, 'invoice', 'invoice-already-send', 'czech', 'Invoice Already Sent to Customer [czech]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(333, 'ticket', 'new-ticket-created-staff', 'czech', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [czech]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(334, 'estimate', 'estimate-send-to-client', 'czech', 'Send Estimate to Customer [czech]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(335, 'ticket', 'ticket-reply-to-admin', 'czech', 'Ticket Reply (Sent to Staff) [czech]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(336, 'estimate', 'estimate-already-send', 'czech', 'Estimate Already Sent to Customer [czech]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(337, 'contract', 'contract-expiration', 'czech', 'Contract Expiration Reminder (Sent to Customer Contacts) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(338, 'tasks', 'task-assigned', 'czech', 'New Task Assigned (Sent to Staff) [czech]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(339, 'tasks', 'task-added-as-follower', 'czech', 'Staff Member Added as Follower on Task (Sent to Staff) [czech]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(340, 'tasks', 'task-commented', 'czech', 'New Comment on Task (Sent to Staff) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(341, 'tasks', 'task-added-attachment', 'czech', 'New Attachment(s) on Task (Sent to Staff) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(342, 'estimate', 'estimate-declined-to-staff', 'czech', 'Estimate Declined (Sent to Staff) [czech]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(343, 'estimate', 'estimate-accepted-to-staff', 'czech', 'Estimate Accepted (Sent to Staff) [czech]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(344, 'proposals', 'proposal-client-accepted', 'czech', 'Customer Action - Accepted (Sent to Staff) [czech]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(345, 'proposals', 'proposal-send-to-customer', 'czech', 'Send Proposal to Customer [czech]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(346, 'proposals', 'proposal-client-declined', 'czech', 'Customer Action - Declined (Sent to Staff) [czech]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(347, 'proposals', 'proposal-client-thank-you', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(348, 'proposals', 'proposal-comment-to-client', 'czech', 'New Comment Â (Sent to Customer/Lead) [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(349, 'proposals', 'proposal-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(350, 'estimate', 'estimate-thank-you-to-customer', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(351, 'tasks', 'task-deadline-notification', 'czech', 'Task Deadline Reminder - Sent to Assigned Members [czech]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(352, 'contract', 'send-contract', 'czech', 'Send Contract to Customer [czech]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(353, 'invoice', 'invoice-payment-recorded-to-staff', 'czech', 'Invoice Payment Recorded (Sent to Staff) [czech]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(354, 'ticket', 'auto-close-ticket', 'czech', 'Auto Close Ticket [czech]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(355, 'project', 'new-project-discussion-created-to-staff', 'czech', 'New Project Discussion (Sent to Project Members) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(356, 'project', 'new-project-discussion-created-to-customer', 'czech', 'New Project Discussion (Sent to Customer Contacts) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(357, 'project', 'new-project-file-uploaded-to-customer', 'czech', 'New Project File(s) Uploaded (Sent to Customer Contacts) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(358, 'project', 'new-project-file-uploaded-to-staff', 'czech', 'New Project File(s) Uploaded (Sent to Project Members) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(359, 'project', 'new-project-discussion-comment-to-customer', 'czech', 'New Discussion Comment  (Sent to Customer Contacts) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(360, 'project', 'new-project-discussion-comment-to-staff', 'czech', 'New Discussion Comment (Sent to Project Members) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(361, 'project', 'staff-added-as-project-member', 'czech', 'Staff Added as Project Member [czech]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(362, 'estimate', 'estimate-expiry-reminder', 'czech', 'Estimate Expiration Reminder [czech]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(363, 'proposals', 'proposal-expiry-reminder', 'czech', 'Proposal Expiration Reminder [czech]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(364, 'staff', 'new-staff-created', 'czech', 'New Staff Created (Welcome Email) [czech]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(365, 'client', 'contact-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(366, 'client', 'contact-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(367, 'client', 'contact-set-password', 'czech', 'Set New Password [czech]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(368, 'staff', 'staff-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(369, 'staff', 'staff-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(370, 'project', 'assigned-to-project', 'czech', 'New Project Created (Sent to Customer Contacts) [czech]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(371, 'tasks', 'task-added-attachment-to-contacts', 'czech', 'New Attachment(s) on Task (Sent to Customer Contacts) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(372, 'tasks', 'task-commented-to-contacts', 'czech', 'New Comment on Task (Sent to Customer Contacts) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(373, 'leads', 'new-lead-assigned', 'czech', 'New Lead Assigned to Staff Member [czech]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(374, 'client', 'client-statement', 'czech', 'Statement - Account Summary [czech]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(375, 'ticket', 'ticket-assigned-to-admin', 'czech', 'New Ticket Assigned (Sent to Staff) [czech]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(376, 'client', 'new-client-registered-to-admin', 'czech', 'New Customer Registration (Sent to admins) [czech]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(377, 'leads', 'new-web-to-lead-form-submitted', 'czech', 'Web to lead form submitted - Sent to lead [czech]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(378, 'staff', 'two-factor-authentication', 'czech', 'Two Factor Authentication [czech]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(379, 'project', 'project-finished-to-customer', 'czech', 'Project Marked as Finished (Sent to Customer Contacts) [czech]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(380, 'credit_note', 'credit-note-send-to-client', 'czech', 'Send Credit Note To Email [czech]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(381, 'tasks', 'task-status-change-to-staff', 'czech', 'Task Status Changed (Sent to Staff) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(382, 'tasks', 'task-status-change-to-contacts', 'czech', 'Task Status Changed (Sent to Customer Contacts) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(383, 'staff', 'reminder-email-staff', 'czech', 'Staff Reminder Email [czech]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(384, 'contract', 'contract-comment-to-client', 'czech', 'New Comment Â (Sent to Customer Contacts) [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(385, 'contract', 'contract-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(386, 'subscriptions', 'send-subscription', 'czech', 'Send Subscription to Customer [czech]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(387, 'subscriptions', 'subscription-payment-failed', 'czech', 'Subscription Payment Failed [czech]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(388, 'subscriptions', 'subscription-canceled', 'czech', 'Subscription Canceled (Sent to customer primary contact) [czech]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(389, 'subscriptions', 'subscription-payment-succeeded', 'czech', 'Subscription Payment Succeeded (Sent to customer primary contact) [czech]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(390, 'contract', 'contract-expiration-to-staff', 'czech', 'Contract Expiration Reminder (Sent to Staff) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(391, 'gdpr', 'gdpr-removal-request', 'czech', 'Removal Request From Contact (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(392, 'gdpr', 'gdpr-removal-request-lead', 'czech', 'Removal Request From Lead (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(393, 'client', 'client-registration-confirmed', 'czech', 'Customer Registration Confirmed [czech]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(394, 'contract', 'contract-signed-to-staff', 'czech', 'Contract Signed (Sent to Staff) [czech]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(395, 'subscriptions', 'customer-subscribed-to-staff', 'czech', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [czech]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(396, 'client', 'contact-verification-email', 'czech', 'Email Verification (Sent to Contact After Registration) [czech]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(397, 'client', 'new-customer-profile-file-uploaded-to-staff', 'czech', 'New Customer Profile File(s) Uploaded (Sent to Staff) [czech]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(398, 'staff', 'event-notification-to-staff', 'czech', 'Event Notification (Calendar) [czech]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(399, 'subscriptions', 'subscription-payment-requires-action', 'czech', 'Credit Card Authorization Required - SCA [czech]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(400, 'invoice', 'invoice-due-notice', 'czech', 'Invoice Due Notice [czech]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(401, 'estimate_request', 'estimate-request-submitted-to-staff', 'czech', 'Estimate Request Submitted (Sent to Staff) [czech]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(402, 'estimate_request', 'estimate-request-assigned', 'czech', 'Estimate Request Assigned (Sent to Staff) [czech]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(403, 'estimate_request', 'estimate-request-received-to-user', 'czech', 'Estimate Request Received (Sent to User) [czech]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(404, 'notifications', 'non-billed-tasks-reminder', 'czech', 'Non-billed tasks reminder (sent to selected staff members) [czech]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(405, 'invoice', 'invoices-batch-payments', 'czech', 'Invoices Payments Recorded in Batch (Sent to Customer) [czech]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(406, 'client', 'new-client-created', 'dutch', 'New Contact Added/Registered (Welcome Email) [dutch]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(407, 'invoice', 'invoice-send-to-client', 'dutch', 'Send Invoice to Customer [dutch]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(408, 'ticket', 'new-ticket-opened-admin', 'dutch', 'New Ticket Opened (Opened by Staff, Sent to Customer) [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(409, 'ticket', 'ticket-reply', 'dutch', 'Ticket Reply (Sent to Customer) [dutch]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(410, 'ticket', 'ticket-autoresponse', 'dutch', 'New Ticket Opened - Autoresponse [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(411, 'invoice', 'invoice-payment-recorded', 'dutch', 'Invoice Payment Recorded (Sent to Customer) [dutch]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(412, 'invoice', 'invoice-overdue-notice', 'dutch', 'Invoice Overdue Notice [dutch]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(413, 'invoice', 'invoice-already-send', 'dutch', 'Invoice Already Sent to Customer [dutch]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(414, 'ticket', 'new-ticket-created-staff', 'dutch', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [dutch]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(415, 'estimate', 'estimate-send-to-client', 'dutch', 'Send Estimate to Customer [dutch]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(416, 'ticket', 'ticket-reply-to-admin', 'dutch', 'Ticket Reply (Sent to Staff) [dutch]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(417, 'estimate', 'estimate-already-send', 'dutch', 'Estimate Already Sent to Customer [dutch]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(418, 'contract', 'contract-expiration', 'dutch', 'Contract Expiration Reminder (Sent to Customer Contacts) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(419, 'tasks', 'task-assigned', 'dutch', 'New Task Assigned (Sent to Staff) [dutch]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(420, 'tasks', 'task-added-as-follower', 'dutch', 'Staff Member Added as Follower on Task (Sent to Staff) [dutch]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(421, 'tasks', 'task-commented', 'dutch', 'New Comment on Task (Sent to Staff) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(422, 'tasks', 'task-added-attachment', 'dutch', 'New Attachment(s) on Task (Sent to Staff) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(423, 'estimate', 'estimate-declined-to-staff', 'dutch', 'Estimate Declined (Sent to Staff) [dutch]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(424, 'estimate', 'estimate-accepted-to-staff', 'dutch', 'Estimate Accepted (Sent to Staff) [dutch]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(425, 'proposals', 'proposal-client-accepted', 'dutch', 'Customer Action - Accepted (Sent to Staff) [dutch]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(426, 'proposals', 'proposal-send-to-customer', 'dutch', 'Send Proposal to Customer [dutch]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(427, 'proposals', 'proposal-client-declined', 'dutch', 'Customer Action - Declined (Sent to Staff) [dutch]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(428, 'proposals', 'proposal-client-thank-you', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(429, 'proposals', 'proposal-comment-to-client', 'dutch', 'New Comment Â (Sent to Customer/Lead) [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(430, 'proposals', 'proposal-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(431, 'estimate', 'estimate-thank-you-to-customer', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(432, 'tasks', 'task-deadline-notification', 'dutch', 'Task Deadline Reminder - Sent to Assigned Members [dutch]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(433, 'contract', 'send-contract', 'dutch', 'Send Contract to Customer [dutch]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(434, 'invoice', 'invoice-payment-recorded-to-staff', 'dutch', 'Invoice Payment Recorded (Sent to Staff) [dutch]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(435, 'ticket', 'auto-close-ticket', 'dutch', 'Auto Close Ticket [dutch]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(436, 'project', 'new-project-discussion-created-to-staff', 'dutch', 'New Project Discussion (Sent to Project Members) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(437, 'project', 'new-project-discussion-created-to-customer', 'dutch', 'New Project Discussion (Sent to Customer Contacts) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(438, 'project', 'new-project-file-uploaded-to-customer', 'dutch', 'New Project File(s) Uploaded (Sent to Customer Contacts) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(439, 'project', 'new-project-file-uploaded-to-staff', 'dutch', 'New Project File(s) Uploaded (Sent to Project Members) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(440, 'project', 'new-project-discussion-comment-to-customer', 'dutch', 'New Discussion Comment  (Sent to Customer Contacts) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(441, 'project', 'new-project-discussion-comment-to-staff', 'dutch', 'New Discussion Comment (Sent to Project Members) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(442, 'project', 'staff-added-as-project-member', 'dutch', 'Staff Added as Project Member [dutch]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(443, 'estimate', 'estimate-expiry-reminder', 'dutch', 'Estimate Expiration Reminder [dutch]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(444, 'proposals', 'proposal-expiry-reminder', 'dutch', 'Proposal Expiration Reminder [dutch]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(445, 'staff', 'new-staff-created', 'dutch', 'New Staff Created (Welcome Email) [dutch]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(446, 'client', 'contact-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(447, 'client', 'contact-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(448, 'client', 'contact-set-password', 'dutch', 'Set New Password [dutch]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(449, 'staff', 'staff-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(450, 'staff', 'staff-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(451, 'project', 'assigned-to-project', 'dutch', 'New Project Created (Sent to Customer Contacts) [dutch]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(452, 'tasks', 'task-added-attachment-to-contacts', 'dutch', 'New Attachment(s) on Task (Sent to Customer Contacts) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(453, 'tasks', 'task-commented-to-contacts', 'dutch', 'New Comment on Task (Sent to Customer Contacts) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(454, 'leads', 'new-lead-assigned', 'dutch', 'New Lead Assigned to Staff Member [dutch]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(455, 'client', 'client-statement', 'dutch', 'Statement - Account Summary [dutch]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(456, 'ticket', 'ticket-assigned-to-admin', 'dutch', 'New Ticket Assigned (Sent to Staff) [dutch]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(457, 'client', 'new-client-registered-to-admin', 'dutch', 'New Customer Registration (Sent to admins) [dutch]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(458, 'leads', 'new-web-to-lead-form-submitted', 'dutch', 'Web to lead form submitted - Sent to lead [dutch]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(459, 'staff', 'two-factor-authentication', 'dutch', 'Two Factor Authentication [dutch]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(460, 'project', 'project-finished-to-customer', 'dutch', 'Project Marked as Finished (Sent to Customer Contacts) [dutch]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(461, 'credit_note', 'credit-note-send-to-client', 'dutch', 'Send Credit Note To Email [dutch]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(462, 'tasks', 'task-status-change-to-staff', 'dutch', 'Task Status Changed (Sent to Staff) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(463, 'tasks', 'task-status-change-to-contacts', 'dutch', 'Task Status Changed (Sent to Customer Contacts) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(464, 'staff', 'reminder-email-staff', 'dutch', 'Staff Reminder Email [dutch]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(465, 'contract', 'contract-comment-to-client', 'dutch', 'New Comment Â (Sent to Customer Contacts) [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(466, 'contract', 'contract-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(467, 'subscriptions', 'send-subscription', 'dutch', 'Send Subscription to Customer [dutch]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(468, 'subscriptions', 'subscription-payment-failed', 'dutch', 'Subscription Payment Failed [dutch]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(469, 'subscriptions', 'subscription-canceled', 'dutch', 'Subscription Canceled (Sent to customer primary contact) [dutch]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(470, 'subscriptions', 'subscription-payment-succeeded', 'dutch', 'Subscription Payment Succeeded (Sent to customer primary contact) [dutch]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(471, 'contract', 'contract-expiration-to-staff', 'dutch', 'Contract Expiration Reminder (Sent to Staff) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(472, 'gdpr', 'gdpr-removal-request', 'dutch', 'Removal Request From Contact (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(473, 'gdpr', 'gdpr-removal-request-lead', 'dutch', 'Removal Request From Lead (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(474, 'client', 'client-registration-confirmed', 'dutch', 'Customer Registration Confirmed [dutch]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(475, 'contract', 'contract-signed-to-staff', 'dutch', 'Contract Signed (Sent to Staff) [dutch]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(476, 'subscriptions', 'customer-subscribed-to-staff', 'dutch', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [dutch]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(477, 'client', 'contact-verification-email', 'dutch', 'Email Verification (Sent to Contact After Registration) [dutch]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(478, 'client', 'new-customer-profile-file-uploaded-to-staff', 'dutch', 'New Customer Profile File(s) Uploaded (Sent to Staff) [dutch]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(479, 'staff', 'event-notification-to-staff', 'dutch', 'Event Notification (Calendar) [dutch]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(480, 'subscriptions', 'subscription-payment-requires-action', 'dutch', 'Credit Card Authorization Required - SCA [dutch]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(481, 'invoice', 'invoice-due-notice', 'dutch', 'Invoice Due Notice [dutch]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(482, 'estimate_request', 'estimate-request-submitted-to-staff', 'dutch', 'Estimate Request Submitted (Sent to Staff) [dutch]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(483, 'estimate_request', 'estimate-request-assigned', 'dutch', 'Estimate Request Assigned (Sent to Staff) [dutch]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(484, 'estimate_request', 'estimate-request-received-to-user', 'dutch', 'Estimate Request Received (Sent to User) [dutch]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(485, 'notifications', 'non-billed-tasks-reminder', 'dutch', 'Non-billed tasks reminder (sent to selected staff members) [dutch]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(486, 'invoice', 'invoices-batch-payments', 'dutch', 'Invoices Payments Recorded in Batch (Sent to Customer) [dutch]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(487, 'client', 'new-client-created', 'french', 'New Contact Added/Registered (Welcome Email) [french]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(488, 'invoice', 'invoice-send-to-client', 'french', 'Send Invoice to Customer [french]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(489, 'ticket', 'new-ticket-opened-admin', 'french', 'New Ticket Opened (Opened by Staff, Sent to Customer) [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(490, 'ticket', 'ticket-reply', 'french', 'Ticket Reply (Sent to Customer) [french]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(491, 'ticket', 'ticket-autoresponse', 'french', 'New Ticket Opened - Autoresponse [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(492, 'invoice', 'invoice-payment-recorded', 'french', 'Invoice Payment Recorded (Sent to Customer) [french]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(493, 'invoice', 'invoice-overdue-notice', 'french', 'Invoice Overdue Notice [french]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(494, 'invoice', 'invoice-already-send', 'french', 'Invoice Already Sent to Customer [french]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(495, 'ticket', 'new-ticket-created-staff', 'french', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [french]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(496, 'estimate', 'estimate-send-to-client', 'french', 'Send Estimate to Customer [french]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(497, 'ticket', 'ticket-reply-to-admin', 'french', 'Ticket Reply (Sent to Staff) [french]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(498, 'estimate', 'estimate-already-send', 'french', 'Estimate Already Sent to Customer [french]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(499, 'contract', 'contract-expiration', 'french', 'Contract Expiration Reminder (Sent to Customer Contacts) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(500, 'tasks', 'task-assigned', 'french', 'New Task Assigned (Sent to Staff) [french]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(501, 'tasks', 'task-added-as-follower', 'french', 'Staff Member Added as Follower on Task (Sent to Staff) [french]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(502, 'tasks', 'task-commented', 'french', 'New Comment on Task (Sent to Staff) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(503, 'tasks', 'task-added-attachment', 'french', 'New Attachment(s) on Task (Sent to Staff) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(504, 'estimate', 'estimate-declined-to-staff', 'french', 'Estimate Declined (Sent to Staff) [french]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(505, 'estimate', 'estimate-accepted-to-staff', 'french', 'Estimate Accepted (Sent to Staff) [french]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(506, 'proposals', 'proposal-client-accepted', 'french', 'Customer Action - Accepted (Sent to Staff) [french]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(507, 'proposals', 'proposal-send-to-customer', 'french', 'Send Proposal to Customer [french]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(508, 'proposals', 'proposal-client-declined', 'french', 'Customer Action - Declined (Sent to Staff) [french]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(509, 'proposals', 'proposal-client-thank-you', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(510, 'proposals', 'proposal-comment-to-client', 'french', 'New Comment Â (Sent to Customer/Lead) [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(511, 'proposals', 'proposal-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(512, 'estimate', 'estimate-thank-you-to-customer', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(513, 'tasks', 'task-deadline-notification', 'french', 'Task Deadline Reminder - Sent to Assigned Members [french]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(514, 'contract', 'send-contract', 'french', 'Send Contract to Customer [french]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(515, 'invoice', 'invoice-payment-recorded-to-staff', 'french', 'Invoice Payment Recorded (Sent to Staff) [french]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(516, 'ticket', 'auto-close-ticket', 'french', 'Auto Close Ticket [french]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(517, 'project', 'new-project-discussion-created-to-staff', 'french', 'New Project Discussion (Sent to Project Members) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(518, 'project', 'new-project-discussion-created-to-customer', 'french', 'New Project Discussion (Sent to Customer Contacts) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(519, 'project', 'new-project-file-uploaded-to-customer', 'french', 'New Project File(s) Uploaded (Sent to Customer Contacts) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(520, 'project', 'new-project-file-uploaded-to-staff', 'french', 'New Project File(s) Uploaded (Sent to Project Members) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(521, 'project', 'new-project-discussion-comment-to-customer', 'french', 'New Discussion Comment  (Sent to Customer Contacts) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(522, 'project', 'new-project-discussion-comment-to-staff', 'french', 'New Discussion Comment (Sent to Project Members) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(523, 'project', 'staff-added-as-project-member', 'french', 'Staff Added as Project Member [french]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(524, 'estimate', 'estimate-expiry-reminder', 'french', 'Estimate Expiration Reminder [french]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(525, 'proposals', 'proposal-expiry-reminder', 'french', 'Proposal Expiration Reminder [french]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(526, 'staff', 'new-staff-created', 'french', 'New Staff Created (Welcome Email) [french]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(527, 'client', 'contact-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(528, 'client', 'contact-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(529, 'client', 'contact-set-password', 'french', 'Set New Password [french]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(530, 'staff', 'staff-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(531, 'staff', 'staff-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(532, 'project', 'assigned-to-project', 'french', 'New Project Created (Sent to Customer Contacts) [french]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(533, 'tasks', 'task-added-attachment-to-contacts', 'french', 'New Attachment(s) on Task (Sent to Customer Contacts) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(534, 'tasks', 'task-commented-to-contacts', 'french', 'New Comment on Task (Sent to Customer Contacts) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(535, 'leads', 'new-lead-assigned', 'french', 'New Lead Assigned to Staff Member [french]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(536, 'client', 'client-statement', 'french', 'Statement - Account Summary [french]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(537, 'ticket', 'ticket-assigned-to-admin', 'french', 'New Ticket Assigned (Sent to Staff) [french]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(538, 'client', 'new-client-registered-to-admin', 'french', 'New Customer Registration (Sent to admins) [french]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(539, 'leads', 'new-web-to-lead-form-submitted', 'french', 'Web to lead form submitted - Sent to lead [french]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(540, 'staff', 'two-factor-authentication', 'french', 'Two Factor Authentication [french]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(541, 'project', 'project-finished-to-customer', 'french', 'Project Marked as Finished (Sent to Customer Contacts) [french]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(542, 'credit_note', 'credit-note-send-to-client', 'french', 'Send Credit Note To Email [french]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(543, 'tasks', 'task-status-change-to-staff', 'french', 'Task Status Changed (Sent to Staff) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(544, 'tasks', 'task-status-change-to-contacts', 'french', 'Task Status Changed (Sent to Customer Contacts) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(545, 'staff', 'reminder-email-staff', 'french', 'Staff Reminder Email [french]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(546, 'contract', 'contract-comment-to-client', 'french', 'New Comment Â (Sent to Customer Contacts) [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(547, 'contract', 'contract-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(548, 'subscriptions', 'send-subscription', 'french', 'Send Subscription to Customer [french]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(549, 'subscriptions', 'subscription-payment-failed', 'french', 'Subscription Payment Failed [french]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(550, 'subscriptions', 'subscription-canceled', 'french', 'Subscription Canceled (Sent to customer primary contact) [french]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(551, 'subscriptions', 'subscription-payment-succeeded', 'french', 'Subscription Payment Succeeded (Sent to customer primary contact) [french]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(552, 'contract', 'contract-expiration-to-staff', 'french', 'Contract Expiration Reminder (Sent to Staff) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(553, 'gdpr', 'gdpr-removal-request', 'french', 'Removal Request From Contact (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(554, 'gdpr', 'gdpr-removal-request-lead', 'french', 'Removal Request From Lead (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(555, 'client', 'client-registration-confirmed', 'french', 'Customer Registration Confirmed [french]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(556, 'contract', 'contract-signed-to-staff', 'french', 'Contract Signed (Sent to Staff) [french]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(557, 'subscriptions', 'customer-subscribed-to-staff', 'french', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [french]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(558, 'client', 'contact-verification-email', 'french', 'Email Verification (Sent to Contact After Registration) [french]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(559, 'client', 'new-customer-profile-file-uploaded-to-staff', 'french', 'New Customer Profile File(s) Uploaded (Sent to Staff) [french]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(560, 'staff', 'event-notification-to-staff', 'french', 'Event Notification (Calendar) [french]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(561, 'subscriptions', 'subscription-payment-requires-action', 'french', 'Credit Card Authorization Required - SCA [french]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(562, 'invoice', 'invoice-due-notice', 'french', 'Invoice Due Notice [french]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(563, 'estimate_request', 'estimate-request-submitted-to-staff', 'french', 'Estimate Request Submitted (Sent to Staff) [french]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(564, 'estimate_request', 'estimate-request-assigned', 'french', 'Estimate Request Assigned (Sent to Staff) [french]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(565, 'estimate_request', 'estimate-request-received-to-user', 'french', 'Estimate Request Received (Sent to User) [french]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(566, 'notifications', 'non-billed-tasks-reminder', 'french', 'Non-billed tasks reminder (sent to selected staff members) [french]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(567, 'invoice', 'invoices-batch-payments', 'french', 'Invoices Payments Recorded in Batch (Sent to Customer) [french]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(568, 'client', 'new-client-created', 'german', 'New Contact Added/Registered (Welcome Email) [german]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(569, 'invoice', 'invoice-send-to-client', 'german', 'Send Invoice to Customer [german]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(570, 'ticket', 'new-ticket-opened-admin', 'german', 'New Ticket Opened (Opened by Staff, Sent to Customer) [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(571, 'ticket', 'ticket-reply', 'german', 'Ticket Reply (Sent to Customer) [german]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(572, 'ticket', 'ticket-autoresponse', 'german', 'New Ticket Opened - Autoresponse [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(573, 'invoice', 'invoice-payment-recorded', 'german', 'Invoice Payment Recorded (Sent to Customer) [german]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(574, 'invoice', 'invoice-overdue-notice', 'german', 'Invoice Overdue Notice [german]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(575, 'invoice', 'invoice-already-send', 'german', 'Invoice Already Sent to Customer [german]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(576, 'ticket', 'new-ticket-created-staff', 'german', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [german]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(577, 'estimate', 'estimate-send-to-client', 'german', 'Send Estimate to Customer [german]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(578, 'ticket', 'ticket-reply-to-admin', 'german', 'Ticket Reply (Sent to Staff) [german]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(579, 'estimate', 'estimate-already-send', 'german', 'Estimate Already Sent to Customer [german]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(580, 'contract', 'contract-expiration', 'german', 'Contract Expiration Reminder (Sent to Customer Contacts) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(581, 'tasks', 'task-assigned', 'german', 'New Task Assigned (Sent to Staff) [german]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(582, 'tasks', 'task-added-as-follower', 'german', 'Staff Member Added as Follower on Task (Sent to Staff) [german]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(583, 'tasks', 'task-commented', 'german', 'New Comment on Task (Sent to Staff) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(584, 'tasks', 'task-added-attachment', 'german', 'New Attachment(s) on Task (Sent to Staff) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(585, 'estimate', 'estimate-declined-to-staff', 'german', 'Estimate Declined (Sent to Staff) [german]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(586, 'estimate', 'estimate-accepted-to-staff', 'german', 'Estimate Accepted (Sent to Staff) [german]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(587, 'proposals', 'proposal-client-accepted', 'german', 'Customer Action - Accepted (Sent to Staff) [german]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(588, 'proposals', 'proposal-send-to-customer', 'german', 'Send Proposal to Customer [german]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(589, 'proposals', 'proposal-client-declined', 'german', 'Customer Action - Declined (Sent to Staff) [german]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(590, 'proposals', 'proposal-client-thank-you', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(591, 'proposals', 'proposal-comment-to-client', 'german', 'New Comment Â (Sent to Customer/Lead) [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(592, 'proposals', 'proposal-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(593, 'estimate', 'estimate-thank-you-to-customer', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(594, 'tasks', 'task-deadline-notification', 'german', 'Task Deadline Reminder - Sent to Assigned Members [german]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(595, 'contract', 'send-contract', 'german', 'Send Contract to Customer [german]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(596, 'invoice', 'invoice-payment-recorded-to-staff', 'german', 'Invoice Payment Recorded (Sent to Staff) [german]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(597, 'ticket', 'auto-close-ticket', 'german', 'Auto Close Ticket [german]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(598, 'project', 'new-project-discussion-created-to-staff', 'german', 'New Project Discussion (Sent to Project Members) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(599, 'project', 'new-project-discussion-created-to-customer', 'german', 'New Project Discussion (Sent to Customer Contacts) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(600, 'project', 'new-project-file-uploaded-to-customer', 'german', 'New Project File(s) Uploaded (Sent to Customer Contacts) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(601, 'project', 'new-project-file-uploaded-to-staff', 'german', 'New Project File(s) Uploaded (Sent to Project Members) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(602, 'project', 'new-project-discussion-comment-to-customer', 'german', 'New Discussion Comment  (Sent to Customer Contacts) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(603, 'project', 'new-project-discussion-comment-to-staff', 'german', 'New Discussion Comment (Sent to Project Members) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(604, 'project', 'staff-added-as-project-member', 'german', 'Staff Added as Project Member [german]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(605, 'estimate', 'estimate-expiry-reminder', 'german', 'Estimate Expiration Reminder [german]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(606, 'proposals', 'proposal-expiry-reminder', 'german', 'Proposal Expiration Reminder [german]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(607, 'staff', 'new-staff-created', 'german', 'New Staff Created (Welcome Email) [german]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(608, 'client', 'contact-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(609, 'client', 'contact-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(610, 'client', 'contact-set-password', 'german', 'Set New Password [german]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(611, 'staff', 'staff-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(612, 'staff', 'staff-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(613, 'project', 'assigned-to-project', 'german', 'New Project Created (Sent to Customer Contacts) [german]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(614, 'tasks', 'task-added-attachment-to-contacts', 'german', 'New Attachment(s) on Task (Sent to Customer Contacts) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(615, 'tasks', 'task-commented-to-contacts', 'german', 'New Comment on Task (Sent to Customer Contacts) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(616, 'leads', 'new-lead-assigned', 'german', 'New Lead Assigned to Staff Member [german]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(617, 'client', 'client-statement', 'german', 'Statement - Account Summary [german]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(618, 'ticket', 'ticket-assigned-to-admin', 'german', 'New Ticket Assigned (Sent to Staff) [german]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(619, 'client', 'new-client-registered-to-admin', 'german', 'New Customer Registration (Sent to admins) [german]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(620, 'leads', 'new-web-to-lead-form-submitted', 'german', 'Web to lead form submitted - Sent to lead [german]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(621, 'staff', 'two-factor-authentication', 'german', 'Two Factor Authentication [german]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(622, 'project', 'project-finished-to-customer', 'german', 'Project Marked as Finished (Sent to Customer Contacts) [german]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(623, 'credit_note', 'credit-note-send-to-client', 'german', 'Send Credit Note To Email [german]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(624, 'tasks', 'task-status-change-to-staff', 'german', 'Task Status Changed (Sent to Staff) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(625, 'tasks', 'task-status-change-to-contacts', 'german', 'Task Status Changed (Sent to Customer Contacts) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(626, 'staff', 'reminder-email-staff', 'german', 'Staff Reminder Email [german]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(627, 'contract', 'contract-comment-to-client', 'german', 'New Comment Â (Sent to Customer Contacts) [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(628, 'contract', 'contract-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(629, 'subscriptions', 'send-subscription', 'german', 'Send Subscription to Customer [german]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(630, 'subscriptions', 'subscription-payment-failed', 'german', 'Subscription Payment Failed [german]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(631, 'subscriptions', 'subscription-canceled', 'german', 'Subscription Canceled (Sent to customer primary contact) [german]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(632, 'subscriptions', 'subscription-payment-succeeded', 'german', 'Subscription Payment Succeeded (Sent to customer primary contact) [german]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(633, 'contract', 'contract-expiration-to-staff', 'german', 'Contract Expiration Reminder (Sent to Staff) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(634, 'gdpr', 'gdpr-removal-request', 'german', 'Removal Request From Contact (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(635, 'gdpr', 'gdpr-removal-request-lead', 'german', 'Removal Request From Lead (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(636, 'client', 'client-registration-confirmed', 'german', 'Customer Registration Confirmed [german]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(637, 'contract', 'contract-signed-to-staff', 'german', 'Contract Signed (Sent to Staff) [german]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(638, 'subscriptions', 'customer-subscribed-to-staff', 'german', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [german]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(639, 'client', 'contact-verification-email', 'german', 'Email Verification (Sent to Contact After Registration) [german]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(640, 'client', 'new-customer-profile-file-uploaded-to-staff', 'german', 'New Customer Profile File(s) Uploaded (Sent to Staff) [german]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(641, 'staff', 'event-notification-to-staff', 'german', 'Event Notification (Calendar) [german]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(642, 'subscriptions', 'subscription-payment-requires-action', 'german', 'Credit Card Authorization Required - SCA [german]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(643, 'invoice', 'invoice-due-notice', 'german', 'Invoice Due Notice [german]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(644, 'estimate_request', 'estimate-request-submitted-to-staff', 'german', 'Estimate Request Submitted (Sent to Staff) [german]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(645, 'estimate_request', 'estimate-request-assigned', 'german', 'Estimate Request Assigned (Sent to Staff) [german]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(646, 'estimate_request', 'estimate-request-received-to-user', 'german', 'Estimate Request Received (Sent to User) [german]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(647, 'notifications', 'non-billed-tasks-reminder', 'german', 'Non-billed tasks reminder (sent to selected staff members) [german]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(648, 'invoice', 'invoices-batch-payments', 'german', 'Invoices Payments Recorded in Batch (Sent to Customer) [german]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(649, 'client', 'new-client-created', 'greek', 'New Contact Added/Registered (Welcome Email) [greek]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(650, 'invoice', 'invoice-send-to-client', 'greek', 'Send Invoice to Customer [greek]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(651, 'ticket', 'new-ticket-opened-admin', 'greek', 'New Ticket Opened (Opened by Staff, Sent to Customer) [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(652, 'ticket', 'ticket-reply', 'greek', 'Ticket Reply (Sent to Customer) [greek]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(653, 'ticket', 'ticket-autoresponse', 'greek', 'New Ticket Opened - Autoresponse [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(654, 'invoice', 'invoice-payment-recorded', 'greek', 'Invoice Payment Recorded (Sent to Customer) [greek]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(655, 'invoice', 'invoice-overdue-notice', 'greek', 'Invoice Overdue Notice [greek]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(656, 'invoice', 'invoice-already-send', 'greek', 'Invoice Already Sent to Customer [greek]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(657, 'ticket', 'new-ticket-created-staff', 'greek', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [greek]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(658, 'estimate', 'estimate-send-to-client', 'greek', 'Send Estimate to Customer [greek]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(659, 'ticket', 'ticket-reply-to-admin', 'greek', 'Ticket Reply (Sent to Staff) [greek]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(660, 'estimate', 'estimate-already-send', 'greek', 'Estimate Already Sent to Customer [greek]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(661, 'contract', 'contract-expiration', 'greek', 'Contract Expiration Reminder (Sent to Customer Contacts) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(662, 'tasks', 'task-assigned', 'greek', 'New Task Assigned (Sent to Staff) [greek]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(663, 'tasks', 'task-added-as-follower', 'greek', 'Staff Member Added as Follower on Task (Sent to Staff) [greek]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(664, 'tasks', 'task-commented', 'greek', 'New Comment on Task (Sent to Staff) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(665, 'tasks', 'task-added-attachment', 'greek', 'New Attachment(s) on Task (Sent to Staff) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(666, 'estimate', 'estimate-declined-to-staff', 'greek', 'Estimate Declined (Sent to Staff) [greek]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(667, 'estimate', 'estimate-accepted-to-staff', 'greek', 'Estimate Accepted (Sent to Staff) [greek]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(668, 'proposals', 'proposal-client-accepted', 'greek', 'Customer Action - Accepted (Sent to Staff) [greek]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(669, 'proposals', 'proposal-send-to-customer', 'greek', 'Send Proposal to Customer [greek]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(670, 'proposals', 'proposal-client-declined', 'greek', 'Customer Action - Declined (Sent to Staff) [greek]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(671, 'proposals', 'proposal-client-thank-you', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(672, 'proposals', 'proposal-comment-to-client', 'greek', 'New Comment Â (Sent to Customer/Lead) [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(673, 'proposals', 'proposal-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(674, 'estimate', 'estimate-thank-you-to-customer', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(675, 'tasks', 'task-deadline-notification', 'greek', 'Task Deadline Reminder - Sent to Assigned Members [greek]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(676, 'contract', 'send-contract', 'greek', 'Send Contract to Customer [greek]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(677, 'invoice', 'invoice-payment-recorded-to-staff', 'greek', 'Invoice Payment Recorded (Sent to Staff) [greek]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(678, 'ticket', 'auto-close-ticket', 'greek', 'Auto Close Ticket [greek]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(679, 'project', 'new-project-discussion-created-to-staff', 'greek', 'New Project Discussion (Sent to Project Members) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(680, 'project', 'new-project-discussion-created-to-customer', 'greek', 'New Project Discussion (Sent to Customer Contacts) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(681, 'project', 'new-project-file-uploaded-to-customer', 'greek', 'New Project File(s) Uploaded (Sent to Customer Contacts) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(682, 'project', 'new-project-file-uploaded-to-staff', 'greek', 'New Project File(s) Uploaded (Sent to Project Members) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(683, 'project', 'new-project-discussion-comment-to-customer', 'greek', 'New Discussion Comment  (Sent to Customer Contacts) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(684, 'project', 'new-project-discussion-comment-to-staff', 'greek', 'New Discussion Comment (Sent to Project Members) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(685, 'project', 'staff-added-as-project-member', 'greek', 'Staff Added as Project Member [greek]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(686, 'estimate', 'estimate-expiry-reminder', 'greek', 'Estimate Expiration Reminder [greek]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(687, 'proposals', 'proposal-expiry-reminder', 'greek', 'Proposal Expiration Reminder [greek]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(688, 'staff', 'new-staff-created', 'greek', 'New Staff Created (Welcome Email) [greek]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(689, 'client', 'contact-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(690, 'client', 'contact-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(691, 'client', 'contact-set-password', 'greek', 'Set New Password [greek]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(692, 'staff', 'staff-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(693, 'staff', 'staff-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(694, 'project', 'assigned-to-project', 'greek', 'New Project Created (Sent to Customer Contacts) [greek]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(695, 'tasks', 'task-added-attachment-to-contacts', 'greek', 'New Attachment(s) on Task (Sent to Customer Contacts) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(696, 'tasks', 'task-commented-to-contacts', 'greek', 'New Comment on Task (Sent to Customer Contacts) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(697, 'leads', 'new-lead-assigned', 'greek', 'New Lead Assigned to Staff Member [greek]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(698, 'client', 'client-statement', 'greek', 'Statement - Account Summary [greek]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(699, 'ticket', 'ticket-assigned-to-admin', 'greek', 'New Ticket Assigned (Sent to Staff) [greek]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(700, 'client', 'new-client-registered-to-admin', 'greek', 'New Customer Registration (Sent to admins) [greek]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(701, 'leads', 'new-web-to-lead-form-submitted', 'greek', 'Web to lead form submitted - Sent to lead [greek]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(702, 'staff', 'two-factor-authentication', 'greek', 'Two Factor Authentication [greek]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(703, 'project', 'project-finished-to-customer', 'greek', 'Project Marked as Finished (Sent to Customer Contacts) [greek]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(704, 'credit_note', 'credit-note-send-to-client', 'greek', 'Send Credit Note To Email [greek]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(705, 'tasks', 'task-status-change-to-staff', 'greek', 'Task Status Changed (Sent to Staff) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(706, 'tasks', 'task-status-change-to-contacts', 'greek', 'Task Status Changed (Sent to Customer Contacts) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(707, 'staff', 'reminder-email-staff', 'greek', 'Staff Reminder Email [greek]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(708, 'contract', 'contract-comment-to-client', 'greek', 'New Comment Â (Sent to Customer Contacts) [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(709, 'contract', 'contract-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(710, 'subscriptions', 'send-subscription', 'greek', 'Send Subscription to Customer [greek]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(711, 'subscriptions', 'subscription-payment-failed', 'greek', 'Subscription Payment Failed [greek]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(712, 'subscriptions', 'subscription-canceled', 'greek', 'Subscription Canceled (Sent to customer primary contact) [greek]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(713, 'subscriptions', 'subscription-payment-succeeded', 'greek', 'Subscription Payment Succeeded (Sent to customer primary contact) [greek]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(714, 'contract', 'contract-expiration-to-staff', 'greek', 'Contract Expiration Reminder (Sent to Staff) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(715, 'gdpr', 'gdpr-removal-request', 'greek', 'Removal Request From Contact (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(716, 'gdpr', 'gdpr-removal-request-lead', 'greek', 'Removal Request From Lead (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(717, 'client', 'client-registration-confirmed', 'greek', 'Customer Registration Confirmed [greek]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(718, 'contract', 'contract-signed-to-staff', 'greek', 'Contract Signed (Sent to Staff) [greek]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(719, 'subscriptions', 'customer-subscribed-to-staff', 'greek', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [greek]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(720, 'client', 'contact-verification-email', 'greek', 'Email Verification (Sent to Contact After Registration) [greek]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(721, 'client', 'new-customer-profile-file-uploaded-to-staff', 'greek', 'New Customer Profile File(s) Uploaded (Sent to Staff) [greek]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(722, 'staff', 'event-notification-to-staff', 'greek', 'Event Notification (Calendar) [greek]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(723, 'subscriptions', 'subscription-payment-requires-action', 'greek', 'Credit Card Authorization Required - SCA [greek]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(724, 'invoice', 'invoice-due-notice', 'greek', 'Invoice Due Notice [greek]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(725, 'estimate_request', 'estimate-request-submitted-to-staff', 'greek', 'Estimate Request Submitted (Sent to Staff) [greek]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(726, 'estimate_request', 'estimate-request-assigned', 'greek', 'Estimate Request Assigned (Sent to Staff) [greek]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(727, 'estimate_request', 'estimate-request-received-to-user', 'greek', 'Estimate Request Received (Sent to User) [greek]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(728, 'notifications', 'non-billed-tasks-reminder', 'greek', 'Non-billed tasks reminder (sent to selected staff members) [greek]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(729, 'invoice', 'invoices-batch-payments', 'greek', 'Invoices Payments Recorded in Batch (Sent to Customer) [greek]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(730, 'client', 'new-client-created', 'indonesia', 'New Contact Added/Registered (Welcome Email) [indonesia]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(731, 'invoice', 'invoice-send-to-client', 'indonesia', 'Send Invoice to Customer [indonesia]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(732, 'ticket', 'new-ticket-opened-admin', 'indonesia', 'New Ticket Opened (Opened by Staff, Sent to Customer) [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(733, 'ticket', 'ticket-reply', 'indonesia', 'Ticket Reply (Sent to Customer) [indonesia]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(734, 'ticket', 'ticket-autoresponse', 'indonesia', 'New Ticket Opened - Autoresponse [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(735, 'invoice', 'invoice-payment-recorded', 'indonesia', 'Invoice Payment Recorded (Sent to Customer) [indonesia]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(736, 'invoice', 'invoice-overdue-notice', 'indonesia', 'Invoice Overdue Notice [indonesia]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(737, 'invoice', 'invoice-already-send', 'indonesia', 'Invoice Already Sent to Customer [indonesia]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(738, 'ticket', 'new-ticket-created-staff', 'indonesia', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [indonesia]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(739, 'estimate', 'estimate-send-to-client', 'indonesia', 'Send Estimate to Customer [indonesia]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(740, 'ticket', 'ticket-reply-to-admin', 'indonesia', 'Ticket Reply (Sent to Staff) [indonesia]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(741, 'estimate', 'estimate-already-send', 'indonesia', 'Estimate Already Sent to Customer [indonesia]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(742, 'contract', 'contract-expiration', 'indonesia', 'Contract Expiration Reminder (Sent to Customer Contacts) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(743, 'tasks', 'task-assigned', 'indonesia', 'New Task Assigned (Sent to Staff) [indonesia]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(744, 'tasks', 'task-added-as-follower', 'indonesia', 'Staff Member Added as Follower on Task (Sent to Staff) [indonesia]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(745, 'tasks', 'task-commented', 'indonesia', 'New Comment on Task (Sent to Staff) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(746, 'tasks', 'task-added-attachment', 'indonesia', 'New Attachment(s) on Task (Sent to Staff) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(747, 'estimate', 'estimate-declined-to-staff', 'indonesia', 'Estimate Declined (Sent to Staff) [indonesia]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(748, 'estimate', 'estimate-accepted-to-staff', 'indonesia', 'Estimate Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(749, 'proposals', 'proposal-client-accepted', 'indonesia', 'Customer Action - Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(750, 'proposals', 'proposal-send-to-customer', 'indonesia', 'Send Proposal to Customer [indonesia]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(751, 'proposals', 'proposal-client-declined', 'indonesia', 'Customer Action - Declined (Sent to Staff) [indonesia]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(752, 'proposals', 'proposal-client-thank-you', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(753, 'proposals', 'proposal-comment-to-client', 'indonesia', 'New Comment Â (Sent to Customer/Lead) [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(754, 'proposals', 'proposal-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(755, 'estimate', 'estimate-thank-you-to-customer', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(756, 'tasks', 'task-deadline-notification', 'indonesia', 'Task Deadline Reminder - Sent to Assigned Members [indonesia]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(757, 'contract', 'send-contract', 'indonesia', 'Send Contract to Customer [indonesia]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(758, 'invoice', 'invoice-payment-recorded-to-staff', 'indonesia', 'Invoice Payment Recorded (Sent to Staff) [indonesia]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(759, 'ticket', 'auto-close-ticket', 'indonesia', 'Auto Close Ticket [indonesia]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(760, 'project', 'new-project-discussion-created-to-staff', 'indonesia', 'New Project Discussion (Sent to Project Members) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(761, 'project', 'new-project-discussion-created-to-customer', 'indonesia', 'New Project Discussion (Sent to Customer Contacts) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(762, 'project', 'new-project-file-uploaded-to-customer', 'indonesia', 'New Project File(s) Uploaded (Sent to Customer Contacts) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(763, 'project', 'new-project-file-uploaded-to-staff', 'indonesia', 'New Project File(s) Uploaded (Sent to Project Members) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(764, 'project', 'new-project-discussion-comment-to-customer', 'indonesia', 'New Discussion Comment  (Sent to Customer Contacts) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(765, 'project', 'new-project-discussion-comment-to-staff', 'indonesia', 'New Discussion Comment (Sent to Project Members) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(766, 'project', 'staff-added-as-project-member', 'indonesia', 'Staff Added as Project Member [indonesia]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(767, 'estimate', 'estimate-expiry-reminder', 'indonesia', 'Estimate Expiration Reminder [indonesia]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(768, 'proposals', 'proposal-expiry-reminder', 'indonesia', 'Proposal Expiration Reminder [indonesia]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(769, 'staff', 'new-staff-created', 'indonesia', 'New Staff Created (Welcome Email) [indonesia]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(770, 'client', 'contact-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(771, 'client', 'contact-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(772, 'client', 'contact-set-password', 'indonesia', 'Set New Password [indonesia]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(773, 'staff', 'staff-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(774, 'staff', 'staff-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(775, 'project', 'assigned-to-project', 'indonesia', 'New Project Created (Sent to Customer Contacts) [indonesia]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(776, 'tasks', 'task-added-attachment-to-contacts', 'indonesia', 'New Attachment(s) on Task (Sent to Customer Contacts) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(777, 'tasks', 'task-commented-to-contacts', 'indonesia', 'New Comment on Task (Sent to Customer Contacts) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(778, 'leads', 'new-lead-assigned', 'indonesia', 'New Lead Assigned to Staff Member [indonesia]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(779, 'client', 'client-statement', 'indonesia', 'Statement - Account Summary [indonesia]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(780, 'ticket', 'ticket-assigned-to-admin', 'indonesia', 'New Ticket Assigned (Sent to Staff) [indonesia]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(781, 'client', 'new-client-registered-to-admin', 'indonesia', 'New Customer Registration (Sent to admins) [indonesia]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(782, 'leads', 'new-web-to-lead-form-submitted', 'indonesia', 'Web to lead form submitted - Sent to lead [indonesia]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(783, 'staff', 'two-factor-authentication', 'indonesia', 'Two Factor Authentication [indonesia]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(784, 'project', 'project-finished-to-customer', 'indonesia', 'Project Marked as Finished (Sent to Customer Contacts) [indonesia]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(785, 'credit_note', 'credit-note-send-to-client', 'indonesia', 'Send Credit Note To Email [indonesia]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(786, 'tasks', 'task-status-change-to-staff', 'indonesia', 'Task Status Changed (Sent to Staff) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(787, 'tasks', 'task-status-change-to-contacts', 'indonesia', 'Task Status Changed (Sent to Customer Contacts) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(788, 'staff', 'reminder-email-staff', 'indonesia', 'Staff Reminder Email [indonesia]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(789, 'contract', 'contract-comment-to-client', 'indonesia', 'New Comment Â (Sent to Customer Contacts) [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(790, 'contract', 'contract-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(791, 'subscriptions', 'send-subscription', 'indonesia', 'Send Subscription to Customer [indonesia]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(792, 'subscriptions', 'subscription-payment-failed', 'indonesia', 'Subscription Payment Failed [indonesia]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(793, 'subscriptions', 'subscription-canceled', 'indonesia', 'Subscription Canceled (Sent to customer primary contact) [indonesia]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(794, 'subscriptions', 'subscription-payment-succeeded', 'indonesia', 'Subscription Payment Succeeded (Sent to customer primary contact) [indonesia]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(795, 'contract', 'contract-expiration-to-staff', 'indonesia', 'Contract Expiration Reminder (Sent to Staff) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(796, 'gdpr', 'gdpr-removal-request', 'indonesia', 'Removal Request From Contact (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(797, 'gdpr', 'gdpr-removal-request-lead', 'indonesia', 'Removal Request From Lead (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(798, 'client', 'client-registration-confirmed', 'indonesia', 'Customer Registration Confirmed [indonesia]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(799, 'contract', 'contract-signed-to-staff', 'indonesia', 'Contract Signed (Sent to Staff) [indonesia]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(800, 'subscriptions', 'customer-subscribed-to-staff', 'indonesia', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [indonesia]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(801, 'client', 'contact-verification-email', 'indonesia', 'Email Verification (Sent to Contact After Registration) [indonesia]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(802, 'client', 'new-customer-profile-file-uploaded-to-staff', 'indonesia', 'New Customer Profile File(s) Uploaded (Sent to Staff) [indonesia]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(803, 'staff', 'event-notification-to-staff', 'indonesia', 'Event Notification (Calendar) [indonesia]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(804, 'subscriptions', 'subscription-payment-requires-action', 'indonesia', 'Credit Card Authorization Required - SCA [indonesia]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(805, 'invoice', 'invoice-due-notice', 'indonesia', 'Invoice Due Notice [indonesia]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(806, 'estimate_request', 'estimate-request-submitted-to-staff', 'indonesia', 'Estimate Request Submitted (Sent to Staff) [indonesia]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(807, 'estimate_request', 'estimate-request-assigned', 'indonesia', 'Estimate Request Assigned (Sent to Staff) [indonesia]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(808, 'estimate_request', 'estimate-request-received-to-user', 'indonesia', 'Estimate Request Received (Sent to User) [indonesia]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(809, 'notifications', 'non-billed-tasks-reminder', 'indonesia', 'Non-billed tasks reminder (sent to selected staff members) [indonesia]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(810, 'invoice', 'invoices-batch-payments', 'indonesia', 'Invoices Payments Recorded in Batch (Sent to Customer) [indonesia]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(811, 'client', 'new-client-created', 'italian', 'New Contact Added/Registered (Welcome Email) [italian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(812, 'invoice', 'invoice-send-to-client', 'italian', 'Send Invoice to Customer [italian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(813, 'ticket', 'new-ticket-opened-admin', 'italian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(814, 'ticket', 'ticket-reply', 'italian', 'Ticket Reply (Sent to Customer) [italian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(815, 'ticket', 'ticket-autoresponse', 'italian', 'New Ticket Opened - Autoresponse [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(816, 'invoice', 'invoice-payment-recorded', 'italian', 'Invoice Payment Recorded (Sent to Customer) [italian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(817, 'invoice', 'invoice-overdue-notice', 'italian', 'Invoice Overdue Notice [italian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(818, 'invoice', 'invoice-already-send', 'italian', 'Invoice Already Sent to Customer [italian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(819, 'ticket', 'new-ticket-created-staff', 'italian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [italian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(820, 'estimate', 'estimate-send-to-client', 'italian', 'Send Estimate to Customer [italian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(821, 'ticket', 'ticket-reply-to-admin', 'italian', 'Ticket Reply (Sent to Staff) [italian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(822, 'estimate', 'estimate-already-send', 'italian', 'Estimate Already Sent to Customer [italian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(823, 'contract', 'contract-expiration', 'italian', 'Contract Expiration Reminder (Sent to Customer Contacts) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(824, 'tasks', 'task-assigned', 'italian', 'New Task Assigned (Sent to Staff) [italian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(825, 'tasks', 'task-added-as-follower', 'italian', 'Staff Member Added as Follower on Task (Sent to Staff) [italian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(826, 'tasks', 'task-commented', 'italian', 'New Comment on Task (Sent to Staff) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(827, 'tasks', 'task-added-attachment', 'italian', 'New Attachment(s) on Task (Sent to Staff) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(828, 'estimate', 'estimate-declined-to-staff', 'italian', 'Estimate Declined (Sent to Staff) [italian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(829, 'estimate', 'estimate-accepted-to-staff', 'italian', 'Estimate Accepted (Sent to Staff) [italian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(830, 'proposals', 'proposal-client-accepted', 'italian', 'Customer Action - Accepted (Sent to Staff) [italian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(831, 'proposals', 'proposal-send-to-customer', 'italian', 'Send Proposal to Customer [italian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(832, 'proposals', 'proposal-client-declined', 'italian', 'Customer Action - Declined (Sent to Staff) [italian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(833, 'proposals', 'proposal-client-thank-you', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(834, 'proposals', 'proposal-comment-to-client', 'italian', 'New Comment Â (Sent to Customer/Lead) [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(835, 'proposals', 'proposal-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(836, 'estimate', 'estimate-thank-you-to-customer', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(837, 'tasks', 'task-deadline-notification', 'italian', 'Task Deadline Reminder - Sent to Assigned Members [italian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(838, 'contract', 'send-contract', 'italian', 'Send Contract to Customer [italian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(839, 'invoice', 'invoice-payment-recorded-to-staff', 'italian', 'Invoice Payment Recorded (Sent to Staff) [italian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(840, 'ticket', 'auto-close-ticket', 'italian', 'Auto Close Ticket [italian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(841, 'project', 'new-project-discussion-created-to-staff', 'italian', 'New Project Discussion (Sent to Project Members) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(842, 'project', 'new-project-discussion-created-to-customer', 'italian', 'New Project Discussion (Sent to Customer Contacts) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(843, 'project', 'new-project-file-uploaded-to-customer', 'italian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(844, 'project', 'new-project-file-uploaded-to-staff', 'italian', 'New Project File(s) Uploaded (Sent to Project Members) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(845, 'project', 'new-project-discussion-comment-to-customer', 'italian', 'New Discussion Comment  (Sent to Customer Contacts) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(846, 'project', 'new-project-discussion-comment-to-staff', 'italian', 'New Discussion Comment (Sent to Project Members) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(847, 'project', 'staff-added-as-project-member', 'italian', 'Staff Added as Project Member [italian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(848, 'estimate', 'estimate-expiry-reminder', 'italian', 'Estimate Expiration Reminder [italian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(849, 'proposals', 'proposal-expiry-reminder', 'italian', 'Proposal Expiration Reminder [italian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(850, 'staff', 'new-staff-created', 'italian', 'New Staff Created (Welcome Email) [italian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(851, 'client', 'contact-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(852, 'client', 'contact-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(853, 'client', 'contact-set-password', 'italian', 'Set New Password [italian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(854, 'staff', 'staff-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(855, 'staff', 'staff-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(856, 'project', 'assigned-to-project', 'italian', 'New Project Created (Sent to Customer Contacts) [italian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(857, 'tasks', 'task-added-attachment-to-contacts', 'italian', 'New Attachment(s) on Task (Sent to Customer Contacts) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(858, 'tasks', 'task-commented-to-contacts', 'italian', 'New Comment on Task (Sent to Customer Contacts) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(859, 'leads', 'new-lead-assigned', 'italian', 'New Lead Assigned to Staff Member [italian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(860, 'client', 'client-statement', 'italian', 'Statement - Account Summary [italian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(861, 'ticket', 'ticket-assigned-to-admin', 'italian', 'New Ticket Assigned (Sent to Staff) [italian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(862, 'client', 'new-client-registered-to-admin', 'italian', 'New Customer Registration (Sent to admins) [italian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(863, 'leads', 'new-web-to-lead-form-submitted', 'italian', 'Web to lead form submitted - Sent to lead [italian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(864, 'staff', 'two-factor-authentication', 'italian', 'Two Factor Authentication [italian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(865, 'project', 'project-finished-to-customer', 'italian', 'Project Marked as Finished (Sent to Customer Contacts) [italian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(866, 'credit_note', 'credit-note-send-to-client', 'italian', 'Send Credit Note To Email [italian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(867, 'tasks', 'task-status-change-to-staff', 'italian', 'Task Status Changed (Sent to Staff) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(868, 'tasks', 'task-status-change-to-contacts', 'italian', 'Task Status Changed (Sent to Customer Contacts) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(869, 'staff', 'reminder-email-staff', 'italian', 'Staff Reminder Email [italian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(870, 'contract', 'contract-comment-to-client', 'italian', 'New Comment Â (Sent to Customer Contacts) [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(871, 'contract', 'contract-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(872, 'subscriptions', 'send-subscription', 'italian', 'Send Subscription to Customer [italian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(873, 'subscriptions', 'subscription-payment-failed', 'italian', 'Subscription Payment Failed [italian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(874, 'subscriptions', 'subscription-canceled', 'italian', 'Subscription Canceled (Sent to customer primary contact) [italian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(875, 'subscriptions', 'subscription-payment-succeeded', 'italian', 'Subscription Payment Succeeded (Sent to customer primary contact) [italian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(876, 'contract', 'contract-expiration-to-staff', 'italian', 'Contract Expiration Reminder (Sent to Staff) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(877, 'gdpr', 'gdpr-removal-request', 'italian', 'Removal Request From Contact (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(878, 'gdpr', 'gdpr-removal-request-lead', 'italian', 'Removal Request From Lead (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(879, 'client', 'client-registration-confirmed', 'italian', 'Customer Registration Confirmed [italian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(880, 'contract', 'contract-signed-to-staff', 'italian', 'Contract Signed (Sent to Staff) [italian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(881, 'subscriptions', 'customer-subscribed-to-staff', 'italian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [italian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(882, 'client', 'contact-verification-email', 'italian', 'Email Verification (Sent to Contact After Registration) [italian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(883, 'client', 'new-customer-profile-file-uploaded-to-staff', 'italian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [italian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(884, 'staff', 'event-notification-to-staff', 'italian', 'Event Notification (Calendar) [italian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(885, 'subscriptions', 'subscription-payment-requires-action', 'italian', 'Credit Card Authorization Required - SCA [italian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(886, 'invoice', 'invoice-due-notice', 'italian', 'Invoice Due Notice [italian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(887, 'estimate_request', 'estimate-request-submitted-to-staff', 'italian', 'Estimate Request Submitted (Sent to Staff) [italian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(888, 'estimate_request', 'estimate-request-assigned', 'italian', 'Estimate Request Assigned (Sent to Staff) [italian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(889, 'estimate_request', 'estimate-request-received-to-user', 'italian', 'Estimate Request Received (Sent to User) [italian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(890, 'notifications', 'non-billed-tasks-reminder', 'italian', 'Non-billed tasks reminder (sent to selected staff members) [italian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(891, 'invoice', 'invoices-batch-payments', 'italian', 'Invoices Payments Recorded in Batch (Sent to Customer) [italian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(892, 'client', 'new-client-created', 'japanese', 'New Contact Added/Registered (Welcome Email) [japanese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(893, 'invoice', 'invoice-send-to-client', 'japanese', 'Send Invoice to Customer [japanese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(894, 'ticket', 'new-ticket-opened-admin', 'japanese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(895, 'ticket', 'ticket-reply', 'japanese', 'Ticket Reply (Sent to Customer) [japanese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(896, 'ticket', 'ticket-autoresponse', 'japanese', 'New Ticket Opened - Autoresponse [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(897, 'invoice', 'invoice-payment-recorded', 'japanese', 'Invoice Payment Recorded (Sent to Customer) [japanese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(898, 'invoice', 'invoice-overdue-notice', 'japanese', 'Invoice Overdue Notice [japanese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(899, 'invoice', 'invoice-already-send', 'japanese', 'Invoice Already Sent to Customer [japanese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(900, 'ticket', 'new-ticket-created-staff', 'japanese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [japanese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(901, 'estimate', 'estimate-send-to-client', 'japanese', 'Send Estimate to Customer [japanese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(902, 'ticket', 'ticket-reply-to-admin', 'japanese', 'Ticket Reply (Sent to Staff) [japanese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(903, 'estimate', 'estimate-already-send', 'japanese', 'Estimate Already Sent to Customer [japanese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(904, 'contract', 'contract-expiration', 'japanese', 'Contract Expiration Reminder (Sent to Customer Contacts) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(905, 'tasks', 'task-assigned', 'japanese', 'New Task Assigned (Sent to Staff) [japanese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(906, 'tasks', 'task-added-as-follower', 'japanese', 'Staff Member Added as Follower on Task (Sent to Staff) [japanese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(907, 'tasks', 'task-commented', 'japanese', 'New Comment on Task (Sent to Staff) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(908, 'tasks', 'task-added-attachment', 'japanese', 'New Attachment(s) on Task (Sent to Staff) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(909, 'estimate', 'estimate-declined-to-staff', 'japanese', 'Estimate Declined (Sent to Staff) [japanese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(910, 'estimate', 'estimate-accepted-to-staff', 'japanese', 'Estimate Accepted (Sent to Staff) [japanese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(911, 'proposals', 'proposal-client-accepted', 'japanese', 'Customer Action - Accepted (Sent to Staff) [japanese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(912, 'proposals', 'proposal-send-to-customer', 'japanese', 'Send Proposal to Customer [japanese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(913, 'proposals', 'proposal-client-declined', 'japanese', 'Customer Action - Declined (Sent to Staff) [japanese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(914, 'proposals', 'proposal-client-thank-you', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(915, 'proposals', 'proposal-comment-to-client', 'japanese', 'New Comment Â (Sent to Customer/Lead) [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(916, 'proposals', 'proposal-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(917, 'estimate', 'estimate-thank-you-to-customer', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(918, 'tasks', 'task-deadline-notification', 'japanese', 'Task Deadline Reminder - Sent to Assigned Members [japanese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(919, 'contract', 'send-contract', 'japanese', 'Send Contract to Customer [japanese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(920, 'invoice', 'invoice-payment-recorded-to-staff', 'japanese', 'Invoice Payment Recorded (Sent to Staff) [japanese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(921, 'ticket', 'auto-close-ticket', 'japanese', 'Auto Close Ticket [japanese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(922, 'project', 'new-project-discussion-created-to-staff', 'japanese', 'New Project Discussion (Sent to Project Members) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(923, 'project', 'new-project-discussion-created-to-customer', 'japanese', 'New Project Discussion (Sent to Customer Contacts) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(924, 'project', 'new-project-file-uploaded-to-customer', 'japanese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(925, 'project', 'new-project-file-uploaded-to-staff', 'japanese', 'New Project File(s) Uploaded (Sent to Project Members) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(926, 'project', 'new-project-discussion-comment-to-customer', 'japanese', 'New Discussion Comment  (Sent to Customer Contacts) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(927, 'project', 'new-project-discussion-comment-to-staff', 'japanese', 'New Discussion Comment (Sent to Project Members) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(928, 'project', 'staff-added-as-project-member', 'japanese', 'Staff Added as Project Member [japanese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(929, 'estimate', 'estimate-expiry-reminder', 'japanese', 'Estimate Expiration Reminder [japanese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(930, 'proposals', 'proposal-expiry-reminder', 'japanese', 'Proposal Expiration Reminder [japanese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(931, 'staff', 'new-staff-created', 'japanese', 'New Staff Created (Welcome Email) [japanese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(932, 'client', 'contact-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(933, 'client', 'contact-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(934, 'client', 'contact-set-password', 'japanese', 'Set New Password [japanese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(935, 'staff', 'staff-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(936, 'staff', 'staff-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(937, 'project', 'assigned-to-project', 'japanese', 'New Project Created (Sent to Customer Contacts) [japanese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(938, 'tasks', 'task-added-attachment-to-contacts', 'japanese', 'New Attachment(s) on Task (Sent to Customer Contacts) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(939, 'tasks', 'task-commented-to-contacts', 'japanese', 'New Comment on Task (Sent to Customer Contacts) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(940, 'leads', 'new-lead-assigned', 'japanese', 'New Lead Assigned to Staff Member [japanese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(941, 'client', 'client-statement', 'japanese', 'Statement - Account Summary [japanese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(942, 'ticket', 'ticket-assigned-to-admin', 'japanese', 'New Ticket Assigned (Sent to Staff) [japanese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(943, 'client', 'new-client-registered-to-admin', 'japanese', 'New Customer Registration (Sent to admins) [japanese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(944, 'leads', 'new-web-to-lead-form-submitted', 'japanese', 'Web to lead form submitted - Sent to lead [japanese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(945, 'staff', 'two-factor-authentication', 'japanese', 'Two Factor Authentication [japanese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(946, 'project', 'project-finished-to-customer', 'japanese', 'Project Marked as Finished (Sent to Customer Contacts) [japanese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(947, 'credit_note', 'credit-note-send-to-client', 'japanese', 'Send Credit Note To Email [japanese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(948, 'tasks', 'task-status-change-to-staff', 'japanese', 'Task Status Changed (Sent to Staff) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(949, 'tasks', 'task-status-change-to-contacts', 'japanese', 'Task Status Changed (Sent to Customer Contacts) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(950, 'staff', 'reminder-email-staff', 'japanese', 'Staff Reminder Email [japanese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(951, 'contract', 'contract-comment-to-client', 'japanese', 'New Comment Â (Sent to Customer Contacts) [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(952, 'contract', 'contract-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(953, 'subscriptions', 'send-subscription', 'japanese', 'Send Subscription to Customer [japanese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(954, 'subscriptions', 'subscription-payment-failed', 'japanese', 'Subscription Payment Failed [japanese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(955, 'subscriptions', 'subscription-canceled', 'japanese', 'Subscription Canceled (Sent to customer primary contact) [japanese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(956, 'subscriptions', 'subscription-payment-succeeded', 'japanese', 'Subscription Payment Succeeded (Sent to customer primary contact) [japanese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(957, 'contract', 'contract-expiration-to-staff', 'japanese', 'Contract Expiration Reminder (Sent to Staff) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(958, 'gdpr', 'gdpr-removal-request', 'japanese', 'Removal Request From Contact (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(959, 'gdpr', 'gdpr-removal-request-lead', 'japanese', 'Removal Request From Lead (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(960, 'client', 'client-registration-confirmed', 'japanese', 'Customer Registration Confirmed [japanese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(961, 'contract', 'contract-signed-to-staff', 'japanese', 'Contract Signed (Sent to Staff) [japanese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(962, 'subscriptions', 'customer-subscribed-to-staff', 'japanese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [japanese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(963, 'client', 'contact-verification-email', 'japanese', 'Email Verification (Sent to Contact After Registration) [japanese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(964, 'client', 'new-customer-profile-file-uploaded-to-staff', 'japanese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [japanese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(965, 'staff', 'event-notification-to-staff', 'japanese', 'Event Notification (Calendar) [japanese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(966, 'subscriptions', 'subscription-payment-requires-action', 'japanese', 'Credit Card Authorization Required - SCA [japanese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(967, 'invoice', 'invoice-due-notice', 'japanese', 'Invoice Due Notice [japanese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(968, 'estimate_request', 'estimate-request-submitted-to-staff', 'japanese', 'Estimate Request Submitted (Sent to Staff) [japanese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(969, 'estimate_request', 'estimate-request-assigned', 'japanese', 'Estimate Request Assigned (Sent to Staff) [japanese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(970, 'estimate_request', 'estimate-request-received-to-user', 'japanese', 'Estimate Request Received (Sent to User) [japanese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(971, 'notifications', 'non-billed-tasks-reminder', 'japanese', 'Non-billed tasks reminder (sent to selected staff members) [japanese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(972, 'invoice', 'invoices-batch-payments', 'japanese', 'Invoices Payments Recorded in Batch (Sent to Customer) [japanese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(973, 'client', 'new-client-created', 'persian', 'New Contact Added/Registered (Welcome Email) [persian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(974, 'invoice', 'invoice-send-to-client', 'persian', 'Send Invoice to Customer [persian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(975, 'ticket', 'new-ticket-opened-admin', 'persian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(976, 'ticket', 'ticket-reply', 'persian', 'Ticket Reply (Sent to Customer) [persian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(977, 'ticket', 'ticket-autoresponse', 'persian', 'New Ticket Opened - Autoresponse [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(978, 'invoice', 'invoice-payment-recorded', 'persian', 'Invoice Payment Recorded (Sent to Customer) [persian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(979, 'invoice', 'invoice-overdue-notice', 'persian', 'Invoice Overdue Notice [persian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(980, 'invoice', 'invoice-already-send', 'persian', 'Invoice Already Sent to Customer [persian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(981, 'ticket', 'new-ticket-created-staff', 'persian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [persian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(982, 'estimate', 'estimate-send-to-client', 'persian', 'Send Estimate to Customer [persian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(983, 'ticket', 'ticket-reply-to-admin', 'persian', 'Ticket Reply (Sent to Staff) [persian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(984, 'estimate', 'estimate-already-send', 'persian', 'Estimate Already Sent to Customer [persian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(985, 'contract', 'contract-expiration', 'persian', 'Contract Expiration Reminder (Sent to Customer Contacts) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(986, 'tasks', 'task-assigned', 'persian', 'New Task Assigned (Sent to Staff) [persian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(987, 'tasks', 'task-added-as-follower', 'persian', 'Staff Member Added as Follower on Task (Sent to Staff) [persian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(988, 'tasks', 'task-commented', 'persian', 'New Comment on Task (Sent to Staff) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(989, 'tasks', 'task-added-attachment', 'persian', 'New Attachment(s) on Task (Sent to Staff) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(990, 'estimate', 'estimate-declined-to-staff', 'persian', 'Estimate Declined (Sent to Staff) [persian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(991, 'estimate', 'estimate-accepted-to-staff', 'persian', 'Estimate Accepted (Sent to Staff) [persian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(992, 'proposals', 'proposal-client-accepted', 'persian', 'Customer Action - Accepted (Sent to Staff) [persian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(993, 'proposals', 'proposal-send-to-customer', 'persian', 'Send Proposal to Customer [persian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(994, 'proposals', 'proposal-client-declined', 'persian', 'Customer Action - Declined (Sent to Staff) [persian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(995, 'proposals', 'proposal-client-thank-you', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(996, 'proposals', 'proposal-comment-to-client', 'persian', 'New Comment Â (Sent to Customer/Lead) [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(997, 'proposals', 'proposal-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(998, 'estimate', 'estimate-thank-you-to-customer', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(999, 'tasks', 'task-deadline-notification', 'persian', 'Task Deadline Reminder - Sent to Assigned Members [persian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1000, 'contract', 'send-contract', 'persian', 'Send Contract to Customer [persian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1001, 'invoice', 'invoice-payment-recorded-to-staff', 'persian', 'Invoice Payment Recorded (Sent to Staff) [persian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1002, 'ticket', 'auto-close-ticket', 'persian', 'Auto Close Ticket [persian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1003, 'project', 'new-project-discussion-created-to-staff', 'persian', 'New Project Discussion (Sent to Project Members) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1004, 'project', 'new-project-discussion-created-to-customer', 'persian', 'New Project Discussion (Sent to Customer Contacts) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1005, 'project', 'new-project-file-uploaded-to-customer', 'persian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1006, 'project', 'new-project-file-uploaded-to-staff', 'persian', 'New Project File(s) Uploaded (Sent to Project Members) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1007, 'project', 'new-project-discussion-comment-to-customer', 'persian', 'New Discussion Comment  (Sent to Customer Contacts) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1008, 'project', 'new-project-discussion-comment-to-staff', 'persian', 'New Discussion Comment (Sent to Project Members) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1009, 'project', 'staff-added-as-project-member', 'persian', 'Staff Added as Project Member [persian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1010, 'estimate', 'estimate-expiry-reminder', 'persian', 'Estimate Expiration Reminder [persian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1011, 'proposals', 'proposal-expiry-reminder', 'persian', 'Proposal Expiration Reminder [persian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1012, 'staff', 'new-staff-created', 'persian', 'New Staff Created (Welcome Email) [persian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1013, 'client', 'contact-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1014, 'client', 'contact-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1015, 'client', 'contact-set-password', 'persian', 'Set New Password [persian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1016, 'staff', 'staff-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1017, 'staff', 'staff-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1018, 'project', 'assigned-to-project', 'persian', 'New Project Created (Sent to Customer Contacts) [persian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1019, 'tasks', 'task-added-attachment-to-contacts', 'persian', 'New Attachment(s) on Task (Sent to Customer Contacts) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1020, 'tasks', 'task-commented-to-contacts', 'persian', 'New Comment on Task (Sent to Customer Contacts) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1021, 'leads', 'new-lead-assigned', 'persian', 'New Lead Assigned to Staff Member [persian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1022, 'client', 'client-statement', 'persian', 'Statement - Account Summary [persian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1023, 'ticket', 'ticket-assigned-to-admin', 'persian', 'New Ticket Assigned (Sent to Staff) [persian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1024, 'client', 'new-client-registered-to-admin', 'persian', 'New Customer Registration (Sent to admins) [persian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1025, 'leads', 'new-web-to-lead-form-submitted', 'persian', 'Web to lead form submitted - Sent to lead [persian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1026, 'staff', 'two-factor-authentication', 'persian', 'Two Factor Authentication [persian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1027, 'project', 'project-finished-to-customer', 'persian', 'Project Marked as Finished (Sent to Customer Contacts) [persian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1028, 'credit_note', 'credit-note-send-to-client', 'persian', 'Send Credit Note To Email [persian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1029, 'tasks', 'task-status-change-to-staff', 'persian', 'Task Status Changed (Sent to Staff) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1030, 'tasks', 'task-status-change-to-contacts', 'persian', 'Task Status Changed (Sent to Customer Contacts) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1031, 'staff', 'reminder-email-staff', 'persian', 'Staff Reminder Email [persian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1032, 'contract', 'contract-comment-to-client', 'persian', 'New Comment Â (Sent to Customer Contacts) [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1033, 'contract', 'contract-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1034, 'subscriptions', 'send-subscription', 'persian', 'Send Subscription to Customer [persian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1035, 'subscriptions', 'subscription-payment-failed', 'persian', 'Subscription Payment Failed [persian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1036, 'subscriptions', 'subscription-canceled', 'persian', 'Subscription Canceled (Sent to customer primary contact) [persian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1037, 'subscriptions', 'subscription-payment-succeeded', 'persian', 'Subscription Payment Succeeded (Sent to customer primary contact) [persian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1038, 'contract', 'contract-expiration-to-staff', 'persian', 'Contract Expiration Reminder (Sent to Staff) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1039, 'gdpr', 'gdpr-removal-request', 'persian', 'Removal Request From Contact (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1040, 'gdpr', 'gdpr-removal-request-lead', 'persian', 'Removal Request From Lead (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1041, 'client', 'client-registration-confirmed', 'persian', 'Customer Registration Confirmed [persian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1042, 'contract', 'contract-signed-to-staff', 'persian', 'Contract Signed (Sent to Staff) [persian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1043, 'subscriptions', 'customer-subscribed-to-staff', 'persian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [persian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1044, 'client', 'contact-verification-email', 'persian', 'Email Verification (Sent to Contact After Registration) [persian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1045, 'client', 'new-customer-profile-file-uploaded-to-staff', 'persian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [persian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1046, 'staff', 'event-notification-to-staff', 'persian', 'Event Notification (Calendar) [persian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1047, 'subscriptions', 'subscription-payment-requires-action', 'persian', 'Credit Card Authorization Required - SCA [persian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1048, 'invoice', 'invoice-due-notice', 'persian', 'Invoice Due Notice [persian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1049, 'estimate_request', 'estimate-request-submitted-to-staff', 'persian', 'Estimate Request Submitted (Sent to Staff) [persian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1050, 'estimate_request', 'estimate-request-assigned', 'persian', 'Estimate Request Assigned (Sent to Staff) [persian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1051, 'estimate_request', 'estimate-request-received-to-user', 'persian', 'Estimate Request Received (Sent to User) [persian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1052, 'notifications', 'non-billed-tasks-reminder', 'persian', 'Non-billed tasks reminder (sent to selected staff members) [persian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1053, 'invoice', 'invoices-batch-payments', 'persian', 'Invoices Payments Recorded in Batch (Sent to Customer) [persian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1054, 'client', 'new-client-created', 'polish', 'New Contact Added/Registered (Welcome Email) [polish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1055, 'invoice', 'invoice-send-to-client', 'polish', 'Send Invoice to Customer [polish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1056, 'ticket', 'new-ticket-opened-admin', 'polish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1057, 'ticket', 'ticket-reply', 'polish', 'Ticket Reply (Sent to Customer) [polish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1058, 'ticket', 'ticket-autoresponse', 'polish', 'New Ticket Opened - Autoresponse [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1059, 'invoice', 'invoice-payment-recorded', 'polish', 'Invoice Payment Recorded (Sent to Customer) [polish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1060, 'invoice', 'invoice-overdue-notice', 'polish', 'Invoice Overdue Notice [polish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1061, 'invoice', 'invoice-already-send', 'polish', 'Invoice Already Sent to Customer [polish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1062, 'ticket', 'new-ticket-created-staff', 'polish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [polish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1063, 'estimate', 'estimate-send-to-client', 'polish', 'Send Estimate to Customer [polish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1064, 'ticket', 'ticket-reply-to-admin', 'polish', 'Ticket Reply (Sent to Staff) [polish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1065, 'estimate', 'estimate-already-send', 'polish', 'Estimate Already Sent to Customer [polish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1066, 'contract', 'contract-expiration', 'polish', 'Contract Expiration Reminder (Sent to Customer Contacts) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1067, 'tasks', 'task-assigned', 'polish', 'New Task Assigned (Sent to Staff) [polish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1068, 'tasks', 'task-added-as-follower', 'polish', 'Staff Member Added as Follower on Task (Sent to Staff) [polish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1069, 'tasks', 'task-commented', 'polish', 'New Comment on Task (Sent to Staff) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1070, 'tasks', 'task-added-attachment', 'polish', 'New Attachment(s) on Task (Sent to Staff) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1071, 'estimate', 'estimate-declined-to-staff', 'polish', 'Estimate Declined (Sent to Staff) [polish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1072, 'estimate', 'estimate-accepted-to-staff', 'polish', 'Estimate Accepted (Sent to Staff) [polish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1073, 'proposals', 'proposal-client-accepted', 'polish', 'Customer Action - Accepted (Sent to Staff) [polish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1074, 'proposals', 'proposal-send-to-customer', 'polish', 'Send Proposal to Customer [polish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1075, 'proposals', 'proposal-client-declined', 'polish', 'Customer Action - Declined (Sent to Staff) [polish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1076, 'proposals', 'proposal-client-thank-you', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1077, 'proposals', 'proposal-comment-to-client', 'polish', 'New Comment Â (Sent to Customer/Lead) [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1078, 'proposals', 'proposal-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1079, 'estimate', 'estimate-thank-you-to-customer', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1080, 'tasks', 'task-deadline-notification', 'polish', 'Task Deadline Reminder - Sent to Assigned Members [polish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1081, 'contract', 'send-contract', 'polish', 'Send Contract to Customer [polish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1082, 'invoice', 'invoice-payment-recorded-to-staff', 'polish', 'Invoice Payment Recorded (Sent to Staff) [polish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1083, 'ticket', 'auto-close-ticket', 'polish', 'Auto Close Ticket [polish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1084, 'project', 'new-project-discussion-created-to-staff', 'polish', 'New Project Discussion (Sent to Project Members) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1085, 'project', 'new-project-discussion-created-to-customer', 'polish', 'New Project Discussion (Sent to Customer Contacts) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1086, 'project', 'new-project-file-uploaded-to-customer', 'polish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1087, 'project', 'new-project-file-uploaded-to-staff', 'polish', 'New Project File(s) Uploaded (Sent to Project Members) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1088, 'project', 'new-project-discussion-comment-to-customer', 'polish', 'New Discussion Comment  (Sent to Customer Contacts) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1089, 'project', 'new-project-discussion-comment-to-staff', 'polish', 'New Discussion Comment (Sent to Project Members) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1090, 'project', 'staff-added-as-project-member', 'polish', 'Staff Added as Project Member [polish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1091, 'estimate', 'estimate-expiry-reminder', 'polish', 'Estimate Expiration Reminder [polish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1092, 'proposals', 'proposal-expiry-reminder', 'polish', 'Proposal Expiration Reminder [polish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1093, 'staff', 'new-staff-created', 'polish', 'New Staff Created (Welcome Email) [polish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1094, 'client', 'contact-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1095, 'client', 'contact-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1096, 'client', 'contact-set-password', 'polish', 'Set New Password [polish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1097, 'staff', 'staff-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1098, 'staff', 'staff-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1099, 'project', 'assigned-to-project', 'polish', 'New Project Created (Sent to Customer Contacts) [polish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1100, 'tasks', 'task-added-attachment-to-contacts', 'polish', 'New Attachment(s) on Task (Sent to Customer Contacts) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1101, 'tasks', 'task-commented-to-contacts', 'polish', 'New Comment on Task (Sent to Customer Contacts) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1102, 'leads', 'new-lead-assigned', 'polish', 'New Lead Assigned to Staff Member [polish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1103, 'client', 'client-statement', 'polish', 'Statement - Account Summary [polish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1104, 'ticket', 'ticket-assigned-to-admin', 'polish', 'New Ticket Assigned (Sent to Staff) [polish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1105, 'client', 'new-client-registered-to-admin', 'polish', 'New Customer Registration (Sent to admins) [polish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1106, 'leads', 'new-web-to-lead-form-submitted', 'polish', 'Web to lead form submitted - Sent to lead [polish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1107, 'staff', 'two-factor-authentication', 'polish', 'Two Factor Authentication [polish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1108, 'project', 'project-finished-to-customer', 'polish', 'Project Marked as Finished (Sent to Customer Contacts) [polish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1109, 'credit_note', 'credit-note-send-to-client', 'polish', 'Send Credit Note To Email [polish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1110, 'tasks', 'task-status-change-to-staff', 'polish', 'Task Status Changed (Sent to Staff) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1111, 'tasks', 'task-status-change-to-contacts', 'polish', 'Task Status Changed (Sent to Customer Contacts) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1112, 'staff', 'reminder-email-staff', 'polish', 'Staff Reminder Email [polish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1113, 'contract', 'contract-comment-to-client', 'polish', 'New Comment Â (Sent to Customer Contacts) [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1114, 'contract', 'contract-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1115, 'subscriptions', 'send-subscription', 'polish', 'Send Subscription to Customer [polish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1116, 'subscriptions', 'subscription-payment-failed', 'polish', 'Subscription Payment Failed [polish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1117, 'subscriptions', 'subscription-canceled', 'polish', 'Subscription Canceled (Sent to customer primary contact) [polish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1118, 'subscriptions', 'subscription-payment-succeeded', 'polish', 'Subscription Payment Succeeded (Sent to customer primary contact) [polish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1119, 'contract', 'contract-expiration-to-staff', 'polish', 'Contract Expiration Reminder (Sent to Staff) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1120, 'gdpr', 'gdpr-removal-request', 'polish', 'Removal Request From Contact (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1121, 'gdpr', 'gdpr-removal-request-lead', 'polish', 'Removal Request From Lead (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1122, 'client', 'client-registration-confirmed', 'polish', 'Customer Registration Confirmed [polish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1123, 'contract', 'contract-signed-to-staff', 'polish', 'Contract Signed (Sent to Staff) [polish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1124, 'subscriptions', 'customer-subscribed-to-staff', 'polish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [polish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1125, 'client', 'contact-verification-email', 'polish', 'Email Verification (Sent to Contact After Registration) [polish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1126, 'client', 'new-customer-profile-file-uploaded-to-staff', 'polish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [polish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1127, 'staff', 'event-notification-to-staff', 'polish', 'Event Notification (Calendar) [polish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1128, 'subscriptions', 'subscription-payment-requires-action', 'polish', 'Credit Card Authorization Required - SCA [polish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1129, 'invoice', 'invoice-due-notice', 'polish', 'Invoice Due Notice [polish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1130, 'estimate_request', 'estimate-request-submitted-to-staff', 'polish', 'Estimate Request Submitted (Sent to Staff) [polish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1131, 'estimate_request', 'estimate-request-assigned', 'polish', 'Estimate Request Assigned (Sent to Staff) [polish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1132, 'estimate_request', 'estimate-request-received-to-user', 'polish', 'Estimate Request Received (Sent to User) [polish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1133, 'notifications', 'non-billed-tasks-reminder', 'polish', 'Non-billed tasks reminder (sent to selected staff members) [polish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1134, 'invoice', 'invoices-batch-payments', 'polish', 'Invoices Payments Recorded in Batch (Sent to Customer) [polish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1135, 'client', 'new-client-created', 'portuguese', 'New Contact Added/Registered (Welcome Email) [portuguese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1136, 'invoice', 'invoice-send-to-client', 'portuguese', 'Send Invoice to Customer [portuguese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1137, 'ticket', 'new-ticket-opened-admin', 'portuguese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1138, 'ticket', 'ticket-reply', 'portuguese', 'Ticket Reply (Sent to Customer) [portuguese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1139, 'ticket', 'ticket-autoresponse', 'portuguese', 'New Ticket Opened - Autoresponse [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1140, 'invoice', 'invoice-payment-recorded', 'portuguese', 'Invoice Payment Recorded (Sent to Customer) [portuguese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1141, 'invoice', 'invoice-overdue-notice', 'portuguese', 'Invoice Overdue Notice [portuguese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1142, 'invoice', 'invoice-already-send', 'portuguese', 'Invoice Already Sent to Customer [portuguese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1143, 'ticket', 'new-ticket-created-staff', 'portuguese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1144, 'estimate', 'estimate-send-to-client', 'portuguese', 'Send Estimate to Customer [portuguese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1145, 'ticket', 'ticket-reply-to-admin', 'portuguese', 'Ticket Reply (Sent to Staff) [portuguese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1146, 'estimate', 'estimate-already-send', 'portuguese', 'Estimate Already Sent to Customer [portuguese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1147, 'contract', 'contract-expiration', 'portuguese', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1148, 'tasks', 'task-assigned', 'portuguese', 'New Task Assigned (Sent to Staff) [portuguese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1149, 'tasks', 'task-added-as-follower', 'portuguese', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1150, 'tasks', 'task-commented', 'portuguese', 'New Comment on Task (Sent to Staff) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1151, 'tasks', 'task-added-attachment', 'portuguese', 'New Attachment(s) on Task (Sent to Staff) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1152, 'estimate', 'estimate-declined-to-staff', 'portuguese', 'Estimate Declined (Sent to Staff) [portuguese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1153, 'estimate', 'estimate-accepted-to-staff', 'portuguese', 'Estimate Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1154, 'proposals', 'proposal-client-accepted', 'portuguese', 'Customer Action - Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1155, 'proposals', 'proposal-send-to-customer', 'portuguese', 'Send Proposal to Customer [portuguese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1156, 'proposals', 'proposal-client-declined', 'portuguese', 'Customer Action - Declined (Sent to Staff) [portuguese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1157, 'proposals', 'proposal-client-thank-you', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1158, 'proposals', 'proposal-comment-to-client', 'portuguese', 'New Comment Â (Sent to Customer/Lead) [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1159, 'proposals', 'proposal-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1160, 'estimate', 'estimate-thank-you-to-customer', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1161, 'tasks', 'task-deadline-notification', 'portuguese', 'Task Deadline Reminder - Sent to Assigned Members [portuguese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1162, 'contract', 'send-contract', 'portuguese', 'Send Contract to Customer [portuguese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1163, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese', 'Invoice Payment Recorded (Sent to Staff) [portuguese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1164, 'ticket', 'auto-close-ticket', 'portuguese', 'Auto Close Ticket [portuguese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1165, 'project', 'new-project-discussion-created-to-staff', 'portuguese', 'New Project Discussion (Sent to Project Members) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1166, 'project', 'new-project-discussion-created-to-customer', 'portuguese', 'New Project Discussion (Sent to Customer Contacts) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1167, 'project', 'new-project-file-uploaded-to-customer', 'portuguese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1168, 'project', 'new-project-file-uploaded-to-staff', 'portuguese', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1169, 'project', 'new-project-discussion-comment-to-customer', 'portuguese', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1170, 'project', 'new-project-discussion-comment-to-staff', 'portuguese', 'New Discussion Comment (Sent to Project Members) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1171, 'project', 'staff-added-as-project-member', 'portuguese', 'Staff Added as Project Member [portuguese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1172, 'estimate', 'estimate-expiry-reminder', 'portuguese', 'Estimate Expiration Reminder [portuguese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1173, 'proposals', 'proposal-expiry-reminder', 'portuguese', 'Proposal Expiration Reminder [portuguese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1174, 'staff', 'new-staff-created', 'portuguese', 'New Staff Created (Welcome Email) [portuguese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1175, 'client', 'contact-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1176, 'client', 'contact-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1177, 'client', 'contact-set-password', 'portuguese', 'Set New Password [portuguese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1178, 'staff', 'staff-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1179, 'staff', 'staff-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1180, 'project', 'assigned-to-project', 'portuguese', 'New Project Created (Sent to Customer Contacts) [portuguese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1181, 'tasks', 'task-added-attachment-to-contacts', 'portuguese', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1182, 'tasks', 'task-commented-to-contacts', 'portuguese', 'New Comment on Task (Sent to Customer Contacts) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1183, 'leads', 'new-lead-assigned', 'portuguese', 'New Lead Assigned to Staff Member [portuguese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1184, 'client', 'client-statement', 'portuguese', 'Statement - Account Summary [portuguese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1185, 'ticket', 'ticket-assigned-to-admin', 'portuguese', 'New Ticket Assigned (Sent to Staff) [portuguese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1186, 'client', 'new-client-registered-to-admin', 'portuguese', 'New Customer Registration (Sent to admins) [portuguese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1187, 'leads', 'new-web-to-lead-form-submitted', 'portuguese', 'Web to lead form submitted - Sent to lead [portuguese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1188, 'staff', 'two-factor-authentication', 'portuguese', 'Two Factor Authentication [portuguese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1189, 'project', 'project-finished-to-customer', 'portuguese', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1190, 'credit_note', 'credit-note-send-to-client', 'portuguese', 'Send Credit Note To Email [portuguese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1191, 'tasks', 'task-status-change-to-staff', 'portuguese', 'Task Status Changed (Sent to Staff) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1192, 'tasks', 'task-status-change-to-contacts', 'portuguese', 'Task Status Changed (Sent to Customer Contacts) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1193, 'staff', 'reminder-email-staff', 'portuguese', 'Staff Reminder Email [portuguese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1194, 'contract', 'contract-comment-to-client', 'portuguese', 'New Comment Â (Sent to Customer Contacts) [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1195, 'contract', 'contract-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1196, 'subscriptions', 'send-subscription', 'portuguese', 'Send Subscription to Customer [portuguese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1197, 'subscriptions', 'subscription-payment-failed', 'portuguese', 'Subscription Payment Failed [portuguese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1198, 'subscriptions', 'subscription-canceled', 'portuguese', 'Subscription Canceled (Sent to customer primary contact) [portuguese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1199, 'subscriptions', 'subscription-payment-succeeded', 'portuguese', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1200, 'contract', 'contract-expiration-to-staff', 'portuguese', 'Contract Expiration Reminder (Sent to Staff) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1201, 'gdpr', 'gdpr-removal-request', 'portuguese', 'Removal Request From Contact (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1202, 'gdpr', 'gdpr-removal-request-lead', 'portuguese', 'Removal Request From Lead (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1203, 'client', 'client-registration-confirmed', 'portuguese', 'Customer Registration Confirmed [portuguese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1204, 'contract', 'contract-signed-to-staff', 'portuguese', 'Contract Signed (Sent to Staff) [portuguese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1205, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1206, 'client', 'contact-verification-email', 'portuguese', 'Email Verification (Sent to Contact After Registration) [portuguese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1207, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1208, 'staff', 'event-notification-to-staff', 'portuguese', 'Event Notification (Calendar) [portuguese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1209, 'subscriptions', 'subscription-payment-requires-action', 'portuguese', 'Credit Card Authorization Required - SCA [portuguese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1210, 'invoice', 'invoice-due-notice', 'portuguese', 'Invoice Due Notice [portuguese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1211, 'estimate_request', 'estimate-request-submitted-to-staff', 'portuguese', 'Estimate Request Submitted (Sent to Staff) [portuguese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1212, 'estimate_request', 'estimate-request-assigned', 'portuguese', 'Estimate Request Assigned (Sent to Staff) [portuguese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1213, 'estimate_request', 'estimate-request-received-to-user', 'portuguese', 'Estimate Request Received (Sent to User) [portuguese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1214, 'notifications', 'non-billed-tasks-reminder', 'portuguese', 'Non-billed tasks reminder (sent to selected staff members) [portuguese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1215, 'invoice', 'invoices-batch-payments', 'portuguese', 'Invoices Payments Recorded in Batch (Sent to Customer) [portuguese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1216, 'client', 'new-client-created', 'portuguese_br', 'New Contact Added/Registered (Welcome Email) [portuguese_br]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1217, 'invoice', 'invoice-send-to-client', 'portuguese_br', 'Send Invoice to Customer [portuguese_br]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1218, 'ticket', 'new-ticket-opened-admin', 'portuguese_br', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1219, 'ticket', 'ticket-reply', 'portuguese_br', 'Ticket Reply (Sent to Customer) [portuguese_br]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1220, 'ticket', 'ticket-autoresponse', 'portuguese_br', 'New Ticket Opened - Autoresponse [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1221, 'invoice', 'invoice-payment-recorded', 'portuguese_br', 'Invoice Payment Recorded (Sent to Customer) [portuguese_br]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1222, 'invoice', 'invoice-overdue-notice', 'portuguese_br', 'Invoice Overdue Notice [portuguese_br]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1223, 'invoice', 'invoice-already-send', 'portuguese_br', 'Invoice Already Sent to Customer [portuguese_br]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1224, 'ticket', 'new-ticket-created-staff', 'portuguese_br', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese_br]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1225, 'estimate', 'estimate-send-to-client', 'portuguese_br', 'Send Estimate to Customer [portuguese_br]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1226, 'ticket', 'ticket-reply-to-admin', 'portuguese_br', 'Ticket Reply (Sent to Staff) [portuguese_br]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1227, 'estimate', 'estimate-already-send', 'portuguese_br', 'Estimate Already Sent to Customer [portuguese_br]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1228, 'contract', 'contract-expiration', 'portuguese_br', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1229, 'tasks', 'task-assigned', 'portuguese_br', 'New Task Assigned (Sent to Staff) [portuguese_br]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1230, 'tasks', 'task-added-as-follower', 'portuguese_br', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese_br]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1231, 'tasks', 'task-commented', 'portuguese_br', 'New Comment on Task (Sent to Staff) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1232, 'tasks', 'task-added-attachment', 'portuguese_br', 'New Attachment(s) on Task (Sent to Staff) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1233, 'estimate', 'estimate-declined-to-staff', 'portuguese_br', 'Estimate Declined (Sent to Staff) [portuguese_br]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1234, 'estimate', 'estimate-accepted-to-staff', 'portuguese_br', 'Estimate Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1235, 'proposals', 'proposal-client-accepted', 'portuguese_br', 'Customer Action - Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1236, 'proposals', 'proposal-send-to-customer', 'portuguese_br', 'Send Proposal to Customer [portuguese_br]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1237, 'proposals', 'proposal-client-declined', 'portuguese_br', 'Customer Action - Declined (Sent to Staff) [portuguese_br]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1238, 'proposals', 'proposal-client-thank-you', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1239, 'proposals', 'proposal-comment-to-client', 'portuguese_br', 'New Comment Â (Sent to Customer/Lead) [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1240, 'proposals', 'proposal-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1241, 'estimate', 'estimate-thank-you-to-customer', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1242, 'tasks', 'task-deadline-notification', 'portuguese_br', 'Task Deadline Reminder - Sent to Assigned Members [portuguese_br]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1243, 'contract', 'send-contract', 'portuguese_br', 'Send Contract to Customer [portuguese_br]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1244, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese_br', 'Invoice Payment Recorded (Sent to Staff) [portuguese_br]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1245, 'ticket', 'auto-close-ticket', 'portuguese_br', 'Auto Close Ticket [portuguese_br]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1246, 'project', 'new-project-discussion-created-to-staff', 'portuguese_br', 'New Project Discussion (Sent to Project Members) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1247, 'project', 'new-project-discussion-created-to-customer', 'portuguese_br', 'New Project Discussion (Sent to Customer Contacts) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1248, 'project', 'new-project-file-uploaded-to-customer', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1249, 'project', 'new-project-file-uploaded-to-staff', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1250, 'project', 'new-project-discussion-comment-to-customer', 'portuguese_br', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1251, 'project', 'new-project-discussion-comment-to-staff', 'portuguese_br', 'New Discussion Comment (Sent to Project Members) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1252, 'project', 'staff-added-as-project-member', 'portuguese_br', 'Staff Added as Project Member [portuguese_br]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1253, 'estimate', 'estimate-expiry-reminder', 'portuguese_br', 'Estimate Expiration Reminder [portuguese_br]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1254, 'proposals', 'proposal-expiry-reminder', 'portuguese_br', 'Proposal Expiration Reminder [portuguese_br]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1255, 'staff', 'new-staff-created', 'portuguese_br', 'New Staff Created (Welcome Email) [portuguese_br]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1256, 'client', 'contact-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1257, 'client', 'contact-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1258, 'client', 'contact-set-password', 'portuguese_br', 'Set New Password [portuguese_br]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1259, 'staff', 'staff-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1260, 'staff', 'staff-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1261, 'project', 'assigned-to-project', 'portuguese_br', 'New Project Created (Sent to Customer Contacts) [portuguese_br]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1262, 'tasks', 'task-added-attachment-to-contacts', 'portuguese_br', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1263, 'tasks', 'task-commented-to-contacts', 'portuguese_br', 'New Comment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1264, 'leads', 'new-lead-assigned', 'portuguese_br', 'New Lead Assigned to Staff Member [portuguese_br]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1265, 'client', 'client-statement', 'portuguese_br', 'Statement - Account Summary [portuguese_br]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1266, 'ticket', 'ticket-assigned-to-admin', 'portuguese_br', 'New Ticket Assigned (Sent to Staff) [portuguese_br]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1267, 'client', 'new-client-registered-to-admin', 'portuguese_br', 'New Customer Registration (Sent to admins) [portuguese_br]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1268, 'leads', 'new-web-to-lead-form-submitted', 'portuguese_br', 'Web to lead form submitted - Sent to lead [portuguese_br]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1269, 'staff', 'two-factor-authentication', 'portuguese_br', 'Two Factor Authentication [portuguese_br]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1270, 'project', 'project-finished-to-customer', 'portuguese_br', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese_br]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1271, 'credit_note', 'credit-note-send-to-client', 'portuguese_br', 'Send Credit Note To Email [portuguese_br]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1272, 'tasks', 'task-status-change-to-staff', 'portuguese_br', 'Task Status Changed (Sent to Staff) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1273, 'tasks', 'task-status-change-to-contacts', 'portuguese_br', 'Task Status Changed (Sent to Customer Contacts) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1274, 'staff', 'reminder-email-staff', 'portuguese_br', 'Staff Reminder Email [portuguese_br]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1275, 'contract', 'contract-comment-to-client', 'portuguese_br', 'New Comment Â (Sent to Customer Contacts) [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1276, 'contract', 'contract-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1277, 'subscriptions', 'send-subscription', 'portuguese_br', 'Send Subscription to Customer [portuguese_br]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1278, 'subscriptions', 'subscription-payment-failed', 'portuguese_br', 'Subscription Payment Failed [portuguese_br]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1279, 'subscriptions', 'subscription-canceled', 'portuguese_br', 'Subscription Canceled (Sent to customer primary contact) [portuguese_br]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1280, 'subscriptions', 'subscription-payment-succeeded', 'portuguese_br', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese_br]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1281, 'contract', 'contract-expiration-to-staff', 'portuguese_br', 'Contract Expiration Reminder (Sent to Staff) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1282, 'gdpr', 'gdpr-removal-request', 'portuguese_br', 'Removal Request From Contact (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1283, 'gdpr', 'gdpr-removal-request-lead', 'portuguese_br', 'Removal Request From Lead (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1284, 'client', 'client-registration-confirmed', 'portuguese_br', 'Customer Registration Confirmed [portuguese_br]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1285, 'contract', 'contract-signed-to-staff', 'portuguese_br', 'Contract Signed (Sent to Staff) [portuguese_br]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1286, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese_br', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese_br]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1287, 'client', 'contact-verification-email', 'portuguese_br', 'Email Verification (Sent to Contact After Registration) [portuguese_br]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1288, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese_br', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese_br]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1289, 'staff', 'event-notification-to-staff', 'portuguese_br', 'Event Notification (Calendar) [portuguese_br]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1290, 'subscriptions', 'subscription-payment-requires-action', 'portuguese_br', 'Credit Card Authorization Required - SCA [portuguese_br]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1291, 'invoice', 'invoice-due-notice', 'portuguese_br', 'Invoice Due Notice [portuguese_br]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1292, 'estimate_request', 'estimate-request-submitted-to-staff', 'portuguese_br', 'Estimate Request Submitted (Sent to Staff) [portuguese_br]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1293, 'estimate_request', 'estimate-request-assigned', 'portuguese_br', 'Estimate Request Assigned (Sent to Staff) [portuguese_br]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1294, 'estimate_request', 'estimate-request-received-to-user', 'portuguese_br', 'Estimate Request Received (Sent to User) [portuguese_br]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1295, 'notifications', 'non-billed-tasks-reminder', 'portuguese_br', 'Non-billed tasks reminder (sent to selected staff members) [portuguese_br]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1296, 'invoice', 'invoices-batch-payments', 'portuguese_br', 'Invoices Payments Recorded in Batch (Sent to Customer) [portuguese_br]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1297, 'client', 'new-client-created', 'romanian', 'New Contact Added/Registered (Welcome Email) [romanian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1298, 'invoice', 'invoice-send-to-client', 'romanian', 'Send Invoice to Customer [romanian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1299, 'ticket', 'new-ticket-opened-admin', 'romanian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1300, 'ticket', 'ticket-reply', 'romanian', 'Ticket Reply (Sent to Customer) [romanian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1301, 'ticket', 'ticket-autoresponse', 'romanian', 'New Ticket Opened - Autoresponse [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1302, 'invoice', 'invoice-payment-recorded', 'romanian', 'Invoice Payment Recorded (Sent to Customer) [romanian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1303, 'invoice', 'invoice-overdue-notice', 'romanian', 'Invoice Overdue Notice [romanian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1304, 'invoice', 'invoice-already-send', 'romanian', 'Invoice Already Sent to Customer [romanian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1305, 'ticket', 'new-ticket-created-staff', 'romanian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [romanian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1306, 'estimate', 'estimate-send-to-client', 'romanian', 'Send Estimate to Customer [romanian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1307, 'ticket', 'ticket-reply-to-admin', 'romanian', 'Ticket Reply (Sent to Staff) [romanian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1308, 'estimate', 'estimate-already-send', 'romanian', 'Estimate Already Sent to Customer [romanian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1309, 'contract', 'contract-expiration', 'romanian', 'Contract Expiration Reminder (Sent to Customer Contacts) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1310, 'tasks', 'task-assigned', 'romanian', 'New Task Assigned (Sent to Staff) [romanian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1311, 'tasks', 'task-added-as-follower', 'romanian', 'Staff Member Added as Follower on Task (Sent to Staff) [romanian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1312, 'tasks', 'task-commented', 'romanian', 'New Comment on Task (Sent to Staff) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1313, 'tasks', 'task-added-attachment', 'romanian', 'New Attachment(s) on Task (Sent to Staff) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1314, 'estimate', 'estimate-declined-to-staff', 'romanian', 'Estimate Declined (Sent to Staff) [romanian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1315, 'estimate', 'estimate-accepted-to-staff', 'romanian', 'Estimate Accepted (Sent to Staff) [romanian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1316, 'proposals', 'proposal-client-accepted', 'romanian', 'Customer Action - Accepted (Sent to Staff) [romanian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1317, 'proposals', 'proposal-send-to-customer', 'romanian', 'Send Proposal to Customer [romanian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1318, 'proposals', 'proposal-client-declined', 'romanian', 'Customer Action - Declined (Sent to Staff) [romanian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1319, 'proposals', 'proposal-client-thank-you', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1320, 'proposals', 'proposal-comment-to-client', 'romanian', 'New Comment Â (Sent to Customer/Lead) [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1321, 'proposals', 'proposal-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1322, 'estimate', 'estimate-thank-you-to-customer', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1323, 'tasks', 'task-deadline-notification', 'romanian', 'Task Deadline Reminder - Sent to Assigned Members [romanian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1324, 'contract', 'send-contract', 'romanian', 'Send Contract to Customer [romanian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1325, 'invoice', 'invoice-payment-recorded-to-staff', 'romanian', 'Invoice Payment Recorded (Sent to Staff) [romanian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1326, 'ticket', 'auto-close-ticket', 'romanian', 'Auto Close Ticket [romanian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1327, 'project', 'new-project-discussion-created-to-staff', 'romanian', 'New Project Discussion (Sent to Project Members) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1328, 'project', 'new-project-discussion-created-to-customer', 'romanian', 'New Project Discussion (Sent to Customer Contacts) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1329, 'project', 'new-project-file-uploaded-to-customer', 'romanian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1330, 'project', 'new-project-file-uploaded-to-staff', 'romanian', 'New Project File(s) Uploaded (Sent to Project Members) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1331, 'project', 'new-project-discussion-comment-to-customer', 'romanian', 'New Discussion Comment  (Sent to Customer Contacts) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1332, 'project', 'new-project-discussion-comment-to-staff', 'romanian', 'New Discussion Comment (Sent to Project Members) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1333, 'project', 'staff-added-as-project-member', 'romanian', 'Staff Added as Project Member [romanian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1334, 'estimate', 'estimate-expiry-reminder', 'romanian', 'Estimate Expiration Reminder [romanian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1335, 'proposals', 'proposal-expiry-reminder', 'romanian', 'Proposal Expiration Reminder [romanian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1336, 'staff', 'new-staff-created', 'romanian', 'New Staff Created (Welcome Email) [romanian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1337, 'client', 'contact-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1338, 'client', 'contact-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1339, 'client', 'contact-set-password', 'romanian', 'Set New Password [romanian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1340, 'staff', 'staff-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1341, 'staff', 'staff-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1342, 'project', 'assigned-to-project', 'romanian', 'New Project Created (Sent to Customer Contacts) [romanian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1343, 'tasks', 'task-added-attachment-to-contacts', 'romanian', 'New Attachment(s) on Task (Sent to Customer Contacts) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1344, 'tasks', 'task-commented-to-contacts', 'romanian', 'New Comment on Task (Sent to Customer Contacts) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1345, 'leads', 'new-lead-assigned', 'romanian', 'New Lead Assigned to Staff Member [romanian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1346, 'client', 'client-statement', 'romanian', 'Statement - Account Summary [romanian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1347, 'ticket', 'ticket-assigned-to-admin', 'romanian', 'New Ticket Assigned (Sent to Staff) [romanian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1348, 'client', 'new-client-registered-to-admin', 'romanian', 'New Customer Registration (Sent to admins) [romanian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1349, 'leads', 'new-web-to-lead-form-submitted', 'romanian', 'Web to lead form submitted - Sent to lead [romanian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1350, 'staff', 'two-factor-authentication', 'romanian', 'Two Factor Authentication [romanian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1351, 'project', 'project-finished-to-customer', 'romanian', 'Project Marked as Finished (Sent to Customer Contacts) [romanian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1352, 'credit_note', 'credit-note-send-to-client', 'romanian', 'Send Credit Note To Email [romanian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1353, 'tasks', 'task-status-change-to-staff', 'romanian', 'Task Status Changed (Sent to Staff) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1354, 'tasks', 'task-status-change-to-contacts', 'romanian', 'Task Status Changed (Sent to Customer Contacts) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1355, 'staff', 'reminder-email-staff', 'romanian', 'Staff Reminder Email [romanian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1356, 'contract', 'contract-comment-to-client', 'romanian', 'New Comment Â (Sent to Customer Contacts) [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1357, 'contract', 'contract-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1358, 'subscriptions', 'send-subscription', 'romanian', 'Send Subscription to Customer [romanian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1359, 'subscriptions', 'subscription-payment-failed', 'romanian', 'Subscription Payment Failed [romanian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1360, 'subscriptions', 'subscription-canceled', 'romanian', 'Subscription Canceled (Sent to customer primary contact) [romanian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1361, 'subscriptions', 'subscription-payment-succeeded', 'romanian', 'Subscription Payment Succeeded (Sent to customer primary contact) [romanian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1362, 'contract', 'contract-expiration-to-staff', 'romanian', 'Contract Expiration Reminder (Sent to Staff) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1363, 'gdpr', 'gdpr-removal-request', 'romanian', 'Removal Request From Contact (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1364, 'gdpr', 'gdpr-removal-request-lead', 'romanian', 'Removal Request From Lead (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1365, 'client', 'client-registration-confirmed', 'romanian', 'Customer Registration Confirmed [romanian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1366, 'contract', 'contract-signed-to-staff', 'romanian', 'Contract Signed (Sent to Staff) [romanian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1367, 'subscriptions', 'customer-subscribed-to-staff', 'romanian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [romanian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1368, 'client', 'contact-verification-email', 'romanian', 'Email Verification (Sent to Contact After Registration) [romanian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1369, 'client', 'new-customer-profile-file-uploaded-to-staff', 'romanian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [romanian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1370, 'staff', 'event-notification-to-staff', 'romanian', 'Event Notification (Calendar) [romanian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1371, 'subscriptions', 'subscription-payment-requires-action', 'romanian', 'Credit Card Authorization Required - SCA [romanian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1372, 'invoice', 'invoice-due-notice', 'romanian', 'Invoice Due Notice [romanian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1373, 'estimate_request', 'estimate-request-submitted-to-staff', 'romanian', 'Estimate Request Submitted (Sent to Staff) [romanian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1374, 'estimate_request', 'estimate-request-assigned', 'romanian', 'Estimate Request Assigned (Sent to Staff) [romanian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1375, 'estimate_request', 'estimate-request-received-to-user', 'romanian', 'Estimate Request Received (Sent to User) [romanian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1376, 'notifications', 'non-billed-tasks-reminder', 'romanian', 'Non-billed tasks reminder (sent to selected staff members) [romanian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1377, 'invoice', 'invoices-batch-payments', 'romanian', 'Invoices Payments Recorded in Batch (Sent to Customer) [romanian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1378, 'client', 'new-client-created', 'russian', 'New Contact Added/Registered (Welcome Email) [russian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1379, 'invoice', 'invoice-send-to-client', 'russian', 'Send Invoice to Customer [russian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1380, 'ticket', 'new-ticket-opened-admin', 'russian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1381, 'ticket', 'ticket-reply', 'russian', 'Ticket Reply (Sent to Customer) [russian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1382, 'ticket', 'ticket-autoresponse', 'russian', 'New Ticket Opened - Autoresponse [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1383, 'invoice', 'invoice-payment-recorded', 'russian', 'Invoice Payment Recorded (Sent to Customer) [russian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1384, 'invoice', 'invoice-overdue-notice', 'russian', 'Invoice Overdue Notice [russian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1385, 'invoice', 'invoice-already-send', 'russian', 'Invoice Already Sent to Customer [russian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1386, 'ticket', 'new-ticket-created-staff', 'russian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [russian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1387, 'estimate', 'estimate-send-to-client', 'russian', 'Send Estimate to Customer [russian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1388, 'ticket', 'ticket-reply-to-admin', 'russian', 'Ticket Reply (Sent to Staff) [russian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1389, 'estimate', 'estimate-already-send', 'russian', 'Estimate Already Sent to Customer [russian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1390, 'contract', 'contract-expiration', 'russian', 'Contract Expiration Reminder (Sent to Customer Contacts) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1391, 'tasks', 'task-assigned', 'russian', 'New Task Assigned (Sent to Staff) [russian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1392, 'tasks', 'task-added-as-follower', 'russian', 'Staff Member Added as Follower on Task (Sent to Staff) [russian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1393, 'tasks', 'task-commented', 'russian', 'New Comment on Task (Sent to Staff) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1394, 'tasks', 'task-added-attachment', 'russian', 'New Attachment(s) on Task (Sent to Staff) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1395, 'estimate', 'estimate-declined-to-staff', 'russian', 'Estimate Declined (Sent to Staff) [russian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1396, 'estimate', 'estimate-accepted-to-staff', 'russian', 'Estimate Accepted (Sent to Staff) [russian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1397, 'proposals', 'proposal-client-accepted', 'russian', 'Customer Action - Accepted (Sent to Staff) [russian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1398, 'proposals', 'proposal-send-to-customer', 'russian', 'Send Proposal to Customer [russian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1399, 'proposals', 'proposal-client-declined', 'russian', 'Customer Action - Declined (Sent to Staff) [russian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1400, 'proposals', 'proposal-client-thank-you', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1401, 'proposals', 'proposal-comment-to-client', 'russian', 'New Comment Â (Sent to Customer/Lead) [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1402, 'proposals', 'proposal-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1403, 'estimate', 'estimate-thank-you-to-customer', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1404, 'tasks', 'task-deadline-notification', 'russian', 'Task Deadline Reminder - Sent to Assigned Members [russian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1405, 'contract', 'send-contract', 'russian', 'Send Contract to Customer [russian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1406, 'invoice', 'invoice-payment-recorded-to-staff', 'russian', 'Invoice Payment Recorded (Sent to Staff) [russian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1407, 'ticket', 'auto-close-ticket', 'russian', 'Auto Close Ticket [russian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1408, 'project', 'new-project-discussion-created-to-staff', 'russian', 'New Project Discussion (Sent to Project Members) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1409, 'project', 'new-project-discussion-created-to-customer', 'russian', 'New Project Discussion (Sent to Customer Contacts) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1410, 'project', 'new-project-file-uploaded-to-customer', 'russian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1411, 'project', 'new-project-file-uploaded-to-staff', 'russian', 'New Project File(s) Uploaded (Sent to Project Members) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1412, 'project', 'new-project-discussion-comment-to-customer', 'russian', 'New Discussion Comment  (Sent to Customer Contacts) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1413, 'project', 'new-project-discussion-comment-to-staff', 'russian', 'New Discussion Comment (Sent to Project Members) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1414, 'project', 'staff-added-as-project-member', 'russian', 'Staff Added as Project Member [russian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1415, 'estimate', 'estimate-expiry-reminder', 'russian', 'Estimate Expiration Reminder [russian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1416, 'proposals', 'proposal-expiry-reminder', 'russian', 'Proposal Expiration Reminder [russian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1417, 'staff', 'new-staff-created', 'russian', 'New Staff Created (Welcome Email) [russian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1418, 'client', 'contact-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1419, 'client', 'contact-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1420, 'client', 'contact-set-password', 'russian', 'Set New Password [russian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1421, 'staff', 'staff-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1422, 'staff', 'staff-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1423, 'project', 'assigned-to-project', 'russian', 'New Project Created (Sent to Customer Contacts) [russian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1424, 'tasks', 'task-added-attachment-to-contacts', 'russian', 'New Attachment(s) on Task (Sent to Customer Contacts) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1425, 'tasks', 'task-commented-to-contacts', 'russian', 'New Comment on Task (Sent to Customer Contacts) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1426, 'leads', 'new-lead-assigned', 'russian', 'New Lead Assigned to Staff Member [russian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1427, 'client', 'client-statement', 'russian', 'Statement - Account Summary [russian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1428, 'ticket', 'ticket-assigned-to-admin', 'russian', 'New Ticket Assigned (Sent to Staff) [russian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1429, 'client', 'new-client-registered-to-admin', 'russian', 'New Customer Registration (Sent to admins) [russian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1430, 'leads', 'new-web-to-lead-form-submitted', 'russian', 'Web to lead form submitted - Sent to lead [russian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1431, 'staff', 'two-factor-authentication', 'russian', 'Two Factor Authentication [russian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1432, 'project', 'project-finished-to-customer', 'russian', 'Project Marked as Finished (Sent to Customer Contacts) [russian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1433, 'credit_note', 'credit-note-send-to-client', 'russian', 'Send Credit Note To Email [russian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1434, 'tasks', 'task-status-change-to-staff', 'russian', 'Task Status Changed (Sent to Staff) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1435, 'tasks', 'task-status-change-to-contacts', 'russian', 'Task Status Changed (Sent to Customer Contacts) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1436, 'staff', 'reminder-email-staff', 'russian', 'Staff Reminder Email [russian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1437, 'contract', 'contract-comment-to-client', 'russian', 'New Comment Â (Sent to Customer Contacts) [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1438, 'contract', 'contract-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1439, 'subscriptions', 'send-subscription', 'russian', 'Send Subscription to Customer [russian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1440, 'subscriptions', 'subscription-payment-failed', 'russian', 'Subscription Payment Failed [russian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1441, 'subscriptions', 'subscription-canceled', 'russian', 'Subscription Canceled (Sent to customer primary contact) [russian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1442, 'subscriptions', 'subscription-payment-succeeded', 'russian', 'Subscription Payment Succeeded (Sent to customer primary contact) [russian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1443, 'contract', 'contract-expiration-to-staff', 'russian', 'Contract Expiration Reminder (Sent to Staff) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1444, 'gdpr', 'gdpr-removal-request', 'russian', 'Removal Request From Contact (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1445, 'gdpr', 'gdpr-removal-request-lead', 'russian', 'Removal Request From Lead (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1446, 'client', 'client-registration-confirmed', 'russian', 'Customer Registration Confirmed [russian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1447, 'contract', 'contract-signed-to-staff', 'russian', 'Contract Signed (Sent to Staff) [russian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1448, 'subscriptions', 'customer-subscribed-to-staff', 'russian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [russian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1449, 'client', 'contact-verification-email', 'russian', 'Email Verification (Sent to Contact After Registration) [russian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1450, 'client', 'new-customer-profile-file-uploaded-to-staff', 'russian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [russian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1451, 'staff', 'event-notification-to-staff', 'russian', 'Event Notification (Calendar) [russian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1452, 'subscriptions', 'subscription-payment-requires-action', 'russian', 'Credit Card Authorization Required - SCA [russian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1453, 'invoice', 'invoice-due-notice', 'russian', 'Invoice Due Notice [russian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1454, 'estimate_request', 'estimate-request-submitted-to-staff', 'russian', 'Estimate Request Submitted (Sent to Staff) [russian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1455, 'estimate_request', 'estimate-request-assigned', 'russian', 'Estimate Request Assigned (Sent to Staff) [russian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1456, 'estimate_request', 'estimate-request-received-to-user', 'russian', 'Estimate Request Received (Sent to User) [russian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1457, 'notifications', 'non-billed-tasks-reminder', 'russian', 'Non-billed tasks reminder (sent to selected staff members) [russian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1458, 'invoice', 'invoices-batch-payments', 'russian', 'Invoices Payments Recorded in Batch (Sent to Customer) [russian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1459, 'client', 'new-client-created', 'slovak', 'New Contact Added/Registered (Welcome Email) [slovak]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1460, 'invoice', 'invoice-send-to-client', 'slovak', 'Send Invoice to Customer [slovak]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1461, 'ticket', 'new-ticket-opened-admin', 'slovak', 'New Ticket Opened (Opened by Staff, Sent to Customer) [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1462, 'ticket', 'ticket-reply', 'slovak', 'Ticket Reply (Sent to Customer) [slovak]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1463, 'ticket', 'ticket-autoresponse', 'slovak', 'New Ticket Opened - Autoresponse [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1464, 'invoice', 'invoice-payment-recorded', 'slovak', 'Invoice Payment Recorded (Sent to Customer) [slovak]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1465, 'invoice', 'invoice-overdue-notice', 'slovak', 'Invoice Overdue Notice [slovak]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1466, 'invoice', 'invoice-already-send', 'slovak', 'Invoice Already Sent to Customer [slovak]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1467, 'ticket', 'new-ticket-created-staff', 'slovak', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [slovak]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1468, 'estimate', 'estimate-send-to-client', 'slovak', 'Send Estimate to Customer [slovak]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1469, 'ticket', 'ticket-reply-to-admin', 'slovak', 'Ticket Reply (Sent to Staff) [slovak]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1470, 'estimate', 'estimate-already-send', 'slovak', 'Estimate Already Sent to Customer [slovak]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1471, 'contract', 'contract-expiration', 'slovak', 'Contract Expiration Reminder (Sent to Customer Contacts) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1472, 'tasks', 'task-assigned', 'slovak', 'New Task Assigned (Sent to Staff) [slovak]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1473, 'tasks', 'task-added-as-follower', 'slovak', 'Staff Member Added as Follower on Task (Sent to Staff) [slovak]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1474, 'tasks', 'task-commented', 'slovak', 'New Comment on Task (Sent to Staff) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1475, 'tasks', 'task-added-attachment', 'slovak', 'New Attachment(s) on Task (Sent to Staff) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1476, 'estimate', 'estimate-declined-to-staff', 'slovak', 'Estimate Declined (Sent to Staff) [slovak]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1477, 'estimate', 'estimate-accepted-to-staff', 'slovak', 'Estimate Accepted (Sent to Staff) [slovak]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1478, 'proposals', 'proposal-client-accepted', 'slovak', 'Customer Action - Accepted (Sent to Staff) [slovak]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1479, 'proposals', 'proposal-send-to-customer', 'slovak', 'Send Proposal to Customer [slovak]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1480, 'proposals', 'proposal-client-declined', 'slovak', 'Customer Action - Declined (Sent to Staff) [slovak]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1481, 'proposals', 'proposal-client-thank-you', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1482, 'proposals', 'proposal-comment-to-client', 'slovak', 'New Comment Â (Sent to Customer/Lead) [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1483, 'proposals', 'proposal-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1484, 'estimate', 'estimate-thank-you-to-customer', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1485, 'tasks', 'task-deadline-notification', 'slovak', 'Task Deadline Reminder - Sent to Assigned Members [slovak]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1486, 'contract', 'send-contract', 'slovak', 'Send Contract to Customer [slovak]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1487, 'invoice', 'invoice-payment-recorded-to-staff', 'slovak', 'Invoice Payment Recorded (Sent to Staff) [slovak]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1488, 'ticket', 'auto-close-ticket', 'slovak', 'Auto Close Ticket [slovak]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1489, 'project', 'new-project-discussion-created-to-staff', 'slovak', 'New Project Discussion (Sent to Project Members) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1490, 'project', 'new-project-discussion-created-to-customer', 'slovak', 'New Project Discussion (Sent to Customer Contacts) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1491, 'project', 'new-project-file-uploaded-to-customer', 'slovak', 'New Project File(s) Uploaded (Sent to Customer Contacts) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1492, 'project', 'new-project-file-uploaded-to-staff', 'slovak', 'New Project File(s) Uploaded (Sent to Project Members) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1493, 'project', 'new-project-discussion-comment-to-customer', 'slovak', 'New Discussion Comment  (Sent to Customer Contacts) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1494, 'project', 'new-project-discussion-comment-to-staff', 'slovak', 'New Discussion Comment (Sent to Project Members) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1495, 'project', 'staff-added-as-project-member', 'slovak', 'Staff Added as Project Member [slovak]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1496, 'estimate', 'estimate-expiry-reminder', 'slovak', 'Estimate Expiration Reminder [slovak]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1497, 'proposals', 'proposal-expiry-reminder', 'slovak', 'Proposal Expiration Reminder [slovak]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1498, 'staff', 'new-staff-created', 'slovak', 'New Staff Created (Welcome Email) [slovak]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1499, 'client', 'contact-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1500, 'client', 'contact-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1501, 'client', 'contact-set-password', 'slovak', 'Set New Password [slovak]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1502, 'staff', 'staff-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1503, 'staff', 'staff-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1504, 'project', 'assigned-to-project', 'slovak', 'New Project Created (Sent to Customer Contacts) [slovak]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1505, 'tasks', 'task-added-attachment-to-contacts', 'slovak', 'New Attachment(s) on Task (Sent to Customer Contacts) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1506, 'tasks', 'task-commented-to-contacts', 'slovak', 'New Comment on Task (Sent to Customer Contacts) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1507, 'leads', 'new-lead-assigned', 'slovak', 'New Lead Assigned to Staff Member [slovak]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1508, 'client', 'client-statement', 'slovak', 'Statement - Account Summary [slovak]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1509, 'ticket', 'ticket-assigned-to-admin', 'slovak', 'New Ticket Assigned (Sent to Staff) [slovak]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1510, 'client', 'new-client-registered-to-admin', 'slovak', 'New Customer Registration (Sent to admins) [slovak]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1511, 'leads', 'new-web-to-lead-form-submitted', 'slovak', 'Web to lead form submitted - Sent to lead [slovak]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1512, 'staff', 'two-factor-authentication', 'slovak', 'Two Factor Authentication [slovak]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1513, 'project', 'project-finished-to-customer', 'slovak', 'Project Marked as Finished (Sent to Customer Contacts) [slovak]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1514, 'credit_note', 'credit-note-send-to-client', 'slovak', 'Send Credit Note To Email [slovak]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1515, 'tasks', 'task-status-change-to-staff', 'slovak', 'Task Status Changed (Sent to Staff) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1516, 'tasks', 'task-status-change-to-contacts', 'slovak', 'Task Status Changed (Sent to Customer Contacts) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1517, 'staff', 'reminder-email-staff', 'slovak', 'Staff Reminder Email [slovak]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1518, 'contract', 'contract-comment-to-client', 'slovak', 'New Comment Â (Sent to Customer Contacts) [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1519, 'contract', 'contract-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1520, 'subscriptions', 'send-subscription', 'slovak', 'Send Subscription to Customer [slovak]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1521, 'subscriptions', 'subscription-payment-failed', 'slovak', 'Subscription Payment Failed [slovak]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1522, 'subscriptions', 'subscription-canceled', 'slovak', 'Subscription Canceled (Sent to customer primary contact) [slovak]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1523, 'subscriptions', 'subscription-payment-succeeded', 'slovak', 'Subscription Payment Succeeded (Sent to customer primary contact) [slovak]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1524, 'contract', 'contract-expiration-to-staff', 'slovak', 'Contract Expiration Reminder (Sent to Staff) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1525, 'gdpr', 'gdpr-removal-request', 'slovak', 'Removal Request From Contact (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1526, 'gdpr', 'gdpr-removal-request-lead', 'slovak', 'Removal Request From Lead (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1527, 'client', 'client-registration-confirmed', 'slovak', 'Customer Registration Confirmed [slovak]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1528, 'contract', 'contract-signed-to-staff', 'slovak', 'Contract Signed (Sent to Staff) [slovak]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1529, 'subscriptions', 'customer-subscribed-to-staff', 'slovak', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [slovak]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1530, 'client', 'contact-verification-email', 'slovak', 'Email Verification (Sent to Contact After Registration) [slovak]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1531, 'client', 'new-customer-profile-file-uploaded-to-staff', 'slovak', 'New Customer Profile File(s) Uploaded (Sent to Staff) [slovak]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1532, 'staff', 'event-notification-to-staff', 'slovak', 'Event Notification (Calendar) [slovak]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1533, 'subscriptions', 'subscription-payment-requires-action', 'slovak', 'Credit Card Authorization Required - SCA [slovak]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1534, 'invoice', 'invoice-due-notice', 'slovak', 'Invoice Due Notice [slovak]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1535, 'estimate_request', 'estimate-request-submitted-to-staff', 'slovak', 'Estimate Request Submitted (Sent to Staff) [slovak]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1536, 'estimate_request', 'estimate-request-assigned', 'slovak', 'Estimate Request Assigned (Sent to Staff) [slovak]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1537, 'estimate_request', 'estimate-request-received-to-user', 'slovak', 'Estimate Request Received (Sent to User) [slovak]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1538, 'notifications', 'non-billed-tasks-reminder', 'slovak', 'Non-billed tasks reminder (sent to selected staff members) [slovak]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1539, 'invoice', 'invoices-batch-payments', 'slovak', 'Invoices Payments Recorded in Batch (Sent to Customer) [slovak]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1540, 'client', 'new-client-created', 'spanish', 'New Contact Added/Registered (Welcome Email) [spanish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1541, 'invoice', 'invoice-send-to-client', 'spanish', 'Send Invoice to Customer [spanish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1542, 'ticket', 'new-ticket-opened-admin', 'spanish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1543, 'ticket', 'ticket-reply', 'spanish', 'Ticket Reply (Sent to Customer) [spanish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1544, 'ticket', 'ticket-autoresponse', 'spanish', 'New Ticket Opened - Autoresponse [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1545, 'invoice', 'invoice-payment-recorded', 'spanish', 'Invoice Payment Recorded (Sent to Customer) [spanish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1546, 'invoice', 'invoice-overdue-notice', 'spanish', 'Invoice Overdue Notice [spanish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1547, 'invoice', 'invoice-already-send', 'spanish', 'Invoice Already Sent to Customer [spanish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1548, 'ticket', 'new-ticket-created-staff', 'spanish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [spanish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1549, 'estimate', 'estimate-send-to-client', 'spanish', 'Send Estimate to Customer [spanish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1550, 'ticket', 'ticket-reply-to-admin', 'spanish', 'Ticket Reply (Sent to Staff) [spanish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1551, 'estimate', 'estimate-already-send', 'spanish', 'Estimate Already Sent to Customer [spanish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1552, 'contract', 'contract-expiration', 'spanish', 'Contract Expiration Reminder (Sent to Customer Contacts) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1553, 'tasks', 'task-assigned', 'spanish', 'New Task Assigned (Sent to Staff) [spanish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1554, 'tasks', 'task-added-as-follower', 'spanish', 'Staff Member Added as Follower on Task (Sent to Staff) [spanish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1555, 'tasks', 'task-commented', 'spanish', 'New Comment on Task (Sent to Staff) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1556, 'tasks', 'task-added-attachment', 'spanish', 'New Attachment(s) on Task (Sent to Staff) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1557, 'estimate', 'estimate-declined-to-staff', 'spanish', 'Estimate Declined (Sent to Staff) [spanish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1558, 'estimate', 'estimate-accepted-to-staff', 'spanish', 'Estimate Accepted (Sent to Staff) [spanish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1559, 'proposals', 'proposal-client-accepted', 'spanish', 'Customer Action - Accepted (Sent to Staff) [spanish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1560, 'proposals', 'proposal-send-to-customer', 'spanish', 'Send Proposal to Customer [spanish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1561, 'proposals', 'proposal-client-declined', 'spanish', 'Customer Action - Declined (Sent to Staff) [spanish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1562, 'proposals', 'proposal-client-thank-you', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1563, 'proposals', 'proposal-comment-to-client', 'spanish', 'New Comment Â (Sent to Customer/Lead) [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1564, 'proposals', 'proposal-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1565, 'estimate', 'estimate-thank-you-to-customer', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1566, 'tasks', 'task-deadline-notification', 'spanish', 'Task Deadline Reminder - Sent to Assigned Members [spanish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1567, 'contract', 'send-contract', 'spanish', 'Send Contract to Customer [spanish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1568, 'invoice', 'invoice-payment-recorded-to-staff', 'spanish', 'Invoice Payment Recorded (Sent to Staff) [spanish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1569, 'ticket', 'auto-close-ticket', 'spanish', 'Auto Close Ticket [spanish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1570, 'project', 'new-project-discussion-created-to-staff', 'spanish', 'New Project Discussion (Sent to Project Members) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1571, 'project', 'new-project-discussion-created-to-customer', 'spanish', 'New Project Discussion (Sent to Customer Contacts) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1572, 'project', 'new-project-file-uploaded-to-customer', 'spanish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1573, 'project', 'new-project-file-uploaded-to-staff', 'spanish', 'New Project File(s) Uploaded (Sent to Project Members) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1574, 'project', 'new-project-discussion-comment-to-customer', 'spanish', 'New Discussion Comment  (Sent to Customer Contacts) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1575, 'project', 'new-project-discussion-comment-to-staff', 'spanish', 'New Discussion Comment (Sent to Project Members) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1576, 'project', 'staff-added-as-project-member', 'spanish', 'Staff Added as Project Member [spanish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1577, 'estimate', 'estimate-expiry-reminder', 'spanish', 'Estimate Expiration Reminder [spanish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1578, 'proposals', 'proposal-expiry-reminder', 'spanish', 'Proposal Expiration Reminder [spanish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1579, 'staff', 'new-staff-created', 'spanish', 'New Staff Created (Welcome Email) [spanish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1580, 'client', 'contact-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1581, 'client', 'contact-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1582, 'client', 'contact-set-password', 'spanish', 'Set New Password [spanish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1583, 'staff', 'staff-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1584, 'staff', 'staff-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1585, 'project', 'assigned-to-project', 'spanish', 'New Project Created (Sent to Customer Contacts) [spanish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1586, 'tasks', 'task-added-attachment-to-contacts', 'spanish', 'New Attachment(s) on Task (Sent to Customer Contacts) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1587, 'tasks', 'task-commented-to-contacts', 'spanish', 'New Comment on Task (Sent to Customer Contacts) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1588, 'leads', 'new-lead-assigned', 'spanish', 'New Lead Assigned to Staff Member [spanish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1589, 'client', 'client-statement', 'spanish', 'Statement - Account Summary [spanish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1590, 'ticket', 'ticket-assigned-to-admin', 'spanish', 'New Ticket Assigned (Sent to Staff) [spanish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1591, 'client', 'new-client-registered-to-admin', 'spanish', 'New Customer Registration (Sent to admins) [spanish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1592, 'leads', 'new-web-to-lead-form-submitted', 'spanish', 'Web to lead form submitted - Sent to lead [spanish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1593, 'staff', 'two-factor-authentication', 'spanish', 'Two Factor Authentication [spanish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1594, 'project', 'project-finished-to-customer', 'spanish', 'Project Marked as Finished (Sent to Customer Contacts) [spanish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1595, 'credit_note', 'credit-note-send-to-client', 'spanish', 'Send Credit Note To Email [spanish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1596, 'tasks', 'task-status-change-to-staff', 'spanish', 'Task Status Changed (Sent to Staff) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1597, 'tasks', 'task-status-change-to-contacts', 'spanish', 'Task Status Changed (Sent to Customer Contacts) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1598, 'staff', 'reminder-email-staff', 'spanish', 'Staff Reminder Email [spanish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1599, 'contract', 'contract-comment-to-client', 'spanish', 'New Comment Â (Sent to Customer Contacts) [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1600, 'contract', 'contract-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1601, 'subscriptions', 'send-subscription', 'spanish', 'Send Subscription to Customer [spanish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1602, 'subscriptions', 'subscription-payment-failed', 'spanish', 'Subscription Payment Failed [spanish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1603, 'subscriptions', 'subscription-canceled', 'spanish', 'Subscription Canceled (Sent to customer primary contact) [spanish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1604, 'subscriptions', 'subscription-payment-succeeded', 'spanish', 'Subscription Payment Succeeded (Sent to customer primary contact) [spanish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1605, 'contract', 'contract-expiration-to-staff', 'spanish', 'Contract Expiration Reminder (Sent to Staff) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1606, 'gdpr', 'gdpr-removal-request', 'spanish', 'Removal Request From Contact (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1607, 'gdpr', 'gdpr-removal-request-lead', 'spanish', 'Removal Request From Lead (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1608, 'client', 'client-registration-confirmed', 'spanish', 'Customer Registration Confirmed [spanish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1609, 'contract', 'contract-signed-to-staff', 'spanish', 'Contract Signed (Sent to Staff) [spanish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1610, 'subscriptions', 'customer-subscribed-to-staff', 'spanish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [spanish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1611, 'client', 'contact-verification-email', 'spanish', 'Email Verification (Sent to Contact After Registration) [spanish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1612, 'client', 'new-customer-profile-file-uploaded-to-staff', 'spanish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [spanish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1613, 'staff', 'event-notification-to-staff', 'spanish', 'Event Notification (Calendar) [spanish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1614, 'subscriptions', 'subscription-payment-requires-action', 'spanish', 'Credit Card Authorization Required - SCA [spanish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1615, 'invoice', 'invoice-due-notice', 'spanish', 'Invoice Due Notice [spanish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1616, 'estimate_request', 'estimate-request-submitted-to-staff', 'spanish', 'Estimate Request Submitted (Sent to Staff) [spanish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1617, 'estimate_request', 'estimate-request-assigned', 'spanish', 'Estimate Request Assigned (Sent to Staff) [spanish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1618, 'estimate_request', 'estimate-request-received-to-user', 'spanish', 'Estimate Request Received (Sent to User) [spanish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1619, 'notifications', 'non-billed-tasks-reminder', 'spanish', 'Non-billed tasks reminder (sent to selected staff members) [spanish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1620, 'invoice', 'invoices-batch-payments', 'spanish', 'Invoices Payments Recorded in Batch (Sent to Customer) [spanish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1621, 'client', 'new-client-created', 'swedish', 'New Contact Added/Registered (Welcome Email) [swedish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1622, 'invoice', 'invoice-send-to-client', 'swedish', 'Send Invoice to Customer [swedish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1623, 'ticket', 'new-ticket-opened-admin', 'swedish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1624, 'ticket', 'ticket-reply', 'swedish', 'Ticket Reply (Sent to Customer) [swedish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1625, 'ticket', 'ticket-autoresponse', 'swedish', 'New Ticket Opened - Autoresponse [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1626, 'invoice', 'invoice-payment-recorded', 'swedish', 'Invoice Payment Recorded (Sent to Customer) [swedish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1627, 'invoice', 'invoice-overdue-notice', 'swedish', 'Invoice Overdue Notice [swedish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1628, 'invoice', 'invoice-already-send', 'swedish', 'Invoice Already Sent to Customer [swedish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1629, 'ticket', 'new-ticket-created-staff', 'swedish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [swedish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1630, 'estimate', 'estimate-send-to-client', 'swedish', 'Send Estimate to Customer [swedish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1631, 'ticket', 'ticket-reply-to-admin', 'swedish', 'Ticket Reply (Sent to Staff) [swedish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1632, 'estimate', 'estimate-already-send', 'swedish', 'Estimate Already Sent to Customer [swedish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1633, 'contract', 'contract-expiration', 'swedish', 'Contract Expiration Reminder (Sent to Customer Contacts) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1634, 'tasks', 'task-assigned', 'swedish', 'New Task Assigned (Sent to Staff) [swedish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1635, 'tasks', 'task-added-as-follower', 'swedish', 'Staff Member Added as Follower on Task (Sent to Staff) [swedish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1636, 'tasks', 'task-commented', 'swedish', 'New Comment on Task (Sent to Staff) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1637, 'tasks', 'task-added-attachment', 'swedish', 'New Attachment(s) on Task (Sent to Staff) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1638, 'estimate', 'estimate-declined-to-staff', 'swedish', 'Estimate Declined (Sent to Staff) [swedish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1639, 'estimate', 'estimate-accepted-to-staff', 'swedish', 'Estimate Accepted (Sent to Staff) [swedish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1640, 'proposals', 'proposal-client-accepted', 'swedish', 'Customer Action - Accepted (Sent to Staff) [swedish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1641, 'proposals', 'proposal-send-to-customer', 'swedish', 'Send Proposal to Customer [swedish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1642, 'proposals', 'proposal-client-declined', 'swedish', 'Customer Action - Declined (Sent to Staff) [swedish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1643, 'proposals', 'proposal-client-thank-you', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1644, 'proposals', 'proposal-comment-to-client', 'swedish', 'New Comment Â (Sent to Customer/Lead) [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1645, 'proposals', 'proposal-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1646, 'estimate', 'estimate-thank-you-to-customer', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1647, 'tasks', 'task-deadline-notification', 'swedish', 'Task Deadline Reminder - Sent to Assigned Members [swedish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1648, 'contract', 'send-contract', 'swedish', 'Send Contract to Customer [swedish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1649, 'invoice', 'invoice-payment-recorded-to-staff', 'swedish', 'Invoice Payment Recorded (Sent to Staff) [swedish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1650, 'ticket', 'auto-close-ticket', 'swedish', 'Auto Close Ticket [swedish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1651, 'project', 'new-project-discussion-created-to-staff', 'swedish', 'New Project Discussion (Sent to Project Members) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1652, 'project', 'new-project-discussion-created-to-customer', 'swedish', 'New Project Discussion (Sent to Customer Contacts) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1653, 'project', 'new-project-file-uploaded-to-customer', 'swedish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1654, 'project', 'new-project-file-uploaded-to-staff', 'swedish', 'New Project File(s) Uploaded (Sent to Project Members) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1655, 'project', 'new-project-discussion-comment-to-customer', 'swedish', 'New Discussion Comment  (Sent to Customer Contacts) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1656, 'project', 'new-project-discussion-comment-to-staff', 'swedish', 'New Discussion Comment (Sent to Project Members) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1657, 'project', 'staff-added-as-project-member', 'swedish', 'Staff Added as Project Member [swedish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1658, 'estimate', 'estimate-expiry-reminder', 'swedish', 'Estimate Expiration Reminder [swedish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1659, 'proposals', 'proposal-expiry-reminder', 'swedish', 'Proposal Expiration Reminder [swedish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1660, 'staff', 'new-staff-created', 'swedish', 'New Staff Created (Welcome Email) [swedish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1661, 'client', 'contact-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1662, 'client', 'contact-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1663, 'client', 'contact-set-password', 'swedish', 'Set New Password [swedish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1664, 'staff', 'staff-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1665, 'staff', 'staff-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1666, 'project', 'assigned-to-project', 'swedish', 'New Project Created (Sent to Customer Contacts) [swedish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1667, 'tasks', 'task-added-attachment-to-contacts', 'swedish', 'New Attachment(s) on Task (Sent to Customer Contacts) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1668, 'tasks', 'task-commented-to-contacts', 'swedish', 'New Comment on Task (Sent to Customer Contacts) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1669, 'leads', 'new-lead-assigned', 'swedish', 'New Lead Assigned to Staff Member [swedish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1670, 'client', 'client-statement', 'swedish', 'Statement - Account Summary [swedish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1671, 'ticket', 'ticket-assigned-to-admin', 'swedish', 'New Ticket Assigned (Sent to Staff) [swedish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1672, 'client', 'new-client-registered-to-admin', 'swedish', 'New Customer Registration (Sent to admins) [swedish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1673, 'leads', 'new-web-to-lead-form-submitted', 'swedish', 'Web to lead form submitted - Sent to lead [swedish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1674, 'staff', 'two-factor-authentication', 'swedish', 'Two Factor Authentication [swedish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1675, 'project', 'project-finished-to-customer', 'swedish', 'Project Marked as Finished (Sent to Customer Contacts) [swedish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1676, 'credit_note', 'credit-note-send-to-client', 'swedish', 'Send Credit Note To Email [swedish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1677, 'tasks', 'task-status-change-to-staff', 'swedish', 'Task Status Changed (Sent to Staff) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1678, 'tasks', 'task-status-change-to-contacts', 'swedish', 'Task Status Changed (Sent to Customer Contacts) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1679, 'staff', 'reminder-email-staff', 'swedish', 'Staff Reminder Email [swedish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1680, 'contract', 'contract-comment-to-client', 'swedish', 'New Comment Â (Sent to Customer Contacts) [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1681, 'contract', 'contract-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1682, 'subscriptions', 'send-subscription', 'swedish', 'Send Subscription to Customer [swedish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1683, 'subscriptions', 'subscription-payment-failed', 'swedish', 'Subscription Payment Failed [swedish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1684, 'subscriptions', 'subscription-canceled', 'swedish', 'Subscription Canceled (Sent to customer primary contact) [swedish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1685, 'subscriptions', 'subscription-payment-succeeded', 'swedish', 'Subscription Payment Succeeded (Sent to customer primary contact) [swedish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1686, 'contract', 'contract-expiration-to-staff', 'swedish', 'Contract Expiration Reminder (Sent to Staff) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1687, 'gdpr', 'gdpr-removal-request', 'swedish', 'Removal Request From Contact (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1688, 'gdpr', 'gdpr-removal-request-lead', 'swedish', 'Removal Request From Lead (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1689, 'client', 'client-registration-confirmed', 'swedish', 'Customer Registration Confirmed [swedish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1690, 'contract', 'contract-signed-to-staff', 'swedish', 'Contract Signed (Sent to Staff) [swedish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1691, 'subscriptions', 'customer-subscribed-to-staff', 'swedish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [swedish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1692, 'client', 'contact-verification-email', 'swedish', 'Email Verification (Sent to Contact After Registration) [swedish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1693, 'client', 'new-customer-profile-file-uploaded-to-staff', 'swedish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [swedish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1694, 'staff', 'event-notification-to-staff', 'swedish', 'Event Notification (Calendar) [swedish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1695, 'subscriptions', 'subscription-payment-requires-action', 'swedish', 'Credit Card Authorization Required - SCA [swedish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1696, 'invoice', 'invoice-due-notice', 'swedish', 'Invoice Due Notice [swedish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1697, 'estimate_request', 'estimate-request-submitted-to-staff', 'swedish', 'Estimate Request Submitted (Sent to Staff) [swedish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1698, 'estimate_request', 'estimate-request-assigned', 'swedish', 'Estimate Request Assigned (Sent to Staff) [swedish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1699, 'estimate_request', 'estimate-request-received-to-user', 'swedish', 'Estimate Request Received (Sent to User) [swedish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1700, 'notifications', 'non-billed-tasks-reminder', 'swedish', 'Non-billed tasks reminder (sent to selected staff members) [swedish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1701, 'invoice', 'invoices-batch-payments', 'swedish', 'Invoices Payments Recorded in Batch (Sent to Customer) [swedish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1702, 'client', 'new-client-created', 'turkish', 'New Contact Added/Registered (Welcome Email) [turkish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1703, 'invoice', 'invoice-send-to-client', 'turkish', 'Send Invoice to Customer [turkish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1704, 'ticket', 'new-ticket-opened-admin', 'turkish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1705, 'ticket', 'ticket-reply', 'turkish', 'Ticket Reply (Sent to Customer) [turkish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1706, 'ticket', 'ticket-autoresponse', 'turkish', 'New Ticket Opened - Autoresponse [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1707, 'invoice', 'invoice-payment-recorded', 'turkish', 'Invoice Payment Recorded (Sent to Customer) [turkish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1708, 'invoice', 'invoice-overdue-notice', 'turkish', 'Invoice Overdue Notice [turkish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1709, 'invoice', 'invoice-already-send', 'turkish', 'Invoice Already Sent to Customer [turkish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1710, 'ticket', 'new-ticket-created-staff', 'turkish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [turkish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1711, 'estimate', 'estimate-send-to-client', 'turkish', 'Send Estimate to Customer [turkish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1712, 'ticket', 'ticket-reply-to-admin', 'turkish', 'Ticket Reply (Sent to Staff) [turkish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1713, 'estimate', 'estimate-already-send', 'turkish', 'Estimate Already Sent to Customer [turkish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1714, 'contract', 'contract-expiration', 'turkish', 'Contract Expiration Reminder (Sent to Customer Contacts) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1715, 'tasks', 'task-assigned', 'turkish', 'New Task Assigned (Sent to Staff) [turkish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1716, 'tasks', 'task-added-as-follower', 'turkish', 'Staff Member Added as Follower on Task (Sent to Staff) [turkish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1717, 'tasks', 'task-commented', 'turkish', 'New Comment on Task (Sent to Staff) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1718, 'tasks', 'task-added-attachment', 'turkish', 'New Attachment(s) on Task (Sent to Staff) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1719, 'estimate', 'estimate-declined-to-staff', 'turkish', 'Estimate Declined (Sent to Staff) [turkish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1720, 'estimate', 'estimate-accepted-to-staff', 'turkish', 'Estimate Accepted (Sent to Staff) [turkish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1721, 'proposals', 'proposal-client-accepted', 'turkish', 'Customer Action - Accepted (Sent to Staff) [turkish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1722, 'proposals', 'proposal-send-to-customer', 'turkish', 'Send Proposal to Customer [turkish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1723, 'proposals', 'proposal-client-declined', 'turkish', 'Customer Action - Declined (Sent to Staff) [turkish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1724, 'proposals', 'proposal-client-thank-you', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1725, 'proposals', 'proposal-comment-to-client', 'turkish', 'New Comment Â (Sent to Customer/Lead) [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1726, 'proposals', 'proposal-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1727, 'estimate', 'estimate-thank-you-to-customer', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1728, 'tasks', 'task-deadline-notification', 'turkish', 'Task Deadline Reminder - Sent to Assigned Members [turkish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1729, 'contract', 'send-contract', 'turkish', 'Send Contract to Customer [turkish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1730, 'invoice', 'invoice-payment-recorded-to-staff', 'turkish', 'Invoice Payment Recorded (Sent to Staff) [turkish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1731, 'ticket', 'auto-close-ticket', 'turkish', 'Auto Close Ticket [turkish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1732, 'project', 'new-project-discussion-created-to-staff', 'turkish', 'New Project Discussion (Sent to Project Members) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1733, 'project', 'new-project-discussion-created-to-customer', 'turkish', 'New Project Discussion (Sent to Customer Contacts) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1734, 'project', 'new-project-file-uploaded-to-customer', 'turkish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1735, 'project', 'new-project-file-uploaded-to-staff', 'turkish', 'New Project File(s) Uploaded (Sent to Project Members) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1736, 'project', 'new-project-discussion-comment-to-customer', 'turkish', 'New Discussion Comment  (Sent to Customer Contacts) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1737, 'project', 'new-project-discussion-comment-to-staff', 'turkish', 'New Discussion Comment (Sent to Project Members) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1738, 'project', 'staff-added-as-project-member', 'turkish', 'Staff Added as Project Member [turkish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1739, 'estimate', 'estimate-expiry-reminder', 'turkish', 'Estimate Expiration Reminder [turkish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1740, 'proposals', 'proposal-expiry-reminder', 'turkish', 'Proposal Expiration Reminder [turkish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1741, 'staff', 'new-staff-created', 'turkish', 'New Staff Created (Welcome Email) [turkish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1742, 'client', 'contact-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1743, 'client', 'contact-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1744, 'client', 'contact-set-password', 'turkish', 'Set New Password [turkish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1745, 'staff', 'staff-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1746, 'staff', 'staff-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1747, 'project', 'assigned-to-project', 'turkish', 'New Project Created (Sent to Customer Contacts) [turkish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1748, 'tasks', 'task-added-attachment-to-contacts', 'turkish', 'New Attachment(s) on Task (Sent to Customer Contacts) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1749, 'tasks', 'task-commented-to-contacts', 'turkish', 'New Comment on Task (Sent to Customer Contacts) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1750, 'leads', 'new-lead-assigned', 'turkish', 'New Lead Assigned to Staff Member [turkish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1751, 'client', 'client-statement', 'turkish', 'Statement - Account Summary [turkish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1752, 'ticket', 'ticket-assigned-to-admin', 'turkish', 'New Ticket Assigned (Sent to Staff) [turkish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1753, 'client', 'new-client-registered-to-admin', 'turkish', 'New Customer Registration (Sent to admins) [turkish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1754, 'leads', 'new-web-to-lead-form-submitted', 'turkish', 'Web to lead form submitted - Sent to lead [turkish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1755, 'staff', 'two-factor-authentication', 'turkish', 'Two Factor Authentication [turkish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1756, 'project', 'project-finished-to-customer', 'turkish', 'Project Marked as Finished (Sent to Customer Contacts) [turkish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1757, 'credit_note', 'credit-note-send-to-client', 'turkish', 'Send Credit Note To Email [turkish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1758, 'tasks', 'task-status-change-to-staff', 'turkish', 'Task Status Changed (Sent to Staff) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1759, 'tasks', 'task-status-change-to-contacts', 'turkish', 'Task Status Changed (Sent to Customer Contacts) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1760, 'staff', 'reminder-email-staff', 'turkish', 'Staff Reminder Email [turkish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1761, 'contract', 'contract-comment-to-client', 'turkish', 'New Comment Â (Sent to Customer Contacts) [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1762, 'contract', 'contract-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1763, 'subscriptions', 'send-subscription', 'turkish', 'Send Subscription to Customer [turkish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1764, 'subscriptions', 'subscription-payment-failed', 'turkish', 'Subscription Payment Failed [turkish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1765, 'subscriptions', 'subscription-canceled', 'turkish', 'Subscription Canceled (Sent to customer primary contact) [turkish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1766, 'subscriptions', 'subscription-payment-succeeded', 'turkish', 'Subscription Payment Succeeded (Sent to customer primary contact) [turkish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1767, 'contract', 'contract-expiration-to-staff', 'turkish', 'Contract Expiration Reminder (Sent to Staff) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1768, 'gdpr', 'gdpr-removal-request', 'turkish', 'Removal Request From Contact (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1769, 'gdpr', 'gdpr-removal-request-lead', 'turkish', 'Removal Request From Lead (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1770, 'client', 'client-registration-confirmed', 'turkish', 'Customer Registration Confirmed [turkish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1771, 'contract', 'contract-signed-to-staff', 'turkish', 'Contract Signed (Sent to Staff) [turkish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1772, 'subscriptions', 'customer-subscribed-to-staff', 'turkish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [turkish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1773, 'client', 'contact-verification-email', 'turkish', 'Email Verification (Sent to Contact After Registration) [turkish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1774, 'client', 'new-customer-profile-file-uploaded-to-staff', 'turkish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [turkish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1775, 'staff', 'event-notification-to-staff', 'turkish', 'Event Notification (Calendar) [turkish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1776, 'subscriptions', 'subscription-payment-requires-action', 'turkish', 'Credit Card Authorization Required - SCA [turkish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1777, 'invoice', 'invoice-due-notice', 'turkish', 'Invoice Due Notice [turkish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1778, 'estimate_request', 'estimate-request-submitted-to-staff', 'turkish', 'Estimate Request Submitted (Sent to Staff) [turkish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1779, 'estimate_request', 'estimate-request-assigned', 'turkish', 'Estimate Request Assigned (Sent to Staff) [turkish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1780, 'estimate_request', 'estimate-request-received-to-user', 'turkish', 'Estimate Request Received (Sent to User) [turkish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1781, 'notifications', 'non-billed-tasks-reminder', 'turkish', 'Non-billed tasks reminder (sent to selected staff members) [turkish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1782, 'invoice', 'invoices-batch-payments', 'turkish', 'Invoices Payments Recorded in Batch (Sent to Customer) [turkish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1783, 'client', 'new-client-created', 'ukrainian', 'New Contact Added/Registered (Welcome Email) [ukrainian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1784, 'invoice', 'invoice-send-to-client', 'ukrainian', 'Send Invoice to Customer [ukrainian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1785, 'ticket', 'new-ticket-opened-admin', 'ukrainian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1786, 'ticket', 'ticket-reply', 'ukrainian', 'Ticket Reply (Sent to Customer) [ukrainian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1787, 'ticket', 'ticket-autoresponse', 'ukrainian', 'New Ticket Opened - Autoresponse [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1788, 'invoice', 'invoice-payment-recorded', 'ukrainian', 'Invoice Payment Recorded (Sent to Customer) [ukrainian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1789, 'invoice', 'invoice-overdue-notice', 'ukrainian', 'Invoice Overdue Notice [ukrainian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1790, 'invoice', 'invoice-already-send', 'ukrainian', 'Invoice Already Sent to Customer [ukrainian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1791, 'ticket', 'new-ticket-created-staff', 'ukrainian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [ukrainian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1792, 'estimate', 'estimate-send-to-client', 'ukrainian', 'Send Estimate to Customer [ukrainian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1793, 'ticket', 'ticket-reply-to-admin', 'ukrainian', 'Ticket Reply (Sent to Staff) [ukrainian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1794, 'estimate', 'estimate-already-send', 'ukrainian', 'Estimate Already Sent to Customer [ukrainian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1795, 'contract', 'contract-expiration', 'ukrainian', 'Contract Expiration Reminder (Sent to Customer Contacts) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1796, 'tasks', 'task-assigned', 'ukrainian', 'New Task Assigned (Sent to Staff) [ukrainian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1797, 'tasks', 'task-added-as-follower', 'ukrainian', 'Staff Member Added as Follower on Task (Sent to Staff) [ukrainian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1798, 'tasks', 'task-commented', 'ukrainian', 'New Comment on Task (Sent to Staff) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1799, 'tasks', 'task-added-attachment', 'ukrainian', 'New Attachment(s) on Task (Sent to Staff) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1800, 'estimate', 'estimate-declined-to-staff', 'ukrainian', 'Estimate Declined (Sent to Staff) [ukrainian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1801, 'estimate', 'estimate-accepted-to-staff', 'ukrainian', 'Estimate Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1802, 'proposals', 'proposal-client-accepted', 'ukrainian', 'Customer Action - Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1803, 'proposals', 'proposal-send-to-customer', 'ukrainian', 'Send Proposal to Customer [ukrainian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1804, 'proposals', 'proposal-client-declined', 'ukrainian', 'Customer Action - Declined (Sent to Staff) [ukrainian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1805, 'proposals', 'proposal-client-thank-you', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1806, 'proposals', 'proposal-comment-to-client', 'ukrainian', 'New Comment Â (Sent to Customer/Lead) [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1807, 'proposals', 'proposal-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1808, 'estimate', 'estimate-thank-you-to-customer', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1809, 'tasks', 'task-deadline-notification', 'ukrainian', 'Task Deadline Reminder - Sent to Assigned Members [ukrainian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1810, 'contract', 'send-contract', 'ukrainian', 'Send Contract to Customer [ukrainian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1811, 'invoice', 'invoice-payment-recorded-to-staff', 'ukrainian', 'Invoice Payment Recorded (Sent to Staff) [ukrainian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1812, 'ticket', 'auto-close-ticket', 'ukrainian', 'Auto Close Ticket [ukrainian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1813, 'project', 'new-project-discussion-created-to-staff', 'ukrainian', 'New Project Discussion (Sent to Project Members) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1814, 'project', 'new-project-discussion-created-to-customer', 'ukrainian', 'New Project Discussion (Sent to Customer Contacts) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1815, 'project', 'new-project-file-uploaded-to-customer', 'ukrainian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1816, 'project', 'new-project-file-uploaded-to-staff', 'ukrainian', 'New Project File(s) Uploaded (Sent to Project Members) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1817, 'project', 'new-project-discussion-comment-to-customer', 'ukrainian', 'New Discussion Comment  (Sent to Customer Contacts) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1818, 'project', 'new-project-discussion-comment-to-staff', 'ukrainian', 'New Discussion Comment (Sent to Project Members) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1819, 'project', 'staff-added-as-project-member', 'ukrainian', 'Staff Added as Project Member [ukrainian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1820, 'estimate', 'estimate-expiry-reminder', 'ukrainian', 'Estimate Expiration Reminder [ukrainian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1821, 'proposals', 'proposal-expiry-reminder', 'ukrainian', 'Proposal Expiration Reminder [ukrainian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1822, 'staff', 'new-staff-created', 'ukrainian', 'New Staff Created (Welcome Email) [ukrainian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1823, 'client', 'contact-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1824, 'client', 'contact-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1825, 'client', 'contact-set-password', 'ukrainian', 'Set New Password [ukrainian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1826, 'staff', 'staff-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1827, 'staff', 'staff-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1828, 'project', 'assigned-to-project', 'ukrainian', 'New Project Created (Sent to Customer Contacts) [ukrainian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1829, 'tasks', 'task-added-attachment-to-contacts', 'ukrainian', 'New Attachment(s) on Task (Sent to Customer Contacts) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1830, 'tasks', 'task-commented-to-contacts', 'ukrainian', 'New Comment on Task (Sent to Customer Contacts) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1831, 'leads', 'new-lead-assigned', 'ukrainian', 'New Lead Assigned to Staff Member [ukrainian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1832, 'client', 'client-statement', 'ukrainian', 'Statement - Account Summary [ukrainian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1833, 'ticket', 'ticket-assigned-to-admin', 'ukrainian', 'New Ticket Assigned (Sent to Staff) [ukrainian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1834, 'client', 'new-client-registered-to-admin', 'ukrainian', 'New Customer Registration (Sent to admins) [ukrainian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1835, 'leads', 'new-web-to-lead-form-submitted', 'ukrainian', 'Web to lead form submitted - Sent to lead [ukrainian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1836, 'staff', 'two-factor-authentication', 'ukrainian', 'Two Factor Authentication [ukrainian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1837, 'project', 'project-finished-to-customer', 'ukrainian', 'Project Marked as Finished (Sent to Customer Contacts) [ukrainian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1838, 'credit_note', 'credit-note-send-to-client', 'ukrainian', 'Send Credit Note To Email [ukrainian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1839, 'tasks', 'task-status-change-to-staff', 'ukrainian', 'Task Status Changed (Sent to Staff) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1840, 'tasks', 'task-status-change-to-contacts', 'ukrainian', 'Task Status Changed (Sent to Customer Contacts) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1841, 'staff', 'reminder-email-staff', 'ukrainian', 'Staff Reminder Email [ukrainian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1842, 'contract', 'contract-comment-to-client', 'ukrainian', 'New Comment Â (Sent to Customer Contacts) [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1843, 'contract', 'contract-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1844, 'subscriptions', 'send-subscription', 'ukrainian', 'Send Subscription to Customer [ukrainian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1845, 'subscriptions', 'subscription-payment-failed', 'ukrainian', 'Subscription Payment Failed [ukrainian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1846, 'subscriptions', 'subscription-canceled', 'ukrainian', 'Subscription Canceled (Sent to customer primary contact) [ukrainian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1847, 'subscriptions', 'subscription-payment-succeeded', 'ukrainian', 'Subscription Payment Succeeded (Sent to customer primary contact) [ukrainian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1848, 'contract', 'contract-expiration-to-staff', 'ukrainian', 'Contract Expiration Reminder (Sent to Staff) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1849, 'gdpr', 'gdpr-removal-request', 'ukrainian', 'Removal Request From Contact (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1850, 'gdpr', 'gdpr-removal-request-lead', 'ukrainian', 'Removal Request From Lead (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1851, 'client', 'client-registration-confirmed', 'ukrainian', 'Customer Registration Confirmed [ukrainian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1852, 'contract', 'contract-signed-to-staff', 'ukrainian', 'Contract Signed (Sent to Staff) [ukrainian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1853, 'subscriptions', 'customer-subscribed-to-staff', 'ukrainian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [ukrainian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1854, 'client', 'contact-verification-email', 'ukrainian', 'Email Verification (Sent to Contact After Registration) [ukrainian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1855, 'client', 'new-customer-profile-file-uploaded-to-staff', 'ukrainian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [ukrainian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1856, 'staff', 'event-notification-to-staff', 'ukrainian', 'Event Notification (Calendar) [ukrainian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1857, 'subscriptions', 'subscription-payment-requires-action', 'ukrainian', 'Credit Card Authorization Required - SCA [ukrainian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1858, 'invoice', 'invoice-due-notice', 'ukrainian', 'Invoice Due Notice [ukrainian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1859, 'estimate_request', 'estimate-request-submitted-to-staff', 'ukrainian', 'Estimate Request Submitted (Sent to Staff) [ukrainian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1860, 'estimate_request', 'estimate-request-assigned', 'ukrainian', 'Estimate Request Assigned (Sent to Staff) [ukrainian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1861, 'estimate_request', 'estimate-request-received-to-user', 'ukrainian', 'Estimate Request Received (Sent to User) [ukrainian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1862, 'notifications', 'non-billed-tasks-reminder', 'ukrainian', 'Non-billed tasks reminder (sent to selected staff members) [ukrainian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1863, 'invoice', 'invoices-batch-payments', 'ukrainian', 'Invoices Payments Recorded in Batch (Sent to Customer) [ukrainian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1864, 'client', 'new-client-created', 'vietnamese', 'New Contact Added/Registered (Welcome Email) [vietnamese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1865, 'invoice', 'invoice-send-to-client', 'vietnamese', 'Send Invoice to Customer [vietnamese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1866, 'ticket', 'new-ticket-opened-admin', 'vietnamese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1867, 'ticket', 'ticket-reply', 'vietnamese', 'Ticket Reply (Sent to Customer) [vietnamese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1868, 'ticket', 'ticket-autoresponse', 'vietnamese', 'New Ticket Opened - Autoresponse [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1869, 'invoice', 'invoice-payment-recorded', 'vietnamese', 'Invoice Payment Recorded (Sent to Customer) [vietnamese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1870, 'invoice', 'invoice-overdue-notice', 'vietnamese', 'Invoice Overdue Notice [vietnamese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1871, 'invoice', 'invoice-already-send', 'vietnamese', 'Invoice Already Sent to Customer [vietnamese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1872, 'ticket', 'new-ticket-created-staff', 'vietnamese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [vietnamese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1873, 'estimate', 'estimate-send-to-client', 'vietnamese', 'Send Estimate to Customer [vietnamese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1874, 'ticket', 'ticket-reply-to-admin', 'vietnamese', 'Ticket Reply (Sent to Staff) [vietnamese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1875, 'estimate', 'estimate-already-send', 'vietnamese', 'Estimate Already Sent to Customer [vietnamese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1876, 'contract', 'contract-expiration', 'vietnamese', 'Contract Expiration Reminder (Sent to Customer Contacts) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1877, 'tasks', 'task-assigned', 'vietnamese', 'New Task Assigned (Sent to Staff) [vietnamese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1878, 'tasks', 'task-added-as-follower', 'vietnamese', 'Staff Member Added as Follower on Task (Sent to Staff) [vietnamese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1879, 'tasks', 'task-commented', 'vietnamese', 'New Comment on Task (Sent to Staff) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1880, 'tasks', 'task-added-attachment', 'vietnamese', 'New Attachment(s) on Task (Sent to Staff) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1881, 'estimate', 'estimate-declined-to-staff', 'vietnamese', 'Estimate Declined (Sent to Staff) [vietnamese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1882, 'estimate', 'estimate-accepted-to-staff', 'vietnamese', 'Estimate Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1883, 'proposals', 'proposal-client-accepted', 'vietnamese', 'Customer Action - Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1884, 'proposals', 'proposal-send-to-customer', 'vietnamese', 'Send Proposal to Customer [vietnamese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1885, 'proposals', 'proposal-client-declined', 'vietnamese', 'Customer Action - Declined (Sent to Staff) [vietnamese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1886, 'proposals', 'proposal-client-thank-you', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1887, 'proposals', 'proposal-comment-to-client', 'vietnamese', 'New Comment Â (Sent to Customer/Lead) [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1888, 'proposals', 'proposal-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1889, 'estimate', 'estimate-thank-you-to-customer', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1890, 'tasks', 'task-deadline-notification', 'vietnamese', 'Task Deadline Reminder - Sent to Assigned Members [vietnamese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1891, 'contract', 'send-contract', 'vietnamese', 'Send Contract to Customer [vietnamese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1892, 'invoice', 'invoice-payment-recorded-to-staff', 'vietnamese', 'Invoice Payment Recorded (Sent to Staff) [vietnamese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1893, 'ticket', 'auto-close-ticket', 'vietnamese', 'Auto Close Ticket [vietnamese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1894, 'project', 'new-project-discussion-created-to-staff', 'vietnamese', 'New Project Discussion (Sent to Project Members) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1895, 'project', 'new-project-discussion-created-to-customer', 'vietnamese', 'New Project Discussion (Sent to Customer Contacts) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1896, 'project', 'new-project-file-uploaded-to-customer', 'vietnamese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1897, 'project', 'new-project-file-uploaded-to-staff', 'vietnamese', 'New Project File(s) Uploaded (Sent to Project Members) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1898, 'project', 'new-project-discussion-comment-to-customer', 'vietnamese', 'New Discussion Comment  (Sent to Customer Contacts) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1899, 'project', 'new-project-discussion-comment-to-staff', 'vietnamese', 'New Discussion Comment (Sent to Project Members) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1900, 'project', 'staff-added-as-project-member', 'vietnamese', 'Staff Added as Project Member [vietnamese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1901, 'estimate', 'estimate-expiry-reminder', 'vietnamese', 'Estimate Expiration Reminder [vietnamese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1902, 'proposals', 'proposal-expiry-reminder', 'vietnamese', 'Proposal Expiration Reminder [vietnamese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1903, 'staff', 'new-staff-created', 'vietnamese', 'New Staff Created (Welcome Email) [vietnamese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1904, 'client', 'contact-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1905, 'client', 'contact-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1906, 'client', 'contact-set-password', 'vietnamese', 'Set New Password [vietnamese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1907, 'staff', 'staff-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1908, 'staff', 'staff-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1909, 'project', 'assigned-to-project', 'vietnamese', 'New Project Created (Sent to Customer Contacts) [vietnamese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1910, 'tasks', 'task-added-attachment-to-contacts', 'vietnamese', 'New Attachment(s) on Task (Sent to Customer Contacts) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1911, 'tasks', 'task-commented-to-contacts', 'vietnamese', 'New Comment on Task (Sent to Customer Contacts) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1912, 'leads', 'new-lead-assigned', 'vietnamese', 'New Lead Assigned to Staff Member [vietnamese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1913, 'client', 'client-statement', 'vietnamese', 'Statement - Account Summary [vietnamese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1914, 'ticket', 'ticket-assigned-to-admin', 'vietnamese', 'New Ticket Assigned (Sent to Staff) [vietnamese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1915, 'client', 'new-client-registered-to-admin', 'vietnamese', 'New Customer Registration (Sent to admins) [vietnamese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1916, 'leads', 'new-web-to-lead-form-submitted', 'vietnamese', 'Web to lead form submitted - Sent to lead [vietnamese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1917, 'staff', 'two-factor-authentication', 'vietnamese', 'Two Factor Authentication [vietnamese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1918, 'project', 'project-finished-to-customer', 'vietnamese', 'Project Marked as Finished (Sent to Customer Contacts) [vietnamese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1919, 'credit_note', 'credit-note-send-to-client', 'vietnamese', 'Send Credit Note To Email [vietnamese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1920, 'tasks', 'task-status-change-to-staff', 'vietnamese', 'Task Status Changed (Sent to Staff) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1921, 'tasks', 'task-status-change-to-contacts', 'vietnamese', 'Task Status Changed (Sent to Customer Contacts) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1922, 'staff', 'reminder-email-staff', 'vietnamese', 'Staff Reminder Email [vietnamese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1923, 'contract', 'contract-comment-to-client', 'vietnamese', 'New Comment Â (Sent to Customer Contacts) [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1924, 'contract', 'contract-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1925, 'subscriptions', 'send-subscription', 'vietnamese', 'Send Subscription to Customer [vietnamese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1926, 'subscriptions', 'subscription-payment-failed', 'vietnamese', 'Subscription Payment Failed [vietnamese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1927, 'subscriptions', 'subscription-canceled', 'vietnamese', 'Subscription Canceled (Sent to customer primary contact) [vietnamese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1928, 'subscriptions', 'subscription-payment-succeeded', 'vietnamese', 'Subscription Payment Succeeded (Sent to customer primary contact) [vietnamese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1929, 'contract', 'contract-expiration-to-staff', 'vietnamese', 'Contract Expiration Reminder (Sent to Staff) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1930, 'gdpr', 'gdpr-removal-request', 'vietnamese', 'Removal Request From Contact (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1931, 'gdpr', 'gdpr-removal-request-lead', 'vietnamese', 'Removal Request From Lead (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1932, 'client', 'client-registration-confirmed', 'vietnamese', 'Customer Registration Confirmed [vietnamese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1933, 'contract', 'contract-signed-to-staff', 'vietnamese', 'Contract Signed (Sent to Staff) [vietnamese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1934, 'subscriptions', 'customer-subscribed-to-staff', 'vietnamese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [vietnamese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1935, 'client', 'contact-verification-email', 'vietnamese', 'Email Verification (Sent to Contact After Registration) [vietnamese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1936, 'client', 'new-customer-profile-file-uploaded-to-staff', 'vietnamese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [vietnamese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1937, 'staff', 'event-notification-to-staff', 'vietnamese', 'Event Notification (Calendar) [vietnamese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1938, 'subscriptions', 'subscription-payment-requires-action', 'vietnamese', 'Credit Card Authorization Required - SCA [vietnamese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1939, 'invoice', 'invoice-due-notice', 'vietnamese', 'Invoice Due Notice [vietnamese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1940, 'estimate_request', 'estimate-request-submitted-to-staff', 'vietnamese', 'Estimate Request Submitted (Sent to Staff) [vietnamese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1941, 'estimate_request', 'estimate-request-assigned', 'vietnamese', 'Estimate Request Assigned (Sent to Staff) [vietnamese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1942, 'estimate_request', 'estimate-request-received-to-user', 'vietnamese', 'Estimate Request Received (Sent to User) [vietnamese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1943, 'notifications', 'non-billed-tasks-reminder', 'vietnamese', 'Non-billed tasks reminder (sent to selected staff members) [vietnamese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1944, 'invoice', 'invoices-batch-payments', 'vietnamese', 'Invoices Payments Recorded in Batch (Sent to Customer) [vietnamese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1945, 'purchase_order', 'purchase-order-to-contact', 'english', 'Purchase Order (Sent to contact)', 'Purchase Order', '<span style=\\\"font-size: 12pt;\\\"> Hello !. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of Purchase Order information with the number {po_number} </span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />Please click on the link to view information: {public_link}\r\n  </span><br /><br />', '{companyname} | CRM', NULL, 0, 1, 0),
(1946, 'purchase_order', 'purchase-request-to-contact', 'english', 'Purchase Request (Sent to contact)', 'Purchase Request', '<span style=\\\"font-size: 12pt;\\\"> Hello !. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of Purchase Request information with the number {pr_number} </span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />Please click on the link to view information: {public_link}<br/ >{additional_content}\r\n  </span><br /><br />', '{companyname} | CRM', NULL, 0, 1, 0),
(1947, 'purchase_order', 'purchase-quotation-to-contact', 'english', 'Purchase Quotation (Sent to contact)', 'Purchase Quotation', '<span style=\\\"font-size: 12pt;\\\"> Hello !. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of Purchase Quotation information with the number {pq_number} </span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />Please click on the link to view information: {quotation_link}<br/ >{additional_content}\r\n  </span><br /><br />', '{companyname} | CRM', NULL, 0, 1, 0),
(1948, 'purchase_order', 'debit-note-to-contact', 'english', 'Debit Note (Sent to contact)', 'Debit Note', '<span style=\\\"font-size: 12pt;\\\"> Hello !. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of Debit Note information with the number {dn_number} </span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />{additional_content}\r\n  </span><br /><br />', '{companyname} | CRM', NULL, 0, 1, 0),
(1949, 'purchase_order', 'purchase-statement-to-contact', 'english', 'Purchase Statement (Sent to contact)', 'Purchase Statement', '<span style=\\\"font-size: 12pt;\\\"> Dear {contact_firstname} {contact_lastname} !. </span><br /><br /><span style=\\\"font-size: 12pt;\\\">Its been a great experience working with you. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br/ ><br/ >For your information your account balance due is total: {statement_balance_due}<br /><br/ > Please contact us if you need more information.<br/ > <br />{additional_content}\r\n  </span><br /><br />', '{companyname} | CRM', NULL, 0, 1, 0),
(1950, 'inventory_warning', 'inventory-warning-to-staff', 'english', 'Inventory warning (Sent to staff)', 'Inventory warning', 'Hi {staff_name}! <br /><br />This is a inventory warning<br />{<span 12pt=\"\">notification_content</span>}. <br /><br />Regards.', '{companyname} | CRM', NULL, 0, 1, 0),
(1951, 'purchase_order', 'purchase-order-to-contact', 'bulgarian', 'Purchase Order (Sent to contact) [bulgarian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1952, 'purchase_order', 'purchase-request-to-contact', 'bulgarian', 'Purchase Request (Sent to contact) [bulgarian]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1953, 'purchase_order', 'purchase-quotation-to-contact', 'bulgarian', 'Purchase Quotation (Sent to contact) [bulgarian]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1954, 'purchase_order', 'debit-note-to-contact', 'bulgarian', 'Debit Note (Sent to contact) [bulgarian]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1955, 'purchase_order', 'purchase-statement-to-contact', 'bulgarian', 'Purchase Statement (Sent to contact) [bulgarian]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1956, 'inventory_warning', 'inventory-warning-to-staff', 'bulgarian', 'Inventory warning (Sent to staff) [bulgarian]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1957, 'purchase_order', 'purchase-order-to-contact', 'catalan', 'Purchase Order (Sent to contact) [catalan]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1958, 'purchase_order', 'purchase-request-to-contact', 'catalan', 'Purchase Request (Sent to contact) [catalan]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1959, 'purchase_order', 'purchase-quotation-to-contact', 'catalan', 'Purchase Quotation (Sent to contact) [catalan]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1960, 'purchase_order', 'debit-note-to-contact', 'catalan', 'Debit Note (Sent to contact) [catalan]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1961, 'purchase_order', 'purchase-statement-to-contact', 'catalan', 'Purchase Statement (Sent to contact) [catalan]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1962, 'inventory_warning', 'inventory-warning-to-staff', 'catalan', 'Inventory warning (Sent to staff) [catalan]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1963, 'purchase_order', 'purchase-order-to-contact', 'chinese', 'Purchase Order (Sent to contact) [chinese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1964, 'purchase_order', 'purchase-request-to-contact', 'chinese', 'Purchase Request (Sent to contact) [chinese]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1965, 'purchase_order', 'purchase-quotation-to-contact', 'chinese', 'Purchase Quotation (Sent to contact) [chinese]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1966, 'purchase_order', 'debit-note-to-contact', 'chinese', 'Debit Note (Sent to contact) [chinese]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1967, 'purchase_order', 'purchase-statement-to-contact', 'chinese', 'Purchase Statement (Sent to contact) [chinese]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1968, 'inventory_warning', 'inventory-warning-to-staff', 'chinese', 'Inventory warning (Sent to staff) [chinese]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1969, 'purchase_order', 'purchase-order-to-contact', 'czech', 'Purchase Order (Sent to contact) [czech]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1970, 'purchase_order', 'purchase-request-to-contact', 'czech', 'Purchase Request (Sent to contact) [czech]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1971, 'purchase_order', 'purchase-quotation-to-contact', 'czech', 'Purchase Quotation (Sent to contact) [czech]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1972, 'purchase_order', 'debit-note-to-contact', 'czech', 'Debit Note (Sent to contact) [czech]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1973, 'purchase_order', 'purchase-statement-to-contact', 'czech', 'Purchase Statement (Sent to contact) [czech]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1974, 'inventory_warning', 'inventory-warning-to-staff', 'czech', 'Inventory warning (Sent to staff) [czech]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1975, 'purchase_order', 'purchase-order-to-contact', 'dutch', 'Purchase Order (Sent to contact) [dutch]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1976, 'purchase_order', 'purchase-request-to-contact', 'dutch', 'Purchase Request (Sent to contact) [dutch]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1977, 'purchase_order', 'purchase-quotation-to-contact', 'dutch', 'Purchase Quotation (Sent to contact) [dutch]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1978, 'purchase_order', 'debit-note-to-contact', 'dutch', 'Debit Note (Sent to contact) [dutch]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1979, 'purchase_order', 'purchase-statement-to-contact', 'dutch', 'Purchase Statement (Sent to contact) [dutch]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1980, 'inventory_warning', 'inventory-warning-to-staff', 'dutch', 'Inventory warning (Sent to staff) [dutch]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1981, 'purchase_order', 'purchase-order-to-contact', 'french', 'Purchase Order (Sent to contact) [french]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1982, 'purchase_order', 'purchase-request-to-contact', 'french', 'Purchase Request (Sent to contact) [french]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1983, 'purchase_order', 'purchase-quotation-to-contact', 'french', 'Purchase Quotation (Sent to contact) [french]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1984, 'purchase_order', 'debit-note-to-contact', 'french', 'Debit Note (Sent to contact) [french]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1985, 'purchase_order', 'purchase-statement-to-contact', 'french', 'Purchase Statement (Sent to contact) [french]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1986, 'inventory_warning', 'inventory-warning-to-staff', 'french', 'Inventory warning (Sent to staff) [french]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1987, 'purchase_order', 'purchase-order-to-contact', 'german', 'Purchase Order (Sent to contact) [german]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1988, 'purchase_order', 'purchase-request-to-contact', 'german', 'Purchase Request (Sent to contact) [german]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1989, 'purchase_order', 'purchase-quotation-to-contact', 'german', 'Purchase Quotation (Sent to contact) [german]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1990, 'purchase_order', 'debit-note-to-contact', 'german', 'Debit Note (Sent to contact) [german]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1991, 'purchase_order', 'purchase-statement-to-contact', 'german', 'Purchase Statement (Sent to contact) [german]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1992, 'inventory_warning', 'inventory-warning-to-staff', 'german', 'Inventory warning (Sent to staff) [german]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1993, 'purchase_order', 'purchase-order-to-contact', 'greek', 'Purchase Order (Sent to contact) [greek]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1994, 'purchase_order', 'purchase-request-to-contact', 'greek', 'Purchase Request (Sent to contact) [greek]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1995, 'purchase_order', 'purchase-quotation-to-contact', 'greek', 'Purchase Quotation (Sent to contact) [greek]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1996, 'purchase_order', 'debit-note-to-contact', 'greek', 'Debit Note (Sent to contact) [greek]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1997, 'purchase_order', 'purchase-statement-to-contact', 'greek', 'Purchase Statement (Sent to contact) [greek]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1998, 'inventory_warning', 'inventory-warning-to-staff', 'greek', 'Inventory warning (Sent to staff) [greek]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1999, 'purchase_order', 'purchase-order-to-contact', 'indonesia', 'Purchase Order (Sent to contact) [indonesia]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2000, 'purchase_order', 'purchase-request-to-contact', 'indonesia', 'Purchase Request (Sent to contact) [indonesia]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2001, 'purchase_order', 'purchase-quotation-to-contact', 'indonesia', 'Purchase Quotation (Sent to contact) [indonesia]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2002, 'purchase_order', 'debit-note-to-contact', 'indonesia', 'Debit Note (Sent to contact) [indonesia]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2003, 'purchase_order', 'purchase-statement-to-contact', 'indonesia', 'Purchase Statement (Sent to contact) [indonesia]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2004, 'inventory_warning', 'inventory-warning-to-staff', 'indonesia', 'Inventory warning (Sent to staff) [indonesia]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2005, 'purchase_order', 'purchase-order-to-contact', 'italian', 'Purchase Order (Sent to contact) [italian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2006, 'purchase_order', 'purchase-request-to-contact', 'italian', 'Purchase Request (Sent to contact) [italian]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2007, 'purchase_order', 'purchase-quotation-to-contact', 'italian', 'Purchase Quotation (Sent to contact) [italian]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2008, 'purchase_order', 'debit-note-to-contact', 'italian', 'Debit Note (Sent to contact) [italian]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2009, 'purchase_order', 'purchase-statement-to-contact', 'italian', 'Purchase Statement (Sent to contact) [italian]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2010, 'inventory_warning', 'inventory-warning-to-staff', 'italian', 'Inventory warning (Sent to staff) [italian]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2011, 'purchase_order', 'purchase-order-to-contact', 'japanese', 'Purchase Order (Sent to contact) [japanese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2012, 'purchase_order', 'purchase-request-to-contact', 'japanese', 'Purchase Request (Sent to contact) [japanese]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2013, 'purchase_order', 'purchase-quotation-to-contact', 'japanese', 'Purchase Quotation (Sent to contact) [japanese]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2014, 'purchase_order', 'debit-note-to-contact', 'japanese', 'Debit Note (Sent to contact) [japanese]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2015, 'purchase_order', 'purchase-statement-to-contact', 'japanese', 'Purchase Statement (Sent to contact) [japanese]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2016, 'inventory_warning', 'inventory-warning-to-staff', 'japanese', 'Inventory warning (Sent to staff) [japanese]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2017, 'purchase_order', 'purchase-order-to-contact', 'persian', 'Purchase Order (Sent to contact) [persian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2018, 'purchase_order', 'purchase-request-to-contact', 'persian', 'Purchase Request (Sent to contact) [persian]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2019, 'purchase_order', 'purchase-quotation-to-contact', 'persian', 'Purchase Quotation (Sent to contact) [persian]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2020, 'purchase_order', 'debit-note-to-contact', 'persian', 'Debit Note (Sent to contact) [persian]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2021, 'purchase_order', 'purchase-statement-to-contact', 'persian', 'Purchase Statement (Sent to contact) [persian]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2022, 'inventory_warning', 'inventory-warning-to-staff', 'persian', 'Inventory warning (Sent to staff) [persian]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2023, 'purchase_order', 'purchase-order-to-contact', 'polish', 'Purchase Order (Sent to contact) [polish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2024, 'purchase_order', 'purchase-request-to-contact', 'polish', 'Purchase Request (Sent to contact) [polish]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2025, 'purchase_order', 'purchase-quotation-to-contact', 'polish', 'Purchase Quotation (Sent to contact) [polish]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2026, 'purchase_order', 'debit-note-to-contact', 'polish', 'Debit Note (Sent to contact) [polish]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2027, 'purchase_order', 'purchase-statement-to-contact', 'polish', 'Purchase Statement (Sent to contact) [polish]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2028, 'inventory_warning', 'inventory-warning-to-staff', 'polish', 'Inventory warning (Sent to staff) [polish]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2029, 'purchase_order', 'purchase-order-to-contact', 'portuguese', 'Purchase Order (Sent to contact) [portuguese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2030, 'purchase_order', 'purchase-request-to-contact', 'portuguese', 'Purchase Request (Sent to contact) [portuguese]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2031, 'purchase_order', 'purchase-quotation-to-contact', 'portuguese', 'Purchase Quotation (Sent to contact) [portuguese]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2032, 'purchase_order', 'debit-note-to-contact', 'portuguese', 'Debit Note (Sent to contact) [portuguese]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2033, 'purchase_order', 'purchase-statement-to-contact', 'portuguese', 'Purchase Statement (Sent to contact) [portuguese]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2034, 'inventory_warning', 'inventory-warning-to-staff', 'portuguese', 'Inventory warning (Sent to staff) [portuguese]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2035, 'purchase_order', 'purchase-order-to-contact', 'portuguese_br', 'Purchase Order (Sent to contact) [portuguese_br]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2036, 'purchase_order', 'purchase-request-to-contact', 'portuguese_br', 'Purchase Request (Sent to contact) [portuguese_br]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2037, 'purchase_order', 'purchase-quotation-to-contact', 'portuguese_br', 'Purchase Quotation (Sent to contact) [portuguese_br]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2038, 'purchase_order', 'debit-note-to-contact', 'portuguese_br', 'Debit Note (Sent to contact) [portuguese_br]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2039, 'purchase_order', 'purchase-statement-to-contact', 'portuguese_br', 'Purchase Statement (Sent to contact) [portuguese_br]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2040, 'inventory_warning', 'inventory-warning-to-staff', 'portuguese_br', 'Inventory warning (Sent to staff) [portuguese_br]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2041, 'purchase_order', 'purchase-order-to-contact', 'romanian', 'Purchase Order (Sent to contact) [romanian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2042, 'purchase_order', 'purchase-request-to-contact', 'romanian', 'Purchase Request (Sent to contact) [romanian]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2043, 'purchase_order', 'purchase-quotation-to-contact', 'romanian', 'Purchase Quotation (Sent to contact) [romanian]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2044, 'purchase_order', 'debit-note-to-contact', 'romanian', 'Debit Note (Sent to contact) [romanian]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2045, 'purchase_order', 'purchase-statement-to-contact', 'romanian', 'Purchase Statement (Sent to contact) [romanian]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2046, 'inventory_warning', 'inventory-warning-to-staff', 'romanian', 'Inventory warning (Sent to staff) [romanian]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2047, 'purchase_order', 'purchase-order-to-contact', 'russian', 'Purchase Order (Sent to contact) [russian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2048, 'purchase_order', 'purchase-request-to-contact', 'russian', 'Purchase Request (Sent to contact) [russian]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2049, 'purchase_order', 'purchase-quotation-to-contact', 'russian', 'Purchase Quotation (Sent to contact) [russian]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2050, 'purchase_order', 'debit-note-to-contact', 'russian', 'Debit Note (Sent to contact) [russian]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2051, 'purchase_order', 'purchase-statement-to-contact', 'russian', 'Purchase Statement (Sent to contact) [russian]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2052, 'inventory_warning', 'inventory-warning-to-staff', 'russian', 'Inventory warning (Sent to staff) [russian]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2053, 'purchase_order', 'purchase-order-to-contact', 'slovak', 'Purchase Order (Sent to contact) [slovak]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2054, 'purchase_order', 'purchase-request-to-contact', 'slovak', 'Purchase Request (Sent to contact) [slovak]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2055, 'purchase_order', 'purchase-quotation-to-contact', 'slovak', 'Purchase Quotation (Sent to contact) [slovak]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2056, 'purchase_order', 'debit-note-to-contact', 'slovak', 'Debit Note (Sent to contact) [slovak]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2057, 'purchase_order', 'purchase-statement-to-contact', 'slovak', 'Purchase Statement (Sent to contact) [slovak]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2058, 'inventory_warning', 'inventory-warning-to-staff', 'slovak', 'Inventory warning (Sent to staff) [slovak]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2059, 'purchase_order', 'purchase-order-to-contact', 'spanish', 'Purchase Order (Sent to contact) [spanish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2060, 'purchase_order', 'purchase-request-to-contact', 'spanish', 'Purchase Request (Sent to contact) [spanish]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2061, 'purchase_order', 'purchase-quotation-to-contact', 'spanish', 'Purchase Quotation (Sent to contact) [spanish]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2062, 'purchase_order', 'debit-note-to-contact', 'spanish', 'Debit Note (Sent to contact) [spanish]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2063, 'purchase_order', 'purchase-statement-to-contact', 'spanish', 'Purchase Statement (Sent to contact) [spanish]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2064, 'inventory_warning', 'inventory-warning-to-staff', 'spanish', 'Inventory warning (Sent to staff) [spanish]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2065, 'purchase_order', 'purchase-order-to-contact', 'swedish', 'Purchase Order (Sent to contact) [swedish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2066, 'purchase_order', 'purchase-request-to-contact', 'swedish', 'Purchase Request (Sent to contact) [swedish]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2067, 'purchase_order', 'purchase-quotation-to-contact', 'swedish', 'Purchase Quotation (Sent to contact) [swedish]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2068, 'purchase_order', 'debit-note-to-contact', 'swedish', 'Debit Note (Sent to contact) [swedish]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2069, 'purchase_order', 'purchase-statement-to-contact', 'swedish', 'Purchase Statement (Sent to contact) [swedish]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2070, 'inventory_warning', 'inventory-warning-to-staff', 'swedish', 'Inventory warning (Sent to staff) [swedish]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2071, 'purchase_order', 'purchase-order-to-contact', 'turkish', 'Purchase Order (Sent to contact) [turkish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2072, 'purchase_order', 'purchase-request-to-contact', 'turkish', 'Purchase Request (Sent to contact) [turkish]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2073, 'purchase_order', 'purchase-quotation-to-contact', 'turkish', 'Purchase Quotation (Sent to contact) [turkish]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2074, 'purchase_order', 'debit-note-to-contact', 'turkish', 'Debit Note (Sent to contact) [turkish]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2075, 'purchase_order', 'purchase-statement-to-contact', 'turkish', 'Purchase Statement (Sent to contact) [turkish]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2076, 'inventory_warning', 'inventory-warning-to-staff', 'turkish', 'Inventory warning (Sent to staff) [turkish]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2077, 'purchase_order', 'purchase-order-to-contact', 'ukrainian', 'Purchase Order (Sent to contact) [ukrainian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2078, 'purchase_order', 'purchase-request-to-contact', 'ukrainian', 'Purchase Request (Sent to contact) [ukrainian]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2079, 'purchase_order', 'purchase-quotation-to-contact', 'ukrainian', 'Purchase Quotation (Sent to contact) [ukrainian]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2080, 'purchase_order', 'debit-note-to-contact', 'ukrainian', 'Debit Note (Sent to contact) [ukrainian]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2081, 'purchase_order', 'purchase-statement-to-contact', 'ukrainian', 'Purchase Statement (Sent to contact) [ukrainian]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2082, 'inventory_warning', 'inventory-warning-to-staff', 'ukrainian', 'Inventory warning (Sent to staff) [ukrainian]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2083, 'purchase_order', 'purchase-order-to-contact', 'vietnamese', 'Purchase Order (Sent to contact) [vietnamese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2084, 'purchase_order', 'purchase-request-to-contact', 'vietnamese', 'Purchase Request (Sent to contact) [vietnamese]', 'Purchase Request', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2085, 'purchase_order', 'purchase-quotation-to-contact', 'vietnamese', 'Purchase Quotation (Sent to contact) [vietnamese]', 'Purchase Quotation', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2086, 'purchase_order', 'debit-note-to-contact', 'vietnamese', 'Debit Note (Sent to contact) [vietnamese]', 'Debit Note', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2087, 'purchase_order', 'purchase-statement-to-contact', 'vietnamese', 'Purchase Statement (Sent to contact) [vietnamese]', 'Purchase Statement', '', '{companyname} | CRM', NULL, 0, 1, 0),
(2088, 'inventory_warning', 'inventory-warning-to-staff', 'vietnamese', 'Inventory warning (Sent to staff) [vietnamese]', 'Inventory warning', '', '{companyname} | CRM', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimates`
--

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `clientnote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `pipeline_order` int(11) DEFAULT 1,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblestimates`
--

INSERT INTO `tblestimates` (`id`, `sent`, `datesend`, `clientid`, `deleted_customer_name`, `project_id`, `number`, `prefix`, `number_format`, `hash`, `datecreated`, `date`, `expirydate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `status`, `clientnote`, `adminnote`, `discount_percent`, `discount_total`, `discount_type`, `invoiceid`, `invoiced_date`, `terms`, `reference_no`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_estimate`, `show_quantity_as`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`, `short_link`) VALUES
(1, 0, NULL, 1, NULL, 1, 1, 'EST-', 1, 'eec372de65a2e91bc891e3ab66356858', '2022-08-23 15:07:03', '2022-08-23', '2022-08-30', 3, '146250.00', '0.00', '146250.00', '0.00', 1, 4, '', '', '0.00', '0.00', '', NULL, NULL, '', '', 2, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_requests`
--

CREATE TABLE `tblestimate_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `submission` longtext NOT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `date_estimated` datetime DEFAULT NULL,
  `from_form_id` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `default_language` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_forms`
--

CREATE TABLE `tblestimate_request_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext DEFAULT NULL,
  `recaptcha` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `submit_btn_name` varchar(100) DEFAULT NULL,
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `success_submit_msg` text DEFAULT NULL,
  `submit_action` int(11) DEFAULT 0,
  `submit_redirect_url` mediumtext DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `notify_type` varchar(100) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `responsible` int(11) DEFAULT NULL,
  `notify_request_submitted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_status`
--

CREATE TABLE `tblestimate_request_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `flag` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblestimate_request_status`
--

INSERT INTO `tblestimate_request_status` (`id`, `name`, `statusorder`, `color`, `flag`) VALUES
(1, 'Cancelled', 1, '#808080', 'cancelled'),
(2, 'Processing', 2, '#007bff', 'processing'),
(3, 'Completed', 3, '#28a745', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` text DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT 0,
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_before` int(11) NOT NULL DEFAULT 0,
  `reminder_before_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`eventid`, `title`, `description`, `userid`, `start`, `end`, `public`, `color`, `isstartnotified`, `reminder_before`, `reminder_before_type`) VALUES
(1, 'من باید زنگ به مدیر ...', '', 1, '2022-08-05 00:00:00', NULL, 0, '#28B8DA', 0, 30, 'minutes'),
(2, 'square', '', 1, '2022-10-06 00:00:00', NULL, 0, '#28B8DA', 0, 30, 'minutes'),
(3, 'square', '', 1, '2022-10-12 00:00:00', NULL, 0, '#28B8DA', 0, 30, 'minutes');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT 0,
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `expense_name` varchar(191) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `billable` int(11) DEFAULT 0,
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` int(11) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses_categories`
--

CREATE TABLE `tblexpenses_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text DEFAULT NULL,
  `thumbnail_link` text DEFAULT NULL COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `task_comment_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblfiles`
--

INSERT INTO `tblfiles` (`id`, `rel_id`, `rel_type`, `file_name`, `filetype`, `visible_to_customer`, `attachment_key`, `external`, `external_link`, `thumbnail_link`, `staffid`, `contact_id`, `task_comment_id`, `dateadded`) VALUES
(1, 1, 'commodity_item_file', '71371312_TM131-2.jpg', 'image/jpeg', 0, '367bd9d613fc6a5f460f4c6a9b77d18c', NULL, NULL, NULL, 1, 0, 0, '2022-08-23 14:42:09'),
(2, 243676, 'lead', 'test.txt', 'text/plain', 0, 'c3a601608f0ecbbd96572e8857359b24', NULL, NULL, NULL, 1, 0, 0, '2022-11-03 20:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblform_questions`
--

CREATE TABLE `tblform_questions` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `question_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box`
--

CREATE TABLE `tblform_question_box` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box_description`
--

CREATE TABLE `tblform_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_results`
--

CREATE TABLE `tblform_results` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `resultsetid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgdpr_requests`
--

CREATE TABLE `tblgdpr_requests` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `request_type` varchar(191) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_delivery`
--

CREATE TABLE `tblgoods_delivery` (
  `id` int(11) UNSIGNED NOT NULL,
  `rel_type` int(11) DEFAULT NULL COMMENT 'type goods delivery',
  `rel_document` int(11) DEFAULT NULL COMMENT 'document id of goods delivery',
  `customer_code` text DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `to_` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL COMMENT 'the reason delivery',
  `staff_id` int(11) DEFAULT NULL COMMENT 'salesman',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_delivery_code` varchar(100) DEFAULT NULL COMMENT 'số chứng từ xuất kho',
  `warehouse_id` int(11) DEFAULT NULL,
  `total_money` varchar(200) DEFAULT NULL,
  `approval` int(11) DEFAULT 0 COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL,
  `total_discount` varchar(100) DEFAULT NULL,
  `after_discount` varchar(100) DEFAULT NULL,
  `invoice_id` varchar(100) DEFAULT NULL,
  `project` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `requester` int(11) DEFAULT NULL,
  `invoice_no` text DEFAULT NULL,
  `pr_order_id` int(11) DEFAULT NULL,
  `type_of_delivery` varchar(100) DEFAULT 'total',
  `additional_discount` decimal(15,2) DEFAULT 0.00,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `delivery_status` varchar(100) DEFAULT 'ready_for_packing',
  `shipping_fee` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_delivery`
--

INSERT INTO `tblgoods_delivery` (`id`, `rel_type`, `rel_document`, `customer_code`, `customer_name`, `to_`, `address`, `description`, `staff_id`, `date_c`, `date_add`, `goods_delivery_code`, `warehouse_id`, `total_money`, `approval`, `addedfrom`, `total_discount`, `after_discount`, `invoice_id`, `project`, `type`, `department`, `requester`, `invoice_no`, `pr_order_id`, `type_of_delivery`, `additional_discount`, `sub_total`, `delivery_status`, `shipping_fee`) VALUES
(1, NULL, NULL, '1', NULL, 'عباس مهری', ', , , ', 'با موفقیت خارج شد', 1, '2022-08-25', '2022-08-25', 'XK1', NULL, '324000', 1, 1, '0', '686000', '3', '1', 'opex', 1, 1, 'INV-000003', 0, 'partial', '0.00', '324000.00', 'ready_for_packing', '362000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_delivery_detail`
--

CREATE TABLE `tblgoods_delivery_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_delivery_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `warehouse_id` text DEFAULT NULL,
  `unit_id` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `total_money` varchar(200) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `discount_money` varchar(100) DEFAULT NULL,
  `available_quantity` varchar(100) DEFAULT NULL,
  `tax_id` varchar(100) DEFAULT NULL,
  `total_after_discount` varchar(100) DEFAULT NULL,
  `expiry_date` text DEFAULT NULL,
  `lot_number` text DEFAULT NULL,
  `guarantee_period` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `packing_qty` decimal(15,2) DEFAULT 0.00,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_delivery_detail`
--

INSERT INTO `tblgoods_delivery_detail` (`id`, `goods_delivery_id`, `commodity_code`, `commodity_name`, `warehouse_id`, `unit_id`, `quantities`, `unit_price`, `total_money`, `note`, `discount`, `discount_money`, `available_quantity`, `tax_id`, `total_after_discount`, `expiry_date`, `lot_number`, `guarantee_period`, `tax_rate`, `tax_name`, `sub_total`, `packing_qty`, `serial_number`) VALUES
(1, 1, '2', '6_الکتروموتور تستی', '1', '1', '3', '108000.00', '324000', '', '', '0', '6', NULL, '324000', '', '', '', NULL, NULL, '324000.00', '3.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_delivery_invoices_pr_orders`
--

CREATE TABLE `tblgoods_delivery_invoices_pr_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `rel_id` int(11) DEFAULT NULL COMMENT 'goods_delivery_id',
  `rel_type` int(11) DEFAULT NULL COMMENT 'invoice_id or purchase order id',
  `type` varchar(100) DEFAULT NULL COMMENT 'invoice,  purchase_orders'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_delivery_invoices_pr_orders`
--

INSERT INTO `tblgoods_delivery_invoices_pr_orders` (`id`, `rel_id`, `rel_type`, `type`) VALUES
(1, 1, 1, 'goods_delivery');

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_receipt`
--

CREATE TABLE `tblgoods_receipt` (
  `id` int(11) UNSIGNED NOT NULL,
  `supplier_code` varchar(100) DEFAULT NULL,
  `supplier_name` text DEFAULT NULL,
  `deliver_name` text DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `pr_order_id` int(11) DEFAULT NULL COMMENT 'code puchase request agree',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_receipt_code` varchar(100) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `total_tax_money` varchar(100) DEFAULT NULL,
  `total_goods_money` varchar(100) DEFAULT NULL,
  `value_of_inventory` varchar(100) DEFAULT NULL,
  `total_money` varchar(100) DEFAULT NULL COMMENT 'total_money = total_tax_money +total_goods_money ',
  `addedfrom` int(11) DEFAULT NULL,
  `approval` int(11) DEFAULT 0,
  `project` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `requester` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `invoice_no` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_receipt`
--

INSERT INTO `tblgoods_receipt` (`id`, `supplier_code`, `supplier_name`, `deliver_name`, `buyer_id`, `description`, `pr_order_id`, `date_c`, `date_add`, `goods_receipt_code`, `warehouse_id`, `total_tax_money`, `total_goods_money`, `value_of_inventory`, `total_money`, `addedfrom`, `approval`, `project`, `type`, `department`, `requester`, `expiry_date`, `invoice_no`) VALUES
(1, '', '', '', 2, 'دریافت شد', 0, '2022-08-25', '2022-08-25', 'NK1', 1, '0', '600000', '600000', '600000', 1, 1, '1', 'capex', 1, 1, '2022-08-25', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_receipt_detail`
--

CREATE TABLE `tblgoods_receipt_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_receipt_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `warehouse_id` text DEFAULT NULL,
  `unit_id` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `tax_money` varchar(100) DEFAULT NULL,
  `goods_money` varchar(100) DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `discount_money` varchar(100) DEFAULT NULL,
  `lot_number` varchar(100) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `tax_name` text DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_receipt_detail`
--

INSERT INTO `tblgoods_receipt_detail` (`id`, `goods_receipt_id`, `commodity_code`, `commodity_name`, `warehouse_id`, `unit_id`, `quantities`, `unit_price`, `tax`, `tax_money`, `goods_money`, `date_manufacture`, `expiry_date`, `note`, `discount`, `discount_money`, `lot_number`, `tax_rate`, `sub_total`, `tax_name`, `serial_number`) VALUES
(1, 1, '2', '6_الکتروموتور تستی', '1', '1', '6', '100000.00', NULL, '0', '600000', NULL, NULL, '', NULL, NULL, '', NULL, '600000.00', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_transaction_detail`
--

CREATE TABLE `tblgoods_transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_receipt_id` int(11) DEFAULT NULL COMMENT 'id_goods_receipt_id or goods_delivery_id',
  `goods_id` int(11) NOT NULL COMMENT ' is id commodity',
  `old_quantity` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `commodity_id` int(11) NOT NULL,
  `warehouse_id` text NOT NULL,
  `note` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '1:Goods receipt note 2:Goods delivery note',
  `purchase_price` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `expiry_date` text DEFAULT NULL,
  `lot_number` text DEFAULT NULL,
  `from_stock_name` int(11) DEFAULT NULL,
  `to_stock_name` int(11) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_transaction_detail`
--

INSERT INTO `tblgoods_transaction_detail` (`id`, `goods_receipt_id`, `goods_id`, `old_quantity`, `quantity`, `date_add`, `commodity_id`, `warehouse_id`, `note`, `status`, `purchase_price`, `price`, `expiry_date`, `lot_number`, `from_stock_name`, `to_stock_name`, `serial_number`) VALUES
(1, 1, 1, NULL, '6', '2022-08-25 16:38:10', 2, '1', '', 1, '100000.00', NULL, NULL, '', NULL, NULL, ''),
(2, 1, 1, '3', '3', '2022-08-25 16:42:30', 2, '1', '', 2, NULL, '108000.00', '', '', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblgroup_checklist`
--

CREATE TABLE `tblgroup_checklist` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `meta` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblgroup_checklist_allocation`
--

CREATE TABLE `tblgroup_checklist_allocation` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `meta` varchar(100) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_allocation_asset`
--

CREATE TABLE `tblhr_allocation_asset` (
  `allocation_id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL,
  `asset_name` varchar(100) DEFAULT NULL,
  `assets_amount` int(11) UNSIGNED NOT NULL,
  `status_allocation` int(11) UNSIGNED DEFAULT 0 COMMENT '1: Allocated 0: Unallocated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_allowance_type`
--

CREATE TABLE `tblhr_allowance_type` (
  `type_id` int(11) UNSIGNED NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `allowance_val` decimal(15,2) NOT NULL,
  `taxable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_checklist_allocation`
--

CREATE TABLE `tblhr_checklist_allocation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_contract_template`
--

CREATE TABLE `tblhr_contract_template` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `job_position` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_dependent_person`
--

CREATE TABLE `tblhr_dependent_person` (
  `id` int(11) UNSIGNED NOT NULL,
  `staffid` int(11) UNSIGNED DEFAULT NULL,
  `dependent_name` varchar(100) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `dependent_bir` date DEFAULT NULL,
  `start_month` date DEFAULT NULL,
  `end_month` date DEFAULT NULL,
  `dependent_iden` varchar(20) NOT NULL,
  `reason` longtext DEFAULT NULL,
  `status` int(11) UNSIGNED DEFAULT 0,
  `status_comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_education`
--

CREATE TABLE `tblhr_education` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `programe_id` int(11) DEFAULT NULL,
  `training_programs_name` text NOT NULL,
  `training_places` text DEFAULT NULL,
  `training_time_from` datetime DEFAULT NULL,
  `training_time_to` datetime DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `training_result` varchar(150) DEFAULT NULL,
  `degree` varchar(150) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_group_checklist_allocation`
--

CREATE TABLE `tblhr_group_checklist_allocation` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `meta` varchar(100) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_job_p`
--

CREATE TABLE `tblhr_job_p` (
  `job_id` int(11) UNSIGNED NOT NULL,
  `job_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_job_position`
--

CREATE TABLE `tblhr_job_position` (
  `position_id` int(11) UNSIGNED NOT NULL,
  `position_name` varchar(200) NOT NULL,
  `job_position_description` text DEFAULT NULL,
  `job_p_id` int(11) UNSIGNED NOT NULL,
  `position_code` varchar(50) DEFAULT NULL,
  `department_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblhr_job_position`
--

INSERT INTO `tblhr_job_position` (`position_id`, `position_name`, `job_position_description`, `job_p_id`, `position_code`, `department_id`) VALUES
(1, 'مدیریت', '<p>سلام مدیر</p>', 0, '#JOB00001', NULL),
(2, 'مسئول خرید', '<p>خیلی خوب</p>', 0, '#JOB00002', '1'),
(3, 'مدیر فنی', '<p>مدیر فنی</p>', 0, '#JOB00003', '4'),
(4, 'مدیر بازرگانی خارجی', '<p>مدیر بازرگانی خارجی</p>', 0, '#JOB00004', '3'),
(5, 'مدیر بازرگانی داخلی', '<p>مدیر بازرگانی داخلی</p>', 0, '#JOB00005', '1'),
(6, 'مدیر فروش', '<p>مدیر فروش</p>', 0, '#JOB00006', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_jp_interview_training`
--

CREATE TABLE `tblhr_jp_interview_training` (
  `training_process_id` int(11) UNSIGNED NOT NULL,
  `job_position_id` longtext DEFAULT NULL,
  `training_name` varchar(100) DEFAULT NULL,
  `training_type` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `position_training_id` text DEFAULT NULL,
  `mint_point` int(11) DEFAULT NULL,
  `additional_training` varchar(100) DEFAULT '',
  `staff_id` text DEFAULT NULL,
  `time_to_start` date DEFAULT NULL,
  `time_to_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_jp_salary_scale`
--

CREATE TABLE `tblhr_jp_salary_scale` (
  `salary_scale_id` int(11) UNSIGNED NOT NULL,
  `job_position_id` int(11) UNSIGNED NOT NULL,
  `rel_type` varchar(100) DEFAULT NULL COMMENT 'salary:allowance:insurance',
  `rel_id` int(11) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_knowedge_base_article_feedback`
--

CREATE TABLE `tblhr_knowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_knowledge_base`
--

CREATE TABLE `tblhr_knowledge_base` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT 0,
  `staff_article` int(11) NOT NULL DEFAULT 0,
  `question_answers` int(11) DEFAULT 0,
  `file_name` varchar(255) DEFAULT '',
  `curator` varchar(11) DEFAULT '',
  `benchmark` int(11) DEFAULT 0,
  `score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_knowledge_base_groups`
--

CREATE TABLE `tblhr_knowledge_base_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `group_slug` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_list_staff_quitting_work`
--

CREATE TABLE `tblhr_list_staff_quitting_work` (
  `id` int(11) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `staff_name` text DEFAULT NULL,
  `department_name` text DEFAULT NULL,
  `role_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `dateoff` datetime NOT NULL DEFAULT current_timestamp(),
  `approval` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_position_training`
--

CREATE TABLE `tblhr_position_training` (
  `training_id` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `training_type` int(11) UNSIGNED NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text DEFAULT NULL,
  `viewdescription` text DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT 0,
  `onlyforloggedin` int(11) DEFAULT 0,
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `hash` varchar(32) NOT NULL,
  `mint_point` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_position_training_question_form`
--

CREATE TABLE `tblhr_position_training_question_form` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `question_order` int(11) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_procedure_retire`
--

CREATE TABLE `tblhr_procedure_retire` (
  `id` int(11) NOT NULL,
  `rel_name` text DEFAULT NULL,
  `option_name` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `people_handle_id` int(11) NOT NULL,
  `procedure_retire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_procedure_retire_manage`
--

CREATE TABLE `tblhr_procedure_retire_manage` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_procedure_retire` text NOT NULL,
  `department` varchar(250) NOT NULL,
  `datecreator` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_procedure_retire_of_staff`
--

CREATE TABLE `tblhr_procedure_retire_of_staff` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `option_name` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `staffid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_procedure_retire_of_staff_by_id`
--

CREATE TABLE `tblhr_procedure_retire_of_staff_by_id` (
  `id` int(11) NOT NULL,
  `rel_name` text DEFAULT NULL,
  `people_handle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_profile_option`
--

CREATE TABLE `tblhr_profile_option` (
  `option_id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext DEFAULT NULL,
  `auto` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblhr_profile_option`
--

INSERT INTO `tblhr_profile_option` (`option_id`, `option_name`, `option_val`, `auto`) VALUES
(1, 'job_position_prefix', '#JOB', 1),
(2, 'job_position_number', '7', 1),
(3, 'contract_code_prefix', '#CONTRACT', 1),
(4, 'contract_code_number', '1', 1),
(5, 'staff_code_prefix', 'EC', 1),
(6, 'staff_code_number', '7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_p_t_form_question_box`
--

CREATE TABLE `tblhr_p_t_form_question_box` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_p_t_form_question_box_description`
--

CREATE TABLE `tblhr_p_t_form_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  `correct` int(11) DEFAULT 1 COMMENT '0: correct 1: incorrect'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_p_t_form_results`
--

CREATE TABLE `tblhr_p_t_form_results` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `resultsetid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_p_t_surveyresultsets`
--

CREATE TABLE `tblhr_p_t_surveyresultsets` (
  `resultsetid` int(11) NOT NULL,
  `trainingid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_rec_transfer_records`
--

CREATE TABLE `tblhr_rec_transfer_records` (
  `id` int(11) UNSIGNED NOT NULL,
  `staffid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `staff_identifi` varchar(20) DEFAULT NULL,
  `creator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_salary_form`
--

CREATE TABLE `tblhr_salary_form` (
  `form_id` int(11) UNSIGNED NOT NULL,
  `form_name` varchar(200) NOT NULL,
  `salary_val` decimal(15,2) NOT NULL,
  `tax` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_staff_contract`
--

CREATE TABLE `tblhr_staff_contract` (
  `id_contract` int(11) UNSIGNED NOT NULL,
  `contract_code` varchar(200) NOT NULL,
  `name_contract` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `start_valid` date DEFAULT NULL,
  `end_valid` date DEFAULT NULL,
  `contract_status` varchar(100) DEFAULT NULL,
  `sign_day` date DEFAULT NULL,
  `staff_delegate` int(11) DEFAULT NULL,
  `hourly_or_month` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `signer` int(11) DEFAULT NULL,
  `staff_signature` varchar(40) DEFAULT NULL,
  `staff_sign_day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_staff_contract_detail`
--

CREATE TABLE `tblhr_staff_contract_detail` (
  `contract_detail_id` int(11) UNSIGNED NOT NULL,
  `staff_contract_id` int(11) UNSIGNED NOT NULL,
  `type` text DEFAULT NULL,
  `rel_type` text DEFAULT NULL,
  `rel_value` decimal(15,2) DEFAULT 0.00,
  `since_date` date DEFAULT NULL,
  `contract_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_staff_contract_type`
--

CREATE TABLE `tblhr_staff_contract_type` (
  `id_contracttype` int(11) UNSIGNED NOT NULL,
  `name_contracttype` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `insurance` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_training_allocation`
--

CREATE TABLE `tblhr_training_allocation` (
  `id` int(11) NOT NULL,
  `training_process_id` varchar(100) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `training_type` int(11) DEFAULT NULL,
  `date_add` datetime NOT NULL DEFAULT current_timestamp(),
  `training_name` varchar(150) DEFAULT NULL,
  `jp_interview_training_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_type_of_trainings`
--

CREATE TABLE `tblhr_type_of_trainings` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblhr_type_of_trainings`
--

INSERT INTO `tblhr_type_of_trainings` (`id`, `name`) VALUES
(1, 'Basic training');

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_views_tracking`
--

CREATE TABLE `tblhr_views_tracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblhr_workplace`
--

CREATE TABLE `tblhr_workplace` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `workplace_address` varchar(400) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `default` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinternal_delivery_note`
--

CREATE TABLE `tblinternal_delivery_note` (
  `id` int(11) UNSIGNED NOT NULL,
  `internal_delivery_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `internal_delivery_code` varchar(100) DEFAULT NULL,
  `approval` int(11) DEFAULT 0 COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinternal_delivery_note_detail`
--

CREATE TABLE `tblinternal_delivery_note_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `internal_delivery_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `from_stock_name` text DEFAULT NULL,
  `to_stock_name` text DEFAULT NULL,
  `unit_id` text DEFAULT NULL,
  `available_quantity` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `into_money` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory_commodity_min`
--

CREATE TABLE `tblinventory_commodity_min` (
  `id` int(11) UNSIGNED NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` varchar(100) DEFAULT NULL,
  `inventory_number_min` varchar(100) DEFAULT NULL,
  `inventory_number_max` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinventory_commodity_min`
--

INSERT INTO `tblinventory_commodity_min` (`id`, `commodity_id`, `commodity_code`, `commodity_name`, `inventory_number_min`, `inventory_number_max`) VALUES
(1, 1, '1', 'فلومتر اندرس هاوزر', '0', '0'),
(2, 2, '6', 'الکتروموتور تستی', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory_manage`
--

CREATE TABLE `tblinventory_manage` (
  `id` int(11) UNSIGNED NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `inventory_number` varchar(100) DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `lot_number` varchar(100) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinventory_manage`
--

INSERT INTO `tblinventory_manage` (`id`, `warehouse_id`, `commodity_id`, `inventory_number`, `date_manufacture`, `expiry_date`, `lot_number`, `purchase_price`) VALUES
(1, 1, 2, '3', NULL, NULL, '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoicepaymentrecords`
--

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinvoicepaymentrecords`
--

INSERT INTO `tblinvoicepaymentrecords` (`id`, `invoiceid`, `amount`, `paymentmode`, `paymentmethod`, `date`, `daterecorded`, `note`, `transactionid`) VALUES
(1, 3, '293250.00', '1', '', '2022-08-23', '2022-08-23 18:39:54', '545454', '4554'),
(2, 4, '146250.00', '1', NULL, '2022-08-25', '2022-08-25 17:48:23', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoicepaymentrecordspish`
--

CREATE TABLE `tblinvoicepaymentrecordspish` (
  `pid` int(11) NOT NULL,
  `pishid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinvoicepaymentrecordspish`
--

INSERT INTO `tblinvoicepaymentrecordspish` (`pid`, `pishid`, `amount`, `paymentmode`, `paymentmethod`, `date`, `daterecorded`, `note`, `transactionid`) VALUES
(1, 4, '293250.00', '1', NULL, '2022-08-23', '2022-08-23 18:39:54', '545454', '4554'),
(2, 5, '330000.00', '1', NULL, '2022-08-23', '2022-08-23 18:39:54', '545454', '4554'),
(3, 5, '999000.00', '1', NULL, '2022-02-02', '2022-08-25 11:00:30', 'سلام', '1111'),
(4, 5, '692138.00', '1', NULL, '2022-08-23', '2022-08-25 13:36:31', 'ffgfg', '45545'),
(5, 5, '71000.00', '1', NULL, '2022-08-23', '2022-08-25 13:41:17', 'klkl', '1212'),
(7, 8, '555.00', '2', NULL, '2022-08-25', '2022-08-25 07:57:21', '55', '555'),
(8, 8, '11.00', '2', NULL, '2022-08-25', '2022-08-25 08:03:43', '11', '11'),
(10, 8, '11.00', '2', NULL, '2022-08-25', '2022-08-25 08:07:09', '11', '11'),
(11, 8, '66.00', '4', NULL, '2022-08-25', '2022-08-25 08:07:27', '66', '66'),
(12, 8, '9.00', '2', NULL, '2022-08-25', '2022-08-25 08:08:34', '9', '9'),
(13, 5, '1.00', '3', NULL, '2022-08-25', '2022-08-25 10:13:41', '1', '1'),
(14, 8, '1.00', '2', NULL, '2022-08-25', '2022-08-25 10:13:53', '1', '1111'),
(15, 6, '6000000.00', '5', NULL, '2022-08-26', '2022-08-26 12:41:27', 'سلام', '5545454545'),
(16, 10, '1000000.00', '2', NULL, '2022-08-27', '2022-08-27 01:34:55', 'پرداخت خوبی بود', '566556556');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoices`
--

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT 1,
  `clientnote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `last_overdue_reminder` date DEFAULT NULL,
  `last_due_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT 0,
  `allowed_payment_modes` mediumtext DEFAULT NULL,
  `token` mediumtext DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinvoices`
--

INSERT INTO `tblinvoices` (`id`, `sent`, `datesend`, `clientid`, `deleted_customer_name`, `number`, `prefix`, `number_format`, `datecreated`, `date`, `duedate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `hash`, `status`, `clientnote`, `adminnote`, `last_overdue_reminder`, `last_due_reminder`, `cancel_overdue_reminders`, `allowed_payment_modes`, `token`, `discount_percent`, `discount_total`, `discount_type`, `recurring`, `recurring_type`, `custom_recurring`, `cycles`, `total_cycles`, `is_recurring_from`, `last_recurring_date`, `terms`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_invoice`, `show_quantity_as`, `project_id`, `subscription_id`, `short_link`) VALUES
(1, 0, NULL, 1, NULL, 1, 'INV-', 1, '2022-08-23 14:49:24', '2022-08-23', '2022-09-22', 3, '146250.00', '0.00', '146250.00', '0.00', 1, 'b8b143a804a444773f0188a82d57e984', 1, 'سفارش خوبی بود', 'به به عالی است', NULL, NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, 0, 0, NULL, NULL, 'محصول را به مشتری تحویل دهیم...', 0, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 1, 1, 1, 1, 0, NULL),
(2, 0, NULL, 1, NULL, 2, 'INV-', 1, '2022-08-23 16:30:38', '2022-08-23', '2022-09-22', 3, '438750.00', '0.00', '1080750.00', '642000.00', 1, '4b864d1bdf248011edaa42ec6a2ae81f', 1, '', '', NULL, NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, 0, 0, NULL, NULL, '', 2, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL),
(3, 0, NULL, 1, NULL, 3, 'INV-', 1, '2022-08-23 16:49:43', '2022-08-23', '2022-09-22', 3, '731250.00', '0.00', '793250.00', '62000.00', 1, '04fe9a1fd2ed3de12b1cab3d4fa603b4', 3, '', '', NULL, NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, 0, 0, NULL, NULL, '', 0, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL),
(4, 0, NULL, 1, NULL, 4, 'INV-', 1, '2022-08-23 19:59:22', '2022-08-23', '2022-09-22', 3, '146250.00', '0.00', '146250.00', '0.00', 1, 'c165ea70cbb9a735ad8be5861e0ffcbd', 2, '', '', NULL, NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, 0, 0, NULL, NULL, '', 2, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblitemable`
--

CREATE TABLE `tblitemable` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext DEFAULT NULL,
  `qty` decimal(15,2) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `wh_delivered_quantity` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` text DEFAULT NULL,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `commodity_code` varchar(100) NOT NULL,
  `commodity_barcode` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `sku_code` varchar(200) DEFAULT NULL,
  `sku_name` varchar(200) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT NULL,
  `sub_group` varchar(200) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `parent_id` int(11) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `parent_attributes` longtext DEFAULT NULL,
  `can_be_sold` varchar(100) DEFAULT 'can_be_sold',
  `can_be_purchased` varchar(100) DEFAULT 'can_be_purchased',
  `can_be_manufacturing` varchar(100) DEFAULT 'can_be_manufacturing',
  `can_be_inventory` varchar(100) DEFAULT 'can_be_inventory',
  `from_vendor_item` int(11) DEFAULT NULL,
  `guarantee` text DEFAULT NULL,
  `profif_ratio` text DEFAULT NULL,
  `long_descriptions` longtext DEFAULT NULL,
  `without_checking_warehouse` int(11) DEFAULT 0,
  `series_id` text DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `commodity_type` int(11) DEFAULT NULL,
  `commodity_name` varchar(200) NOT NULL,
  `color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`id`, `description`, `long_description`, `rate`, `tax`, `tax2`, `unit`, `group_id`, `commodity_code`, `commodity_barcode`, `unit_id`, `sku_code`, `sku_name`, `purchase_price`, `sub_group`, `active`, `parent_id`, `attributes`, `parent_attributes`, `can_be_sold`, `can_be_purchased`, `can_be_manufacturing`, `can_be_inventory`, `from_vendor_item`, `guarantee`, `profif_ratio`, `long_descriptions`, `without_checking_warehouse`, `series_id`, `warehouse_id`, `origin`, `color_id`, `style_id`, `model_id`, `size_id`, `commodity_type`, `commodity_name`, `color`) VALUES
(1, 'فلومتر اندرس هاوزر', 'فلومتر اندرس هاوزر خوب است.', '146250.00', 0, NULL, 'تستی', 0, '1', '86087476989', 1, '123', 'فلومتر اندرس هاوزر', '125000.00', '', 1, 0, NULL, '[{\"name\":\"\",\"options\":[\"\"]}]', 'can_be_sold', 'can_be_purchased', 'can_be_manufacturing', 'can_be_inventory', NULL, '3', '17', '<p>به به&nbsp;</p>', 0, NULL, 0, 'اندرس هاوزر', NULL, 0, 0, 0, 0, '', ''),
(2, 'الکتروموتور تستی', '666', '108000.00', 0, NULL, 'تعداد', 3, '6', '01452710092', 1, '66', 'الکتروموتور تستی', '100000.00', '1', 1, 0, NULL, '[{\"name\":\"\",\"options\":[\"\"]}]', 'can_be_sold', 'can_be_purchased', 'can_be_manufacturing', 'can_be_inventory', NULL, '', '8', '', 0, NULL, 1, '', NULL, 0, 0, 0, 0, '', ''),
(3, 'تستی 7', 'این کالا تسیتی می باشد...', '290000.00', 0, NULL, 'تعداد', 3, '7', '17746589614', 1, '7', 'تستی 7', '260000.00', '1', 1, NULL, NULL, NULL, NULL, 'can_be_purchased', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `commodity_group_code` varchar(100) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitems_groups`
--

INSERT INTO `tblitems_groups` (`id`, `name`, `commodity_group_code`, `order`, `display`, `note`) VALUES
(1, 'ابزار دقیق', '1', 1, 1, 'تمامی محصولات ابزار دقیق با هر برندی'),
(2, 'انوماسیون صنعتی', '2', 2, 1, 'تمامی محصولات انوماسیون صنعتی با هر برندی'),
(3, 'الکتریکال', '3', 3, 1, 'تمامی محصولات الکتریکال با هر برندی'),
(4, 'تجهیزات صنعتی', '4', 4, 1, 'تمامی محصولات تجهیزات صنعتی با هر برندی');

-- --------------------------------------------------------

--
-- Table structure for table `tblitems_of_vendor`
--

CREATE TABLE `tblitems_of_vendor` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `rate` decimal(15,2) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `commodity_code` varchar(100) NOT NULL,
  `commodity_barcode` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `sku_code` varchar(200) DEFAULT NULL,
  `sku_name` varchar(200) DEFAULT NULL,
  `sub_group` varchar(200) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `parent_attributes` longtext DEFAULT NULL,
  `commodity_type` int(11) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `commodity_name` varchar(200) NOT NULL,
  `series_id` text DEFAULT NULL,
  `long_descriptions` longtext DEFAULT NULL,
  `share_status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_tax`
--

CREATE TABLE `tblitem_tax` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowedge_base_article_feedback`
--

CREATE TABLE `tblknowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base`
--

CREATE TABLE `tblknowledge_base` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT 0,
  `staff_article` int(11) NOT NULL DEFAULT 0,
  `question_answers` int(11) DEFAULT 0,
  `file_name` varchar(255) DEFAULT '',
  `curator` varchar(11) DEFAULT '',
  `benchmark` int(11) DEFAULT 0,
  `score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base_groups`
--

CREATE TABLE `tblknowledge_base_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `group_slug` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads`
--

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `contactId` text DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT 1,
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT 0,
  `junk` int(11) NOT NULL DEFAULT 0,
  `last_lead_status` int(11) NOT NULL DEFAULT 0,
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT 0,
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `lead_value` decimal(15,2) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `dateS` varchar(150) DEFAULT NULL,
  `dateE` varchar(150) DEFAULT NULL,
  `Dforce` int(11) DEFAULT NULL,
  `Dnumber` varchar(150) DEFAULT NULL,
  `is_trash` int(11) NOT NULL DEFAULT 0,
  `date_trash` varchar(150) DEFAULT NULL,
  `trash_staff` int(11) DEFAULT NULL,
  `assignedName` varchar(250) DEFAULT NULL,
  `staff_trash_name` varchar(250) DEFAULT NULL,
  `addedfromName` varchar(250) DEFAULT NULL,
  `is_project` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_email_integration`
--

CREATE TABLE `tblleads_email_integration` (
  `id` int(11) NOT NULL COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT 5,
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT 1,
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT 1,
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `create_task_if_customer` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_email_integration`
--

INSERT INTO `tblleads_email_integration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'INBOX', '', 1, 1, 'assigned', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_sources`
--

CREATE TABLE `tblleads_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_sources`
--

INSERT INTO `tblleads_sources` (`id`, `name`) VALUES
(5, 'بازار'),
(4, 'گوگل');

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_status`
--

CREATE TABLE `tblleads_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_status`
--

INSERT INTO `tblleads_status` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'Customer', 1000, '#7cb342', 1),
(4, 'ایجاد شده', 2, '#28B8DA', 0),
(5, 'در انتظار', 3, '#28B8DA', 0),
(6, 'پروژه شده', 4, '#28B8DA', 0),
(7, 'زباله', 5, '#28B8DA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_activity_log`
--

CREATE TABLE `tbllead_activity_log` (
  `id` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbllead_activity_log`
--

INSERT INTO `tbllead_activity_log` (`id`, `leadid`, `description`, `additional_data`, `date`, `staffid`, `full_name`, `custom_activity`) VALUES
(1, 1, 'not_lead_activity_created', '', '2022-09-01 13:42:41', 1, 'محمددرضا زمانی', 0),
(2, 2, 'not_lead_activity_created', '', '2022-09-01 16:36:36', 1, 'محمددرضا زمانی', 0),
(3, 3, 'not_lead_activity_created', '', '2022-09-01 16:46:54', 1, 'محمددرضا زمانی', 0),
(4, 4, 'not_lead_activity_created', '', '2022-09-01 16:54:52', 1, 'محمددرضا زمانی', 0),
(5, 5, 'not_lead_activity_created', '', '2022-09-01 16:56:49', 1, 'محمددرضا زمانی', 0),
(6, 6, 'not_lead_activity_created', '', '2022-09-01 16:59:45', 1, 'محمددرضا زمانی', 0),
(7, 7, 'not_lead_activity_created', '', '2022-09-01 17:11:17', 1, 'محمددرضا زمانی', 0),
(8, 7, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-01 17:11:17', 1, 'محمددرضا زمانی', 0),
(12, 9, 'not_lead_activity_created', '', '2022-09-01 17:48:16', 1, 'محمددرضا زمانی', 0),
(13, 9, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-01 17:48:16', 1, 'محمددرضا زمانی', 0),
(14, 9, 'not_lead_activity_added_attachment', '', '2022-09-01 18:10:28', 1, 'محمددرضا زمانی', 0),
(15, 10, 'not_lead_activity_created', '', '2022-09-01 19:53:15', 1, 'محمددرضا زمانی', 0),
(16, 11, 'not_lead_activity_created', '', '2022-09-04 14:00:36', 1, 'محمددرضا زمانی', 0),
(17, 12, 'not_lead_activity_created', '', '2022-09-04 14:04:31', 1, 'محمددرضا زمانی', 0),
(18, 13, 'not_lead_activity_created', '', '2022-09-04 14:06:47', 1, 'محمددرضا زمانی', 0),
(19, 13, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-04 14:06:47', 1, 'محمددرضا زمانی', 0),
(20, 14, 'not_lead_activity_created', '', '2022-09-04 14:11:56', 1, 'محمددرضا زمانی', 0),
(21, 14, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-04 14:11:56', 1, 'محمددرضا زمانی', 0),
(22, 15, 'not_lead_activity_created', '', '2022-09-04 14:59:29', 1, 'محمددرضا زمانی', 0),
(23, 16, 'not_lead_activity_created', '', '2022-09-04 15:01:34', 1, 'محمددرضا زمانی', 0),
(24, 17, 'not_lead_activity_created', '', '2022-09-04 16:59:50', 1, 'محمددرضا زمانی', 0),
(25, 18, 'not_lead_activity_created', '', '2022-09-04 17:00:27', 1, 'محمددرضا زمانی', 0),
(26, 243658, 'not_lead_activity_created', '', '2022-09-06 16:44:20', 1, 'محمددرضا زمانی', 0),
(27, 243658, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 16:44:20', 1, 'محمددرضا زمانی', 0),
(28, 243659, 'not_lead_activity_created', '', '2022-09-06 16:46:34', 1, 'محمددرضا زمانی', 0),
(29, 243659, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 16:46:35', 1, 'محمددرضا زمانی', 0),
(30, 243660, 'not_lead_activity_created', '', '2022-09-06 16:49:17', 1, 'محمددرضا زمانی', 0),
(31, 243660, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 16:49:17', 1, 'محمددرضا زمانی', 0),
(32, 243661, 'not_lead_activity_created', '', '2022-09-06 16:53:18', 1, 'محمددرضا زمانی', 0),
(33, 243662, 'not_lead_activity_created', '', '2022-09-06 16:54:10', 1, 'محمددرضا زمانی', 0),
(34, 243662, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 16:54:10', 1, 'محمددرضا زمانی', 0),
(35, 243663, 'not_lead_activity_created', '', '2022-09-06 17:00:15', 1, 'محمددرضا زمانی', 0),
(36, 243663, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 17:00:15', 1, 'محمددرضا زمانی', 0),
(37, 243664, 'not_lead_activity_created', '', '2022-09-06 17:49:46', 1, 'محمددرضا زمانی', 0),
(38, 243664, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 17:49:46', 1, 'محمددرضا زمانی', 0),
(39, 243665, 'not_lead_activity_created', '', '2022-09-06 18:46:43', 1, 'محمددرضا زمانی', 0),
(40, 243665, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 18:46:43', 1, 'محمددرضا زمانی', 0),
(41, 243666, 'not_lead_activity_created', '', '2022-09-06 18:48:11', 1, 'محمددرضا زمانی', 0),
(42, 243667, 'not_lead_activity_created', '', '2022-09-06 18:50:09', 1, 'محمددرضا زمانی', 0),
(43, 243668, 'not_lead_activity_created', '', '2022-09-06 18:54:02', 1, 'محمددرضا زمانی', 0),
(44, 243668, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 18:54:02', 1, 'محمددرضا زمانی', 0),
(45, 243669, 'not_lead_activity_created', '', '2022-09-06 18:54:36', 1, 'محمددرضا زمانی', 0),
(46, 243669, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 18:54:36', 1, 'محمددرضا زمانی', 0),
(47, 243670, 'not_lead_activity_created', '', '2022-09-06 18:57:05', 1, 'محمددرضا زمانی', 0),
(48, 243670, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 18:57:06', 1, 'محمددرضا زمانی', 0),
(49, 243671, 'not_lead_activity_created', '', '2022-09-06 18:58:02', 1, 'محمددرضا زمانی', 0),
(50, 243672, 'not_lead_activity_created', '', '2022-09-06 18:59:31', 1, 'محمددرضا زمانی', 0),
(51, 243673, 'not_lead_activity_created', '', '2022-09-06 19:00:38', 1, 'محمددرضا زمانی', 0),
(52, 243674, 'not_lead_activity_created', '', '2022-09-06 19:01:16', 1, 'محمددرضا زمانی', 0),
(53, 243675, 'not_lead_activity_created', '', '2022-09-06 19:04:33', 1, 'محمددرضا زمانی', 0),
(54, 243675, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 19:04:33', 1, 'محمددرضا زمانی', 0),
(55, 243676, 'not_lead_activity_created', '', '2022-09-06 19:05:14', 1, 'محمددرضا زمانی', 0),
(56, 243676, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-06 19:05:14', 1, 'محمددرضا زمانی', 0),
(57, 243677, 'not_lead_activity_created', '', '2022-09-07 00:38:44', 1, 'محمددرضا زمانی', 0),
(58, 243678, 'not_lead_activity_created', '', '2022-09-07 00:40:19', 1, 'محمددرضا زمانی', 0),
(59, 243678, 'not_lead_activity_assigned_to', 'a:2:{i:0;s:27:\"محمددرضا زمانی\";i:1;s:104:\"<a href=\"http://localhost/talash_crm/admin/profile/2\" target=\"_blank\">الناز زمانی غرقه</a>\";}', '2022-09-07 00:40:19', 1, 'محمددرضا زمانی', 0),
(60, 243679, 'not_lead_activity_created', '', '2022-10-08 01:31:39', 1, 'محمدرضا زمانی', 0),
(61, 243680, 'not_lead_activity_created', '', '2022-10-08 01:32:41', 1, 'محمدرضا زمانی', 0),
(62, 243675, 'not_activity_new_reminder_created', 'a:2:{i:0;s:25:\"محمدرضا زمانی\";i:1;s:19:\"2022-10-12 18:00:00\";}', '2022-10-12 16:45:56', 1, 'محمدرضا زمانی', 0),
(63, 243681, 'not_lead_activity_created', '', '2022-10-12 22:22:00', 3, 'محمد کاشانی', 0),
(64, 243676, 'not_lead_activity_added_attachment', '', '2022-11-03 20:05:22', 1, 'محمدرضا زمانی', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_integration_emails`
--

CREATE TABLE `tbllead_integration_emails` (
  `id` int(11) NOT NULL,
  `subject` mediumtext DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_attachment`
--

CREATE TABLE `tblmail_attachment` (
  `id` int(11) UNSIGNED NOT NULL,
  `mail_id` int(11) NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'inbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_inbox`
--

CREATE TABLE `tblmail_inbox` (
  `id` int(11) UNSIGNED NOT NULL,
  `from_staff_id` int(11) NOT NULL DEFAULT 0,
  `to_staff_id` int(11) NOT NULL DEFAULT 0,
  `to` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cc` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bcc` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `date_received` datetime NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `folder` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inbox',
  `stared` tinyint(1) NOT NULL DEFAULT 0,
  `important` tinyint(1) NOT NULL DEFAULT 0,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `from_email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_outbox`
--

CREATE TABLE `tblmail_outbox` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_staff_id` int(11) NOT NULL DEFAULT 0,
  `to` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cc` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bcc` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `date_sent` datetime NOT NULL,
  `stared` tinyint(1) NOT NULL DEFAULT 0,
  `important` tinyint(1) NOT NULL DEFAULT 0,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `reply_from_id` int(11) DEFAULT NULL,
  `reply_type` varchar(45) NOT NULL DEFAULT 'inbox',
  `draft` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmail_outbox`
--

INSERT INTO `tblmail_outbox` (`id`, `sender_staff_id`, `to`, `cc`, `bcc`, `sender_name`, `subject`, `body`, `has_attachment`, `date_sent`, `stared`, `important`, `trash`, `reply_from_id`, `reply_type`, `draft`) VALUES
(1, 1, 'mdrazamani@gmail.com', 'ss', NULL, 'mohammadreza zamani', 'سلام ', '<p>سلام</p>\n', 0, '2022-08-21 16:36:20', 0, 0, 0, NULL, 'inbox', 0),
(2, 1, '', '', NULL, 'mohammadreza zamani', '', '', 0, '2022-08-21 16:36:29', 0, 0, 0, NULL, 'inbox', 0),
(3, 1, '', '', NULL, 'mohammadreza zamani', '', '', 0, '2022-08-21 16:36:37', 0, 0, 0, NULL, 'inbox', 1),
(4, 1, '', '', NULL, 'mohammadreza zamani', '', '', 0, '2022-08-21 16:41:23', 0, 0, 0, NULL, 'inbox', 0),
(5, 1, '', '', NULL, 'mohammadreza zamani', '', '', 0, '2022-08-21 16:41:31', 0, 0, 0, NULL, 'inbox', 0),
(6, 3, 'mdrazamani@gmail.com', '', NULL, 'محمد کاشانی', 'hello', '<p>hello baby</p>\n', 0, '2022-11-02 20:37:19', 0, 0, 0, NULL, 'inbox', 0),
(7, 3, '', '', NULL, 'محمد کاشانی', '', '', 0, '2022-11-03 17:11:35', 0, 0, 1, NULL, 'inbox', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_queue`
--

CREATE TABLE `tblmail_queue` (
  `id` int(11) NOT NULL,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cc` text DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `alt_message` mediumtext DEFAULT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `attachments` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmigrations`
--

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(294);

-- --------------------------------------------------------

--
-- Table structure for table `tblmilestones`
--

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `description_visible_to_customer` tinyint(1) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `datecreated` date NOT NULL,
  `hide_from_customer` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmodules`
--

CREATE TABLE `tblmodules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(55) NOT NULL,
  `installed_version` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmodules`
--

INSERT INTO `tblmodules` (`id`, `module_name`, `installed_version`, `active`) VALUES
(1, 'hr_profile', '1.0.7', 1),
(2, 'purchase', '0', 1),
(3, 'warehouse', '1.2.9', 1),
(4, 'mailbox', '1.0.0', 1),
(5, 'exports', '1.0.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmz_bazargani`
--

CREATE TABLE `tblmz_bazargani` (
  `bazargani_id` int(11) NOT NULL,
  `bazargani_item_id` int(11) NOT NULL,
  `bazargani_project_id` int(11) DEFAULT NULL,
  `sell_price` varchar(200) DEFAULT NULL,
  `currency_type` varchar(150) DEFAULT NULL,
  `builder_country` varchar(150) DEFAULT NULL,
  `city_builder` varchar(150) DEFAULT NULL,
  `pay_type` varchar(150) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `tarkhis_type` varchar(150) DEFAULT NULL,
  `hs_code` varchar(150) DEFAULT NULL,
  `gomrok_price` varchar(150) DEFAULT NULL,
  `tarkhis_price` varchar(150) DEFAULT NULL,
  `taedee_ha` longtext DEFAULT NULL,
  `hamlo_naghl` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `added_from` int(11) DEFAULT NULL,
  `added_date` varchar(150) DEFAULT NULL,
  `bazargani_type` varchar(150) DEFAULT NULL,
  `faniProposal` longtext DEFAULT NULL,
  `havalePrice` int(11) DEFAULT NULL,
  `engagementArray` longtext DEFAULT NULL,
  `base_work` varchar(150) DEFAULT NULL,
  `base_route` varchar(150) DEFAULT NULL,
  `showCode` varchar(150) DEFAULT NULL,
  `sends` longtext DEFAULT NULL,
  `sell_count` int(11) DEFAULT NULL,
  `sell_count_plus` int(11) DEFAULT NULL,
  `havale_currencyType` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_comment_likes`
--

CREATE TABLE `tblnewsfeed_comment_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_posts`
--

CREATE TABLE `tblnewsfeed_posts` (
  `postid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnewsfeed_posts`
--

INSERT INTO `tblnewsfeed_posts` (`postid`, `creator`, `datecreated`, `visibility`, `content`, `pinned`, `datepinned`) VALUES
(1, 1, '2022-10-12 16:46:30', 'all', '', 0, NULL),
(2, 1, '2022-10-12 16:46:31', 'all', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_comments`
--

CREATE TABLE `tblnewsfeed_post_comments` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_likes`
--

CREATE TABLE `tblnewsfeed_post_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`id`, `rel_id`, `rel_type`, `description`, `date_contacted`, `addedfrom`, `dateadded`) VALUES
(1, 2, 'proposal', 'بچه ها مراقب این باشید حتما پرداخت کنه...', NULL, 1, '2022-08-23 15:59:25'),
(2, 1, 'pur_vendor', 'حواستون به این فروشنده باشه', NULL, 1, '2022-08-25 16:56:49'),
(3, 243675, 'lead', 'به به', NULL, 1, '2022-10-12 16:45:18'),
(4, 243675, 'lead', 'اره حتما...', NULL, 1, '2022-10-12 16:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `isread` int(11) NOT NULL DEFAULT 0,
  `isread_inline` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT 0,
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext DEFAULT NULL,
  `additional_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`id`, `isread`, `isread_inline`, `date`, `description`, `fromuserid`, `fromclientid`, `from_fullname`, `touserid`, `fromcompany`, `link`, `additional_data`) VALUES
(1, 1, 1, '2022-08-23 14:46:04', 'not_staff_added_as_project_member', 1, 0, 'mohammadreza zamani', 2, NULL, 'projects/view/1', 'a:1:{i:0;s:47:\"درخواست 3 عدد فلومتر اندرس\";}'),
(2, 1, 1, '2022-08-23 15:05:55', 'not_proposal_assigned_to_you', 1, 0, 'mohammadreza zamani', 2, NULL, 'proposals/list_proposals/1', 'a:1:{i:0;s:4:\"شس\";}'),
(3, 1, 1, '2022-08-23 15:58:10', 'not_proposal_assigned_to_you', 1, 0, 'mohammadreza zamani', 2, NULL, 'proposals/list_proposals/2', 'a:1:{i:0;s:19:\"پیش فاکتور\";}'),
(4, 1, 1, '2022-08-23 16:02:07', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/2', 'a:1:{i:0;s:10:\"PRO-000002\";}'),
(5, 1, 1, '2022-08-23 16:02:07', 'not_proposal_proposal_accepted', 0, 0, '', 2, 1, 'proposals/list_proposals/2', 'a:1:{i:0;s:10:\"PRO-000002\";}'),
(6, 1, 1, '2022-08-25 16:57:44', 'Purchase Quotation Added EST-000001', 1, 0, 'mohammadreza zamani', 1, NULL, 'purchase/quotations/1', 'a:1:{i:0;s:10:\"EST-000001\";}'),
(7, 1, 1, '2022-08-25 17:48:23', 'not_invoice_payment_recorded', 0, 0, '', 2, 1, 'invoices/list_invoices/4', 'a:1:{i:0;s:10:\"INV-000004\";}'),
(8, 1, 1, '2022-08-28 22:26:43', 'not_staff_added_as_project_member', 1, 0, 'محمددرضا زمانی', 2, NULL, 'projects/view/2', 'a:1:{i:0;s:8:\"تستی\";}'),
(9, 1, 1, '2022-09-01 17:11:17', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=7', 'a:1:{i:0;s:9:\"تست 10\";}'),
(10, 1, 1, '2022-09-01 17:31:30', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=8', 'a:1:{i:0;s:6:\"تست\";}'),
(11, 1, 1, '2022-09-01 17:48:16', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=9', 'a:1:{i:0;s:25:\"درخواست زیمنس\";}'),
(12, 1, 1, '2022-09-01 18:10:28', 'not_lead_added_attachment', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=9', 'a:1:{i:0;s:25:\"درخواست زیمنس\";}'),
(13, 1, 1, '2022-09-04 14:06:47', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=13', 'a:1:{i:0;s:21:\"درخواست 123212\";}'),
(14, 1, 1, '2022-09-04 14:11:56', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=14', 'a:1:{i:0;s:19:\"درخواست من\";}'),
(15, 1, 1, '2022-09-05 23:06:24', 'not_staff_added_as_project_member', 1, 0, 'محمددرضا زمانی', 2, NULL, 'projects/view/245646', 'a:1:{i:0;s:26:\"پروژه با اقلام\";}'),
(16, 1, 1, '2022-09-06 12:36:26', 'not_created_new_project_discussion', 1, 0, 'محمددرضا زمانی', 2, NULL, 'projects/view/245646?group=project_discussions&discussion_id=1', NULL),
(17, 1, 1, '2022-09-06 16:44:20', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243658', 'a:1:{i:0;s:23:\"درخواست امید\";}'),
(18, 1, 1, '2022-09-06 16:46:34', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243659', 'a:1:{i:0;s:23:\"درخواست خیام\";}'),
(19, 1, 1, '2022-09-06 16:49:17', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243660', 'a:1:{i:0;s:23:\"درخواست سعدی\";}'),
(20, 1, 1, '2022-09-06 16:54:10', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243662', 'a:1:{i:0;s:25:\"درخواست مهستی\";}'),
(21, 1, 1, '2022-09-06 17:00:15', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243663', 'a:1:{i:0;s:23:\"درخواست معین\";}'),
(22, 1, 1, '2022-09-06 17:49:46', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243664', 'a:1:{i:0;s:26:\"درخواست یا خدا\";}'),
(23, 1, 1, '2022-09-06 18:46:43', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243665', 'a:1:{i:0;s:29:\"درخواست محمدرضا\";}'),
(24, 1, 1, '2022-09-06 18:54:02', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243668', 'a:1:{i:0;s:25:\"درخواست دوستی\";}'),
(25, 1, 1, '2022-09-06 18:54:36', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243669', 'a:1:{i:0;s:40:\"درخواست درخواست دوستی\";}'),
(26, 1, 1, '2022-09-06 18:57:05', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243670', 'a:1:{i:0;s:28:\"درخواست صلح خوب\";}'),
(27, 1, 1, '2022-09-06 19:04:33', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243675', 'a:1:{i:0;s:16:\"درخواست 1\";}'),
(28, 1, 1, '2022-09-06 19:05:14', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243676', 'a:1:{i:0;s:16:\"درخواست 2\";}'),
(29, 1, 1, '2022-09-06 23:00:40', 'not_staff_added_as_project_member', 1, 0, 'محمددرضا زمانی', 2, NULL, 'projects/view/245647', 'a:1:{i:0;s:21:\"امید وارانه\";}'),
(30, 1, 1, '2022-09-06 23:04:19', 'not_staff_added_as_project_member', 1, 0, 'محمددرضا زمانی', 2, NULL, 'projects/view/245649', 'a:1:{i:0;s:15:\"علم شاهی\";}'),
(31, 1, 1, '2022-09-07 00:40:19', 'not_assigned_lead_to_you', 1, 0, 'محمددرضا زمانی', 2, NULL, '#leadid=243678', 'a:1:{i:0;s:30:\"درخواست خیلی خوب\";}'),
(32, 1, 0, '2022-09-25 11:35:42', 'not_commented_on_project_discussion', 1, 0, 'محمددرضا زمانی', 2, NULL, 'projects/view/245646?group=project_discussions&discussion_id=1', NULL),
(33, 1, 0, '2022-09-25 11:36:11', 'not_commented_on_project_discussion', 1, 0, 'محمددرضا زمانی', 2, NULL, 'projects/view/245646?group=project_discussions&discussion_id=1', NULL),
(34, 0, 0, '2022-10-12 16:46:30', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 7, NULL, '#postid=1', NULL),
(35, 1, 0, '2022-10-12 16:46:30', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 3, NULL, '#postid=1', NULL),
(36, 1, 0, '2022-10-12 16:46:30', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 4, NULL, '#postid=1', NULL),
(37, 0, 0, '2022-10-12 16:46:30', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 6, NULL, '#postid=1', NULL),
(38, 0, 0, '2022-10-12 16:46:30', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 5, NULL, '#postid=1', NULL),
(39, 0, 0, '2022-10-12 16:46:30', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 2, NULL, '#postid=1', NULL),
(40, 0, 0, '2022-10-12 16:46:31', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 7, NULL, '#postid=2', NULL),
(41, 1, 0, '2022-10-12 16:46:31', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 3, NULL, '#postid=2', NULL),
(42, 1, 0, '2022-10-12 16:46:31', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 4, NULL, '#postid=2', NULL),
(43, 0, 0, '2022-10-12 16:46:31', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 6, NULL, '#postid=2', NULL),
(44, 0, 0, '2022-10-12 16:46:31', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 5, NULL, '#postid=2', NULL),
(45, 0, 0, '2022-10-12 16:46:31', 'not_published_new_post', 1, 0, 'محمدرضا زمانی', 2, NULL, '#postid=2', NULL),
(46, 0, 0, '2022-11-03 20:05:22', 'not_lead_added_attachment', 1, 0, 'محمدرضا زمانی', 2, NULL, '#leadid=243676', 'a:1:{i:0;s:16:\"درخواست 2\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbloptions`
--

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'Y-m-d|%Y-%m-%d', 1),
(2, 'companyname', '', 1),
(3, 'services', '1', 1),
(4, 'maximum_allowed_ticket_attachments', '4', 1),
(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc,.zip,.rar', 1),
(6, 'staff_access_only_assigned_departments', '1', 1),
(7, 'use_knowledge_base', '1', 1),
(8, 'smtp_email', '', 1),
(9, 'smtp_password', '', 1),
(10, 'company_info_format', '{company_name}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(11, 'smtp_port', '', 1),
(12, 'smtp_host', '', 1),
(13, 'smtp_email_charset', 'utf-8', 1),
(14, 'default_timezone', 'Asia/Tehran', 1),
(15, 'clients_default_theme', 'perfex', 1),
(16, 'company_logo', '', 1),
(17, 'tables_pagination_limit', '25', 1),
(18, 'main_domain', '', 1),
(19, 'allow_registration', '0', 1),
(20, 'knowledge_base_without_registration', '1', 1),
(21, 'email_signature', '', 1),
(22, 'default_staff_role', '1', 1),
(23, 'newsfeed_maximum_files_upload', '10', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'INV-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'invoice_company_name', '', 1),
(29, 'invoice_company_address', '', 1),
(30, 'invoice_company_city', '', 1),
(31, 'invoice_company_country_code', '', 1),
(32, 'invoice_company_postal_code', '', 1),
(33, 'invoice_company_phonenumber', '', 1),
(34, 'view_invoice_only_logged_in', '0', 1),
(35, 'invoice_number_format', '1', 1),
(36, 'next_invoice_number', '5', 0),
(37, 'active_language', 'persian', 1),
(38, 'invoice_number_decrement_on_delete', '1', 1),
(39, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(40, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
(41, 'expenses_auto_operations_hour', '21', 1),
(42, 'delete_only_on_last_invoice', '1', 1),
(43, 'delete_only_on_last_estimate', '1', 1),
(44, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(45, 'allow_payment_amount_to_be_modified', '1', 1),
(46, 'rtl_support_client', '0', 1),
(47, 'limit_top_search_bar_results_to', '10', 1),
(48, 'estimate_prefix', 'EST-', 1),
(49, 'next_estimate_number', '2', 0),
(50, 'estimate_number_decrement_on_delete', '1', 1),
(51, 'estimate_number_format', '1', 1),
(52, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
(53, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(54, 'rtl_support_admin', '0', 1),
(55, 'last_cron_run', '', 1),
(56, 'show_sale_agent_on_estimates', '1', 1),
(57, 'show_sale_agent_on_invoices', '1', 1),
(58, 'predefined_terms_invoice', '', 1),
(59, 'predefined_terms_estimate', '', 1),
(60, 'default_task_priority', '2', 1),
(61, 'dropbox_app_key', '', 1),
(62, 'show_expense_reminders_on_calendar', '1', 1),
(63, 'only_show_contact_tickets', '1', 1),
(64, 'predefined_clientnote_invoice', '', 1),
(65, 'predefined_clientnote_estimate', '', 1),
(66, 'custom_pdf_logo_image_url', '', 1),
(67, 'favicon', '', 1),
(68, 'invoice_due_after', '30', 1),
(69, 'google_api_key', '', 1),
(70, 'google_calendar_main_calendar', '', 1),
(71, 'default_tax', 'a:0:{}', 1),
(72, 'show_invoices_on_calendar', '1', 1),
(73, 'show_estimates_on_calendar', '1', 1),
(74, 'show_contracts_on_calendar', '1', 1),
(75, 'show_tasks_on_calendar', '1', 1),
(76, 'show_customer_reminders_on_calendar', '1', 1),
(77, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
(78, 'show_lead_reminders_on_calendar', '1', 1),
(79, 'send_estimate_expiry_reminder_before', '4', 1),
(80, 'leads_default_source', '', 1),
(81, 'leads_default_status', '', 1),
(82, 'proposal_expiry_reminder_enabled', '1', 1),
(83, 'send_proposal_expiry_reminder_before', '4', 1),
(84, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(85, 'pdf_logo_width', '150', 1),
(86, 'access_tickets_to_none_staff_members', '0', 1),
(87, 'customer_default_country', '', 1),
(88, 'view_estimate_only_logged_in', '0', 1),
(89, 'show_status_on_pdf_ei', '1', 1),
(90, 'email_piping_only_replies', '0', 1),
(91, 'email_piping_only_registered', '0', 1),
(92, 'default_view_calendar', 'dayGridMonth', 1),
(93, 'email_piping_default_priority', '2', 1),
(94, 'total_to_words_lowercase', '0', 1),
(95, 'show_tax_per_item', '1', 1),
(96, 'total_to_words_enabled', '0', 1),
(97, 'receive_notification_on_new_ticket', '1', 0),
(98, 'autoclose_tickets_after', '0', 1),
(99, 'media_max_file_size_upload', '10', 1),
(100, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(101, 'show_projects_on_calendar', '1', 1),
(102, 'leads_kanban_limit', '50', 1),
(103, 'tasks_reminder_notification_before', '2', 1),
(104, 'pdf_font', 'freesans', 1),
(105, 'pdf_table_heading_color', '#323a45', 1),
(106, 'pdf_table_heading_text_color', '#ffffff', 1),
(107, 'pdf_font_size', '10', 1),
(108, 'default_leads_kanban_sort', 'leadorder', 1),
(109, 'default_leads_kanban_sort_type', 'asc', 1),
(110, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1),
(111, 'show_all_tasks_for_project_member', '1', 1),
(112, 'email_protocol', 'smtp', 1),
(113, 'calendar_first_day', '0', 1),
(114, 'recaptcha_secret_key', '', 1),
(115, 'show_help_on_setup_menu', '1', 1),
(116, 'show_proposals_on_calendar', '1', 1),
(117, 'smtp_encryption', '', 1),
(118, 'recaptcha_site_key', '', 1),
(119, 'smtp_username', '', 1),
(120, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
(121, 'notification_when_customer_pay_invoice', '1', 1),
(122, 'calendar_invoice_color', '#FF6F00', 1),
(123, 'calendar_estimate_color', '#FF6F00', 1),
(124, 'calendar_proposal_color', '#84c529', 1),
(125, 'new_task_auto_assign_current_member', '1', 1),
(126, 'calendar_reminder_color', '#03A9F4', 1),
(127, 'calendar_contract_color', '#B72974', 1),
(128, 'calendar_project_color', '#B72974', 1),
(129, 'update_info_message', '', 1),
(130, 'show_estimate_reminders_on_calendar', '1', 1),
(131, 'show_invoice_reminders_on_calendar', '1', 1),
(132, 'show_proposal_reminders_on_calendar', '1', 1),
(133, 'proposal_due_after', '7', 1),
(134, 'allow_customer_to_change_ticket_status', '0', 1),
(135, 'lead_lock_after_convert_to_customer', '0', 1),
(136, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(137, 'default_proposals_pipeline_sort_type', 'asc', 1),
(138, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(139, 'default_estimates_pipeline_sort_type', 'asc', 1),
(140, 'use_recaptcha_customers_area', '0', 1),
(141, 'remove_decimals_on_zero', '0', 1),
(142, 'remove_tax_name_from_item_table', '0', 1),
(143, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(144, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(145, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(146, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(147, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(148, 'swap_pdf_info', '0', 1),
(149, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(150, 'cron_has_run_from_cli', '0', 1),
(151, 'hide_cron_is_required_message', '0', 0),
(152, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(153, 'show_transactions_on_invoice_pdf', '1', 1),
(154, 'show_pay_link_to_invoice_pdf', '1', 1),
(155, 'tasks_kanban_limit', '50', 1),
(156, 'purchase_key', '', 1),
(157, 'estimates_pipeline_limit', '50', 1),
(158, 'proposals_pipeline_limit', '50', 1),
(159, 'proposal_number_prefix', 'PRO-', 1),
(160, 'number_padding_prefixes', '6', 1),
(161, 'show_page_number_on_pdf', '0', 1),
(162, 'calendar_events_limit', '4', 1),
(163, 'show_setup_menu_item_only_on_hover', '0', 1),
(164, 'company_requires_vat_number_field', '1', 1),
(165, 'company_is_required', '1', 1),
(166, 'allow_contact_to_delete_files', '0', 1),
(167, 'company_vat', '', 1),
(168, 'di', '1661078585', 1),
(169, 'invoice_auto_operations_hour', '21', 1),
(170, 'use_minified_files', '1', 1),
(171, 'only_own_files_contacts', '0', 1),
(172, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
(173, 'estimate_due_after', '7', 1),
(174, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(175, 'time_format', '24', 1),
(176, 'delete_activity_log_older_then', '1', 1),
(177, 'disable_language', '0', 1),
(178, 'company_state', '', 1),
(179, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(180, 'show_pdf_signature_invoice', '1', 0),
(181, 'show_pdf_signature_estimate', '1', 0),
(182, 'signature_image', '', 0),
(183, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(184, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(185, 'pusher_app_key', '', 1),
(186, 'pusher_app_secret', '', 1),
(187, 'pusher_app_id', '', 1),
(188, 'pusher_realtime_notifications', '0', 1),
(189, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(190, 'pusher_cluster', '', 1),
(191, 'show_table_export_button', 'to_all', 1),
(192, 'allow_staff_view_proposals_assigned', '1', 1),
(193, 'show_cloudflare_notice', '1', 0),
(194, 'task_modal_class', 'modal-lg', 1),
(195, 'lead_modal_class', 'modal-lg', 1),
(196, 'show_timesheets_overview_all_members_notice_admins', '0', 1),
(197, 'desktop_notifications', '0', 1),
(198, 'hide_notified_reminders_from_calendar', '1', 0),
(199, 'customer_info_format', '{company_name}<br />\r\n{street}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(200, 'timer_started_change_status_in_progress', '1', 0),
(201, 'default_ticket_reply_status', '3', 1),
(202, 'default_task_status', 'auto', 1),
(203, 'email_queue_skip_with_attachments', '1', 1),
(204, 'email_queue_enabled', '0', 1),
(205, 'last_email_queue_retry', '', 1),
(206, 'auto_dismiss_desktop_notifications_after', '0', 1),
(207, 'proposal_info_format', '{proposal_to}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{phone}<br />\r\n{email}', 0),
(208, 'ticket_replies_order', 'asc', 1),
(209, 'new_recurring_invoice_action', 'generate_and_send', 0),
(210, 'bcc_emails', '', 0);
INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(211, 'email_templates_language_checks', 'a:2001:{s:28:\"new-client-created-bulgarian\";i:1;s:32:\"invoice-send-to-client-bulgarian\";i:1;s:33:\"new-ticket-opened-admin-bulgarian\";i:1;s:22:\"ticket-reply-bulgarian\";i:1;s:29:\"ticket-autoresponse-bulgarian\";i:1;s:34:\"invoice-payment-recorded-bulgarian\";i:1;s:32:\"invoice-overdue-notice-bulgarian\";i:1;s:30:\"invoice-already-send-bulgarian\";i:1;s:34:\"new-ticket-created-staff-bulgarian\";i:1;s:33:\"estimate-send-to-client-bulgarian\";i:1;s:31:\"ticket-reply-to-admin-bulgarian\";i:1;s:31:\"estimate-already-send-bulgarian\";i:1;s:29:\"contract-expiration-bulgarian\";i:1;s:23:\"task-assigned-bulgarian\";i:1;s:32:\"task-added-as-follower-bulgarian\";i:1;s:24:\"task-commented-bulgarian\";i:1;s:31:\"task-added-attachment-bulgarian\";i:1;s:36:\"estimate-declined-to-staff-bulgarian\";i:1;s:36:\"estimate-accepted-to-staff-bulgarian\";i:1;s:34:\"proposal-client-accepted-bulgarian\";i:1;s:35:\"proposal-send-to-customer-bulgarian\";i:1;s:34:\"proposal-client-declined-bulgarian\";i:1;s:35:\"proposal-client-thank-you-bulgarian\";i:1;s:36:\"proposal-comment-to-client-bulgarian\";i:1;s:35:\"proposal-comment-to-admin-bulgarian\";i:1;s:40:\"estimate-thank-you-to-customer-bulgarian\";i:1;s:36:\"task-deadline-notification-bulgarian\";i:1;s:23:\"send-contract-bulgarian\";i:1;s:43:\"invoice-payment-recorded-to-staff-bulgarian\";i:1;s:27:\"auto-close-ticket-bulgarian\";i:1;s:49:\"new-project-discussion-created-to-staff-bulgarian\";i:1;s:52:\"new-project-discussion-created-to-customer-bulgarian\";i:1;s:47:\"new-project-file-uploaded-to-customer-bulgarian\";i:1;s:44:\"new-project-file-uploaded-to-staff-bulgarian\";i:1;s:52:\"new-project-discussion-comment-to-customer-bulgarian\";i:1;s:49:\"new-project-discussion-comment-to-staff-bulgarian\";i:1;s:39:\"staff-added-as-project-member-bulgarian\";i:1;s:34:\"estimate-expiry-reminder-bulgarian\";i:1;s:34:\"proposal-expiry-reminder-bulgarian\";i:1;s:27:\"new-staff-created-bulgarian\";i:1;s:33:\"contact-forgot-password-bulgarian\";i:1;s:34:\"contact-password-reseted-bulgarian\";i:1;s:30:\"contact-set-password-bulgarian\";i:1;s:31:\"staff-forgot-password-bulgarian\";i:1;s:32:\"staff-password-reseted-bulgarian\";i:1;s:29:\"assigned-to-project-bulgarian\";i:1;s:43:\"task-added-attachment-to-contacts-bulgarian\";i:1;s:36:\"task-commented-to-contacts-bulgarian\";i:1;s:27:\"new-lead-assigned-bulgarian\";i:1;s:26:\"client-statement-bulgarian\";i:1;s:34:\"ticket-assigned-to-admin-bulgarian\";i:1;s:40:\"new-client-registered-to-admin-bulgarian\";i:1;s:40:\"new-web-to-lead-form-submitted-bulgarian\";i:1;s:35:\"two-factor-authentication-bulgarian\";i:1;s:38:\"project-finished-to-customer-bulgarian\";i:1;s:36:\"credit-note-send-to-client-bulgarian\";i:1;s:37:\"task-status-change-to-staff-bulgarian\";i:1;s:40:\"task-status-change-to-contacts-bulgarian\";i:1;s:30:\"reminder-email-staff-bulgarian\";i:1;s:36:\"contract-comment-to-client-bulgarian\";i:1;s:35:\"contract-comment-to-admin-bulgarian\";i:1;s:27:\"send-subscription-bulgarian\";i:1;s:37:\"subscription-payment-failed-bulgarian\";i:1;s:31:\"subscription-canceled-bulgarian\";i:1;s:40:\"subscription-payment-succeeded-bulgarian\";i:1;s:38:\"contract-expiration-to-staff-bulgarian\";i:1;s:30:\"gdpr-removal-request-bulgarian\";i:1;s:35:\"gdpr-removal-request-lead-bulgarian\";i:1;s:39:\"client-registration-confirmed-bulgarian\";i:1;s:34:\"contract-signed-to-staff-bulgarian\";i:1;s:38:\"customer-subscribed-to-staff-bulgarian\";i:1;s:36:\"contact-verification-email-bulgarian\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-bulgarian\";i:1;s:37:\"event-notification-to-staff-bulgarian\";i:1;s:46:\"subscription-payment-requires-action-bulgarian\";i:1;s:28:\"invoice-due-notice-bulgarian\";i:1;s:45:\"estimate-request-submitted-to-staff-bulgarian\";i:1;s:35:\"estimate-request-assigned-bulgarian\";i:1;s:43:\"estimate-request-received-to-user-bulgarian\";i:1;s:35:\"non-billed-tasks-reminder-bulgarian\";i:1;s:33:\"invoices-batch-payments-bulgarian\";i:1;s:26:\"new-client-created-catalan\";i:1;s:30:\"invoice-send-to-client-catalan\";i:1;s:31:\"new-ticket-opened-admin-catalan\";i:1;s:20:\"ticket-reply-catalan\";i:1;s:27:\"ticket-autoresponse-catalan\";i:1;s:32:\"invoice-payment-recorded-catalan\";i:1;s:30:\"invoice-overdue-notice-catalan\";i:1;s:28:\"invoice-already-send-catalan\";i:1;s:32:\"new-ticket-created-staff-catalan\";i:1;s:31:\"estimate-send-to-client-catalan\";i:1;s:29:\"ticket-reply-to-admin-catalan\";i:1;s:29:\"estimate-already-send-catalan\";i:1;s:27:\"contract-expiration-catalan\";i:1;s:21:\"task-assigned-catalan\";i:1;s:30:\"task-added-as-follower-catalan\";i:1;s:22:\"task-commented-catalan\";i:1;s:29:\"task-added-attachment-catalan\";i:1;s:34:\"estimate-declined-to-staff-catalan\";i:1;s:34:\"estimate-accepted-to-staff-catalan\";i:1;s:32:\"proposal-client-accepted-catalan\";i:1;s:33:\"proposal-send-to-customer-catalan\";i:1;s:32:\"proposal-client-declined-catalan\";i:1;s:33:\"proposal-client-thank-you-catalan\";i:1;s:34:\"proposal-comment-to-client-catalan\";i:1;s:33:\"proposal-comment-to-admin-catalan\";i:1;s:38:\"estimate-thank-you-to-customer-catalan\";i:1;s:34:\"task-deadline-notification-catalan\";i:1;s:21:\"send-contract-catalan\";i:1;s:41:\"invoice-payment-recorded-to-staff-catalan\";i:1;s:25:\"auto-close-ticket-catalan\";i:1;s:47:\"new-project-discussion-created-to-staff-catalan\";i:1;s:50:\"new-project-discussion-created-to-customer-catalan\";i:1;s:45:\"new-project-file-uploaded-to-customer-catalan\";i:1;s:42:\"new-project-file-uploaded-to-staff-catalan\";i:1;s:50:\"new-project-discussion-comment-to-customer-catalan\";i:1;s:47:\"new-project-discussion-comment-to-staff-catalan\";i:1;s:37:\"staff-added-as-project-member-catalan\";i:1;s:32:\"estimate-expiry-reminder-catalan\";i:1;s:32:\"proposal-expiry-reminder-catalan\";i:1;s:25:\"new-staff-created-catalan\";i:1;s:31:\"contact-forgot-password-catalan\";i:1;s:32:\"contact-password-reseted-catalan\";i:1;s:28:\"contact-set-password-catalan\";i:1;s:29:\"staff-forgot-password-catalan\";i:1;s:30:\"staff-password-reseted-catalan\";i:1;s:27:\"assigned-to-project-catalan\";i:1;s:41:\"task-added-attachment-to-contacts-catalan\";i:1;s:34:\"task-commented-to-contacts-catalan\";i:1;s:25:\"new-lead-assigned-catalan\";i:1;s:24:\"client-statement-catalan\";i:1;s:32:\"ticket-assigned-to-admin-catalan\";i:1;s:38:\"new-client-registered-to-admin-catalan\";i:1;s:38:\"new-web-to-lead-form-submitted-catalan\";i:1;s:33:\"two-factor-authentication-catalan\";i:1;s:36:\"project-finished-to-customer-catalan\";i:1;s:34:\"credit-note-send-to-client-catalan\";i:1;s:35:\"task-status-change-to-staff-catalan\";i:1;s:38:\"task-status-change-to-contacts-catalan\";i:1;s:28:\"reminder-email-staff-catalan\";i:1;s:34:\"contract-comment-to-client-catalan\";i:1;s:33:\"contract-comment-to-admin-catalan\";i:1;s:25:\"send-subscription-catalan\";i:1;s:35:\"subscription-payment-failed-catalan\";i:1;s:29:\"subscription-canceled-catalan\";i:1;s:38:\"subscription-payment-succeeded-catalan\";i:1;s:36:\"contract-expiration-to-staff-catalan\";i:1;s:28:\"gdpr-removal-request-catalan\";i:1;s:33:\"gdpr-removal-request-lead-catalan\";i:1;s:37:\"client-registration-confirmed-catalan\";i:1;s:32:\"contract-signed-to-staff-catalan\";i:1;s:36:\"customer-subscribed-to-staff-catalan\";i:1;s:34:\"contact-verification-email-catalan\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-catalan\";i:1;s:35:\"event-notification-to-staff-catalan\";i:1;s:44:\"subscription-payment-requires-action-catalan\";i:1;s:26:\"invoice-due-notice-catalan\";i:1;s:43:\"estimate-request-submitted-to-staff-catalan\";i:1;s:33:\"estimate-request-assigned-catalan\";i:1;s:41:\"estimate-request-received-to-user-catalan\";i:1;s:33:\"non-billed-tasks-reminder-catalan\";i:1;s:31:\"invoices-batch-payments-catalan\";i:1;s:26:\"new-client-created-chinese\";i:1;s:30:\"invoice-send-to-client-chinese\";i:1;s:31:\"new-ticket-opened-admin-chinese\";i:1;s:20:\"ticket-reply-chinese\";i:1;s:27:\"ticket-autoresponse-chinese\";i:1;s:32:\"invoice-payment-recorded-chinese\";i:1;s:30:\"invoice-overdue-notice-chinese\";i:1;s:28:\"invoice-already-send-chinese\";i:1;s:32:\"new-ticket-created-staff-chinese\";i:1;s:31:\"estimate-send-to-client-chinese\";i:1;s:29:\"ticket-reply-to-admin-chinese\";i:1;s:29:\"estimate-already-send-chinese\";i:1;s:27:\"contract-expiration-chinese\";i:1;s:21:\"task-assigned-chinese\";i:1;s:30:\"task-added-as-follower-chinese\";i:1;s:22:\"task-commented-chinese\";i:1;s:29:\"task-added-attachment-chinese\";i:1;s:34:\"estimate-declined-to-staff-chinese\";i:1;s:34:\"estimate-accepted-to-staff-chinese\";i:1;s:32:\"proposal-client-accepted-chinese\";i:1;s:33:\"proposal-send-to-customer-chinese\";i:1;s:32:\"proposal-client-declined-chinese\";i:1;s:33:\"proposal-client-thank-you-chinese\";i:1;s:34:\"proposal-comment-to-client-chinese\";i:1;s:33:\"proposal-comment-to-admin-chinese\";i:1;s:38:\"estimate-thank-you-to-customer-chinese\";i:1;s:34:\"task-deadline-notification-chinese\";i:1;s:21:\"send-contract-chinese\";i:1;s:41:\"invoice-payment-recorded-to-staff-chinese\";i:1;s:25:\"auto-close-ticket-chinese\";i:1;s:47:\"new-project-discussion-created-to-staff-chinese\";i:1;s:50:\"new-project-discussion-created-to-customer-chinese\";i:1;s:45:\"new-project-file-uploaded-to-customer-chinese\";i:1;s:42:\"new-project-file-uploaded-to-staff-chinese\";i:1;s:50:\"new-project-discussion-comment-to-customer-chinese\";i:1;s:47:\"new-project-discussion-comment-to-staff-chinese\";i:1;s:37:\"staff-added-as-project-member-chinese\";i:1;s:32:\"estimate-expiry-reminder-chinese\";i:1;s:32:\"proposal-expiry-reminder-chinese\";i:1;s:25:\"new-staff-created-chinese\";i:1;s:31:\"contact-forgot-password-chinese\";i:1;s:32:\"contact-password-reseted-chinese\";i:1;s:28:\"contact-set-password-chinese\";i:1;s:29:\"staff-forgot-password-chinese\";i:1;s:30:\"staff-password-reseted-chinese\";i:1;s:27:\"assigned-to-project-chinese\";i:1;s:41:\"task-added-attachment-to-contacts-chinese\";i:1;s:34:\"task-commented-to-contacts-chinese\";i:1;s:25:\"new-lead-assigned-chinese\";i:1;s:24:\"client-statement-chinese\";i:1;s:32:\"ticket-assigned-to-admin-chinese\";i:1;s:38:\"new-client-registered-to-admin-chinese\";i:1;s:38:\"new-web-to-lead-form-submitted-chinese\";i:1;s:33:\"two-factor-authentication-chinese\";i:1;s:36:\"project-finished-to-customer-chinese\";i:1;s:34:\"credit-note-send-to-client-chinese\";i:1;s:35:\"task-status-change-to-staff-chinese\";i:1;s:38:\"task-status-change-to-contacts-chinese\";i:1;s:28:\"reminder-email-staff-chinese\";i:1;s:34:\"contract-comment-to-client-chinese\";i:1;s:33:\"contract-comment-to-admin-chinese\";i:1;s:25:\"send-subscription-chinese\";i:1;s:35:\"subscription-payment-failed-chinese\";i:1;s:29:\"subscription-canceled-chinese\";i:1;s:38:\"subscription-payment-succeeded-chinese\";i:1;s:36:\"contract-expiration-to-staff-chinese\";i:1;s:28:\"gdpr-removal-request-chinese\";i:1;s:33:\"gdpr-removal-request-lead-chinese\";i:1;s:37:\"client-registration-confirmed-chinese\";i:1;s:32:\"contract-signed-to-staff-chinese\";i:1;s:36:\"customer-subscribed-to-staff-chinese\";i:1;s:34:\"contact-verification-email-chinese\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-chinese\";i:1;s:35:\"event-notification-to-staff-chinese\";i:1;s:44:\"subscription-payment-requires-action-chinese\";i:1;s:26:\"invoice-due-notice-chinese\";i:1;s:43:\"estimate-request-submitted-to-staff-chinese\";i:1;s:33:\"estimate-request-assigned-chinese\";i:1;s:41:\"estimate-request-received-to-user-chinese\";i:1;s:33:\"non-billed-tasks-reminder-chinese\";i:1;s:31:\"invoices-batch-payments-chinese\";i:1;s:24:\"new-client-created-czech\";i:1;s:28:\"invoice-send-to-client-czech\";i:1;s:29:\"new-ticket-opened-admin-czech\";i:1;s:18:\"ticket-reply-czech\";i:1;s:25:\"ticket-autoresponse-czech\";i:1;s:30:\"invoice-payment-recorded-czech\";i:1;s:28:\"invoice-overdue-notice-czech\";i:1;s:26:\"invoice-already-send-czech\";i:1;s:30:\"new-ticket-created-staff-czech\";i:1;s:29:\"estimate-send-to-client-czech\";i:1;s:27:\"ticket-reply-to-admin-czech\";i:1;s:27:\"estimate-already-send-czech\";i:1;s:25:\"contract-expiration-czech\";i:1;s:19:\"task-assigned-czech\";i:1;s:28:\"task-added-as-follower-czech\";i:1;s:20:\"task-commented-czech\";i:1;s:27:\"task-added-attachment-czech\";i:1;s:32:\"estimate-declined-to-staff-czech\";i:1;s:32:\"estimate-accepted-to-staff-czech\";i:1;s:30:\"proposal-client-accepted-czech\";i:1;s:31:\"proposal-send-to-customer-czech\";i:1;s:30:\"proposal-client-declined-czech\";i:1;s:31:\"proposal-client-thank-you-czech\";i:1;s:32:\"proposal-comment-to-client-czech\";i:1;s:31:\"proposal-comment-to-admin-czech\";i:1;s:36:\"estimate-thank-you-to-customer-czech\";i:1;s:32:\"task-deadline-notification-czech\";i:1;s:19:\"send-contract-czech\";i:1;s:39:\"invoice-payment-recorded-to-staff-czech\";i:1;s:23:\"auto-close-ticket-czech\";i:1;s:45:\"new-project-discussion-created-to-staff-czech\";i:1;s:48:\"new-project-discussion-created-to-customer-czech\";i:1;s:43:\"new-project-file-uploaded-to-customer-czech\";i:1;s:40:\"new-project-file-uploaded-to-staff-czech\";i:1;s:48:\"new-project-discussion-comment-to-customer-czech\";i:1;s:45:\"new-project-discussion-comment-to-staff-czech\";i:1;s:35:\"staff-added-as-project-member-czech\";i:1;s:30:\"estimate-expiry-reminder-czech\";i:1;s:30:\"proposal-expiry-reminder-czech\";i:1;s:23:\"new-staff-created-czech\";i:1;s:29:\"contact-forgot-password-czech\";i:1;s:30:\"contact-password-reseted-czech\";i:1;s:26:\"contact-set-password-czech\";i:1;s:27:\"staff-forgot-password-czech\";i:1;s:28:\"staff-password-reseted-czech\";i:1;s:25:\"assigned-to-project-czech\";i:1;s:39:\"task-added-attachment-to-contacts-czech\";i:1;s:32:\"task-commented-to-contacts-czech\";i:1;s:23:\"new-lead-assigned-czech\";i:1;s:22:\"client-statement-czech\";i:1;s:30:\"ticket-assigned-to-admin-czech\";i:1;s:36:\"new-client-registered-to-admin-czech\";i:1;s:36:\"new-web-to-lead-form-submitted-czech\";i:1;s:31:\"two-factor-authentication-czech\";i:1;s:34:\"project-finished-to-customer-czech\";i:1;s:32:\"credit-note-send-to-client-czech\";i:1;s:33:\"task-status-change-to-staff-czech\";i:1;s:36:\"task-status-change-to-contacts-czech\";i:1;s:26:\"reminder-email-staff-czech\";i:1;s:32:\"contract-comment-to-client-czech\";i:1;s:31:\"contract-comment-to-admin-czech\";i:1;s:23:\"send-subscription-czech\";i:1;s:33:\"subscription-payment-failed-czech\";i:1;s:27:\"subscription-canceled-czech\";i:1;s:36:\"subscription-payment-succeeded-czech\";i:1;s:34:\"contract-expiration-to-staff-czech\";i:1;s:26:\"gdpr-removal-request-czech\";i:1;s:31:\"gdpr-removal-request-lead-czech\";i:1;s:35:\"client-registration-confirmed-czech\";i:1;s:30:\"contract-signed-to-staff-czech\";i:1;s:34:\"customer-subscribed-to-staff-czech\";i:1;s:32:\"contact-verification-email-czech\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-czech\";i:1;s:33:\"event-notification-to-staff-czech\";i:1;s:42:\"subscription-payment-requires-action-czech\";i:1;s:24:\"invoice-due-notice-czech\";i:1;s:41:\"estimate-request-submitted-to-staff-czech\";i:1;s:31:\"estimate-request-assigned-czech\";i:1;s:39:\"estimate-request-received-to-user-czech\";i:1;s:31:\"non-billed-tasks-reminder-czech\";i:1;s:29:\"invoices-batch-payments-czech\";i:1;s:24:\"new-client-created-dutch\";i:1;s:28:\"invoice-send-to-client-dutch\";i:1;s:29:\"new-ticket-opened-admin-dutch\";i:1;s:18:\"ticket-reply-dutch\";i:1;s:25:\"ticket-autoresponse-dutch\";i:1;s:30:\"invoice-payment-recorded-dutch\";i:1;s:28:\"invoice-overdue-notice-dutch\";i:1;s:26:\"invoice-already-send-dutch\";i:1;s:30:\"new-ticket-created-staff-dutch\";i:1;s:29:\"estimate-send-to-client-dutch\";i:1;s:27:\"ticket-reply-to-admin-dutch\";i:1;s:27:\"estimate-already-send-dutch\";i:1;s:25:\"contract-expiration-dutch\";i:1;s:19:\"task-assigned-dutch\";i:1;s:28:\"task-added-as-follower-dutch\";i:1;s:20:\"task-commented-dutch\";i:1;s:27:\"task-added-attachment-dutch\";i:1;s:32:\"estimate-declined-to-staff-dutch\";i:1;s:32:\"estimate-accepted-to-staff-dutch\";i:1;s:30:\"proposal-client-accepted-dutch\";i:1;s:31:\"proposal-send-to-customer-dutch\";i:1;s:30:\"proposal-client-declined-dutch\";i:1;s:31:\"proposal-client-thank-you-dutch\";i:1;s:32:\"proposal-comment-to-client-dutch\";i:1;s:31:\"proposal-comment-to-admin-dutch\";i:1;s:36:\"estimate-thank-you-to-customer-dutch\";i:1;s:32:\"task-deadline-notification-dutch\";i:1;s:19:\"send-contract-dutch\";i:1;s:39:\"invoice-payment-recorded-to-staff-dutch\";i:1;s:23:\"auto-close-ticket-dutch\";i:1;s:45:\"new-project-discussion-created-to-staff-dutch\";i:1;s:48:\"new-project-discussion-created-to-customer-dutch\";i:1;s:43:\"new-project-file-uploaded-to-customer-dutch\";i:1;s:40:\"new-project-file-uploaded-to-staff-dutch\";i:1;s:48:\"new-project-discussion-comment-to-customer-dutch\";i:1;s:45:\"new-project-discussion-comment-to-staff-dutch\";i:1;s:35:\"staff-added-as-project-member-dutch\";i:1;s:30:\"estimate-expiry-reminder-dutch\";i:1;s:30:\"proposal-expiry-reminder-dutch\";i:1;s:23:\"new-staff-created-dutch\";i:1;s:29:\"contact-forgot-password-dutch\";i:1;s:30:\"contact-password-reseted-dutch\";i:1;s:26:\"contact-set-password-dutch\";i:1;s:27:\"staff-forgot-password-dutch\";i:1;s:28:\"staff-password-reseted-dutch\";i:1;s:25:\"assigned-to-project-dutch\";i:1;s:39:\"task-added-attachment-to-contacts-dutch\";i:1;s:32:\"task-commented-to-contacts-dutch\";i:1;s:23:\"new-lead-assigned-dutch\";i:1;s:22:\"client-statement-dutch\";i:1;s:30:\"ticket-assigned-to-admin-dutch\";i:1;s:36:\"new-client-registered-to-admin-dutch\";i:1;s:36:\"new-web-to-lead-form-submitted-dutch\";i:1;s:31:\"two-factor-authentication-dutch\";i:1;s:34:\"project-finished-to-customer-dutch\";i:1;s:32:\"credit-note-send-to-client-dutch\";i:1;s:33:\"task-status-change-to-staff-dutch\";i:1;s:36:\"task-status-change-to-contacts-dutch\";i:1;s:26:\"reminder-email-staff-dutch\";i:1;s:32:\"contract-comment-to-client-dutch\";i:1;s:31:\"contract-comment-to-admin-dutch\";i:1;s:23:\"send-subscription-dutch\";i:1;s:33:\"subscription-payment-failed-dutch\";i:1;s:27:\"subscription-canceled-dutch\";i:1;s:36:\"subscription-payment-succeeded-dutch\";i:1;s:34:\"contract-expiration-to-staff-dutch\";i:1;s:26:\"gdpr-removal-request-dutch\";i:1;s:31:\"gdpr-removal-request-lead-dutch\";i:1;s:35:\"client-registration-confirmed-dutch\";i:1;s:30:\"contract-signed-to-staff-dutch\";i:1;s:34:\"customer-subscribed-to-staff-dutch\";i:1;s:32:\"contact-verification-email-dutch\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-dutch\";i:1;s:33:\"event-notification-to-staff-dutch\";i:1;s:42:\"subscription-payment-requires-action-dutch\";i:1;s:24:\"invoice-due-notice-dutch\";i:1;s:41:\"estimate-request-submitted-to-staff-dutch\";i:1;s:31:\"estimate-request-assigned-dutch\";i:1;s:39:\"estimate-request-received-to-user-dutch\";i:1;s:31:\"non-billed-tasks-reminder-dutch\";i:1;s:29:\"invoices-batch-payments-dutch\";i:1;s:25:\"new-client-created-french\";i:1;s:29:\"invoice-send-to-client-french\";i:1;s:30:\"new-ticket-opened-admin-french\";i:1;s:19:\"ticket-reply-french\";i:1;s:26:\"ticket-autoresponse-french\";i:1;s:31:\"invoice-payment-recorded-french\";i:1;s:29:\"invoice-overdue-notice-french\";i:1;s:27:\"invoice-already-send-french\";i:1;s:31:\"new-ticket-created-staff-french\";i:1;s:30:\"estimate-send-to-client-french\";i:1;s:28:\"ticket-reply-to-admin-french\";i:1;s:28:\"estimate-already-send-french\";i:1;s:26:\"contract-expiration-french\";i:1;s:20:\"task-assigned-french\";i:1;s:29:\"task-added-as-follower-french\";i:1;s:21:\"task-commented-french\";i:1;s:28:\"task-added-attachment-french\";i:1;s:33:\"estimate-declined-to-staff-french\";i:1;s:33:\"estimate-accepted-to-staff-french\";i:1;s:31:\"proposal-client-accepted-french\";i:1;s:32:\"proposal-send-to-customer-french\";i:1;s:31:\"proposal-client-declined-french\";i:1;s:32:\"proposal-client-thank-you-french\";i:1;s:33:\"proposal-comment-to-client-french\";i:1;s:32:\"proposal-comment-to-admin-french\";i:1;s:37:\"estimate-thank-you-to-customer-french\";i:1;s:33:\"task-deadline-notification-french\";i:1;s:20:\"send-contract-french\";i:1;s:40:\"invoice-payment-recorded-to-staff-french\";i:1;s:24:\"auto-close-ticket-french\";i:1;s:46:\"new-project-discussion-created-to-staff-french\";i:1;s:49:\"new-project-discussion-created-to-customer-french\";i:1;s:44:\"new-project-file-uploaded-to-customer-french\";i:1;s:41:\"new-project-file-uploaded-to-staff-french\";i:1;s:49:\"new-project-discussion-comment-to-customer-french\";i:1;s:46:\"new-project-discussion-comment-to-staff-french\";i:1;s:36:\"staff-added-as-project-member-french\";i:1;s:31:\"estimate-expiry-reminder-french\";i:1;s:31:\"proposal-expiry-reminder-french\";i:1;s:24:\"new-staff-created-french\";i:1;s:30:\"contact-forgot-password-french\";i:1;s:31:\"contact-password-reseted-french\";i:1;s:27:\"contact-set-password-french\";i:1;s:28:\"staff-forgot-password-french\";i:1;s:29:\"staff-password-reseted-french\";i:1;s:26:\"assigned-to-project-french\";i:1;s:40:\"task-added-attachment-to-contacts-french\";i:1;s:33:\"task-commented-to-contacts-french\";i:1;s:24:\"new-lead-assigned-french\";i:1;s:23:\"client-statement-french\";i:1;s:31:\"ticket-assigned-to-admin-french\";i:1;s:37:\"new-client-registered-to-admin-french\";i:1;s:37:\"new-web-to-lead-form-submitted-french\";i:1;s:32:\"two-factor-authentication-french\";i:1;s:35:\"project-finished-to-customer-french\";i:1;s:33:\"credit-note-send-to-client-french\";i:1;s:34:\"task-status-change-to-staff-french\";i:1;s:37:\"task-status-change-to-contacts-french\";i:1;s:27:\"reminder-email-staff-french\";i:1;s:33:\"contract-comment-to-client-french\";i:1;s:32:\"contract-comment-to-admin-french\";i:1;s:24:\"send-subscription-french\";i:1;s:34:\"subscription-payment-failed-french\";i:1;s:28:\"subscription-canceled-french\";i:1;s:37:\"subscription-payment-succeeded-french\";i:1;s:35:\"contract-expiration-to-staff-french\";i:1;s:27:\"gdpr-removal-request-french\";i:1;s:32:\"gdpr-removal-request-lead-french\";i:1;s:36:\"client-registration-confirmed-french\";i:1;s:31:\"contract-signed-to-staff-french\";i:1;s:35:\"customer-subscribed-to-staff-french\";i:1;s:33:\"contact-verification-email-french\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-french\";i:1;s:34:\"event-notification-to-staff-french\";i:1;s:43:\"subscription-payment-requires-action-french\";i:1;s:25:\"invoice-due-notice-french\";i:1;s:42:\"estimate-request-submitted-to-staff-french\";i:1;s:32:\"estimate-request-assigned-french\";i:1;s:40:\"estimate-request-received-to-user-french\";i:1;s:32:\"non-billed-tasks-reminder-french\";i:1;s:30:\"invoices-batch-payments-french\";i:1;s:25:\"new-client-created-german\";i:1;s:29:\"invoice-send-to-client-german\";i:1;s:30:\"new-ticket-opened-admin-german\";i:1;s:19:\"ticket-reply-german\";i:1;s:26:\"ticket-autoresponse-german\";i:1;s:31:\"invoice-payment-recorded-german\";i:1;s:29:\"invoice-overdue-notice-german\";i:1;s:27:\"invoice-already-send-german\";i:1;s:31:\"new-ticket-created-staff-german\";i:1;s:30:\"estimate-send-to-client-german\";i:1;s:28:\"ticket-reply-to-admin-german\";i:1;s:28:\"estimate-already-send-german\";i:1;s:26:\"contract-expiration-german\";i:1;s:20:\"task-assigned-german\";i:1;s:29:\"task-added-as-follower-german\";i:1;s:21:\"task-commented-german\";i:1;s:28:\"task-added-attachment-german\";i:1;s:33:\"estimate-declined-to-staff-german\";i:1;s:33:\"estimate-accepted-to-staff-german\";i:1;s:31:\"proposal-client-accepted-german\";i:1;s:32:\"proposal-send-to-customer-german\";i:1;s:31:\"proposal-client-declined-german\";i:1;s:32:\"proposal-client-thank-you-german\";i:1;s:33:\"proposal-comment-to-client-german\";i:1;s:32:\"proposal-comment-to-admin-german\";i:1;s:37:\"estimate-thank-you-to-customer-german\";i:1;s:33:\"task-deadline-notification-german\";i:1;s:20:\"send-contract-german\";i:1;s:40:\"invoice-payment-recorded-to-staff-german\";i:1;s:24:\"auto-close-ticket-german\";i:1;s:46:\"new-project-discussion-created-to-staff-german\";i:1;s:49:\"new-project-discussion-created-to-customer-german\";i:1;s:44:\"new-project-file-uploaded-to-customer-german\";i:1;s:41:\"new-project-file-uploaded-to-staff-german\";i:1;s:49:\"new-project-discussion-comment-to-customer-german\";i:1;s:46:\"new-project-discussion-comment-to-staff-german\";i:1;s:36:\"staff-added-as-project-member-german\";i:1;s:31:\"estimate-expiry-reminder-german\";i:1;s:31:\"proposal-expiry-reminder-german\";i:1;s:24:\"new-staff-created-german\";i:1;s:30:\"contact-forgot-password-german\";i:1;s:31:\"contact-password-reseted-german\";i:1;s:27:\"contact-set-password-german\";i:1;s:28:\"staff-forgot-password-german\";i:1;s:29:\"staff-password-reseted-german\";i:1;s:26:\"assigned-to-project-german\";i:1;s:40:\"task-added-attachment-to-contacts-german\";i:1;s:33:\"task-commented-to-contacts-german\";i:1;s:24:\"new-lead-assigned-german\";i:1;s:23:\"client-statement-german\";i:1;s:31:\"ticket-assigned-to-admin-german\";i:1;s:37:\"new-client-registered-to-admin-german\";i:1;s:37:\"new-web-to-lead-form-submitted-german\";i:1;s:32:\"two-factor-authentication-german\";i:1;s:35:\"project-finished-to-customer-german\";i:1;s:33:\"credit-note-send-to-client-german\";i:1;s:34:\"task-status-change-to-staff-german\";i:1;s:37:\"task-status-change-to-contacts-german\";i:1;s:27:\"reminder-email-staff-german\";i:1;s:33:\"contract-comment-to-client-german\";i:1;s:32:\"contract-comment-to-admin-german\";i:1;s:24:\"send-subscription-german\";i:1;s:34:\"subscription-payment-failed-german\";i:1;s:28:\"subscription-canceled-german\";i:1;s:37:\"subscription-payment-succeeded-german\";i:1;s:35:\"contract-expiration-to-staff-german\";i:1;s:27:\"gdpr-removal-request-german\";i:1;s:32:\"gdpr-removal-request-lead-german\";i:1;s:36:\"client-registration-confirmed-german\";i:1;s:31:\"contract-signed-to-staff-german\";i:1;s:35:\"customer-subscribed-to-staff-german\";i:1;s:33:\"contact-verification-email-german\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-german\";i:1;s:34:\"event-notification-to-staff-german\";i:1;s:43:\"subscription-payment-requires-action-german\";i:1;s:25:\"invoice-due-notice-german\";i:1;s:42:\"estimate-request-submitted-to-staff-german\";i:1;s:32:\"estimate-request-assigned-german\";i:1;s:40:\"estimate-request-received-to-user-german\";i:1;s:32:\"non-billed-tasks-reminder-german\";i:1;s:30:\"invoices-batch-payments-german\";i:1;s:24:\"new-client-created-greek\";i:1;s:28:\"invoice-send-to-client-greek\";i:1;s:29:\"new-ticket-opened-admin-greek\";i:1;s:18:\"ticket-reply-greek\";i:1;s:25:\"ticket-autoresponse-greek\";i:1;s:30:\"invoice-payment-recorded-greek\";i:1;s:28:\"invoice-overdue-notice-greek\";i:1;s:26:\"invoice-already-send-greek\";i:1;s:30:\"new-ticket-created-staff-greek\";i:1;s:29:\"estimate-send-to-client-greek\";i:1;s:27:\"ticket-reply-to-admin-greek\";i:1;s:27:\"estimate-already-send-greek\";i:1;s:25:\"contract-expiration-greek\";i:1;s:19:\"task-assigned-greek\";i:1;s:28:\"task-added-as-follower-greek\";i:1;s:20:\"task-commented-greek\";i:1;s:27:\"task-added-attachment-greek\";i:1;s:32:\"estimate-declined-to-staff-greek\";i:1;s:32:\"estimate-accepted-to-staff-greek\";i:1;s:30:\"proposal-client-accepted-greek\";i:1;s:31:\"proposal-send-to-customer-greek\";i:1;s:30:\"proposal-client-declined-greek\";i:1;s:31:\"proposal-client-thank-you-greek\";i:1;s:32:\"proposal-comment-to-client-greek\";i:1;s:31:\"proposal-comment-to-admin-greek\";i:1;s:36:\"estimate-thank-you-to-customer-greek\";i:1;s:32:\"task-deadline-notification-greek\";i:1;s:19:\"send-contract-greek\";i:1;s:39:\"invoice-payment-recorded-to-staff-greek\";i:1;s:23:\"auto-close-ticket-greek\";i:1;s:45:\"new-project-discussion-created-to-staff-greek\";i:1;s:48:\"new-project-discussion-created-to-customer-greek\";i:1;s:43:\"new-project-file-uploaded-to-customer-greek\";i:1;s:40:\"new-project-file-uploaded-to-staff-greek\";i:1;s:48:\"new-project-discussion-comment-to-customer-greek\";i:1;s:45:\"new-project-discussion-comment-to-staff-greek\";i:1;s:35:\"staff-added-as-project-member-greek\";i:1;s:30:\"estimate-expiry-reminder-greek\";i:1;s:30:\"proposal-expiry-reminder-greek\";i:1;s:23:\"new-staff-created-greek\";i:1;s:29:\"contact-forgot-password-greek\";i:1;s:30:\"contact-password-reseted-greek\";i:1;s:26:\"contact-set-password-greek\";i:1;s:27:\"staff-forgot-password-greek\";i:1;s:28:\"staff-password-reseted-greek\";i:1;s:25:\"assigned-to-project-greek\";i:1;s:39:\"task-added-attachment-to-contacts-greek\";i:1;s:32:\"task-commented-to-contacts-greek\";i:1;s:23:\"new-lead-assigned-greek\";i:1;s:22:\"client-statement-greek\";i:1;s:30:\"ticket-assigned-to-admin-greek\";i:1;s:36:\"new-client-registered-to-admin-greek\";i:1;s:36:\"new-web-to-lead-form-submitted-greek\";i:1;s:31:\"two-factor-authentication-greek\";i:1;s:34:\"project-finished-to-customer-greek\";i:1;s:32:\"credit-note-send-to-client-greek\";i:1;s:33:\"task-status-change-to-staff-greek\";i:1;s:36:\"task-status-change-to-contacts-greek\";i:1;s:26:\"reminder-email-staff-greek\";i:1;s:32:\"contract-comment-to-client-greek\";i:1;s:31:\"contract-comment-to-admin-greek\";i:1;s:23:\"send-subscription-greek\";i:1;s:33:\"subscription-payment-failed-greek\";i:1;s:27:\"subscription-canceled-greek\";i:1;s:36:\"subscription-payment-succeeded-greek\";i:1;s:34:\"contract-expiration-to-staff-greek\";i:1;s:26:\"gdpr-removal-request-greek\";i:1;s:31:\"gdpr-removal-request-lead-greek\";i:1;s:35:\"client-registration-confirmed-greek\";i:1;s:30:\"contract-signed-to-staff-greek\";i:1;s:34:\"customer-subscribed-to-staff-greek\";i:1;s:32:\"contact-verification-email-greek\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-greek\";i:1;s:33:\"event-notification-to-staff-greek\";i:1;s:42:\"subscription-payment-requires-action-greek\";i:1;s:24:\"invoice-due-notice-greek\";i:1;s:41:\"estimate-request-submitted-to-staff-greek\";i:1;s:31:\"estimate-request-assigned-greek\";i:1;s:39:\"estimate-request-received-to-user-greek\";i:1;s:31:\"non-billed-tasks-reminder-greek\";i:1;s:29:\"invoices-batch-payments-greek\";i:1;s:28:\"new-client-created-indonesia\";i:1;s:32:\"invoice-send-to-client-indonesia\";i:1;s:33:\"new-ticket-opened-admin-indonesia\";i:1;s:22:\"ticket-reply-indonesia\";i:1;s:29:\"ticket-autoresponse-indonesia\";i:1;s:34:\"invoice-payment-recorded-indonesia\";i:1;s:32:\"invoice-overdue-notice-indonesia\";i:1;s:30:\"invoice-already-send-indonesia\";i:1;s:34:\"new-ticket-created-staff-indonesia\";i:1;s:33:\"estimate-send-to-client-indonesia\";i:1;s:31:\"ticket-reply-to-admin-indonesia\";i:1;s:31:\"estimate-already-send-indonesia\";i:1;s:29:\"contract-expiration-indonesia\";i:1;s:23:\"task-assigned-indonesia\";i:1;s:32:\"task-added-as-follower-indonesia\";i:1;s:24:\"task-commented-indonesia\";i:1;s:31:\"task-added-attachment-indonesia\";i:1;s:36:\"estimate-declined-to-staff-indonesia\";i:1;s:36:\"estimate-accepted-to-staff-indonesia\";i:1;s:34:\"proposal-client-accepted-indonesia\";i:1;s:35:\"proposal-send-to-customer-indonesia\";i:1;s:34:\"proposal-client-declined-indonesia\";i:1;s:35:\"proposal-client-thank-you-indonesia\";i:1;s:36:\"proposal-comment-to-client-indonesia\";i:1;s:35:\"proposal-comment-to-admin-indonesia\";i:1;s:40:\"estimate-thank-you-to-customer-indonesia\";i:1;s:36:\"task-deadline-notification-indonesia\";i:1;s:23:\"send-contract-indonesia\";i:1;s:43:\"invoice-payment-recorded-to-staff-indonesia\";i:1;s:27:\"auto-close-ticket-indonesia\";i:1;s:49:\"new-project-discussion-created-to-staff-indonesia\";i:1;s:52:\"new-project-discussion-created-to-customer-indonesia\";i:1;s:47:\"new-project-file-uploaded-to-customer-indonesia\";i:1;s:44:\"new-project-file-uploaded-to-staff-indonesia\";i:1;s:52:\"new-project-discussion-comment-to-customer-indonesia\";i:1;s:49:\"new-project-discussion-comment-to-staff-indonesia\";i:1;s:39:\"staff-added-as-project-member-indonesia\";i:1;s:34:\"estimate-expiry-reminder-indonesia\";i:1;s:34:\"proposal-expiry-reminder-indonesia\";i:1;s:27:\"new-staff-created-indonesia\";i:1;s:33:\"contact-forgot-password-indonesia\";i:1;s:34:\"contact-password-reseted-indonesia\";i:1;s:30:\"contact-set-password-indonesia\";i:1;s:31:\"staff-forgot-password-indonesia\";i:1;s:32:\"staff-password-reseted-indonesia\";i:1;s:29:\"assigned-to-project-indonesia\";i:1;s:43:\"task-added-attachment-to-contacts-indonesia\";i:1;s:36:\"task-commented-to-contacts-indonesia\";i:1;s:27:\"new-lead-assigned-indonesia\";i:1;s:26:\"client-statement-indonesia\";i:1;s:34:\"ticket-assigned-to-admin-indonesia\";i:1;s:40:\"new-client-registered-to-admin-indonesia\";i:1;s:40:\"new-web-to-lead-form-submitted-indonesia\";i:1;s:35:\"two-factor-authentication-indonesia\";i:1;s:38:\"project-finished-to-customer-indonesia\";i:1;s:36:\"credit-note-send-to-client-indonesia\";i:1;s:37:\"task-status-change-to-staff-indonesia\";i:1;s:40:\"task-status-change-to-contacts-indonesia\";i:1;s:30:\"reminder-email-staff-indonesia\";i:1;s:36:\"contract-comment-to-client-indonesia\";i:1;s:35:\"contract-comment-to-admin-indonesia\";i:1;s:27:\"send-subscription-indonesia\";i:1;s:37:\"subscription-payment-failed-indonesia\";i:1;s:31:\"subscription-canceled-indonesia\";i:1;s:40:\"subscription-payment-succeeded-indonesia\";i:1;s:38:\"contract-expiration-to-staff-indonesia\";i:1;s:30:\"gdpr-removal-request-indonesia\";i:1;s:35:\"gdpr-removal-request-lead-indonesia\";i:1;s:39:\"client-registration-confirmed-indonesia\";i:1;s:34:\"contract-signed-to-staff-indonesia\";i:1;s:38:\"customer-subscribed-to-staff-indonesia\";i:1;s:36:\"contact-verification-email-indonesia\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-indonesia\";i:1;s:37:\"event-notification-to-staff-indonesia\";i:1;s:46:\"subscription-payment-requires-action-indonesia\";i:1;s:28:\"invoice-due-notice-indonesia\";i:1;s:45:\"estimate-request-submitted-to-staff-indonesia\";i:1;s:35:\"estimate-request-assigned-indonesia\";i:1;s:43:\"estimate-request-received-to-user-indonesia\";i:1;s:35:\"non-billed-tasks-reminder-indonesia\";i:1;s:33:\"invoices-batch-payments-indonesia\";i:1;s:26:\"new-client-created-italian\";i:1;s:30:\"invoice-send-to-client-italian\";i:1;s:31:\"new-ticket-opened-admin-italian\";i:1;s:20:\"ticket-reply-italian\";i:1;s:27:\"ticket-autoresponse-italian\";i:1;s:32:\"invoice-payment-recorded-italian\";i:1;s:30:\"invoice-overdue-notice-italian\";i:1;s:28:\"invoice-already-send-italian\";i:1;s:32:\"new-ticket-created-staff-italian\";i:1;s:31:\"estimate-send-to-client-italian\";i:1;s:29:\"ticket-reply-to-admin-italian\";i:1;s:29:\"estimate-already-send-italian\";i:1;s:27:\"contract-expiration-italian\";i:1;s:21:\"task-assigned-italian\";i:1;s:30:\"task-added-as-follower-italian\";i:1;s:22:\"task-commented-italian\";i:1;s:29:\"task-added-attachment-italian\";i:1;s:34:\"estimate-declined-to-staff-italian\";i:1;s:34:\"estimate-accepted-to-staff-italian\";i:1;s:32:\"proposal-client-accepted-italian\";i:1;s:33:\"proposal-send-to-customer-italian\";i:1;s:32:\"proposal-client-declined-italian\";i:1;s:33:\"proposal-client-thank-you-italian\";i:1;s:34:\"proposal-comment-to-client-italian\";i:1;s:33:\"proposal-comment-to-admin-italian\";i:1;s:38:\"estimate-thank-you-to-customer-italian\";i:1;s:34:\"task-deadline-notification-italian\";i:1;s:21:\"send-contract-italian\";i:1;s:41:\"invoice-payment-recorded-to-staff-italian\";i:1;s:25:\"auto-close-ticket-italian\";i:1;s:47:\"new-project-discussion-created-to-staff-italian\";i:1;s:50:\"new-project-discussion-created-to-customer-italian\";i:1;s:45:\"new-project-file-uploaded-to-customer-italian\";i:1;s:42:\"new-project-file-uploaded-to-staff-italian\";i:1;s:50:\"new-project-discussion-comment-to-customer-italian\";i:1;s:47:\"new-project-discussion-comment-to-staff-italian\";i:1;s:37:\"staff-added-as-project-member-italian\";i:1;s:32:\"estimate-expiry-reminder-italian\";i:1;s:32:\"proposal-expiry-reminder-italian\";i:1;s:25:\"new-staff-created-italian\";i:1;s:31:\"contact-forgot-password-italian\";i:1;s:32:\"contact-password-reseted-italian\";i:1;s:28:\"contact-set-password-italian\";i:1;s:29:\"staff-forgot-password-italian\";i:1;s:30:\"staff-password-reseted-italian\";i:1;s:27:\"assigned-to-project-italian\";i:1;s:41:\"task-added-attachment-to-contacts-italian\";i:1;s:34:\"task-commented-to-contacts-italian\";i:1;s:25:\"new-lead-assigned-italian\";i:1;s:24:\"client-statement-italian\";i:1;s:32:\"ticket-assigned-to-admin-italian\";i:1;s:38:\"new-client-registered-to-admin-italian\";i:1;s:38:\"new-web-to-lead-form-submitted-italian\";i:1;s:33:\"two-factor-authentication-italian\";i:1;s:36:\"project-finished-to-customer-italian\";i:1;s:34:\"credit-note-send-to-client-italian\";i:1;s:35:\"task-status-change-to-staff-italian\";i:1;s:38:\"task-status-change-to-contacts-italian\";i:1;s:28:\"reminder-email-staff-italian\";i:1;s:34:\"contract-comment-to-client-italian\";i:1;s:33:\"contract-comment-to-admin-italian\";i:1;s:25:\"send-subscription-italian\";i:1;s:35:\"subscription-payment-failed-italian\";i:1;s:29:\"subscription-canceled-italian\";i:1;s:38:\"subscription-payment-succeeded-italian\";i:1;s:36:\"contract-expiration-to-staff-italian\";i:1;s:28:\"gdpr-removal-request-italian\";i:1;s:33:\"gdpr-removal-request-lead-italian\";i:1;s:37:\"client-registration-confirmed-italian\";i:1;s:32:\"contract-signed-to-staff-italian\";i:1;s:36:\"customer-subscribed-to-staff-italian\";i:1;s:34:\"contact-verification-email-italian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-italian\";i:1;s:35:\"event-notification-to-staff-italian\";i:1;s:44:\"subscription-payment-requires-action-italian\";i:1;s:26:\"invoice-due-notice-italian\";i:1;s:43:\"estimate-request-submitted-to-staff-italian\";i:1;s:33:\"estimate-request-assigned-italian\";i:1;s:41:\"estimate-request-received-to-user-italian\";i:1;s:33:\"non-billed-tasks-reminder-italian\";i:1;s:31:\"invoices-batch-payments-italian\";i:1;s:27:\"new-client-created-japanese\";i:1;s:31:\"invoice-send-to-client-japanese\";i:1;s:32:\"new-ticket-opened-admin-japanese\";i:1;s:21:\"ticket-reply-japanese\";i:1;s:28:\"ticket-autoresponse-japanese\";i:1;s:33:\"invoice-payment-recorded-japanese\";i:1;s:31:\"invoice-overdue-notice-japanese\";i:1;s:29:\"invoice-already-send-japanese\";i:1;s:33:\"new-ticket-created-staff-japanese\";i:1;s:32:\"estimate-send-to-client-japanese\";i:1;s:30:\"ticket-reply-to-admin-japanese\";i:1;s:30:\"estimate-already-send-japanese\";i:1;s:28:\"contract-expiration-japanese\";i:1;s:22:\"task-assigned-japanese\";i:1;s:31:\"task-added-as-follower-japanese\";i:1;s:23:\"task-commented-japanese\";i:1;s:30:\"task-added-attachment-japanese\";i:1;s:35:\"estimate-declined-to-staff-japanese\";i:1;s:35:\"estimate-accepted-to-staff-japanese\";i:1;s:33:\"proposal-client-accepted-japanese\";i:1;s:34:\"proposal-send-to-customer-japanese\";i:1;s:33:\"proposal-client-declined-japanese\";i:1;s:34:\"proposal-client-thank-you-japanese\";i:1;s:35:\"proposal-comment-to-client-japanese\";i:1;s:34:\"proposal-comment-to-admin-japanese\";i:1;s:39:\"estimate-thank-you-to-customer-japanese\";i:1;s:35:\"task-deadline-notification-japanese\";i:1;s:22:\"send-contract-japanese\";i:1;s:42:\"invoice-payment-recorded-to-staff-japanese\";i:1;s:26:\"auto-close-ticket-japanese\";i:1;s:48:\"new-project-discussion-created-to-staff-japanese\";i:1;s:51:\"new-project-discussion-created-to-customer-japanese\";i:1;s:46:\"new-project-file-uploaded-to-customer-japanese\";i:1;s:43:\"new-project-file-uploaded-to-staff-japanese\";i:1;s:51:\"new-project-discussion-comment-to-customer-japanese\";i:1;s:48:\"new-project-discussion-comment-to-staff-japanese\";i:1;s:38:\"staff-added-as-project-member-japanese\";i:1;s:33:\"estimate-expiry-reminder-japanese\";i:1;s:33:\"proposal-expiry-reminder-japanese\";i:1;s:26:\"new-staff-created-japanese\";i:1;s:32:\"contact-forgot-password-japanese\";i:1;s:33:\"contact-password-reseted-japanese\";i:1;s:29:\"contact-set-password-japanese\";i:1;s:30:\"staff-forgot-password-japanese\";i:1;s:31:\"staff-password-reseted-japanese\";i:1;s:28:\"assigned-to-project-japanese\";i:1;s:42:\"task-added-attachment-to-contacts-japanese\";i:1;s:35:\"task-commented-to-contacts-japanese\";i:1;s:26:\"new-lead-assigned-japanese\";i:1;s:25:\"client-statement-japanese\";i:1;s:33:\"ticket-assigned-to-admin-japanese\";i:1;s:39:\"new-client-registered-to-admin-japanese\";i:1;s:39:\"new-web-to-lead-form-submitted-japanese\";i:1;s:34:\"two-factor-authentication-japanese\";i:1;s:37:\"project-finished-to-customer-japanese\";i:1;s:35:\"credit-note-send-to-client-japanese\";i:1;s:36:\"task-status-change-to-staff-japanese\";i:1;s:39:\"task-status-change-to-contacts-japanese\";i:1;s:29:\"reminder-email-staff-japanese\";i:1;s:35:\"contract-comment-to-client-japanese\";i:1;s:34:\"contract-comment-to-admin-japanese\";i:1;s:26:\"send-subscription-japanese\";i:1;s:36:\"subscription-payment-failed-japanese\";i:1;s:30:\"subscription-canceled-japanese\";i:1;s:39:\"subscription-payment-succeeded-japanese\";i:1;s:37:\"contract-expiration-to-staff-japanese\";i:1;s:29:\"gdpr-removal-request-japanese\";i:1;s:34:\"gdpr-removal-request-lead-japanese\";i:1;s:38:\"client-registration-confirmed-japanese\";i:1;s:33:\"contract-signed-to-staff-japanese\";i:1;s:37:\"customer-subscribed-to-staff-japanese\";i:1;s:35:\"contact-verification-email-japanese\";i:1;s:52:\"new-customer-profile-file-uploaded-to-staff-japanese\";i:1;s:36:\"event-notification-to-staff-japanese\";i:1;s:45:\"subscription-payment-requires-action-japanese\";i:1;s:27:\"invoice-due-notice-japanese\";i:1;s:44:\"estimate-request-submitted-to-staff-japanese\";i:1;s:34:\"estimate-request-assigned-japanese\";i:1;s:42:\"estimate-request-received-to-user-japanese\";i:1;s:34:\"non-billed-tasks-reminder-japanese\";i:1;s:32:\"invoices-batch-payments-japanese\";i:1;s:26:\"new-client-created-persian\";i:1;s:30:\"invoice-send-to-client-persian\";i:1;s:31:\"new-ticket-opened-admin-persian\";i:1;s:20:\"ticket-reply-persian\";i:1;s:27:\"ticket-autoresponse-persian\";i:1;s:32:\"invoice-payment-recorded-persian\";i:1;s:30:\"invoice-overdue-notice-persian\";i:1;s:28:\"invoice-already-send-persian\";i:1;s:32:\"new-ticket-created-staff-persian\";i:1;s:31:\"estimate-send-to-client-persian\";i:1;s:29:\"ticket-reply-to-admin-persian\";i:1;s:29:\"estimate-already-send-persian\";i:1;s:27:\"contract-expiration-persian\";i:1;s:21:\"task-assigned-persian\";i:1;s:30:\"task-added-as-follower-persian\";i:1;s:22:\"task-commented-persian\";i:1;s:29:\"task-added-attachment-persian\";i:1;s:34:\"estimate-declined-to-staff-persian\";i:1;s:34:\"estimate-accepted-to-staff-persian\";i:1;s:32:\"proposal-client-accepted-persian\";i:1;s:33:\"proposal-send-to-customer-persian\";i:1;s:32:\"proposal-client-declined-persian\";i:1;s:33:\"proposal-client-thank-you-persian\";i:1;s:34:\"proposal-comment-to-client-persian\";i:1;s:33:\"proposal-comment-to-admin-persian\";i:1;s:38:\"estimate-thank-you-to-customer-persian\";i:1;s:34:\"task-deadline-notification-persian\";i:1;s:21:\"send-contract-persian\";i:1;s:41:\"invoice-payment-recorded-to-staff-persian\";i:1;s:25:\"auto-close-ticket-persian\";i:1;s:47:\"new-project-discussion-created-to-staff-persian\";i:1;s:50:\"new-project-discussion-created-to-customer-persian\";i:1;s:45:\"new-project-file-uploaded-to-customer-persian\";i:1;s:42:\"new-project-file-uploaded-to-staff-persian\";i:1;s:50:\"new-project-discussion-comment-to-customer-persian\";i:1;s:47:\"new-project-discussion-comment-to-staff-persian\";i:1;s:37:\"staff-added-as-project-member-persian\";i:1;s:32:\"estimate-expiry-reminder-persian\";i:1;s:32:\"proposal-expiry-reminder-persian\";i:1;s:25:\"new-staff-created-persian\";i:1;s:31:\"contact-forgot-password-persian\";i:1;s:32:\"contact-password-reseted-persian\";i:1;s:28:\"contact-set-password-persian\";i:1;s:29:\"staff-forgot-password-persian\";i:1;s:30:\"staff-password-reseted-persian\";i:1;s:27:\"assigned-to-project-persian\";i:1;s:41:\"task-added-attachment-to-contacts-persian\";i:1;s:34:\"task-commented-to-contacts-persian\";i:1;s:25:\"new-lead-assigned-persian\";i:1;s:24:\"client-statement-persian\";i:1;s:32:\"ticket-assigned-to-admin-persian\";i:1;s:38:\"new-client-registered-to-admin-persian\";i:1;s:38:\"new-web-to-lead-form-submitted-persian\";i:1;s:33:\"two-factor-authentication-persian\";i:1;s:36:\"project-finished-to-customer-persian\";i:1;s:34:\"credit-note-send-to-client-persian\";i:1;s:35:\"task-status-change-to-staff-persian\";i:1;s:38:\"task-status-change-to-contacts-persian\";i:1;s:28:\"reminder-email-staff-persian\";i:1;s:34:\"contract-comment-to-client-persian\";i:1;s:33:\"contract-comment-to-admin-persian\";i:1;s:25:\"send-subscription-persian\";i:1;s:35:\"subscription-payment-failed-persian\";i:1;s:29:\"subscription-canceled-persian\";i:1;s:38:\"subscription-payment-succeeded-persian\";i:1;s:36:\"contract-expiration-to-staff-persian\";i:1;s:28:\"gdpr-removal-request-persian\";i:1;s:33:\"gdpr-removal-request-lead-persian\";i:1;s:37:\"client-registration-confirmed-persian\";i:1;s:32:\"contract-signed-to-staff-persian\";i:1;s:36:\"customer-subscribed-to-staff-persian\";i:1;s:34:\"contact-verification-email-persian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-persian\";i:1;s:35:\"event-notification-to-staff-persian\";i:1;s:44:\"subscription-payment-requires-action-persian\";i:1;s:26:\"invoice-due-notice-persian\";i:1;s:43:\"estimate-request-submitted-to-staff-persian\";i:1;s:33:\"estimate-request-assigned-persian\";i:1;s:41:\"estimate-request-received-to-user-persian\";i:1;s:33:\"non-billed-tasks-reminder-persian\";i:1;s:31:\"invoices-batch-payments-persian\";i:1;s:25:\"new-client-created-polish\";i:1;s:29:\"invoice-send-to-client-polish\";i:1;s:30:\"new-ticket-opened-admin-polish\";i:1;s:19:\"ticket-reply-polish\";i:1;s:26:\"ticket-autoresponse-polish\";i:1;s:31:\"invoice-payment-recorded-polish\";i:1;s:29:\"invoice-overdue-notice-polish\";i:1;s:27:\"invoice-already-send-polish\";i:1;s:31:\"new-ticket-created-staff-polish\";i:1;s:30:\"estimate-send-to-client-polish\";i:1;s:28:\"ticket-reply-to-admin-polish\";i:1;s:28:\"estimate-already-send-polish\";i:1;s:26:\"contract-expiration-polish\";i:1;s:20:\"task-assigned-polish\";i:1;s:29:\"task-added-as-follower-polish\";i:1;s:21:\"task-commented-polish\";i:1;s:28:\"task-added-attachment-polish\";i:1;s:33:\"estimate-declined-to-staff-polish\";i:1;s:33:\"estimate-accepted-to-staff-polish\";i:1;s:31:\"proposal-client-accepted-polish\";i:1;s:32:\"proposal-send-to-customer-polish\";i:1;s:31:\"proposal-client-declined-polish\";i:1;s:32:\"proposal-client-thank-you-polish\";i:1;s:33:\"proposal-comment-to-client-polish\";i:1;s:32:\"proposal-comment-to-admin-polish\";i:1;s:37:\"estimate-thank-you-to-customer-polish\";i:1;s:33:\"task-deadline-notification-polish\";i:1;s:20:\"send-contract-polish\";i:1;s:40:\"invoice-payment-recorded-to-staff-polish\";i:1;s:24:\"auto-close-ticket-polish\";i:1;s:46:\"new-project-discussion-created-to-staff-polish\";i:1;s:49:\"new-project-discussion-created-to-customer-polish\";i:1;s:44:\"new-project-file-uploaded-to-customer-polish\";i:1;s:41:\"new-project-file-uploaded-to-staff-polish\";i:1;s:49:\"new-project-discussion-comment-to-customer-polish\";i:1;s:46:\"new-project-discussion-comment-to-staff-polish\";i:1;s:36:\"staff-added-as-project-member-polish\";i:1;s:31:\"estimate-expiry-reminder-polish\";i:1;s:31:\"proposal-expiry-reminder-polish\";i:1;s:24:\"new-staff-created-polish\";i:1;s:30:\"contact-forgot-password-polish\";i:1;s:31:\"contact-password-reseted-polish\";i:1;s:27:\"contact-set-password-polish\";i:1;s:28:\"staff-forgot-password-polish\";i:1;s:29:\"staff-password-reseted-polish\";i:1;s:26:\"assigned-to-project-polish\";i:1;s:40:\"task-added-attachment-to-contacts-polish\";i:1;s:33:\"task-commented-to-contacts-polish\";i:1;s:24:\"new-lead-assigned-polish\";i:1;s:23:\"client-statement-polish\";i:1;s:31:\"ticket-assigned-to-admin-polish\";i:1;s:37:\"new-client-registered-to-admin-polish\";i:1;s:37:\"new-web-to-lead-form-submitted-polish\";i:1;s:32:\"two-factor-authentication-polish\";i:1;s:35:\"project-finished-to-customer-polish\";i:1;s:33:\"credit-note-send-to-client-polish\";i:1;s:34:\"task-status-change-to-staff-polish\";i:1;s:37:\"task-status-change-to-contacts-polish\";i:1;s:27:\"reminder-email-staff-polish\";i:1;s:33:\"contract-comment-to-client-polish\";i:1;s:32:\"contract-comment-to-admin-polish\";i:1;s:24:\"send-subscription-polish\";i:1;s:34:\"subscription-payment-failed-polish\";i:1;s:28:\"subscription-canceled-polish\";i:1;s:37:\"subscription-payment-succeeded-polish\";i:1;s:35:\"contract-expiration-to-staff-polish\";i:1;s:27:\"gdpr-removal-request-polish\";i:1;s:32:\"gdpr-removal-request-lead-polish\";i:1;s:36:\"client-registration-confirmed-polish\";i:1;s:31:\"contract-signed-to-staff-polish\";i:1;s:35:\"customer-subscribed-to-staff-polish\";i:1;s:33:\"contact-verification-email-polish\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-polish\";i:1;s:34:\"event-notification-to-staff-polish\";i:1;s:43:\"subscription-payment-requires-action-polish\";i:1;s:25:\"invoice-due-notice-polish\";i:1;s:42:\"estimate-request-submitted-to-staff-polish\";i:1;s:32:\"estimate-request-assigned-polish\";i:1;s:40:\"estimate-request-received-to-user-polish\";i:1;s:32:\"non-billed-tasks-reminder-polish\";i:1;s:30:\"invoices-batch-payments-polish\";i:1;s:29:\"new-client-created-portuguese\";i:1;s:33:\"invoice-send-to-client-portuguese\";i:1;s:34:\"new-ticket-opened-admin-portuguese\";i:1;s:23:\"ticket-reply-portuguese\";i:1;s:30:\"ticket-autoresponse-portuguese\";i:1;s:35:\"invoice-payment-recorded-portuguese\";i:1;s:33:\"invoice-overdue-notice-portuguese\";i:1;s:31:\"invoice-already-send-portuguese\";i:1;s:35:\"new-ticket-created-staff-portuguese\";i:1;s:34:\"estimate-send-to-client-portuguese\";i:1;s:32:\"ticket-reply-to-admin-portuguese\";i:1;s:32:\"estimate-already-send-portuguese\";i:1;s:30:\"contract-expiration-portuguese\";i:1;s:24:\"task-assigned-portuguese\";i:1;s:33:\"task-added-as-follower-portuguese\";i:1;s:25:\"task-commented-portuguese\";i:1;s:32:\"task-added-attachment-portuguese\";i:1;s:37:\"estimate-declined-to-staff-portuguese\";i:1;s:37:\"estimate-accepted-to-staff-portuguese\";i:1;s:35:\"proposal-client-accepted-portuguese\";i:1;s:36:\"proposal-send-to-customer-portuguese\";i:1;s:35:\"proposal-client-declined-portuguese\";i:1;s:36:\"proposal-client-thank-you-portuguese\";i:1;s:37:\"proposal-comment-to-client-portuguese\";i:1;s:36:\"proposal-comment-to-admin-portuguese\";i:1;s:41:\"estimate-thank-you-to-customer-portuguese\";i:1;s:37:\"task-deadline-notification-portuguese\";i:1;s:24:\"send-contract-portuguese\";i:1;s:44:\"invoice-payment-recorded-to-staff-portuguese\";i:1;s:28:\"auto-close-ticket-portuguese\";i:1;s:50:\"new-project-discussion-created-to-staff-portuguese\";i:1;s:53:\"new-project-discussion-created-to-customer-portuguese\";i:1;s:48:\"new-project-file-uploaded-to-customer-portuguese\";i:1;s:45:\"new-project-file-uploaded-to-staff-portuguese\";i:1;s:53:\"new-project-discussion-comment-to-customer-portuguese\";i:1;s:50:\"new-project-discussion-comment-to-staff-portuguese\";i:1;s:40:\"staff-added-as-project-member-portuguese\";i:1;s:35:\"estimate-expiry-reminder-portuguese\";i:1;s:35:\"proposal-expiry-reminder-portuguese\";i:1;s:28:\"new-staff-created-portuguese\";i:1;s:34:\"contact-forgot-password-portuguese\";i:1;s:35:\"contact-password-reseted-portuguese\";i:1;s:31:\"contact-set-password-portuguese\";i:1;s:32:\"staff-forgot-password-portuguese\";i:1;s:33:\"staff-password-reseted-portuguese\";i:1;s:30:\"assigned-to-project-portuguese\";i:1;s:44:\"task-added-attachment-to-contacts-portuguese\";i:1;s:37:\"task-commented-to-contacts-portuguese\";i:1;s:28:\"new-lead-assigned-portuguese\";i:1;s:27:\"client-statement-portuguese\";i:1;s:35:\"ticket-assigned-to-admin-portuguese\";i:1;s:41:\"new-client-registered-to-admin-portuguese\";i:1;s:41:\"new-web-to-lead-form-submitted-portuguese\";i:1;s:36:\"two-factor-authentication-portuguese\";i:1;s:39:\"project-finished-to-customer-portuguese\";i:1;s:37:\"credit-note-send-to-client-portuguese\";i:1;s:38:\"task-status-change-to-staff-portuguese\";i:1;s:41:\"task-status-change-to-contacts-portuguese\";i:1;s:31:\"reminder-email-staff-portuguese\";i:1;s:37:\"contract-comment-to-client-portuguese\";i:1;s:36:\"contract-comment-to-admin-portuguese\";i:1;s:28:\"send-subscription-portuguese\";i:1;s:38:\"subscription-payment-failed-portuguese\";i:1;s:32:\"subscription-canceled-portuguese\";i:1;s:41:\"subscription-payment-succeeded-portuguese\";i:1;s:39:\"contract-expiration-to-staff-portuguese\";i:1;s:31:\"gdpr-removal-request-portuguese\";i:1;s:36:\"gdpr-removal-request-lead-portuguese\";i:1;s:40:\"client-registration-confirmed-portuguese\";i:1;s:35:\"contract-signed-to-staff-portuguese\";i:1;s:39:\"customer-subscribed-to-staff-portuguese\";i:1;s:37:\"contact-verification-email-portuguese\";i:1;s:54:\"new-customer-profile-file-uploaded-to-staff-portuguese\";i:1;s:38:\"event-notification-to-staff-portuguese\";i:1;s:47:\"subscription-payment-requires-action-portuguese\";i:1;s:29:\"invoice-due-notice-portuguese\";i:1;s:46:\"estimate-request-submitted-to-staff-portuguese\";i:1;s:36:\"estimate-request-assigned-portuguese\";i:1;s:44:\"estimate-request-received-to-user-portuguese\";i:1;s:36:\"non-billed-tasks-reminder-portuguese\";i:1;s:34:\"invoices-batch-payments-portuguese\";i:1;s:32:\"new-client-created-portuguese_br\";i:1;s:36:\"invoice-send-to-client-portuguese_br\";i:1;s:37:\"new-ticket-opened-admin-portuguese_br\";i:1;s:26:\"ticket-reply-portuguese_br\";i:1;s:33:\"ticket-autoresponse-portuguese_br\";i:1;s:38:\"invoice-payment-recorded-portuguese_br\";i:1;s:36:\"invoice-overdue-notice-portuguese_br\";i:1;s:34:\"invoice-already-send-portuguese_br\";i:1;s:38:\"new-ticket-created-staff-portuguese_br\";i:1;s:37:\"estimate-send-to-client-portuguese_br\";i:1;s:35:\"ticket-reply-to-admin-portuguese_br\";i:1;s:35:\"estimate-already-send-portuguese_br\";i:1;s:33:\"contract-expiration-portuguese_br\";i:1;s:27:\"task-assigned-portuguese_br\";i:1;s:36:\"task-added-as-follower-portuguese_br\";i:1;s:28:\"task-commented-portuguese_br\";i:1;s:35:\"task-added-attachment-portuguese_br\";i:1;s:40:\"estimate-declined-to-staff-portuguese_br\";i:1;s:40:\"estimate-accepted-to-staff-portuguese_br\";i:1;s:38:\"proposal-client-accepted-portuguese_br\";i:1;s:39:\"proposal-send-to-customer-portuguese_br\";i:1;s:38:\"proposal-client-declined-portuguese_br\";i:1;s:39:\"proposal-client-thank-you-portuguese_br\";i:1;s:40:\"proposal-comment-to-client-portuguese_br\";i:1;s:39:\"proposal-comment-to-admin-portuguese_br\";i:1;s:44:\"estimate-thank-you-to-customer-portuguese_br\";i:1;s:40:\"task-deadline-notification-portuguese_br\";i:1;s:27:\"send-contract-portuguese_br\";i:1;s:47:\"invoice-payment-recorded-to-staff-portuguese_br\";i:1;s:31:\"auto-close-ticket-portuguese_br\";i:1;s:53:\"new-project-discussion-created-to-staff-portuguese_br\";i:1;s:56:\"new-project-discussion-created-to-customer-portuguese_br\";i:1;s:51:\"new-project-file-uploaded-to-customer-portuguese_br\";i:1;s:48:\"new-project-file-uploaded-to-staff-portuguese_br\";i:1;s:56:\"new-project-discussion-comment-to-customer-portuguese_br\";i:1;s:53:\"new-project-discussion-comment-to-staff-portuguese_br\";i:1;s:43:\"staff-added-as-project-member-portuguese_br\";i:1;s:38:\"estimate-expiry-reminder-portuguese_br\";i:1;s:38:\"proposal-expiry-reminder-portuguese_br\";i:1;s:31:\"new-staff-created-portuguese_br\";i:1;s:37:\"contact-forgot-password-portuguese_br\";i:1;s:38:\"contact-password-reseted-portuguese_br\";i:1;s:34:\"contact-set-password-portuguese_br\";i:1;s:35:\"staff-forgot-password-portuguese_br\";i:1;s:36:\"staff-password-reseted-portuguese_br\";i:1;s:33:\"assigned-to-project-portuguese_br\";i:1;s:47:\"task-added-attachment-to-contacts-portuguese_br\";i:1;s:40:\"task-commented-to-contacts-portuguese_br\";i:1;s:31:\"new-lead-assigned-portuguese_br\";i:1;s:30:\"client-statement-portuguese_br\";i:1;s:38:\"ticket-assigned-to-admin-portuguese_br\";i:1;s:44:\"new-client-registered-to-admin-portuguese_br\";i:1;s:44:\"new-web-to-lead-form-submitted-portuguese_br\";i:1;s:39:\"two-factor-authentication-portuguese_br\";i:1;s:42:\"project-finished-to-customer-portuguese_br\";i:1;s:40:\"credit-note-send-to-client-portuguese_br\";i:1;s:41:\"task-status-change-to-staff-portuguese_br\";i:1;s:44:\"task-status-change-to-contacts-portuguese_br\";i:1;s:34:\"reminder-email-staff-portuguese_br\";i:1;s:40:\"contract-comment-to-client-portuguese_br\";i:1;s:39:\"contract-comment-to-admin-portuguese_br\";i:1;s:31:\"send-subscription-portuguese_br\";i:1;s:41:\"subscription-payment-failed-portuguese_br\";i:1;s:35:\"subscription-canceled-portuguese_br\";i:1;s:44:\"subscription-payment-succeeded-portuguese_br\";i:1;s:42:\"contract-expiration-to-staff-portuguese_br\";i:1;s:34:\"gdpr-removal-request-portuguese_br\";i:1;s:39:\"gdpr-removal-request-lead-portuguese_br\";i:1;s:43:\"client-registration-confirmed-portuguese_br\";i:1;s:38:\"contract-signed-to-staff-portuguese_br\";i:1;s:42:\"customer-subscribed-to-staff-portuguese_br\";i:1;s:40:\"contact-verification-email-portuguese_br\";i:1;s:57:\"new-customer-profile-file-uploaded-to-staff-portuguese_br\";i:1;s:41:\"event-notification-to-staff-portuguese_br\";i:1;s:50:\"subscription-payment-requires-action-portuguese_br\";i:1;s:32:\"invoice-due-notice-portuguese_br\";i:1;s:49:\"estimate-request-submitted-to-staff-portuguese_br\";i:1;s:39:\"estimate-request-assigned-portuguese_br\";i:1;s:47:\"estimate-request-received-to-user-portuguese_br\";i:1;s:39:\"non-billed-tasks-reminder-portuguese_br\";i:1;s:37:\"invoices-batch-payments-portuguese_br\";i:1;s:27:\"new-client-created-romanian\";i:1;s:31:\"invoice-send-to-client-romanian\";i:1;s:32:\"new-ticket-opened-admin-romanian\";i:1;s:21:\"ticket-reply-romanian\";i:1;s:28:\"ticket-autoresponse-romanian\";i:1;s:33:\"invoice-payment-recorded-romanian\";i:1;s:31:\"invoice-overdue-notice-romanian\";i:1;s:29:\"invoice-already-send-romanian\";i:1;s:33:\"new-ticket-created-staff-romanian\";i:1;s:32:\"estimate-send-to-client-romanian\";i:1;s:30:\"ticket-reply-to-admin-romanian\";i:1;s:30:\"estimate-already-send-romanian\";i:1;s:28:\"contract-expiration-romanian\";i:1;s:22:\"task-assigned-romanian\";i:1;s:31:\"task-added-as-follower-romanian\";i:1;s:23:\"task-commented-romanian\";i:1;s:30:\"task-added-attachment-romanian\";i:1;s:35:\"estimate-declined-to-staff-romanian\";i:1;s:35:\"estimate-accepted-to-staff-romanian\";i:1;s:33:\"proposal-client-accepted-romanian\";i:1;s:34:\"proposal-send-to-customer-romanian\";i:1;s:33:\"proposal-client-declined-romanian\";i:1;s:34:\"proposal-client-thank-you-romanian\";i:1;s:35:\"proposal-comment-to-client-romanian\";i:1;s:34:\"proposal-comment-to-admin-romanian\";i:1;s:39:\"estimate-thank-you-to-customer-romanian\";i:1;s:35:\"task-deadline-notification-romanian\";i:1;s:22:\"send-contract-romanian\";i:1;s:42:\"invoice-payment-recorded-to-staff-romanian\";i:1;s:26:\"auto-close-ticket-romanian\";i:1;s:48:\"new-project-discussion-created-to-staff-romanian\";i:1;s:51:\"new-project-discussion-created-to-customer-romanian\";i:1;s:46:\"new-project-file-uploaded-to-customer-romanian\";i:1;s:43:\"new-project-file-uploaded-to-staff-romanian\";i:1;s:51:\"new-project-discussion-comment-to-customer-romanian\";i:1;s:48:\"new-project-discussion-comment-to-staff-romanian\";i:1;s:38:\"staff-added-as-project-member-romanian\";i:1;s:33:\"estimate-expiry-reminder-romanian\";i:1;s:33:\"proposal-expiry-reminder-romanian\";i:1;s:26:\"new-staff-created-romanian\";i:1;s:32:\"contact-forgot-password-romanian\";i:1;s:33:\"contact-password-reseted-romanian\";i:1;s:29:\"contact-set-password-romanian\";i:1;s:30:\"staff-forgot-password-romanian\";i:1;s:31:\"staff-password-reseted-romanian\";i:1;s:28:\"assigned-to-project-romanian\";i:1;s:42:\"task-added-attachment-to-contacts-romanian\";i:1;s:35:\"task-commented-to-contacts-romanian\";i:1;s:26:\"new-lead-assigned-romanian\";i:1;s:25:\"client-statement-romanian\";i:1;s:33:\"ticket-assigned-to-admin-romanian\";i:1;s:39:\"new-client-registered-to-admin-romanian\";i:1;s:39:\"new-web-to-lead-form-submitted-romanian\";i:1;s:34:\"two-factor-authentication-romanian\";i:1;s:37:\"project-finished-to-customer-romanian\";i:1;s:35:\"credit-note-send-to-client-romanian\";i:1;s:36:\"task-status-change-to-staff-romanian\";i:1;s:39:\"task-status-change-to-contacts-romanian\";i:1;s:29:\"reminder-email-staff-romanian\";i:1;s:35:\"contract-comment-to-client-romanian\";i:1;s:34:\"contract-comment-to-admin-romanian\";i:1;s:26:\"send-subscription-romanian\";i:1;s:36:\"subscription-payment-failed-romanian\";i:1;s:30:\"subscription-canceled-romanian\";i:1;s:39:\"subscription-payment-succeeded-romanian\";i:1;s:37:\"contract-expiration-to-staff-romanian\";i:1;s:29:\"gdpr-removal-request-romanian\";i:1;s:34:\"gdpr-removal-request-lead-romanian\";i:1;s:38:\"client-registration-confirmed-romanian\";i:1;s:33:\"contract-signed-to-staff-romanian\";i:1;s:37:\"customer-subscribed-to-staff-romanian\";i:1;s:35:\"contact-verification-email-romanian\";i:1;s:52:\"new-customer-profile-file-uploaded-to-staff-romanian\";i:1;s:36:\"event-notification-to-staff-romanian\";i:1;s:45:\"subscription-payment-requires-action-romanian\";i:1;s:27:\"invoice-due-notice-romanian\";i:1;s:44:\"estimate-request-submitted-to-staff-romanian\";i:1;s:34:\"estimate-request-assigned-romanian\";i:1;s:42:\"estimate-request-received-to-user-romanian\";i:1;s:34:\"non-billed-tasks-reminder-romanian\";i:1;s:32:\"invoices-batch-payments-romanian\";i:1;s:26:\"new-client-created-russian\";i:1;s:30:\"invoice-send-to-client-russian\";i:1;s:31:\"new-ticket-opened-admin-russian\";i:1;s:20:\"ticket-reply-russian\";i:1;s:27:\"ticket-autoresponse-russian\";i:1;s:32:\"invoice-payment-recorded-russian\";i:1;s:30:\"invoice-overdue-notice-russian\";i:1;s:28:\"invoice-already-send-russian\";i:1;s:32:\"new-ticket-created-staff-russian\";i:1;s:31:\"estimate-send-to-client-russian\";i:1;s:29:\"ticket-reply-to-admin-russian\";i:1;s:29:\"estimate-already-send-russian\";i:1;s:27:\"contract-expiration-russian\";i:1;s:21:\"task-assigned-russian\";i:1;s:30:\"task-added-as-follower-russian\";i:1;s:22:\"task-commented-russian\";i:1;s:29:\"task-added-attachment-russian\";i:1;s:34:\"estimate-declined-to-staff-russian\";i:1;s:34:\"estimate-accepted-to-staff-russian\";i:1;s:32:\"proposal-client-accepted-russian\";i:1;s:33:\"proposal-send-to-customer-russian\";i:1;s:32:\"proposal-client-declined-russian\";i:1;s:33:\"proposal-client-thank-you-russian\";i:1;s:34:\"proposal-comment-to-client-russian\";i:1;s:33:\"proposal-comment-to-admin-russian\";i:1;s:38:\"estimate-thank-you-to-customer-russian\";i:1;s:34:\"task-deadline-notification-russian\";i:1;s:21:\"send-contract-russian\";i:1;s:41:\"invoice-payment-recorded-to-staff-russian\";i:1;s:25:\"auto-close-ticket-russian\";i:1;s:47:\"new-project-discussion-created-to-staff-russian\";i:1;s:50:\"new-project-discussion-created-to-customer-russian\";i:1;s:45:\"new-project-file-uploaded-to-customer-russian\";i:1;s:42:\"new-project-file-uploaded-to-staff-russian\";i:1;s:50:\"new-project-discussion-comment-to-customer-russian\";i:1;s:47:\"new-project-discussion-comment-to-staff-russian\";i:1;s:37:\"staff-added-as-project-member-russian\";i:1;s:32:\"estimate-expiry-reminder-russian\";i:1;s:32:\"proposal-expiry-reminder-russian\";i:1;s:25:\"new-staff-created-russian\";i:1;s:31:\"contact-forgot-password-russian\";i:1;s:32:\"contact-password-reseted-russian\";i:1;s:28:\"contact-set-password-russian\";i:1;s:29:\"staff-forgot-password-russian\";i:1;s:30:\"staff-password-reseted-russian\";i:1;s:27:\"assigned-to-project-russian\";i:1;s:41:\"task-added-attachment-to-contacts-russian\";i:1;s:34:\"task-commented-to-contacts-russian\";i:1;s:25:\"new-lead-assigned-russian\";i:1;s:24:\"client-statement-russian\";i:1;s:32:\"ticket-assigned-to-admin-russian\";i:1;s:38:\"new-client-registered-to-admin-russian\";i:1;s:38:\"new-web-to-lead-form-submitted-russian\";i:1;s:33:\"two-factor-authentication-russian\";i:1;s:36:\"project-finished-to-customer-russian\";i:1;s:34:\"credit-note-send-to-client-russian\";i:1;s:35:\"task-status-change-to-staff-russian\";i:1;s:38:\"task-status-change-to-contacts-russian\";i:1;s:28:\"reminder-email-staff-russian\";i:1;s:34:\"contract-comment-to-client-russian\";i:1;s:33:\"contract-comment-to-admin-russian\";i:1;s:25:\"send-subscription-russian\";i:1;s:35:\"subscription-payment-failed-russian\";i:1;s:29:\"subscription-canceled-russian\";i:1;s:38:\"subscription-payment-succeeded-russian\";i:1;s:36:\"contract-expiration-to-staff-russian\";i:1;s:28:\"gdpr-removal-request-russian\";i:1;s:33:\"gdpr-removal-request-lead-russian\";i:1;s:37:\"client-registration-confirmed-russian\";i:1;s:32:\"contract-signed-to-staff-russian\";i:1;s:36:\"customer-subscribed-to-staff-russian\";i:1;s:34:\"contact-verification-email-russian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-russian\";i:1;s:35:\"event-notification-to-staff-russian\";i:1;s:44:\"subscription-payment-requires-action-russian\";i:1;s:26:\"invoice-due-notice-russian\";i:1;s:43:\"estimate-request-submitted-to-staff-russian\";i:1;s:33:\"estimate-request-assigned-russian\";i:1;s:41:\"estimate-request-received-to-user-russian\";i:1;s:33:\"non-billed-tasks-reminder-russian\";i:1;s:31:\"invoices-batch-payments-russian\";i:1;s:25:\"new-client-created-slovak\";i:1;s:29:\"invoice-send-to-client-slovak\";i:1;s:30:\"new-ticket-opened-admin-slovak\";i:1;s:19:\"ticket-reply-slovak\";i:1;s:26:\"ticket-autoresponse-slovak\";i:1;s:31:\"invoice-payment-recorded-slovak\";i:1;s:29:\"invoice-overdue-notice-slovak\";i:1;s:27:\"invoice-already-send-slovak\";i:1;s:31:\"new-ticket-created-staff-slovak\";i:1;s:30:\"estimate-send-to-client-slovak\";i:1;s:28:\"ticket-reply-to-admin-slovak\";i:1;s:28:\"estimate-already-send-slovak\";i:1;s:26:\"contract-expiration-slovak\";i:1;s:20:\"task-assigned-slovak\";i:1;s:29:\"task-added-as-follower-slovak\";i:1;s:21:\"task-commented-slovak\";i:1;s:28:\"task-added-attachment-slovak\";i:1;s:33:\"estimate-declined-to-staff-slovak\";i:1;s:33:\"estimate-accepted-to-staff-slovak\";i:1;s:31:\"proposal-client-accepted-slovak\";i:1;s:32:\"proposal-send-to-customer-slovak\";i:1;s:31:\"proposal-client-declined-slovak\";i:1;s:32:\"proposal-client-thank-you-slovak\";i:1;s:33:\"proposal-comment-to-client-slovak\";i:1;s:32:\"proposal-comment-to-admin-slovak\";i:1;s:37:\"estimate-thank-you-to-customer-slovak\";i:1;s:33:\"task-deadline-notification-slovak\";i:1;s:20:\"send-contract-slovak\";i:1;s:40:\"invoice-payment-recorded-to-staff-slovak\";i:1;s:24:\"auto-close-ticket-slovak\";i:1;s:46:\"new-project-discussion-created-to-staff-slovak\";i:1;s:49:\"new-project-discussion-created-to-customer-slovak\";i:1;s:44:\"new-project-file-uploaded-to-customer-slovak\";i:1;s:41:\"new-project-file-uploaded-to-staff-slovak\";i:1;s:49:\"new-project-discussion-comment-to-customer-slovak\";i:1;s:46:\"new-project-discussion-comment-to-staff-slovak\";i:1;s:36:\"staff-added-as-project-member-slovak\";i:1;s:31:\"estimate-expiry-reminder-slovak\";i:1;s:31:\"proposal-expiry-reminder-slovak\";i:1;s:24:\"new-staff-created-slovak\";i:1;s:30:\"contact-forgot-password-slovak\";i:1;s:31:\"contact-password-reseted-slovak\";i:1;s:27:\"contact-set-password-slovak\";i:1;s:28:\"staff-forgot-password-slovak\";i:1;s:29:\"staff-password-reseted-slovak\";i:1;s:26:\"assigned-to-project-slovak\";i:1;s:40:\"task-added-attachment-to-contacts-slovak\";i:1;s:33:\"task-commented-to-contacts-slovak\";i:1;s:24:\"new-lead-assigned-slovak\";i:1;s:23:\"client-statement-slovak\";i:1;s:31:\"ticket-assigned-to-admin-slovak\";i:1;s:37:\"new-client-registered-to-admin-slovak\";i:1;s:37:\"new-web-to-lead-form-submitted-slovak\";i:1;s:32:\"two-factor-authentication-slovak\";i:1;s:35:\"project-finished-to-customer-slovak\";i:1;s:33:\"credit-note-send-to-client-slovak\";i:1;s:34:\"task-status-change-to-staff-slovak\";i:1;s:37:\"task-status-change-to-contacts-slovak\";i:1;s:27:\"reminder-email-staff-slovak\";i:1;s:33:\"contract-comment-to-client-slovak\";i:1;s:32:\"contract-comment-to-admin-slovak\";i:1;s:24:\"send-subscription-slovak\";i:1;s:34:\"subscription-payment-failed-slovak\";i:1;s:28:\"subscription-canceled-slovak\";i:1;s:37:\"subscription-payment-succeeded-slovak\";i:1;s:35:\"contract-expiration-to-staff-slovak\";i:1;s:27:\"gdpr-removal-request-slovak\";i:1;s:32:\"gdpr-removal-request-lead-slovak\";i:1;s:36:\"client-registration-confirmed-slovak\";i:1;s:31:\"contract-signed-to-staff-slovak\";i:1;s:35:\"customer-subscribed-to-staff-slovak\";i:1;s:33:\"contact-verification-email-slovak\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-slovak\";i:1;s:34:\"event-notification-to-staff-slovak\";i:1;s:43:\"subscription-payment-requires-action-slovak\";i:1;s:25:\"invoice-due-notice-slovak\";i:1;s:42:\"estimate-request-submitted-to-staff-slovak\";i:1;s:32:\"estimate-request-assigned-slovak\";i:1;s:40:\"estimate-request-received-to-user-slovak\";i:1;s:32:\"non-billed-tasks-reminder-slovak\";i:1;s:30:\"invoices-batch-payments-slovak\";i:1;s:26:\"new-client-created-spanish\";i:1;s:30:\"invoice-send-to-client-spanish\";i:1;s:31:\"new-ticket-opened-admin-spanish\";i:1;s:20:\"ticket-reply-spanish\";i:1;s:27:\"ticket-autoresponse-spanish\";i:1;s:32:\"invoice-payment-recorded-spanish\";i:1;s:30:\"invoice-overdue-notice-spanish\";i:1;s:28:\"invoice-already-send-spanish\";i:1;s:32:\"new-ticket-created-staff-spanish\";i:1;s:31:\"estimate-send-to-client-spanish\";i:1;s:29:\"ticket-reply-to-admin-spanish\";i:1;s:29:\"estimate-already-send-spanish\";i:1;s:27:\"contract-expiration-spanish\";i:1;s:21:\"task-assigned-spanish\";i:1;s:30:\"task-added-as-follower-spanish\";i:1;s:22:\"task-commented-spanish\";i:1;s:29:\"task-added-attachment-spanish\";i:1;s:34:\"estimate-declined-to-staff-spanish\";i:1;s:34:\"estimate-accepted-to-staff-spanish\";i:1;s:32:\"proposal-client-accepted-spanish\";i:1;s:33:\"proposal-send-to-customer-spanish\";i:1;s:32:\"proposal-client-declined-spanish\";i:1;s:33:\"proposal-client-thank-you-spanish\";i:1;s:34:\"proposal-comment-to-client-spanish\";i:1;s:33:\"proposal-comment-to-admin-spanish\";i:1;s:38:\"estimate-thank-you-to-customer-spanish\";i:1;s:34:\"task-deadline-notification-spanish\";i:1;s:21:\"send-contract-spanish\";i:1;s:41:\"invoice-payment-recorded-to-staff-spanish\";i:1;s:25:\"auto-close-ticket-spanish\";i:1;s:47:\"new-project-discussion-created-to-staff-spanish\";i:1;s:50:\"new-project-discussion-created-to-customer-spanish\";i:1;s:45:\"new-project-file-uploaded-to-customer-spanish\";i:1;s:42:\"new-project-file-uploaded-to-staff-spanish\";i:1;s:50:\"new-project-discussion-comment-to-customer-spanish\";i:1;s:47:\"new-project-discussion-comment-to-staff-spanish\";i:1;s:37:\"staff-added-as-project-member-spanish\";i:1;s:32:\"estimate-expiry-reminder-spanish\";i:1;s:32:\"proposal-expiry-reminder-spanish\";i:1;s:25:\"new-staff-created-spanish\";i:1;s:31:\"contact-forgot-password-spanish\";i:1;s:32:\"contact-password-reseted-spanish\";i:1;s:28:\"contact-set-password-spanish\";i:1;s:29:\"staff-forgot-password-spanish\";i:1;s:30:\"staff-password-reseted-spanish\";i:1;s:27:\"assigned-to-project-spanish\";i:1;s:41:\"task-added-attachment-to-contacts-spanish\";i:1;s:34:\"task-commented-to-contacts-spanish\";i:1;s:25:\"new-lead-assigned-spanish\";i:1;s:24:\"client-statement-spanish\";i:1;s:32:\"ticket-assigned-to-admin-spanish\";i:1;s:38:\"new-client-registered-to-admin-spanish\";i:1;s:38:\"new-web-to-lead-form-submitted-spanish\";i:1;s:33:\"two-factor-authentication-spanish\";i:1;s:36:\"project-finished-to-customer-spanish\";i:1;s:34:\"credit-note-send-to-client-spanish\";i:1;s:35:\"task-status-change-to-staff-spanish\";i:1;s:38:\"task-status-change-to-contacts-spanish\";i:1;s:28:\"reminder-email-staff-spanish\";i:1;s:34:\"contract-comment-to-client-spanish\";i:1;s:33:\"contract-comment-to-admin-spanish\";i:1;s:25:\"send-subscription-spanish\";i:1;s:35:\"subscription-payment-failed-spanish\";i:1;s:29:\"subscription-canceled-spanish\";i:1;s:38:\"subscription-payment-succeeded-spanish\";i:1;s:36:\"contract-expiration-to-staff-spanish\";i:1;s:28:\"gdpr-removal-request-spanish\";i:1;s:33:\"gdpr-removal-request-lead-spanish\";i:1;s:37:\"client-registration-confirmed-spanish\";i:1;s:32:\"contract-signed-to-staff-spanish\";i:1;s:36:\"customer-subscribed-to-staff-spanish\";i:1;s:34:\"contact-verification-email-spanish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-spanish\";i:1;s:35:\"event-notification-to-staff-spanish\";i:1;s:44:\"subscription-payment-requires-action-spanish\";i:1;s:26:\"invoice-due-notice-spanish\";i:1;s:43:\"estimate-request-submitted-to-staff-spanish\";i:1;s:33:\"estimate-request-assigned-spanish\";i:1;s:41:\"estimate-request-received-to-user-spanish\";i:1;s:33:\"non-billed-tasks-reminder-spanish\";i:1;s:31:\"invoices-batch-payments-spanish\";i:1;s:26:\"new-client-created-swedish\";i:1;s:30:\"invoice-send-to-client-swedish\";i:1;s:31:\"new-ticket-opened-admin-swedish\";i:1;s:20:\"ticket-reply-swedish\";i:1;s:27:\"ticket-autoresponse-swedish\";i:1;s:32:\"invoice-payment-recorded-swedish\";i:1;s:30:\"invoice-overdue-notice-swedish\";i:1;s:28:\"invoice-already-send-swedish\";i:1;s:32:\"new-ticket-created-staff-swedish\";i:1;s:31:\"estimate-send-to-client-swedish\";i:1;s:29:\"ticket-reply-to-admin-swedish\";i:1;s:29:\"estimate-already-send-swedish\";i:1;s:27:\"contract-expiration-swedish\";i:1;s:21:\"task-assigned-swedish\";i:1;s:30:\"task-added-as-follower-swedish\";i:1;s:22:\"task-commented-swedish\";i:1;s:29:\"task-added-attachment-swedish\";i:1;s:34:\"estimate-declined-to-staff-swedish\";i:1;s:34:\"estimate-accepted-to-staff-swedish\";i:1;s:32:\"proposal-client-accepted-swedish\";i:1;s:33:\"proposal-send-to-customer-swedish\";i:1;s:32:\"proposal-client-declined-swedish\";i:1;s:33:\"proposal-client-thank-you-swedish\";i:1;s:34:\"proposal-comment-to-client-swedish\";i:1;s:33:\"proposal-comment-to-admin-swedish\";i:1;s:38:\"estimate-thank-you-to-customer-swedish\";i:1;s:34:\"task-deadline-notification-swedish\";i:1;s:21:\"send-contract-swedish\";i:1;s:41:\"invoice-payment-recorded-to-staff-swedish\";i:1;s:25:\"auto-close-ticket-swedish\";i:1;s:47:\"new-project-discussion-created-to-staff-swedish\";i:1;s:50:\"new-project-discussion-created-to-customer-swedish\";i:1;s:45:\"new-project-file-uploaded-to-customer-swedish\";i:1;s:42:\"new-project-file-uploaded-to-staff-swedish\";i:1;s:50:\"new-project-discussion-comment-to-customer-swedish\";i:1;s:47:\"new-project-discussion-comment-to-staff-swedish\";i:1;s:37:\"staff-added-as-project-member-swedish\";i:1;s:32:\"estimate-expiry-reminder-swedish\";i:1;s:32:\"proposal-expiry-reminder-swedish\";i:1;s:25:\"new-staff-created-swedish\";i:1;s:31:\"contact-forgot-password-swedish\";i:1;s:32:\"contact-password-reseted-swedish\";i:1;s:28:\"contact-set-password-swedish\";i:1;s:29:\"staff-forgot-password-swedish\";i:1;s:30:\"staff-password-reseted-swedish\";i:1;s:27:\"assigned-to-project-swedish\";i:1;s:41:\"task-added-attachment-to-contacts-swedish\";i:1;s:34:\"task-commented-to-contacts-swedish\";i:1;s:25:\"new-lead-assigned-swedish\";i:1;s:24:\"client-statement-swedish\";i:1;s:32:\"ticket-assigned-to-admin-swedish\";i:1;s:38:\"new-client-registered-to-admin-swedish\";i:1;s:38:\"new-web-to-lead-form-submitted-swedish\";i:1;s:33:\"two-factor-authentication-swedish\";i:1;s:36:\"project-finished-to-customer-swedish\";i:1;s:34:\"credit-note-send-to-client-swedish\";i:1;s:35:\"task-status-change-to-staff-swedish\";i:1;s:38:\"task-status-change-to-contacts-swedish\";i:1;s:28:\"reminder-email-staff-swedish\";i:1;s:34:\"contract-comment-to-client-swedish\";i:1;s:33:\"contract-comment-to-admin-swedish\";i:1;s:25:\"send-subscription-swedish\";i:1;s:35:\"subscription-payment-failed-swedish\";i:1;s:29:\"subscription-canceled-swedish\";i:1;s:38:\"subscription-payment-succeeded-swedish\";i:1;s:36:\"contract-expiration-to-staff-swedish\";i:1;s:28:\"gdpr-removal-request-swedish\";i:1;s:33:\"gdpr-removal-request-lead-swedish\";i:1;s:37:\"client-registration-confirmed-swedish\";i:1;s:32:\"contract-signed-to-staff-swedish\";i:1;s:36:\"customer-subscribed-to-staff-swedish\";i:1;s:34:\"contact-verification-email-swedish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-swedish\";i:1;s:35:\"event-notification-to-staff-swedish\";i:1;s:44:\"subscription-payment-requires-action-swedish\";i:1;s:26:\"invoice-due-notice-swedish\";i:1;s:43:\"estimate-request-submitted-to-staff-swedish\";i:1;s:33:\"estimate-request-assigned-swedish\";i:1;s:41:\"estimate-request-received-to-user-swedish\";i:1;s:33:\"non-billed-tasks-reminder-swedish\";i:1;s:31:\"invoices-batch-payments-swedish\";i:1;s:26:\"new-client-created-turkish\";i:1;s:30:\"invoice-send-to-client-turkish\";i:1;s:31:\"new-ticket-opened-admin-turkish\";i:1;s:20:\"ticket-reply-turkish\";i:1;s:27:\"ticket-autoresponse-turkish\";i:1;s:32:\"invoice-payment-recorded-turkish\";i:1;s:30:\"invoice-overdue-notice-turkish\";i:1;s:28:\"invoice-already-send-turkish\";i:1;s:32:\"new-ticket-created-staff-turkish\";i:1;s:31:\"estimate-send-to-client-turkish\";i:1;s:29:\"ticket-reply-to-admin-turkish\";i:1;s:29:\"estimate-already-send-turkish\";i:1;s:27:\"contract-expiration-turkish\";i:1;s:21:\"task-assigned-turkish\";i:1;s:30:\"task-added-as-follower-turkish\";i:1;s:22:\"task-commented-turkish\";i:1;s:29:\"task-added-attachment-turkish\";i:1;s:34:\"estimate-declined-to-staff-turkish\";i:1;s:34:\"estimate-accepted-to-staff-turkish\";i:1;s:32:\"proposal-client-accepted-turkish\";i:1;s:33:\"proposal-send-to-customer-turkish\";i:1;s:32:\"proposal-client-declined-turkish\";i:1;s:33:\"proposal-client-thank-you-turkish\";i:1;s:34:\"proposal-comment-to-client-turkish\";i:1;s:33:\"proposal-comment-to-admin-turkish\";i:1;s:38:\"estimate-thank-you-to-customer-turkish\";i:1;s:34:\"task-deadline-notification-turkish\";i:1;s:21:\"send-contract-turkish\";i:1;s:41:\"invoice-payment-recorded-to-staff-turkish\";i:1;s:25:\"auto-close-ticket-turkish\";i:1;s:47:\"new-project-discussion-created-to-staff-turkish\";i:1;s:50:\"new-project-discussion-created-to-customer-turkish\";i:1;s:45:\"new-project-file-uploaded-to-customer-turkish\";i:1;s:42:\"new-project-file-uploaded-to-staff-turkish\";i:1;s:50:\"new-project-discussion-comment-to-customer-turkish\";i:1;s:47:\"new-project-discussion-comment-to-staff-turkish\";i:1;s:37:\"staff-added-as-project-member-turkish\";i:1;s:32:\"estimate-expiry-reminder-turkish\";i:1;s:32:\"proposal-expiry-reminder-turkish\";i:1;s:25:\"new-staff-created-turkish\";i:1;s:31:\"contact-forgot-password-turkish\";i:1;s:32:\"contact-password-reseted-turkish\";i:1;s:28:\"contact-set-password-turkish\";i:1;s:29:\"staff-forgot-password-turkish\";i:1;s:30:\"staff-password-reseted-turkish\";i:1;s:27:\"assigned-to-project-turkish\";i:1;s:41:\"task-added-attachment-to-contacts-turkish\";i:1;s:34:\"task-commented-to-contacts-turkish\";i:1;s:25:\"new-lead-assigned-turkish\";i:1;s:24:\"client-statement-turkish\";i:1;s:32:\"ticket-assigned-to-admin-turkish\";i:1;s:38:\"new-client-registered-to-admin-turkish\";i:1;s:38:\"new-web-to-lead-form-submitted-turkish\";i:1;s:33:\"two-factor-authentication-turkish\";i:1;s:36:\"project-finished-to-customer-turkish\";i:1;s:34:\"credit-note-send-to-client-turkish\";i:1;s:35:\"task-status-change-to-staff-turkish\";i:1;s:38:\"task-status-change-to-contacts-turkish\";i:1;s:28:\"reminder-email-staff-turkish\";i:1;s:34:\"contract-comment-to-client-turkish\";i:1;s:33:\"contract-comment-to-admin-turkish\";i:1;s:25:\"send-subscription-turkish\";i:1;s:35:\"subscription-payment-failed-turkish\";i:1;s:29:\"subscription-canceled-turkish\";i:1;s:38:\"subscription-payment-succeeded-turkish\";i:1;s:36:\"contract-expiration-to-staff-turkish\";i:1;s:28:\"gdpr-removal-request-turkish\";i:1;s:33:\"gdpr-removal-request-lead-turkish\";i:1;s:37:\"client-registration-confirmed-turkish\";i:1;s:32:\"contract-signed-to-staff-turkish\";i:1;s:36:\"customer-subscribed-to-staff-turkish\";i:1;s:34:\"contact-verification-email-turkish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-turkish\";i:1;s:35:\"event-notification-to-staff-turkish\";i:1;s:44:\"subscription-payment-requires-action-turkish\";i:1;s:26:\"invoice-due-notice-turkish\";i:1;s:43:\"estimate-request-submitted-to-staff-turkish\";i:1;s:33:\"estimate-request-assigned-turkish\";i:1;s:41:\"estimate-request-received-to-user-turkish\";i:1;s:33:\"non-billed-tasks-reminder-turkish\";i:1;s:31:\"invoices-batch-payments-turkish\";i:1;s:28:\"new-client-created-ukrainian\";i:1;s:32:\"invoice-send-to-client-ukrainian\";i:1;s:33:\"new-ticket-opened-admin-ukrainian\";i:1;s:22:\"ticket-reply-ukrainian\";i:1;s:29:\"ticket-autoresponse-ukrainian\";i:1;s:34:\"invoice-payment-recorded-ukrainian\";i:1;s:32:\"invoice-overdue-notice-ukrainian\";i:1;s:30:\"invoice-already-send-ukrainian\";i:1;s:34:\"new-ticket-created-staff-ukrainian\";i:1;s:33:\"estimate-send-to-client-ukrainian\";i:1;s:31:\"ticket-reply-to-admin-ukrainian\";i:1;s:31:\"estimate-already-send-ukrainian\";i:1;s:29:\"contract-expiration-ukrainian\";i:1;s:23:\"task-assigned-ukrainian\";i:1;s:32:\"task-added-as-follower-ukrainian\";i:1;s:24:\"task-commented-ukrainian\";i:1;s:31:\"task-added-attachment-ukrainian\";i:1;s:36:\"estimate-declined-to-staff-ukrainian\";i:1;s:36:\"estimate-accepted-to-staff-ukrainian\";i:1;s:34:\"proposal-client-accepted-ukrainian\";i:1;s:35:\"proposal-send-to-customer-ukrainian\";i:1;s:34:\"proposal-client-declined-ukrainian\";i:1;s:35:\"proposal-client-thank-you-ukrainian\";i:1;s:36:\"proposal-comment-to-client-ukrainian\";i:1;s:35:\"proposal-comment-to-admin-ukrainian\";i:1;s:40:\"estimate-thank-you-to-customer-ukrainian\";i:1;s:36:\"task-deadline-notification-ukrainian\";i:1;s:23:\"send-contract-ukrainian\";i:1;s:43:\"invoice-payment-recorded-to-staff-ukrainian\";i:1;s:27:\"auto-close-ticket-ukrainian\";i:1;s:49:\"new-project-discussion-created-to-staff-ukrainian\";i:1;s:52:\"new-project-discussion-created-to-customer-ukrainian\";i:1;s:47:\"new-project-file-uploaded-to-customer-ukrainian\";i:1;s:44:\"new-project-file-uploaded-to-staff-ukrainian\";i:1;s:52:\"new-project-discussion-comment-to-customer-ukrainian\";i:1;s:49:\"new-project-discussion-comment-to-staff-ukrainian\";i:1;s:39:\"staff-added-as-project-member-ukrainian\";i:1;s:34:\"estimate-expiry-reminder-ukrainian\";i:1;s:34:\"proposal-expiry-reminder-ukrainian\";i:1;s:27:\"new-staff-created-ukrainian\";i:1;s:33:\"contact-forgot-password-ukrainian\";i:1;s:34:\"contact-password-reseted-ukrainian\";i:1;s:30:\"contact-set-password-ukrainian\";i:1;s:31:\"staff-forgot-password-ukrainian\";i:1;s:32:\"staff-password-reseted-ukrainian\";i:1;s:29:\"assigned-to-project-ukrainian\";i:1;s:43:\"task-added-attachment-to-contacts-ukrainian\";i:1;s:36:\"task-commented-to-contacts-ukrainian\";i:1;s:27:\"new-lead-assigned-ukrainian\";i:1;s:26:\"client-statement-ukrainian\";i:1;s:34:\"ticket-assigned-to-admin-ukrainian\";i:1;s:40:\"new-client-registered-to-admin-ukrainian\";i:1;s:40:\"new-web-to-lead-form-submitted-ukrainian\";i:1;s:35:\"two-factor-authentication-ukrainian\";i:1;s:38:\"project-finished-to-customer-ukrainian\";i:1;s:36:\"credit-note-send-to-client-ukrainian\";i:1;s:37:\"task-status-change-to-staff-ukrainian\";i:1;s:40:\"task-status-change-to-contacts-ukrainian\";i:1;s:30:\"reminder-email-staff-ukrainian\";i:1;s:36:\"contract-comment-to-client-ukrainian\";i:1;s:35:\"contract-comment-to-admin-ukrainian\";i:1;s:27:\"send-subscription-ukrainian\";i:1;s:37:\"subscription-payment-failed-ukrainian\";i:1;s:31:\"subscription-canceled-ukrainian\";i:1;s:40:\"subscription-payment-succeeded-ukrainian\";i:1;s:38:\"contract-expiration-to-staff-ukrainian\";i:1;s:30:\"gdpr-removal-request-ukrainian\";i:1;s:35:\"gdpr-removal-request-lead-ukrainian\";i:1;s:39:\"client-registration-confirmed-ukrainian\";i:1;s:34:\"contract-signed-to-staff-ukrainian\";i:1;s:38:\"customer-subscribed-to-staff-ukrainian\";i:1;s:36:\"contact-verification-email-ukrainian\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-ukrainian\";i:1;s:37:\"event-notification-to-staff-ukrainian\";i:1;s:46:\"subscription-payment-requires-action-ukrainian\";i:1;s:28:\"invoice-due-notice-ukrainian\";i:1;s:45:\"estimate-request-submitted-to-staff-ukrainian\";i:1;s:35:\"estimate-request-assigned-ukrainian\";i:1;s:43:\"estimate-request-received-to-user-ukrainian\";i:1;s:35:\"non-billed-tasks-reminder-ukrainian\";i:1;s:33:\"invoices-batch-payments-ukrainian\";i:1;s:29:\"new-client-created-vietnamese\";i:1;s:33:\"invoice-send-to-client-vietnamese\";i:1;s:34:\"new-ticket-opened-admin-vietnamese\";i:1;s:23:\"ticket-reply-vietnamese\";i:1;s:30:\"ticket-autoresponse-vietnamese\";i:1;s:35:\"invoice-payment-recorded-vietnamese\";i:1;s:33:\"invoice-overdue-notice-vietnamese\";i:1;s:31:\"invoice-already-send-vietnamese\";i:1;s:35:\"new-ticket-created-staff-vietnamese\";i:1;s:34:\"estimate-send-to-client-vietnamese\";i:1;s:32:\"ticket-reply-to-admin-vietnamese\";i:1;s:32:\"estimate-already-send-vietnamese\";i:1;s:30:\"contract-expiration-vietnamese\";i:1;s:24:\"task-assigned-vietnamese\";i:1;s:33:\"task-added-as-follower-vietnamese\";i:1;s:25:\"task-commented-vietnamese\";i:1;s:32:\"task-added-attachment-vietnamese\";i:1;s:37:\"estimate-declined-to-staff-vietnamese\";i:1;s:37:\"estimate-accepted-to-staff-vietnamese\";i:1;s:35:\"proposal-client-accepted-vietnamese\";i:1;s:36:\"proposal-send-to-customer-vietnamese\";i:1;s:35:\"proposal-client-declined-vietnamese\";i:1;s:36:\"proposal-client-thank-you-vietnamese\";i:1;s:37:\"proposal-comment-to-client-vietnamese\";i:1;s:36:\"proposal-comment-to-admin-vietnamese\";i:1;s:41:\"estimate-thank-you-to-customer-vietnamese\";i:1;s:37:\"task-deadline-notification-vietnamese\";i:1;s:24:\"send-contract-vietnamese\";i:1;s:44:\"invoice-payment-recorded-to-staff-vietnamese\";i:1;s:28:\"auto-close-ticket-vietnamese\";i:1;s:50:\"new-project-discussion-created-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-created-to-customer-vietnamese\";i:1;s:48:\"new-project-file-uploaded-to-customer-vietnamese\";i:1;s:45:\"new-project-file-uploaded-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-comment-to-customer-vietnamese\";i:1;s:50:\"new-project-discussion-comment-to-staff-vietnamese\";i:1;s:40:\"staff-added-as-project-member-vietnamese\";i:1;s:35:\"estimate-expiry-reminder-vietnamese\";i:1;s:35:\"proposal-expiry-reminder-vietnamese\";i:1;s:28:\"new-staff-created-vietnamese\";i:1;s:34:\"contact-forgot-password-vietnamese\";i:1;s:35:\"contact-password-reseted-vietnamese\";i:1;s:31:\"contact-set-password-vietnamese\";i:1;s:32:\"staff-forgot-password-vietnamese\";i:1;s:33:\"staff-password-reseted-vietnamese\";i:1;s:30:\"assigned-to-project-vietnamese\";i:1;s:44:\"task-added-attachment-to-contacts-vietnamese\";i:1;s:37:\"task-commented-to-contacts-vietnamese\";i:1;s:28:\"new-lead-assigned-vietnamese\";i:1;s:27:\"client-statement-vietnamese\";i:1;s:35:\"ticket-assigned-to-admin-vietnamese\";i:1;s:41:\"new-client-registered-to-admin-vietnamese\";i:1;s:41:\"new-web-to-lead-form-submitted-vietnamese\";i:1;s:36:\"two-factor-authentication-vietnamese\";i:1;s:39:\"project-finished-to-customer-vietnamese\";i:1;s:37:\"credit-note-send-to-client-vietnamese\";i:1;s:38:\"task-status-change-to-staff-vietnamese\";i:1;s:41:\"task-status-change-to-contacts-vietnamese\";i:1;s:31:\"reminder-email-staff-vietnamese\";i:1;s:37:\"contract-comment-to-client-vietnamese\";i:1;s:36:\"contract-comment-to-admin-vietnamese\";i:1;s:28:\"send-subscription-vietnamese\";i:1;s:38:\"subscription-payment-failed-vietnamese\";i:1;s:32:\"subscription-canceled-vietnamese\";i:1;s:41:\"subscription-payment-succeeded-vietnamese\";i:1;s:39:\"contract-expiration-to-staff-vietnamese\";i:1;s:31:\"gdpr-removal-request-vietnamese\";i:1;s:36:\"gdpr-removal-request-lead-vietnamese\";i:1;s:40:\"client-registration-confirmed-vietnamese\";i:1;s:35:\"contract-signed-to-staff-vietnamese\";i:1;s:39:\"customer-subscribed-to-staff-vietnamese\";i:1;s:37:\"contact-verification-email-vietnamese\";i:1;s:54:\"new-customer-profile-file-uploaded-to-staff-vietnamese\";i:1;s:38:\"event-notification-to-staff-vietnamese\";i:1;s:47:\"subscription-payment-requires-action-vietnamese\";i:1;s:29:\"invoice-due-notice-vietnamese\";i:1;s:46:\"estimate-request-submitted-to-staff-vietnamese\";i:1;s:36:\"estimate-request-assigned-vietnamese\";i:1;s:44:\"estimate-request-received-to-user-vietnamese\";i:1;s:36:\"non-billed-tasks-reminder-vietnamese\";i:1;s:34:\"invoices-batch-payments-vietnamese\";i:1;s:35:\"purchase-order-to-contact-bulgarian\";i:1;s:37:\"purchase-request-to-contact-bulgarian\";i:1;s:39:\"purchase-quotation-to-contact-bulgarian\";i:1;s:31:\"debit-note-to-contact-bulgarian\";i:1;s:39:\"purchase-statement-to-contact-bulgarian\";i:1;s:36:\"inventory-warning-to-staff-bulgarian\";i:1;s:33:\"purchase-order-to-contact-catalan\";i:1;s:35:\"purchase-request-to-contact-catalan\";i:1;s:37:\"purchase-quotation-to-contact-catalan\";i:1;s:29:\"debit-note-to-contact-catalan\";i:1;s:37:\"purchase-statement-to-contact-catalan\";i:1;s:34:\"inventory-warning-to-staff-catalan\";i:1;s:33:\"purchase-order-to-contact-chinese\";i:1;s:35:\"purchase-request-to-contact-chinese\";i:1;s:37:\"purchase-quotation-to-contact-chinese\";i:1;s:29:\"debit-note-to-contact-chinese\";i:1;s:37:\"purchase-statement-to-contact-chinese\";i:1;s:34:\"inventory-warning-to-staff-chinese\";i:1;s:31:\"purchase-order-to-contact-czech\";i:1;s:33:\"purchase-request-to-contact-czech\";i:1;s:35:\"purchase-quotation-to-contact-czech\";i:1;s:27:\"debit-note-to-contact-czech\";i:1;s:35:\"purchase-statement-to-contact-czech\";i:1;s:32:\"inventory-warning-to-staff-czech\";i:1;s:31:\"purchase-order-to-contact-dutch\";i:1;s:33:\"purchase-request-to-contact-dutch\";i:1;s:35:\"purchase-quotation-to-contact-dutch\";i:1;s:27:\"debit-note-to-contact-dutch\";i:1;s:35:\"purchase-statement-to-contact-dutch\";i:1;s:32:\"inventory-warning-to-staff-dutch\";i:1;s:32:\"purchase-order-to-contact-french\";i:1;s:34:\"purchase-request-to-contact-french\";i:1;s:36:\"purchase-quotation-to-contact-french\";i:1;s:28:\"debit-note-to-contact-french\";i:1;s:36:\"purchase-statement-to-contact-french\";i:1;s:33:\"inventory-warning-to-staff-french\";i:1;s:32:\"purchase-order-to-contact-german\";i:1;s:34:\"purchase-request-to-contact-german\";i:1;s:36:\"purchase-quotation-to-contact-german\";i:1;s:28:\"debit-note-to-contact-german\";i:1;s:36:\"purchase-statement-to-contact-german\";i:1;s:33:\"inventory-warning-to-staff-german\";i:1;s:31:\"purchase-order-to-contact-greek\";i:1;s:33:\"purchase-request-to-contact-greek\";i:1;s:35:\"purchase-quotation-to-contact-greek\";i:1;s:27:\"debit-note-to-contact-greek\";i:1;s:35:\"purchase-statement-to-contact-greek\";i:1;s:32:\"inventory-warning-to-staff-greek\";i:1;s:35:\"purchase-order-to-contact-indonesia\";i:1;s:37:\"purchase-request-to-contact-indonesia\";i:1;s:39:\"purchase-quotation-to-contact-indonesia\";i:1;s:31:\"debit-note-to-contact-indonesia\";i:1;s:39:\"purchase-statement-to-contact-indonesia\";i:1;s:36:\"inventory-warning-to-staff-indonesia\";i:1;s:33:\"purchase-order-to-contact-italian\";i:1;s:35:\"purchase-request-to-contact-italian\";i:1;s:37:\"purchase-quotation-to-contact-italian\";i:1;s:29:\"debit-note-to-contact-italian\";i:1;s:37:\"purchase-statement-to-contact-italian\";i:1;s:34:\"inventory-warning-to-staff-italian\";i:1;s:34:\"purchase-order-to-contact-japanese\";i:1;s:36:\"purchase-request-to-contact-japanese\";i:1;s:38:\"purchase-quotation-to-contact-japanese\";i:1;s:30:\"debit-note-to-contact-japanese\";i:1;s:38:\"purchase-statement-to-contact-japanese\";i:1;s:35:\"inventory-warning-to-staff-japanese\";i:1;s:33:\"purchase-order-to-contact-persian\";i:1;s:35:\"purchase-request-to-contact-persian\";i:1;s:37:\"purchase-quotation-to-contact-persian\";i:1;s:29:\"debit-note-to-contact-persian\";i:1;s:37:\"purchase-statement-to-contact-persian\";i:1;s:34:\"inventory-warning-to-staff-persian\";i:1;s:32:\"purchase-order-to-contact-polish\";i:1;s:34:\"purchase-request-to-contact-polish\";i:1;s:36:\"purchase-quotation-to-contact-polish\";i:1;s:28:\"debit-note-to-contact-polish\";i:1;s:36:\"purchase-statement-to-contact-polish\";i:1;s:33:\"inventory-warning-to-staff-polish\";i:1;s:36:\"purchase-order-to-contact-portuguese\";i:1;s:38:\"purchase-request-to-contact-portuguese\";i:1;s:40:\"purchase-quotation-to-contact-portuguese\";i:1;s:32:\"debit-note-to-contact-portuguese\";i:1;s:40:\"purchase-statement-to-contact-portuguese\";i:1;s:37:\"inventory-warning-to-staff-portuguese\";i:1;s:39:\"purchase-order-to-contact-portuguese_br\";i:1;s:41:\"purchase-request-to-contact-portuguese_br\";i:1;s:43:\"purchase-quotation-to-contact-portuguese_br\";i:1;s:35:\"debit-note-to-contact-portuguese_br\";i:1;s:43:\"purchase-statement-to-contact-portuguese_br\";i:1;s:40:\"inventory-warning-to-staff-portuguese_br\";i:1;s:34:\"purchase-order-to-contact-romanian\";i:1;s:36:\"purchase-request-to-contact-romanian\";i:1;s:38:\"purchase-quotation-to-contact-romanian\";i:1;s:30:\"debit-note-to-contact-romanian\";i:1;s:38:\"purchase-statement-to-contact-romanian\";i:1;s:35:\"inventory-warning-to-staff-romanian\";i:1;s:33:\"purchase-order-to-contact-russian\";i:1;s:35:\"purchase-request-to-contact-russian\";i:1;s:37:\"purchase-quotation-to-contact-russian\";i:1;s:29:\"debit-note-to-contact-russian\";i:1;s:37:\"purchase-statement-to-contact-russian\";i:1;s:34:\"inventory-warning-to-staff-russian\";i:1;s:32:\"purchase-order-to-contact-slovak\";i:1;s:34:\"purchase-request-to-contact-slovak\";i:1;s:36:\"purchase-quotation-to-contact-slovak\";i:1;s:28:\"debit-note-to-contact-slovak\";i:1;s:36:\"purchase-statement-to-contact-slovak\";i:1;s:33:\"inventory-warning-to-staff-slovak\";i:1;s:33:\"purchase-order-to-contact-spanish\";i:1;s:35:\"purchase-request-to-contact-spanish\";i:1;s:37:\"purchase-quotation-to-contact-spanish\";i:1;s:29:\"debit-note-to-contact-spanish\";i:1;s:37:\"purchase-statement-to-contact-spanish\";i:1;s:34:\"inventory-warning-to-staff-spanish\";i:1;s:33:\"purchase-order-to-contact-swedish\";i:1;s:35:\"purchase-request-to-contact-swedish\";i:1;s:37:\"purchase-quotation-to-contact-swedish\";i:1;s:29:\"debit-note-to-contact-swedish\";i:1;s:37:\"purchase-statement-to-contact-swedish\";i:1;s:34:\"inventory-warning-to-staff-swedish\";i:1;s:33:\"purchase-order-to-contact-turkish\";i:1;s:35:\"purchase-request-to-contact-turkish\";i:1;s:37:\"purchase-quotation-to-contact-turkish\";i:1;s:29:\"debit-note-to-contact-turkish\";i:1;s:37:\"purchase-statement-to-contact-turkish\";i:1;s:34:\"inventory-warning-to-staff-turkish\";i:1;s:35:\"purchase-order-to-contact-ukrainian\";i:1;s:37:\"purchase-request-to-contact-ukrainian\";i:1;s:39:\"purchase-quotation-to-contact-ukrainian\";i:1;s:31:\"debit-note-to-contact-ukrainian\";i:1;s:39:\"purchase-statement-to-contact-ukrainian\";i:1;s:36:\"inventory-warning-to-staff-ukrainian\";i:1;s:36:\"purchase-order-to-contact-vietnamese\";i:1;s:38:\"purchase-request-to-contact-vietnamese\";i:1;s:40:\"purchase-quotation-to-contact-vietnamese\";i:1;s:32:\"debit-note-to-contact-vietnamese\";i:1;s:40:\"purchase-statement-to-contact-vietnamese\";i:1;s:37:\"inventory-warning-to-staff-vietnamese\";i:1;}', 0);
INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(212, 'proposal_accept_identity_confirmation', '1', 0),
(213, 'estimate_accept_identity_confirmation', '1', 0),
(214, 'new_task_auto_follower_current_member', '0', 1),
(215, 'task_biillable_checked_on_creation', '1', 1),
(216, 'predefined_clientnote_credit_note', '', 1),
(217, 'predefined_terms_credit_note', '', 1),
(218, 'next_credit_note_number', '2', 1),
(219, 'credit_note_prefix', 'CN-', 1),
(220, 'credit_note_number_decrement_on_delete', '1', 1),
(221, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
(222, 'show_pdf_signature_credit_note', '1', 0),
(223, 'show_credit_note_reminders_on_calendar', '1', 1),
(224, 'show_amount_due_on_invoice', '1', 1),
(225, 'show_total_paid_on_invoice', '1', 1),
(226, 'show_credits_applied_on_invoice', '1', 1),
(227, 'staff_members_create_inline_lead_status', '1', 1),
(228, 'staff_members_create_inline_customer_groups', '1', 1),
(229, 'staff_members_create_inline_ticket_services', '1', 1),
(230, 'staff_members_save_tickets_predefined_replies', '1', 1),
(231, 'staff_members_create_inline_contract_types', '1', 1),
(232, 'staff_members_create_inline_expense_categories', '1', 1),
(233, 'show_project_on_credit_note', '1', 1),
(234, 'proposals_auto_operations_hour', '21', 1),
(235, 'estimates_auto_operations_hour', '21', 1),
(236, 'contracts_auto_operations_hour', '21', 1),
(237, 'credit_note_number_format', '1', 1),
(238, 'allow_non_admin_members_to_import_leads', '0', 1),
(239, 'e_sign_legal_text', 'By clicking on \"Sign\", I consent to be legally bound by this electronic representation of my signature.', 1),
(240, 'show_pdf_signature_contract', '1', 1),
(241, 'view_contract_only_logged_in', '0', 1),
(242, 'show_subscriptions_in_customers_area', '1', 1),
(243, 'calendar_only_assigned_tasks', '0', 1),
(244, 'after_subscription_payment_captured', 'send_invoice_and_receipt', 1),
(245, 'mail_engine', 'phpmailer', 1),
(246, 'gdpr_enable_terms_and_conditions', '0', 1),
(247, 'privacy_policy', '', 1),
(248, 'terms_and_conditions', '', 1),
(249, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
(250, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
(251, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
(252, 'show_gdpr_in_customers_menu', '1', 1),
(253, 'show_gdpr_link_in_footer', '1', 1),
(254, 'enable_gdpr', '0', 1),
(255, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
(256, 'gdpr_on_forgotten_remove_estimates', '0', 1),
(257, 'gdpr_enable_consent_for_contacts', '0', 1),
(258, 'gdpr_consent_public_page_top_block', '', 1),
(259, 'gdpr_page_top_information_block', '', 1),
(260, 'gdpr_enable_lead_public_form', '0', 1),
(261, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
(262, 'gdpr_lead_attachments_on_public_form', '0', 1),
(263, 'gdpr_enable_consent_for_leads', '0', 1),
(264, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
(265, 'allow_staff_view_invoices_assigned', '1', 1),
(266, 'gdpr_data_portability_leads', '0', 1),
(267, 'gdpr_lead_data_portability_allowed', '', 1),
(268, 'gdpr_contact_data_portability_allowed', '', 1),
(269, 'gdpr_data_portability_contacts', '0', 1),
(270, 'allow_staff_view_estimates_assigned', '1', 1),
(271, 'gdpr_after_lead_converted_delete', '0', 1),
(272, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
(273, 'save_last_order_for_tables', '0', 1),
(274, 'company_logo_dark', '', 1),
(275, 'customers_register_require_confirmation', '0', 1),
(276, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
(277, 'receive_notification_on_new_ticket_replies', '1', 0),
(278, 'google_client_id', '', 1),
(279, 'enable_google_picker', '1', 1),
(280, 'show_ticket_reminders_on_calendar', '1', 1),
(281, 'ticket_import_reply_only', '0', 1),
(282, 'visible_customer_profile_tabs', 'all', 0),
(283, 'show_project_on_invoice', '1', 1),
(284, 'show_project_on_estimate', '1', 1),
(285, 'staff_members_create_inline_lead_source', '1', 1),
(286, 'lead_unique_validation', '[\"email\"]', 1),
(287, 'last_upgrade_copy_data', '', 1),
(288, 'custom_js_admin_scripts', '', 1),
(289, 'custom_js_customer_scripts', '0', 1),
(290, 'stripe_webhook_id', '', 1),
(291, 'stripe_webhook_signing_secret', '', 1),
(292, 'stripe_ideal_webhook_id', '', 1),
(293, 'stripe_ideal_webhook_signing_secret', '', 1),
(294, 'show_php_version_notice', '1', 0),
(295, 'recaptcha_ignore_ips', '', 1),
(296, 'show_task_reminders_on_calendar', '1', 1),
(297, 'customer_settings', 'true', 1),
(298, 'tasks_reminder_notification_hour', '21', 1),
(299, 'allow_primary_contact_to_manage_other_contacts', '0', 1),
(300, 'items_table_amounts_exclude_currency_symbol', '1', 1),
(301, 'round_off_task_timer_option', '0', 1),
(302, 'round_off_task_timer_time', '5', 1),
(303, 'bitly_access_token', '', 1),
(304, 'enable_support_menu_badges', '0', 1),
(305, 'attach_invoice_to_payment_receipt_email', '0', 1),
(306, 'invoice_due_notice_before', '2', 1),
(307, 'invoice_due_notice_resend_after', '0', 1),
(308, '_leads_settings', 'true', 1),
(309, 'show_estimate_request_in_customers_area', '0', 1),
(310, 'gdpr_enable_terms_and_conditions_estimate_request_form', '0', 1),
(311, 'upgraded_from_version', '', 0),
(312, 'identification_key', '1920619794166107859963020c4782e1e', 1),
(313, 'automatically_stop_task_timer_after_hours', '8', 1),
(314, 'automatically_assign_ticket_to_first_staff_responding', '0', 1),
(315, 'reminder_for_completed_but_not_billed_tasks', '0', 1),
(316, 'staff_notify_completed_but_not_billed_tasks', '', 1),
(317, 'reminder_for_completed_but_not_billed_tasks_days', '', 1),
(318, 'tasks_reminder_notification_last_notified_day', '', 1),
(319, 'staff_related_ticket_notification_to_assignee_only', '0', 1),
(320, 'show_pdf_signature_proposal', '1', 1),
(321, 'enable_honeypot_spam_validation', '0', 1),
(322, 'sms_clickatell_api_key', '', 1),
(323, 'sms_clickatell_active', '0', 1),
(324, 'sms_clickatell_initialized', '1', 1),
(325, 'sms_msg91_sender_id', '', 1),
(326, 'sms_msg91_api_type', 'api', 1),
(327, 'sms_msg91_auth_key', '', 1),
(328, 'sms_msg91_active', '0', 1),
(329, 'sms_msg91_initialized', '1', 1),
(330, 'sms_twilio_account_sid', '', 1),
(331, 'sms_twilio_auth_token', '', 1),
(332, 'sms_twilio_phone_number', '', 1),
(333, 'sms_twilio_sender_id', '', 1),
(334, 'sms_twilio_active', '0', 1),
(335, 'sms_twilio_initialized', '1', 1),
(336, 'hr_profile_hide_menu', '0', 1),
(337, 'pur_invoice_auto_operations_hour', '21', 1),
(338, 'next_debit_note_number', '1', 1),
(339, 'debit_note_number_format', '1', 1),
(340, 'debit_note_prefix', 'DN-', 1),
(341, 'show_purchase_tax_column', '1', 1),
(342, 'po_only_prefix_and_number', '0', 1),
(343, 'cr_date_cronjob_currency_rates', '', 1),
(344, 'cr_automatically_get_currency_rate', '1', 1),
(345, 'cr_global_amount_expiration', '0', 1),
(346, 'pur_return_request_within_x_day', '30', 1),
(347, 'pur_fee_for_return_order', '0', 1),
(348, 'pur_return_policies_information', '', 1),
(349, 'pur_order_return_number_prefix', 'OReturn', 1),
(350, 'next_pur_order_return_number', '1', 1),
(351, 'send_email_welcome_for_new_contact', '1', 1),
(352, 'reset_purchase_order_number_every_month', '1', 1),
(353, 'warehouse_selling_price_rule_profif_ratio', '0', 1),
(354, 'profit_rate_by_purchase_price_sale', '0', 1),
(355, 'warehouse_the_fractional_part', '0', 1),
(356, 'warehouse_integer_part', '0', 1),
(357, 'auto_create_goods_received', '0', 1),
(358, 'auto_create_goods_delivery', '0', 1),
(359, 'goods_receipt_warehouse', '0', 1),
(360, 'barcode_with_sku_code', '0', 1),
(361, 'revert_goods_receipt_goods_delivery', '0', 1),
(362, 'cancelled_invoice_reverse_inventory_delivery_voucher', '0', 1),
(363, 'uncancelled_invoice_create_inventory_delivery_voucher', '0', 1),
(364, 'inventory_auto_operations_hour', '0', 1),
(365, 'automatically_send_items_expired_before', '0', 1),
(366, 'inventorys_cronjob_active', '0', 1),
(367, 'inventory_cronjob_notification_recipients', '', 1),
(368, 'inventory_received_number_prefix', 'NK', 1),
(369, 'next_inventory_received_mumber', '2', 1),
(370, 'inventory_delivery_number_prefix', 'XK', 1),
(371, 'next_inventory_delivery_mumber', '2', 1),
(372, 'internal_delivery_number_prefix', 'ID', 1),
(373, 'next_internal_delivery_mumber', '1', 1),
(374, 'item_sku_prefix', '', 1),
(375, 'goods_receipt_required_po', '0', 1),
(376, 'goods_delivery_required_po', '0', 1),
(377, 'goods_delivery_pdf_display', '0', 1),
(378, 'display_product_name_when_print_barcode', '0', 1),
(379, 'show_item_cf_on_pdf', '0', 1),
(380, 'goods_delivery_pdf_display_outstanding', '0', 1),
(381, 'goods_delivery_pdf_display_warehouse_lotnumber_bottom_infor', '0', 1),
(382, 'packing_list_number_prefix', 'PL', 1),
(383, 'next_packing_list_number', '2', 1),
(384, 'wh_return_request_within_x_day', '30', 1),
(385, 'wh_fee_for_return_order', '0', 1),
(386, 'wh_return_policies_information', '', 1),
(387, 'wh_refund_loyaty_point', '1', 1),
(388, 'order_return_number_prefix', 'ReReturn', 1),
(389, 'next_order_return_number', '1', 1),
(390, 'e_order_return_number_prefix', 'DEReturn', 1),
(391, 'e_next_order_return_number', '1', 1),
(392, 'warehouse_receive_return_order ', '0', 1),
(393, 'wh_display_shipment_on_client_portal', '1', 1),
(394, 'wh_on_total_items', '200', 1),
(395, 'mailbox_enabled', '1', 1),
(396, 'mailbox_imap_server', '', 1),
(397, 'mailbox_encryption', '', 1),
(398, 'mailbox_folder_scan', 'Inbox', 1),
(399, 'mailbox_check_every', '3', 1),
(400, 'mailbox_only_loop_on_unseen_emails', '1', 1),
(401, 'paymentmethod_authorize_acceptjs_active', '0', 1),
(402, 'paymentmethod_authorize_acceptjs_label', 'Authorize.net Accept.js', 1),
(403, 'paymentmethod_authorize_acceptjs_public_key', '', 0),
(404, 'paymentmethod_authorize_acceptjs_api_login_id', '', 0),
(405, 'paymentmethod_authorize_acceptjs_api_transaction_key', '', 0),
(406, 'paymentmethod_authorize_acceptjs_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(407, 'paymentmethod_authorize_acceptjs_currencies', 'USD', 0),
(408, 'paymentmethod_authorize_acceptjs_test_mode_enabled', '0', 0),
(409, 'paymentmethod_authorize_acceptjs_default_selected', '1', 1),
(410, 'paymentmethod_authorize_acceptjs_initialized', '1', 1),
(411, 'paymentmethod_instamojo_active', '0', 1),
(412, 'paymentmethod_instamojo_label', 'Instamojo', 1),
(413, 'paymentmethod_instamojo_api_key', '', 0),
(414, 'paymentmethod_instamojo_auth_token', '', 0),
(415, 'paymentmethod_instamojo_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(416, 'paymentmethod_instamojo_currencies', 'INR', 0),
(417, 'paymentmethod_instamojo_test_mode_enabled', '1', 0),
(418, 'paymentmethod_instamojo_default_selected', '1', 1),
(419, 'paymentmethod_instamojo_initialized', '1', 1),
(420, 'paymentmethod_mollie_active', '0', 1),
(421, 'paymentmethod_mollie_label', 'Mollie', 1),
(422, 'paymentmethod_mollie_api_key', '', 0),
(423, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(424, 'paymentmethod_mollie_currencies', 'EUR', 0),
(425, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(426, 'paymentmethod_mollie_default_selected', '1', 1),
(427, 'paymentmethod_mollie_initialized', '1', 1),
(428, 'paymentmethod_paypal_braintree_active', '0', 1),
(429, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
(430, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(431, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(432, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(433, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
(434, 'paymentmethod_paypal_braintree_paypal_enabled', '1', 0),
(435, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(436, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
(437, 'paymentmethod_paypal_braintree_initialized', '1', 1),
(438, 'paymentmethod_paypal_checkout_active', '0', 1),
(439, 'paymentmethod_paypal_checkout_label', 'Paypal Smart Checkout', 1),
(440, 'paymentmethod_paypal_checkout_client_id', '', 0),
(441, 'paymentmethod_paypal_checkout_secret', '', 0),
(442, 'paymentmethod_paypal_checkout_payment_description', 'Payment for Invoice {invoice_number}', 0),
(443, 'paymentmethod_paypal_checkout_currencies', 'USD,CAD,EUR', 0),
(444, 'paymentmethod_paypal_checkout_test_mode_enabled', '1', 0),
(445, 'paymentmethod_paypal_checkout_default_selected', '1', 1),
(446, 'paymentmethod_paypal_checkout_initialized', '1', 1),
(447, 'paymentmethod_paypal_active', '0', 1),
(448, 'paymentmethod_paypal_label', 'Paypal', 1),
(449, 'paymentmethod_paypal_username', '', 0),
(450, 'paymentmethod_paypal_password', '', 0),
(451, 'paymentmethod_paypal_signature', '', 0),
(452, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(453, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
(454, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(455, 'paymentmethod_paypal_default_selected', '1', 1),
(456, 'paymentmethod_paypal_initialized', '1', 1),
(457, 'paymentmethod_payu_money_active', '0', 1),
(458, 'paymentmethod_payu_money_label', 'PayU Money', 1),
(459, 'paymentmethod_payu_money_key', '', 0),
(460, 'paymentmethod_payu_money_salt', '', 0),
(461, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(462, 'paymentmethod_payu_money_currencies', 'INR', 0),
(463, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
(464, 'paymentmethod_payu_money_default_selected', '1', 1),
(465, 'paymentmethod_payu_money_initialized', '1', 1),
(466, 'paymentmethod_stripe_active', '0', 1),
(467, 'paymentmethod_stripe_label', 'Stripe Checkout', 1),
(468, 'paymentmethod_stripe_api_publishable_key', '', 0),
(469, 'paymentmethod_stripe_api_secret_key', '', 0),
(470, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(471, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
(472, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
(473, 'paymentmethod_stripe_default_selected', '1', 1),
(474, 'paymentmethod_stripe_initialized', '1', 1),
(475, 'paymentmethod_stripe_ideal_active', '0', 1),
(476, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
(477, 'paymentmethod_stripe_ideal_api_secret_key', '', 0),
(478, 'paymentmethod_stripe_ideal_api_publishable_key', '', 0),
(479, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(480, 'paymentmethod_stripe_ideal_statement_descriptor', 'Payment for Invoice {invoice_number}', 0),
(481, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
(482, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
(483, 'paymentmethod_stripe_ideal_initialized', '1', 1),
(484, 'paymentmethod_two_checkout_active', '0', 1),
(485, 'paymentmethod_two_checkout_label', '2Checkout', 1),
(486, 'paymentmethod_two_checkout_merchant_code', '', 0),
(487, 'paymentmethod_two_checkout_secret_key', '', 0),
(488, 'paymentmethod_two_checkout_description', 'Payment for Invoice {invoice_number}', 0),
(489, 'paymentmethod_two_checkout_currencies', 'USD, EUR, GBP', 0),
(490, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
(491, 'paymentmethod_two_checkout_default_selected', '1', 1),
(492, 'paymentmethod_two_checkout_initialized', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_modes`
--

CREATE TABLE `tblpayment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `invoices_only` int(11) NOT NULL DEFAULT 0,
  `expenses_only` int(11) NOT NULL DEFAULT 0,
  `selected_by_default` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpayment_modes`
--

INSERT INTO `tblpayment_modes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'Bank', NULL, 0, 0, 0, 1, 1),
(2, 'کارت به کارت', '', 1, 0, 0, 0, 1),
(3, 'نقدی', '', 1, 0, 0, 0, 1),
(4, 'چک بانکی', '', 1, 0, 0, 0, 1),
(5, 'حواله بین بانکی', '', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpinned_projects`
--

CREATE TABLE `tblpinned_projects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblposition_training_question_form`
--

CREATE TABLE `tblposition_training_question_form` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `question_order` int(11) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussioncomments`
--

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `fullname` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblprojectdiscussioncomments`
--

INSERT INTO `tblprojectdiscussioncomments` (`id`, `discussion_id`, `discussion_type`, `parent`, `created`, `modified`, `content`, `staff_id`, `contact_id`, `fullname`, `file_name`, `file_mime_type`) VALUES
(1, 1, 'regular', NULL, '2022-09-25 11:35:42', NULL, '<p>سلام آخه چرا ؟؟&nbsp;</p>\n<p>مگه من چیکار کردم!!!</p>', 1, 0, 'محمددرضا زمانی', NULL, NULL),
(2, 1, 'regular', 1, '2022-09-25 11:36:11', NULL, '<p>تو ؟</p>', 1, 0, 'محمددرضا زمانی', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussions`
--

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblprojectdiscussions`
--

INSERT INTO `tblprojectdiscussions` (`id`, `project_id`, `subject`, `description`, `show_to_customer`, `datecreated`, `last_activity`, `staff_id`, `contact_id`) VALUES
(1, 245646, 'پیش فاکتور', 'یک عدد پیش فاکتور برای این پروژه بگیرید.', 1, '2022-09-06 12:36:26', '2022-09-25 11:36:11', 1, 0),
(2, 3, 'سلام', 'بله', 1, '2022-09-06 12:40:56', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT 0,
  `progress_from_tasks` int(11) NOT NULL DEFAULT 1,
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `contact_notification` int(11) DEFAULT 1,
  `notify_contacts` text DEFAULT NULL,
  `is_lead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_activity`
--

CREATE TABLE `tblproject_activity` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `description_key` varchar(191) NOT NULL COMMENT 'Language file key',
  `additional_data` text DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_files`
--

CREATE TABLE `tblproject_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `original_file_name` mediumtext DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT 0,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text DEFAULT NULL,
  `thumbnail_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_items_details`
--

CREATE TABLE `tblproject_items_details` (
  `id` int(11) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `addDate` varchar(150) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `product_model` varchar(150) DEFAULT NULL,
  `productNumber` varchar(150) DEFAULT NULL,
  `productBrand` varchar(150) DEFAULT NULL,
  `productCountry` varchar(150) DEFAULT NULL,
  `vazn` double DEFAULT NULL,
  `tol` double DEFAULT NULL,
  `arz` double DEFAULT NULL,
  `ertefa` double DEFAULT NULL,
  `mainDesc` longtext DEFAULT NULL,
  `main_details` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `sends` longtext DEFAULT NULL,
  `endPriceStr` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_members`
--

CREATE TABLE `tblproject_members` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_members`
--

INSERT INTO `tblproject_members` (`id`, `project_id`, `staff_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 4, 1),
(7, 5, 1),
(8, 6, 1),
(9, 7, 1),
(10, 8, 1),
(11, 9, 1),
(12, 245646, 1),
(13, 245646, 2),
(14, 245647, 1),
(15, 245647, 2),
(16, 245648, 1),
(17, 245649, 1),
(18, 245649, 2),
(19, 245650, 1),
(20, 245652, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_notes`
--

CREATE TABLE `tblproject_notes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_notes`
--

INSERT INTO `tblproject_notes` (`id`, `project_id`, `content`, `staff_id`) VALUES
(1, 2, '<p>سلام من هستم</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_settings`
--

CREATE TABLE `tblproject_settings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_settings`
--

INSERT INTO `tblproject_settings` (`id`, `project_id`, `name`, `value`) VALUES
(1, 1, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(2, 1, 'view_tasks', '1'),
(3, 1, 'create_tasks', '1'),
(4, 1, 'edit_tasks', '1'),
(5, 1, 'comment_on_tasks', '1'),
(6, 1, 'view_task_comments', '1'),
(7, 1, 'view_task_attachments', '1'),
(8, 1, 'view_task_checklist_items', '1'),
(9, 1, 'upload_on_tasks', '1'),
(10, 1, 'view_task_total_logged_time', '1'),
(11, 1, 'view_finance_overview', '1'),
(12, 1, 'upload_files', '1'),
(13, 1, 'open_discussions', '1'),
(14, 1, 'view_milestones', '1'),
(15, 1, 'view_gantt', '1'),
(16, 1, 'view_timesheets', '1'),
(17, 1, 'view_activity_log', '1'),
(18, 1, 'view_team_members', '1'),
(19, 1, 'hide_tasks_on_main_tasks_table', '0'),
(20, 2, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(21, 2, 'view_tasks', '1'),
(22, 2, 'create_tasks', '1'),
(23, 2, 'edit_tasks', '1'),
(24, 2, 'comment_on_tasks', '1'),
(25, 2, 'view_task_comments', '1'),
(26, 2, 'view_task_attachments', '1'),
(27, 2, 'view_task_checklist_items', '1'),
(28, 2, 'upload_on_tasks', '1'),
(29, 2, 'view_task_total_logged_time', '1'),
(30, 2, 'view_finance_overview', '1'),
(31, 2, 'upload_files', '1'),
(32, 2, 'open_discussions', '1'),
(33, 2, 'view_milestones', '1'),
(34, 2, 'view_gantt', '1'),
(35, 2, 'view_timesheets', '1'),
(36, 2, 'view_activity_log', '1'),
(37, 2, 'view_team_members', '1'),
(38, 2, 'hide_tasks_on_main_tasks_table', '0'),
(39, 3, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(40, 3, 'view_tasks', '1'),
(41, 3, 'create_tasks', '1'),
(42, 3, 'edit_tasks', '1'),
(43, 3, 'comment_on_tasks', '1'),
(44, 3, 'view_task_comments', '1'),
(45, 3, 'view_task_attachments', '1'),
(46, 3, 'view_task_checklist_items', '1'),
(47, 3, 'upload_on_tasks', '1'),
(48, 3, 'view_task_total_logged_time', '1'),
(49, 3, 'view_finance_overview', '1'),
(50, 3, 'upload_files', '1'),
(51, 3, 'open_discussions', '1'),
(52, 3, 'view_milestones', '1'),
(53, 3, 'view_gantt', '1'),
(54, 3, 'view_timesheets', '1'),
(55, 3, 'view_activity_log', '1'),
(56, 3, 'view_team_members', '1'),
(57, 3, 'hide_tasks_on_main_tasks_table', '0'),
(58, 4, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(59, 4, 'view_tasks', '1'),
(60, 4, 'create_tasks', '1'),
(61, 4, 'edit_tasks', '1'),
(62, 4, 'comment_on_tasks', '1'),
(63, 4, 'view_task_comments', '1'),
(64, 4, 'view_task_attachments', '1'),
(65, 4, 'view_task_checklist_items', '1'),
(66, 4, 'upload_on_tasks', '1'),
(67, 4, 'view_task_total_logged_time', '1'),
(68, 4, 'view_finance_overview', '1'),
(69, 4, 'upload_files', '1'),
(70, 4, 'open_discussions', '1'),
(71, 4, 'view_milestones', '1'),
(72, 4, 'view_gantt', '1'),
(73, 4, 'view_timesheets', '1'),
(74, 4, 'view_activity_log', '1'),
(75, 4, 'view_team_members', '1'),
(76, 4, 'hide_tasks_on_main_tasks_table', '0'),
(77, 5, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(78, 5, 'view_tasks', '1'),
(79, 5, 'create_tasks', '1'),
(80, 5, 'edit_tasks', '1'),
(81, 5, 'comment_on_tasks', '1'),
(82, 5, 'view_task_comments', '1'),
(83, 5, 'view_task_attachments', '1'),
(84, 5, 'view_task_checklist_items', '1'),
(85, 5, 'upload_on_tasks', '1'),
(86, 5, 'view_task_total_logged_time', '1'),
(87, 5, 'view_finance_overview', '1'),
(88, 5, 'upload_files', '1'),
(89, 5, 'open_discussions', '1'),
(90, 5, 'view_milestones', '1'),
(91, 5, 'view_gantt', '1'),
(92, 5, 'view_timesheets', '1'),
(93, 5, 'view_activity_log', '1'),
(94, 5, 'view_team_members', '1'),
(95, 5, 'hide_tasks_on_main_tasks_table', '0'),
(96, 6, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(97, 6, 'view_tasks', '1'),
(98, 6, 'create_tasks', '1'),
(99, 6, 'edit_tasks', '1'),
(100, 6, 'comment_on_tasks', '1'),
(101, 6, 'view_task_comments', '1'),
(102, 6, 'view_task_attachments', '1'),
(103, 6, 'view_task_checklist_items', '1'),
(104, 6, 'upload_on_tasks', '1'),
(105, 6, 'view_task_total_logged_time', '1'),
(106, 6, 'view_finance_overview', '1'),
(107, 6, 'upload_files', '1'),
(108, 6, 'open_discussions', '1'),
(109, 6, 'view_milestones', '1'),
(110, 6, 'view_gantt', '1'),
(111, 6, 'view_timesheets', '1'),
(112, 6, 'view_activity_log', '1'),
(113, 6, 'view_team_members', '1'),
(114, 6, 'hide_tasks_on_main_tasks_table', '0'),
(115, 7, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(116, 7, 'view_tasks', '1'),
(117, 7, 'create_tasks', '1'),
(118, 7, 'edit_tasks', '1'),
(119, 7, 'comment_on_tasks', '1'),
(120, 7, 'view_task_comments', '1'),
(121, 7, 'view_task_attachments', '1'),
(122, 7, 'view_task_checklist_items', '1'),
(123, 7, 'upload_on_tasks', '1'),
(124, 7, 'view_task_total_logged_time', '1'),
(125, 7, 'view_finance_overview', '1'),
(126, 7, 'upload_files', '1'),
(127, 7, 'open_discussions', '1'),
(128, 7, 'view_milestones', '1'),
(129, 7, 'view_gantt', '1'),
(130, 7, 'view_timesheets', '1'),
(131, 7, 'view_activity_log', '1'),
(132, 7, 'view_team_members', '1'),
(133, 7, 'hide_tasks_on_main_tasks_table', '0'),
(134, 8, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(135, 8, 'view_tasks', '1'),
(136, 8, 'create_tasks', '1'),
(137, 8, 'edit_tasks', '1'),
(138, 8, 'comment_on_tasks', '1'),
(139, 8, 'view_task_comments', '1'),
(140, 8, 'view_task_attachments', '1'),
(141, 8, 'view_task_checklist_items', '1'),
(142, 8, 'upload_on_tasks', '1'),
(143, 8, 'view_task_total_logged_time', '1'),
(144, 8, 'view_finance_overview', '1'),
(145, 8, 'upload_files', '1'),
(146, 8, 'open_discussions', '1'),
(147, 8, 'view_milestones', '1'),
(148, 8, 'view_gantt', '1'),
(149, 8, 'view_timesheets', '1'),
(150, 8, 'view_activity_log', '1'),
(151, 8, 'view_team_members', '1'),
(152, 8, 'hide_tasks_on_main_tasks_table', '0'),
(153, 9, 'available_features', 'a:20:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(154, 9, 'view_tasks', '1'),
(155, 9, 'create_tasks', '1'),
(156, 9, 'edit_tasks', '1'),
(157, 9, 'comment_on_tasks', '1'),
(158, 9, 'view_task_comments', '1'),
(159, 9, 'view_task_attachments', '1'),
(160, 9, 'view_task_checklist_items', '1'),
(161, 9, 'upload_on_tasks', '1'),
(162, 9, 'view_task_total_logged_time', '1'),
(163, 9, 'view_finance_overview', '1'),
(164, 9, 'upload_files', '1'),
(165, 9, 'open_discussions', '1'),
(166, 9, 'view_milestones', '1'),
(167, 9, 'view_gantt', '1'),
(168, 9, 'view_timesheets', '1'),
(169, 9, 'view_activity_log', '1'),
(170, 9, 'view_team_members', '1'),
(171, 9, 'hide_tasks_on_main_tasks_table', '0'),
(172, 245646, 'available_features', 'a:21:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:13:\"project_items\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(173, 245646, 'view_tasks', '1'),
(174, 245646, 'create_tasks', '1'),
(175, 245646, 'edit_tasks', '1'),
(176, 245646, 'comment_on_tasks', '1'),
(177, 245646, 'view_task_comments', '1'),
(178, 245646, 'view_task_attachments', '1'),
(179, 245646, 'view_task_checklist_items', '1'),
(180, 245646, 'upload_on_tasks', '1'),
(181, 245646, 'view_task_total_logged_time', '1'),
(182, 245646, 'view_finance_overview', '1'),
(183, 245646, 'upload_files', '1'),
(184, 245646, 'open_discussions', '1'),
(185, 245646, 'view_milestones', '1'),
(186, 245646, 'view_gantt', '1'),
(187, 245646, 'view_timesheets', '1'),
(188, 245646, 'view_activity_log', '1'),
(189, 245646, 'view_team_members', '1'),
(190, 245646, 'hide_tasks_on_main_tasks_table', '0'),
(191, 245647, 'available_features', 'a:21:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:13:\"project_items\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(192, 245647, 'view_tasks', '1'),
(193, 245647, 'create_tasks', '1'),
(194, 245647, 'edit_tasks', '1'),
(195, 245647, 'comment_on_tasks', '1'),
(196, 245647, 'view_task_comments', '1'),
(197, 245647, 'view_task_attachments', '1'),
(198, 245647, 'view_task_checklist_items', '1'),
(199, 245647, 'upload_on_tasks', '1'),
(200, 245647, 'view_task_total_logged_time', '1'),
(201, 245647, 'view_finance_overview', '1'),
(202, 245647, 'upload_files', '1'),
(203, 245647, 'open_discussions', '1'),
(204, 245647, 'view_milestones', '1'),
(205, 245647, 'view_gantt', '1'),
(206, 245647, 'view_timesheets', '1'),
(207, 245647, 'view_activity_log', '1'),
(208, 245647, 'view_team_members', '1'),
(209, 245647, 'hide_tasks_on_main_tasks_table', '0'),
(210, 245648, 'available_features', 'a:21:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:13:\"project_items\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(211, 245648, 'view_tasks', '1'),
(212, 245648, 'create_tasks', '1'),
(213, 245648, 'edit_tasks', '1'),
(214, 245648, 'comment_on_tasks', '1'),
(215, 245648, 'view_task_comments', '1'),
(216, 245648, 'view_task_attachments', '1'),
(217, 245648, 'view_task_checklist_items', '1'),
(218, 245648, 'upload_on_tasks', '1'),
(219, 245648, 'view_task_total_logged_time', '1'),
(220, 245648, 'view_finance_overview', '1'),
(221, 245648, 'upload_files', '1'),
(222, 245648, 'open_discussions', '1'),
(223, 245648, 'view_milestones', '1'),
(224, 245648, 'view_gantt', '1'),
(225, 245648, 'view_timesheets', '1'),
(226, 245648, 'view_activity_log', '1'),
(227, 245648, 'view_team_members', '1'),
(228, 245648, 'hide_tasks_on_main_tasks_table', '0'),
(229, 245649, 'available_features', 'a:21:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:13:\"project_items\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(230, 245649, 'view_tasks', '1'),
(231, 245649, 'create_tasks', '1'),
(232, 245649, 'edit_tasks', '1'),
(233, 245649, 'comment_on_tasks', '1'),
(234, 245649, 'view_task_comments', '1'),
(235, 245649, 'view_task_attachments', '1'),
(236, 245649, 'view_task_checklist_items', '1'),
(237, 245649, 'upload_on_tasks', '1'),
(238, 245649, 'view_task_total_logged_time', '1'),
(239, 245649, 'view_finance_overview', '1'),
(240, 245649, 'upload_files', '1'),
(241, 245649, 'open_discussions', '1'),
(242, 245649, 'view_milestones', '1'),
(243, 245649, 'view_gantt', '1'),
(244, 245649, 'view_timesheets', '1'),
(245, 245649, 'view_activity_log', '1'),
(246, 245649, 'view_team_members', '1'),
(247, 245649, 'hide_tasks_on_main_tasks_table', '0'),
(248, 245650, 'available_features', 'a:21:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:13:\"project_items\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(249, 245650, 'view_tasks', '1'),
(250, 245650, 'create_tasks', '1'),
(251, 245650, 'edit_tasks', '1'),
(252, 245650, 'comment_on_tasks', '1'),
(253, 245650, 'view_task_comments', '1'),
(254, 245650, 'view_task_attachments', '1'),
(255, 245650, 'view_task_checklist_items', '1'),
(256, 245650, 'upload_on_tasks', '1'),
(257, 245650, 'view_task_total_logged_time', '1'),
(258, 245650, 'view_finance_overview', '1'),
(259, 245650, 'upload_files', '1'),
(260, 245650, 'open_discussions', '1'),
(261, 245650, 'view_milestones', '1'),
(262, 245650, 'view_gantt', '1'),
(263, 245650, 'view_timesheets', '1'),
(264, 245650, 'view_activity_log', '1'),
(265, 245650, 'view_team_members', '1'),
(266, 245650, 'hide_tasks_on_main_tasks_table', '0'),
(267, 245652, 'available_features', 'a:21:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:17:\"project_proposals\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_invoices\";i:1;s:13:\"project_items\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:16:\"purchase_request\";i:1;s:14:\"purchase_order\";i:1;s:17:\"purchase_contract\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(268, 245652, 'view_tasks', '1'),
(269, 245652, 'create_tasks', '1'),
(270, 245652, 'edit_tasks', '1'),
(271, 245652, 'comment_on_tasks', '1'),
(272, 245652, 'view_task_comments', '1'),
(273, 245652, 'view_task_attachments', '1'),
(274, 245652, 'view_task_checklist_items', '1'),
(275, 245652, 'upload_on_tasks', '1'),
(276, 245652, 'view_task_total_logged_time', '1'),
(277, 245652, 'view_finance_overview', '1'),
(278, 245652, 'upload_files', '1'),
(279, 245652, 'open_discussions', '1'),
(280, 245652, 'view_milestones', '1'),
(281, 245652, 'view_gantt', '1'),
(282, 245652, 'view_timesheets', '1'),
(283, 245652, 'view_activity_log', '1'),
(284, 245652, 'view_team_members', '1'),
(285, 245652, 'hide_tasks_on_main_tasks_table', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblproposals`
--

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(191) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) DEFAULT 1,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL,
  `processing` text DEFAULT NULL,
  `send_time` varchar(150) DEFAULT NULL,
  `peymentType` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproposals`
--

INSERT INTO `tblproposals` (`id`, `subject`, `content`, `addedfrom`, `datecreated`, `total`, `subtotal`, `total_tax`, `adjustment`, `discount_percent`, `discount_total`, `discount_type`, `show_quantity_as`, `currency`, `open_till`, `date`, `rel_id`, `rel_type`, `assigned`, `hash`, `proposal_to`, `project_id`, `country`, `zip`, `state`, `city`, `address`, `email`, `phone`, `allow_comments`, `status`, `estimate_id`, `invoice_id`, `date_converted`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`, `short_link`, `processing`, `send_time`, `peymentType`) VALUES
(17, 'تستی', '{proposal_items}', 1, '2022-08-30 17:57:07', '870750.00', '870750.00', '0.00', '0.00', '0.00', '0.00', '', 1, 3, '2022-09-06', '2022-08-30', 2, 'customer', 0, '779dbf444b3f8c550e56262b04166601', 'ولی اسحاقی', 9, 104, '121212', '1212', '1212', '211212', 'talashcrm5@gmail.com', '45454', 1, 3, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 ماه', '40% پیش پرداخت مابقی زمان تحویل کالا'),
(18, 'پیش فاکتوره اقلام', '{proposal_items}', 1, '2022-09-05 23:12:26', '616510.00', '616500.00', '0.00', '10.00', '0.00', '0.00', '', 1, 3, '2022-09-12', '2022-09-05', 1, 'customer', 0, '5a076186617b8580b5f5543637087838', 'علی اصغر محسنی', 245646, 104, '0235698562', 'البرز', 'کرج', 'اتااتتاتاتاتا', 'talashcrm2@gmail.com', '02634512405', 1, 6, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15 روز کاری', '50% پیش پرداخت مابقی زمان تحویل کالا'),
(19, 'dfdfdfdf', '<p>&#1578;&#1608;&#1590;&#1740;&#1581;&#1575;&#1578;: <br>&#1605;&#1583;&#1578; &#1575;&#1593;&#1578;&#1576;&#1575;&#1585;: 3&#1585;&#1608;&#1586;, <br>&#1586;&#1605;&#1575;&#1606; &#1578;&#1581;&#1608;&#1740;&#1604;: , <br>&#1588;&#1740;&#1608;&#1607; &#1662;&#1585;&#1583;&#1575;&#1582;&#1578;: , <br>- &#1605;&#1581;&#1604; &#1578;&#1581;&#1608;&#1740;&#1604;: &#1575;&#1606;&#1576;&#1575;&#1585; &#1588;&#1585;&#1705;&#1578; &#1606;&#1711;&#1575;&#1585; &#1589;&#1606;&#1593;&#1578; &#1605;&#1575;&#1607;&#1575;&#1606; <br>- &#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578; &#1588;&#1605;&#1575;&#1585;&#1607;: <br>- &#1705;&#1575;&#1585;&#1588;&#1606;&#1575;&#1587; &#1601;&#1585;&#1608;&#1588;: &#1570;&#1602;&#1575;&#1740; &#1587;&#1604;&#1740;&#1605;&#1740; <br>- &#1581;&#1583;&#1575;&#1705;&#1579;&#1585; &#1586;&#1605;&#1575;&#1606; &#1575;&#1585;&#1587;&#1575;&#1604; &#1578;&#1575;&#1740;&#1740;&#1583; &#1601;&#1606;&#1740; &#1578;&#1608;&#1587;&#1591; &#1705;&#1575;&#1585;&#1601;&#1585;&#1605;&#1575; &#1740;&#1705; &#1607;&#1601;&#1578;&#1607; &#1662;&#1587; &#1575;&#1586; &#1578;&#1581;&#1608;&#1740;&#1604; &#1705;&#1575;&#1604;&#1575; &#1576;&#1608;&#1583;&#1607; &#1608; &#1593;&#1583;&#1605; &#1575;&#1585;&#1587;&#1575;&#1604; &#1578;&#1575;&#1740;&#1740;&#1583;&#1740;&#1607; &#1662;&#1587; &#1575;&#1586; &#1570;&#1606; &#1576;&#1607; &#1605;&#1606;&#1586;&#1604;&#1607; &#1578;&#1575;&#1740;&#1740;&#1583; &#1601;&#1606;&#1740; &#1705;&#1575;&#1604;&#1575;&#1607;&#1575; &#1605;&#1581;&#1587;&#1608;&#1576; &#1582;&#1608;&#1575;&#1607;&#1583; &#1588;&#1583;. <br>- &#1588;&#1605;&#1575;&#1585;&#1607; &#1588;&#1576;&#1575;&#1610; IR240570021701101435967001&#1576;&#1575;&#1606;&#1705; &#1662;&#1575;&#1587;&#1575;&#1585;&#1711;&#1575;&#1583; &#1576;&#1606;&#1575;&#1605; &#1588;&#1585;&#1705;&#1578; &#1606;&#1711;&#1575;&#1585; &#1589;&#1606;&#1593;&#1578; &#1605;&#1575;&#1607;&#1575;&#1606; <br>- &#1602;&#1740;&#1605;&#1578;&#1607;&#1575;&#1610; &#1601;&#1608;&#1602; &#1576;&#1585; &#1575;&#1587;&#1575;&#1587; &#1606;&#1585;&#1582; &#1601;&#1585;&#1608;&#1588; &#1575;&#1587;&#1705;&#1606;&#1575;&#1587; &#1740;&#1608;&#1585;&#1608; &#1587;&#1575;&#1605;&#1575;&#1606;&#1607; &#1587;&#1606;&#1575; &#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1589;&#1583;&#1608;&#1585; &#1662;&#1740;&#1588; &#1601;&#1575;&#1705;&#1578;&#1608;&#1585; &#1578;&#1606;&#1592;&#1740;&#1605; &#1608; &#1605;&#1581;&#1575;&#1587;&#1576;&#1607; &#1711;&#1585;&#1583;&#1740;&#1583;&#1607; &#1575;&#1587;&#1578;.&#1604;&#1584;&#1575; &#1583;&#1585; &#1589;&#1608;&#1585;&#1578; &#1575;&#1601;&#1586;&#1575;&#1740;&#1588; &#1606;&#1585;&#1582; &#1575;&#1585;&#1586; &#1602;&#1740;&#1605;&#1578;&#1607;&#1575; &#1578;&#1593;&#1583;&#1740;&#1604; &#1605;&#1740; &#1711;&#1585;&#1583;&#1583;.</p>\r\n<table border=\"1\" style=\"width:100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width:70%;\">&#1578;&#1608;&#1590;&#1740;&#1581;&#1575;&#1578;: <br>&#1605;&#1583;&#1578; &#1575;&#1593;&#1578;&#1576;&#1575;&#1585;: 3&#1585;&#1608;&#1586;, <br>&#1586;&#1605;&#1575;&#1606; &#1578;&#1581;&#1608;&#1740;&#1604;: , <br>&#1588;&#1740;&#1608;&#1607; &#1662;&#1585;&#1583;&#1575;&#1582;&#1578;: , <br>- &#1605;&#1581;&#1604; &#1578;&#1581;&#1608;&#1740;&#1604;: &#1575;&#1606;&#1576;&#1575;&#1585; &#1588;&#1585;&#1705;&#1578; &#1606;&#1711;&#1575;&#1585; &#1589;&#1606;&#1593;&#1578; &#1605;&#1575;&#1607;&#1575;&#1606; <br>- &#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578; &#1588;&#1605;&#1575;&#1585;&#1607;: <br>- &#1705;&#1575;&#1585;&#1588;&#1606;&#1575;&#1587; &#1601;&#1585;&#1608;&#1588;: &#1570;&#1602;&#1575;&#1740; &#1587;&#1604;&#1740;&#1605;&#1740; <br>- &#1581;&#1583;&#1575;&#1705;&#1579;&#1585; &#1586;&#1605;&#1575;&#1606; &#1575;&#1585;&#1587;&#1575;&#1604; &#1578;&#1575;&#1740;&#1740;&#1583; &#1601;&#1606;&#1740; &#1578;&#1608;&#1587;&#1591; &#1705;&#1575;&#1585;&#1601;&#1585;&#1605;&#1575; &#1740;&#1705; &#1607;&#1601;&#1578;&#1607; &#1662;&#1587; &#1575;&#1586; &#1578;&#1581;&#1608;&#1740;&#1604; &#1705;&#1575;&#1604;&#1575; &#1576;&#1608;&#1583;&#1607; &#1608; &#1593;&#1583;&#1605; &#1575;&#1585;&#1587;&#1575;&#1604; &#1578;&#1575;&#1740;&#1740;&#1583;&#1740;&#1607; &#1662;&#1587; &#1575;&#1586; &#1570;&#1606; &#1576;&#1607; &#1605;&#1606;&#1586;&#1604;&#1607; &#1578;&#1575;&#1740;&#1740;&#1583; &#1601;&#1606;&#1740; &#1705;&#1575;&#1604;&#1575;&#1607;&#1575; &#1605;&#1581;&#1587;&#1608;&#1576; &#1582;&#1608;&#1575;&#1607;&#1583; &#1588;&#1583;. <br>- &#1588;&#1605;&#1575;&#1585;&#1607; &#1588;&#1576;&#1575;&#1610; IR240570021701101435967001&#1576;&#1575;&#1606;&#1705; &#1662;&#1575;&#1587;&#1575;&#1585;&#1711;&#1575;&#1583; &#1576;&#1606;&#1575;&#1605; &#1588;&#1585;&#1705;&#1578; &#1606;&#1711;&#1575;&#1585; &#1589;&#1606;&#1593;&#1578; &#1605;&#1575;&#1607;&#1575;&#1606; <br>- &#1602;&#1740;&#1605;&#1578;&#1607;&#1575;&#1610; &#1601;&#1608;&#1602; &#1576;&#1585; &#1575;&#1587;&#1575;&#1587; &#1606;&#1585;&#1582; &#1601;&#1585;&#1608;&#1588; &#1575;&#1587;&#1705;&#1606;&#1575;&#1587; &#1740;&#1608;&#1585;&#1608; &#1587;&#1575;&#1605;&#1575;&#1606;&#1607; &#1587;&#1606;&#1575; &#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1589;&#1583;&#1608;&#1585; &#1662;&#1740;&#1588; &#1601;&#1575;&#1705;&#1578;&#1608;&#1585; &#1578;&#1606;&#1592;&#1740;&#1605; &#1608; &#1605;&#1581;&#1575;&#1587;&#1576;&#1607; &#1711;&#1585;&#1583;&#1740;&#1583;&#1607; &#1575;&#1587;&#1578;.&#1604;&#1584;&#1575; &#1583;&#1585; &#1589;&#1608;&#1585;&#1578; &#1575;&#1601;&#1586;&#1575;&#1740;&#1588; &#1606;&#1585;&#1582; &#1575;&#1585;&#1586; &#1602;&#1740;&#1605;&#1578;&#1607;&#1575; &#1578;&#1593;&#1583;&#1740;&#1604; &#1605;&#1740; &#1711;&#1585;&#1583;&#1583;. </td>\r\n<td style=\"width:30%;\"></td>\r\n</tr>\r\n</tbody>\r\n</table>', 4, '2022-10-19 19:03:51', '108000.00', '108000.00', '0.00', '0.00', '0.00', '0.00', '', 1, 3, '2022-10-26', '2022-10-19', 1, 'customer', 0, '97057155e210aeba72c2a83db4f4a9f1', 'علی اصغر محسنی', 0, 104, '0235698562', 'البرز', 'کرج', 'اتااتتاتاتاتا', 'talashcrm2@gmail.com', '02634512405', 1, 4, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblproposal_comments`
--

CREATE TABLE `tblproposal_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproposal_comments`
--

INSERT INTO `tblproposal_comments` (`id`, `content`, `proposalid`, `staffid`, `dateadded`) VALUES
(1, 'این نظر من است', 2, 1, '2022-08-23 15:58:49'),
(2, 'این یک نظر دیگر من است', 2, 1, '2022-08-23 15:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase_option`
--

CREATE TABLE `tblpurchase_option` (
  `option_id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext DEFAULT NULL,
  `auto` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpurchase_option`
--

INSERT INTO `tblpurchase_option` (`option_id`, `option_name`, `option_val`, `auto`) VALUES
(1, 'purchase_order_setting', '1', 1),
(2, 'pur_order_prefix', '#PO', 1),
(3, 'next_po_number', '2', 1),
(4, 'date_reset_number', '', 1),
(5, 'pur_request_prefix', '#PR', 1),
(6, 'next_pr_number', '2', 1),
(7, 'date_reset_pr_number', '', 1),
(8, 'pur_inv_prefix', '#INV', 1),
(9, 'next_inv_number', '2', 1),
(10, 'create_invoice_by', 'contract', 1),
(11, 'item_by_vendor', '0', 1),
(12, 'terms_and_conditions', '', 1),
(13, 'vendor_note', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_activity_log`
--

CREATE TABLE `tblpur_activity_log` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_approval_details`
--

CREATE TABLE `tblpur_approval_details` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `approve` varchar(45) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_approval_setting`
--

CREATE TABLE `tblpur_approval_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `related` varchar(255) NOT NULL,
  `setting` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_comments`
--

CREATE TABLE `tblpur_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `rel_type` varchar(50) NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_contacts`
--

CREATE TABLE `tblpur_contacts` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT 1,
  `estimate_emails` tinyint(1) NOT NULL DEFAULT 1,
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT 1,
  `contract_emails` tinyint(1) NOT NULL DEFAULT 1,
  `task_emails` tinyint(1) NOT NULL DEFAULT 1,
  `project_emails` tinyint(1) NOT NULL DEFAULT 1,
  `ticket_emails` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpur_contacts`
--

INSERT INTO `tblpur_contacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `email_verified_at`, `email_verification_key`, `email_verification_sent_at`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`) VALUES
(1, 1, 1, 'توماس', 'موللر', 'tomass@gmail.com', '023659874125', 'بازرگانی خارجی', '2022-08-25 16:55:33', '$2a$08$.SeqqVaM/MQ74jn0bLoDzODKxE3ugX82uLr1hmznTW1XN78aNMyqu', NULL, NULL, '2022-08-25 16:55:33', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'ltr', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_contracts`
--

CREATE TABLE `tblpur_contracts` (
  `id` int(11) UNSIGNED NOT NULL,
  `contract_number` varchar(200) NOT NULL,
  `contract_name` varchar(200) NOT NULL,
  `content` longtext DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `pur_order` int(11) NOT NULL,
  `contract_value` decimal(15,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL,
  `time_payment` date DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `signed` int(32) NOT NULL DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `signer` int(11) DEFAULT NULL,
  `signed_date` date DEFAULT NULL,
  `signed_status` varchar(50) DEFAULT NULL,
  `service_category` text DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `payment_terms` text DEFAULT NULL,
  `payment_amount` decimal(15,2) DEFAULT NULL,
  `payment_cycle` varchar(50) DEFAULT NULL,
  `department` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_debits`
--

CREATE TABLE `tblpur_debits` (
  `id` int(11) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `debit_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `date_applied` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_debits_refunds`
--

CREATE TABLE `tblpur_debits_refunds` (
  `id` int(11) UNSIGNED NOT NULL,
  `debit_note_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `refunded_on` date DEFAULT NULL,
  `payment_mode` varchar(40) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_debit_notes`
--

CREATE TABLE `tblpur_debit_notes` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `deleted_vendor_name` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `vendornote` text DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT NULL,
  `total_tax` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT NULL,
  `discount_total` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) DEFAULT NULL,
  `show_shipping_on_debit_note` tinyint(1) DEFAULT NULL,
  `show_quantity_as` int(11) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_estimates`
--

CREATE TABLE `tblpur_estimates` (
  `id` int(11) UNSIGNED NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `deleted_vendor_name` varchar(100) DEFAULT NULL,
  `pur_request` int(11) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `vendornote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `pipeline_order` int(11) NOT NULL DEFAULT 0,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `make_a_contract` text DEFAULT NULL,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `shipping_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpur_estimates`
--

INSERT INTO `tblpur_estimates` (`id`, `sent`, `datesend`, `vendor`, `deleted_vendor_name`, `pur_request`, `number`, `prefix`, `number_format`, `hash`, `datecreated`, `date`, `expirydate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `status`, `vendornote`, `adminnote`, `discount_percent`, `discount_total`, `discount_type`, `invoiceid`, `invoiced_date`, `terms`, `reference_no`, `buyer`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_estimate`, `show_quantity_as`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`, `make_a_contract`, `currency_rate`, `from_currency`, `to_currency`, `shipping_fee`) VALUES
(1, 0, NULL, 1, NULL, 0, 1, 'EST-', 1, '243f8fafc2a26df6ff419c01cbd114b7', '2022-08-25 16:57:44', '2022-08-25', '2022-09-01', 1, '625000.00', '0.00', '1079545.00', NULL, 1, 2, '', NULL, '0.00', '0.00', NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.000000', '3', '1', '454545.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_estimate_detail`
--

CREATE TABLE `tblpur_estimate_detail` (
  `id` int(11) NOT NULL,
  `pur_estimate` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `item_name` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpur_estimate_detail`
--

INSERT INTO `tblpur_estimate_detail` (`id`, `pur_estimate`, `item_code`, `unit_id`, `unit_price`, `quantity`, `into_money`, `tax`, `total`, `total_money`, `discount_money`, `discount_%`, `tax_value`, `tax_rate`, `tax_name`, `item_name`) VALUES
(1, 1, '1', 1, '125000.00', '5.00', '625000.00', NULL, '625000.00', '625000.00', '0.00', '0.00', '0.00', NULL, NULL, '1_فلومتر اندرس هاوزر');

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_invoices`
--

CREATE TABLE `tblpur_invoices` (
  `id` int(11) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `invoice_number` text DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `tax` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `contract` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `transactionid` mediumtext DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `payment_request_status` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `vendor_note` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `add_from` int(11) DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `pur_order` int(11) DEFAULT NULL,
  `recurring` int(11) DEFAULT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `cycles` int(11) DEFAULT 0,
  `total_cycles` int(11) DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `is_recurring_from` int(11) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `add_from_type` varchar(20) DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `discount_total` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT NULL,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `shipping_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpur_invoices`
--

INSERT INTO `tblpur_invoices` (`id`, `number`, `invoice_number`, `invoice_date`, `subtotal`, `tax_rate`, `tax`, `total`, `contract`, `vendor`, `transactionid`, `transaction_date`, `payment_request_status`, `payment_status`, `vendor_note`, `adminnote`, `terms`, `add_from`, `date_add`, `pur_order`, `recurring`, `recurring_type`, `cycles`, `total_cycles`, `last_recurring_date`, `is_recurring_from`, `duedate`, `add_from_type`, `currency`, `discount_total`, `discount_percent`, `currency_rate`, `from_currency`, `to_currency`, `shipping_fee`) VALUES
(1, 1, '#INV00001', '2022-08-25', '731250.00', NULL, '0.00', '731250.00', NULL, 1, NULL, '2022-08-25', NULL, 'paid', NULL, NULL, NULL, 1, '2022-08-25', 1, NULL, NULL, 0, 0, NULL, NULL, '2022-08-18', 'admin', 3, '0.00', '0.00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_invoice_details`
--

CREATE TABLE `tblpur_invoice_details` (
  `id` int(11) NOT NULL,
  `pur_invoice` int(11) NOT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) DEFAULT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `item_name` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpur_invoice_details`
--

INSERT INTO `tblpur_invoice_details` (`id`, `pur_invoice`, `item_code`, `description`, `unit_id`, `unit_price`, `quantity`, `into_money`, `tax`, `total`, `discount_percent`, `discount_money`, `total_money`, `tax_value`, `tax_rate`, `tax_name`, `item_name`) VALUES
(1, 1, '1', 'فلومتر اندرس هاوزر خوب است.', 0, '146250.00', '5.00', '731250.00', NULL, '731250.00', '0.00', '0.00', '731250.00', '0.00', NULL, NULL, 'فلومتر اندرس هاوزر');

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_invoice_payment`
--

CREATE TABLE `tblpur_invoice_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `pur_invoice` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` longtext DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL,
  `approval_status` int(2) DEFAULT NULL,
  `requester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpur_invoice_payment`
--

INSERT INTO `tblpur_invoice_payment` (`id`, `pur_invoice`, `amount`, `paymentmode`, `date`, `daterecorded`, `note`, `transactionid`, `approval_status`, `requester`) VALUES
(1, 1, '9630.00', '1', '2022-08-18', '2022-08-25 17:04:01', 'پرداخت شد.', '4554', 2, 1),
(2, 1, '721620.00', '1', '2022-08-02', '2022-08-25 17:05:45', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_orders`
--

CREATE TABLE `tblpur_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `pur_order_name` varchar(100) NOT NULL,
  `vendor` int(11) NOT NULL,
  `estimate` int(11) NOT NULL,
  `pur_order_number` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `status` int(32) NOT NULL DEFAULT 1,
  `approve_status` int(32) NOT NULL DEFAULT 1,
  `datecreated` datetime NOT NULL,
  `days_owed` int(11) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendornote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `status_goods` int(11) NOT NULL DEFAULT 0,
  `number` int(11) DEFAULT NULL,
  `expense_convert` int(11) DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `clients` text DEFAULT NULL,
  `delivery_status` int(2) DEFAULT 0,
  `type` text DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `pur_request` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `tax_order_rate` decimal(15,2) DEFAULT NULL,
  `tax_order_amount` decimal(15,2) DEFAULT NULL,
  `sale_invoice` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `order_status` varchar(30) DEFAULT NULL,
  `shipping_note` text DEFAULT NULL,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `shipping_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpur_orders`
--

INSERT INTO `tblpur_orders` (`id`, `pur_order_name`, `vendor`, `estimate`, `pur_order_number`, `order_date`, `status`, `approve_status`, `datecreated`, `days_owed`, `delivery_date`, `subtotal`, `total_tax`, `total`, `addedfrom`, `vendornote`, `terms`, `discount_percent`, `discount_total`, `discount_type`, `buyer`, `status_goods`, `number`, `expense_convert`, `hash`, `clients`, `delivery_status`, `type`, `project`, `pur_request`, `department`, `tax_order_rate`, `tax_order_amount`, `sale_invoice`, `currency`, `order_status`, `shipping_note`, `currency_rate`, `from_currency`, `to_currency`, `shipping_fee`) VALUES
(1, 'سفارش خرید', 1, 0, '#PO-00001-Aug-2022', '2022-08-25', 1, 2, '2022-08-25 17:02:47', 0, NULL, '731250.00', '0.00', '731250.00', 1, '', '', '0.00', '0.00', NULL, 1, 0, 1, 0, '74bc2fe29d6a2cba376d416d70a978fd', '1', 0, '', 1, 1, 1, NULL, NULL, 3, 3, 'new', NULL, '1.000000', '3', '3', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_order_detail`
--

CREATE TABLE `tblpur_order_detail` (
  `id` int(11) NOT NULL,
  `pur_order` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `wh_quantity_received` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpur_order_detail`
--

INSERT INTO `tblpur_order_detail` (`id`, `pur_order`, `item_code`, `description`, `unit_id`, `unit_price`, `quantity`, `into_money`, `tax`, `total`, `discount_%`, `discount_money`, `total_money`, `tax_value`, `tax_rate`, `tax_name`, `item_name`, `wh_quantity_received`) VALUES
(1, 1, '1', 'فلومتر اندرس هاوزر خوب است.', 0, '146250.00', '5.00', '731250.00', NULL, '731250.00', '0.00', '0.00', '731250.00', '0.00', NULL, NULL, 'فلومتر اندرس هاوزر', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_order_payment`
--

CREATE TABLE `tblpur_order_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `pur_order` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` longtext DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_request`
--

CREATE TABLE `tblpur_request` (
  `id` int(11) NOT NULL,
  `pur_rq_code` varchar(45) NOT NULL,
  `pur_rq_name` varchar(100) NOT NULL,
  `rq_description` text DEFAULT NULL,
  `requester` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `status_goods` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `from_items` int(2) DEFAULT 1,
  `subtotal` decimal(15,2) DEFAULT NULL,
  `total_tax` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `sale_invoice` int(11) DEFAULT NULL,
  `compare_note` text DEFAULT NULL,
  `send_to_vendors` text DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `sale_estimate` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpur_request`
--

INSERT INTO `tblpur_request` (`id`, `pur_rq_code`, `pur_rq_name`, `rq_description`, `requester`, `department`, `request_date`, `status`, `status_goods`, `hash`, `type`, `project`, `number`, `from_items`, `subtotal`, `total_tax`, `total`, `sale_invoice`, `compare_note`, `send_to_vendors`, `currency`, `currency_rate`, `from_currency`, `to_currency`, `sale_estimate`) VALUES
(1, '#PR-00001-2022-بازرگانیداخلی', 'خرید 3 عدد فلومتر اندرس هاوزر', 'ما به خرید نیاز داریم ...', 1, 1, '2022-08-25 17:00:30', 2, 0, '608c8c263276396e6c1b399fba865e0f', '', 1, 1, 1, '438750.00', '0.00', '438750.00', 2, NULL, NULL, 3, '1.000000', '3', '3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_request_detail`
--

CREATE TABLE `tblpur_request_detail` (
  `prd_id` int(11) NOT NULL,
  `pur_request` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `inventory_quantity` int(11) DEFAULT 0,
  `item_text` text DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `tax_name` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpur_request_detail`
--

INSERT INTO `tblpur_request_detail` (`prd_id`, `pur_request`, `item_code`, `unit_id`, `unit_price`, `quantity`, `into_money`, `inventory_quantity`, `item_text`, `tax`, `tax_rate`, `tax_value`, `total`, `tax_name`) VALUES
(1, 1, '1', NULL, '146250.00', '3.00', '438750.00', 0, 'فلومتر اندرس هاوزر', NULL, NULL, '0.00', '438750.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_unit`
--

CREATE TABLE `tblpur_unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor`
--

CREATE TABLE `tblpur_vendor` (
  `userid` int(11) UNSIGNED NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  `vat` varchar(200) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT 0,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0,
  `category` text DEFAULT NULL,
  `bank_detail` text DEFAULT NULL,
  `payment_terms` text DEFAULT NULL,
  `vendor_code` varchar(100) DEFAULT NULL,
  `return_within_day` int(11) DEFAULT NULL,
  `return_order_fee` decimal(15,2) DEFAULT NULL,
  `return_policies` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpur_vendor`
--

INSERT INTO `tblpur_vendor` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`, `category`, `bank_detail`, `payment_terms`, `vendor_code`, `return_within_day`, `return_order_fee`, `return_policies`) VALUES
(1, 'اندرس هاوزر', '12121212', '00986253698', 83, 'مونیخ', '0000', 'مرکزی المان', 'کوچه شهید انیشتین', 'www.enderess.com', '2022-08-25 16:54:33', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, 'german', 1, 0, NULL, 1, 1, NULL, 'بانک در المان قرار دارد', 'همش نقد ', '1', 30, '0.00', '70 درصد کل مبلغ بر گردانده می شود... ');

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor_admin`
--

CREATE TABLE `tblpur_vendor_admin` (
  `staff_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date_assigned` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor_cate`
--

CREATE TABLE `tblpur_vendor_cate` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor_items`
--

CREATE TABLE `tblpur_vendor_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor` int(11) NOT NULL,
  `group_items` int(11) DEFAULT NULL,
  `items` int(11) NOT NULL,
  `add_from` int(11) DEFAULT NULL,
  `datecreate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblp_t_form_question_box_description`
--

CREATE TABLE `tblp_t_form_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  `correct` int(11) DEFAULT 1 COMMENT '0: correct 1: incorrect'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrecords_meta`
--

CREATE TABLE `tblrecords_meta` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `meta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblrecords_meta`
--

INSERT INTO `tblrecords_meta` (`id`, `name`, `meta`) VALUES
(1, 'staff_identifi', 'staff_identifi'),
(2, 'firstname', 'firstname'),
(3, 'email', 'email'),
(4, 'phonenumber', 'phonenumber'),
(5, 'facebook', 'facebook'),
(6, 'skype', 'skype'),
(7, 'birthday', 'birthday'),
(8, 'birthplace', 'birthplace'),
(9, 'home_town', 'home_town'),
(10, 'marital_status', 'marital_status'),
(11, 'nation', 'nation'),
(12, 'religion', 'religion'),
(13, 'identification', 'identification'),
(14, 'days_for_identity', 'days_for_identity'),
(15, 'place_of_issue', 'place_of_issue'),
(16, 'resident', 'resident'),
(17, 'current_address', 'current_address'),
(18, 'literacy', 'literacy');

-- --------------------------------------------------------

--
-- Table structure for table `tblrec_criteria`
--

CREATE TABLE `tblrec_criteria` (
  `criteria_id` int(11) UNSIGNED NOT NULL,
  `criteria_type` varchar(45) NOT NULL,
  `criteria_title` varchar(200) NOT NULL,
  `group_criteria` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `add_date` date DEFAULT NULL,
  `score_des1` text DEFAULT NULL,
  `score_des2` text DEFAULT NULL,
  `score_des3` text DEFAULT NULL,
  `score_des4` text DEFAULT NULL,
  `score_des5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrec_job_position`
--

CREATE TABLE `tblrec_job_position` (
  `position_id` int(11) UNSIGNED NOT NULL,
  `position_name` varchar(200) NOT NULL,
  `position_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrec_set_transfer_record`
--

CREATE TABLE `tblrec_set_transfer_record` (
  `set_id` int(11) UNSIGNED NOT NULL,
  `send_to` varchar(45) NOT NULL,
  `email_to` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `add_date` date NOT NULL,
  `subject` text NOT NULL,
  `content` text DEFAULT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrec_transfer_records`
--

CREATE TABLE `tblrec_transfer_records` (
  `id` int(11) UNSIGNED NOT NULL,
  `staffid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `staff_identifi` varchar(20) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `datecreator` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrelated_items`
--

CREATE TABLE `tblrelated_items` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblreminders`
--

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT 0,
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT 1,
  `creator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblreminders`
--

INSERT INTO `tblreminders` (`id`, `description`, `date`, `isnotified`, `rel_id`, `staff`, `rel_type`, `notify_by_email`, `creator`) VALUES
(1, 'square', '2022-10-12 18:00:00', 0, 243675, 1, 'lead', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblroles`
--

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`, `permissions`) VALUES
(1, 'Employee', NULL),
(2, 'مدیر بازرگانی داخلی', 'a:46:{s:17:\"bulk_pdf_exporter\";a:1:{i:0;s:4:\"view\";}s:9:\"contracts\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:12:\"credit_notes\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:9:\"customers\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:15:\"email_templates\";a:2:{i:0;s:4:\"view\";i:1;s:4:\"edit\";}s:9:\"estimates\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"expenses\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"invoices\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:5:\"items\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:14:\"knowledge_base\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"payments\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"projects\";a:7:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";i:4;s:17:\"create_milestones\";i:5;s:15:\"edit_milestones\";i:6;s:17:\"delete_milestones\";}s:9:\"proposals\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:7:\"reports\";a:2:{i:0;s:4:\"view\";i:1;s:15:\"view-timesheets\";}s:5:\"roles\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"settings\";a:2:{i:0;s:4:\"view\";i:1;s:4:\"edit\";}s:5:\"staff\";a:3:{i:0;s:4:\"view\";i:1;s:4:\"edit\";i:2;s:6:\"delete\";}s:13:\"subscriptions\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:5:\"tasks\";a:8:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";i:4;s:14:\"edit_timesheet\";i:5;s:18:\"edit_own_timesheet\";i:6;s:16:\"delete_timesheet\";i:7;s:20:\"delete_own_timesheet\";}s:19:\"checklist_templates\";a:2:{i:0;s:6:\"create\";i:1;s:6:\"delete\";}s:16:\"estimate_request\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:5:\"leads\";a:2:{i:0;s:4:\"view\";i:1;s:6:\"delete\";}s:13:\"hrm_dashboard\";a:1:{i:0;s:4:\"view\";}s:20:\"staffmanage_orgchart\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:19:\"hrm_reception_staff\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:14:\"hrm_hr_records\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:24:\"staffmanage_job_position\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:20:\"staffmanage_training\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:13:\"hr_manage_q_a\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:12:\"hrm_contract\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:20:\"hrm_dependent_person\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:32:\"hrm_procedures_for_quitting_work\";a:4:{i:0;s:8:\"view_own\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:10:\"hrm_report\";a:1:{i:0;s:4:\"view\";}s:11:\"hrm_setting\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:14:\"purchase_items\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:16:\"purchase_vendors\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:21:\"purchase_vendor_items\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:16:\"purchase_request\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:19:\"purchase_quotations\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:15:\"purchase_orders\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:21:\"purchase_order_return\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:18:\"purchase_contracts\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:17:\"purchase_invoices\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:20:\"purchase_debit_notes\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:16:\"purchase_reports\";a:1:{i:0;s:4:\"view\";}s:9:\"warehouse\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_activity`
--

CREATE TABLE `tblsales_activity` (
  `id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsales_activity`
--

INSERT INTO `tblsales_activity` (`id`, `rel_type`, `rel_id`, `description`, `additional_data`, `staffid`, `full_name`, `date`) VALUES
(1, 'invoice', 1, 'invoice_activity_created', '', '1', 'mohammadreza zamani', '2022-08-23 14:49:24'),
(2, 'estimate', 1, 'estimate_activity_created', '', '1', 'mohammadreza zamani', '2022-08-23 15:07:03'),
(3, 'invoice', 2, 'invoice_activity_created', '', '1', 'mohammadreza zamani', '2022-08-23 16:30:38'),
(4, 'invoice', 3, 'invoice_activity_created', '', '1', 'mohammadreza zamani', '2022-08-23 16:49:43'),
(5, 'invoice', 3, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>3</new_status>\";}', '1', 'mohammadreza zamani', '2022-08-23 18:39:54'),
(6, 'invoice', 3, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:18:\"293,250.00ريال\";i:1;s:85:\"<a href=\"http://localhost/talash_crm/admin/payments/payment/1\" target=\"_blank\">#1</a>\";}', '1', 'mohammadreza zamani', '2022-08-23 18:39:54'),
(7, 'invoice', 1, 'invoice_activity_applied_credits', 'a:2:{i:0;s:18:\"146,231.00ريال\";i:1;s:9:\"CN-000001\";}', '1', 'mohammadreza zamani', '2022-08-23 18:44:16'),
(8, 'invoice', 1, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>3</new_status>\";}', '1', 'mohammadreza zamani', '2022-08-23 18:44:16'),
(9, 'invoice', 1, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>3</original_status>\";i:1;s:26:\"<new_status>1</new_status>\";}', '1', 'mohammadreza zamani', '2022-08-23 18:44:30'),
(10, 'invoice', 4, 'invoice_activity_created', '', '1', 'mohammadreza zamani', '2022-08-23 19:59:22'),
(11, 'estimate', 1, 'estimate_activity_marked', 'a:1:{i:0;s:18:\"<status>4</status>\";}', '1', 'mohammadreza zamani', '2022-08-25 17:15:39'),
(12, 'invoice', 4, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'mohammadreza zamani', '2022-08-25 17:48:23'),
(13, 'invoice', 4, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:18:\"146,250.00ريال\";i:1;s:85:\"<a href=\"http://localhost/talash_crm/admin/payments/payment/2\" target=\"_blank\">#2</a>\";}', '1', 'mohammadreza zamani', '2022-08-25 17:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblscheduled_emails`
--

CREATE TABLE `tblscheduled_emails` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `contacts` varchar(197) NOT NULL,
  `cc` text DEFAULT NULL,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT 1,
  `template` varchar(197) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0chfh7sont3gkgn47l16inll771prn84', '::1', 1667484117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438343131373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('169optloiri0d3dudsugjldn9khfp6id', '::1', 1667479639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437393633393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('18tv6vn7i7prkbgm26bitmv3tll7juol', '::1', 1667476735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437363733353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('1tmj2v00knkrnlth1e3h90fpmq5a8pfs', '127.0.0.1', 1667500241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530303234313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('2ku9pfogrj5vm1utrjeecq39lghh4t1o', '::1', 1667478915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437383931353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('391l2rsgfpee27ep0pcd1sef77smto1d', '::1', 1667582844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373538323834343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('3e3c3cp95looo8q3kuff1o45pb6c587g', '::1', 1667477095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437373039353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('3g327dpdom1as5jlv3ie80n83tjhg3n0', '::1', 1667485379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438353337393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('4c7jd2iqde8ang6ata1lha43v970t0ru', '::1', 1667480374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438303337343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('4et78p8rgludan23pcb31idc6ht23aq7', '::1', 1667584231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373538343233313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('4ijlt6a8p2c3vs9hsaitgjvg44o9vci5', '::1', 1667581538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373538313533383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4mv93ai0bj8cj2tuvt4oo5eahvvh8ki6', '::1', 1667481899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438313839393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('4nla0a0nv68ba836s5rcarjq9h1b5cbd', '::1', 1667476383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437363338333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('5go2uqbk0sol9flulc0n57t9jktunt65', '::1', 1667486662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438363636323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('6s5vcbcf15v65ftijdiofej3bgtd7c45', '::1', 1667494963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439343936333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('6teh0c8eeqab0sv6ic99fmp6tqsmkagv', '::1', 1667505863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530353836333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('7ffjstn4r0vrq6af6nk4k2lnuenb17h1', '::1', 1667493082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439333038323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('7neqja6d1hlocdu0j33dck9r6u9ena6r', '::1', 1667487014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438373031343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('9frj4mmgqrqo680ppi0hcnuc5dl2ui9g', '::1', 1667578827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373537383832373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9ti3n45183ru1o1grrsvh25q3t17ufmu', '::1', 1667496134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439363133343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('ad82rlrl36cigkoklpjqdar8e84bqdu3', '::1', 1667487944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438373934343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('afjr4dgvct83dsu9c7fgs6rrts12gpp8', '::1', 1667487641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438373634313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('aqmkdmngsff8l29sht5ukt13tj79uago', '::1', 1667487315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438373331353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('b4dn4cg3egitffeqs6r7pu22h9s9jo3t', '::1', 1667496528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439363532383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('bf46fd7q3lqpski3ija3tj9396v1pfdu', '::1', 1667493589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439333538393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('bfgcga8aq5fn15mmqnmnkn3cvqggvj1e', '127.0.0.1', 1667488195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438383139353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('bj98kni626aei1oftnapck62hach97k4', '::1', 1667502384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530323338343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('bu4bhr0cuj5rl61939cth8e1kfigu2pt', '::1', 1667474568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437343536383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('c1rvodapek7at5vetvd90vt51607h0ds', '::1', 1667472764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437323736343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('c90q506gv2dmv5jpit23f2olfi22b04c', '::1', 1667472406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437323430363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('cemj8ur2fji567me7ukorc9654v6fs6b', '::1', 1667475224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437353232343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('ef1j18492o7tjkiecj85rlr4guifs74q', '::1', 1667486335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438363333353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('etr03s52hrdnbkj9bekni4svncjl16p8', '::1', 1667576054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373537363035343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('euig130qs0ll4emcjpjteh5l162uq4pn', '::1', 1667492368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439323336383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('f5gdjemjgvidmn1ddapfrhdct5iqpdfu', '::1', 1667480812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438303831323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('fd4j4te0ust1sbrimir2obs9l4fe5gcd', '::1', 1667483810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438333831303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('fg3h23o2tgqddu0bleeogfu5h95mns7i', '::1', 1667586178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373538363137383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('g1dsh565n726b56v5cg859fkmi75dojd', '::1', 1667576480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373537363438303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('gbkck8mr3e7r9lgii1bsq49kla4vj1n4', '::1', 1667506321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530363139363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('gdigh7hikskeglfnp97qsb204pcbbvhe', '::1', 1667586178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373538363137383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('i56l12ttt1lhiulvt0lrb30cs8q2r8nm', '::1', 1667481203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438313230333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('i5qkih801dv4f0bl2ngt3au2tnr3m8gr', '::1', 1667503100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530333130303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('icfoigdvl7mniiph1bi6kt6fr8gllu61', '127.0.0.1', 1667500353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530303335333b),
('ipr7hl8qvr18mud47609lqe22q3066pq', '::1', 1667504060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530343036303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('it6sf3jp47sofu534dm379i49q1m20r3', '::1', 1667481563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438313536333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('jj74b372urbkof83pg23jp7f77ofuh07', '127.0.0.1', 1667500543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530303534333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('kcm2ar5pn5o58j3kq8bc7daqfac554j8', '::1', 1667476055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437363035353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('kdpgchgu9gqutjj0s9u4vq212bt532hh', '127.0.0.1', 1667478583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437383538333b),
('kqcjjc69bnhl832rcflsa95pio7e6mm1', '::1', 1667505461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530353436313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('l0q3nphsuu8u7fn3hnakv1eu5q6j6j0s', '::1', 1667505148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530353134383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('l4fmi5c40nbq0mvm2r7elst94r9rm0r0', '::1', 1667501773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530313737333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('l546vvnepvrdb1dosel0130lqrknf88a', '::1', 1667503449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530333434393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('l82d9c8756h7j6n21vei3b5i63vbicp2', '::1', 1667479227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437393232373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('ldrabh5djbus3f38mev830q9cp5anscu', '::1', 1667475733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437353733333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('lepsam0vs23jhdqllufdkn5daog5d0qp', '::1', 1667479960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437393936303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('mm121o3p8hfoh7u2neboujejes9b1j2f', '::1', 1667499664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439393636343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('nuq0nd4vd0so1d51fs931b4cvaifpsvs', '::1', 1667494387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439343338373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('oa9lskee7cvkn5o4t3va5vkpc3ek2evf', '::1', 1667578407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373537383430373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('oeeeit5nopunrcggaqn49ahbtcraoeqp', '127.0.0.1', 1667500584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530303534333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('oem44mrpsl2ivl6mugluu54rvtv74k1q', '127.0.0.1', 1667500353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530303335333b7265645f75726c7c733a35303a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f61646d696e2f636c69656e74732f636c69656e742f31223b),
('ohevf3il9vgsehb5dpgsoqevt1s042u6', '::1', 1667484451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438343435313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('oq7ihguafjv0snh8e1crgh2phag66ugt', '::1', 1667492739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439323733393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('ovsv1id4bus0osd9f3och9bb1dmgb8n4', '::1', 1667504369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530343336393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('pguc2ek0uus3kueb2tsb1jq27j6drsjq', '::1', 1667484986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438343938363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('pktfjv1gn874g673anbnf444mjb4t5cl', '::1', 1667506196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530363139363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('pp1mmii315p1un4gef1qhmar4matt30p', '::1', 1667500621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530303632313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('qik7s5o8r7hdtjaib9p54of2vjhmbr5m', '::1', 1667473159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437333135393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('qjib1cgok0915pcfefnsvq55l45ugi7l', '::1', 1667578042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373537383034323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('qlci874umqvbmu0d8pjnlfqb7vqk4q0k', '::1', 1667483494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438333439343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('r26bfeptqd0c9j2ergb15quejc1h3p8p', '::1', 1667495644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439353634343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('r46tdevf35njs9ihemffqij1ofu62243', '::1', 1667584727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373538343732373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('rf7s7ctc5ij8117ueockt3kcnjou91s5', '::1', 1667500221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530303232313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('rhlu71vbh3763d4v80n4gc1o843apet7', '::1', 1667488252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438383235323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('rls7s6pllujldeuqn0s94q3i5mco0de9', '::1', 1667486026, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438363032363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('rqsdnd3ad9kpmko2g39ka93a3tm94sa5', '::1', 1667504688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530343638383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('sj02l2fped2tisd06nu3u87fc2nb7135', '::1', 1667482863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438323836333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b73657475702d6d656e752d6f70656e7c733a303a22223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('t7udh10jv5oh9u3n824f7bpesbp691lh', '::1', 1667495297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373439353239373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b7461736b735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('t9mpg6bqf2d5kenk39v871ci645i90el', '::1', 1667502079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530323037393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('tefdugiip0t1d9tao9fk7nrl653fsv8n', '::1', 1667502730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373530323733303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ugb6oi0j7u2u6o2h49ctubmj276s16d1', '::1', 1667582217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373538323231373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b),
('uh0f8u28dpvdah5p2v70ctlvgfe5rnbg', '::1', 1667485686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438353638363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f223b6c656164735f6b616e62616e5f766965777c733a353a2266616c7365223b),
('un4q9d8025110s8bkqsp0ca5vsot4rrl', '127.0.0.1', 1667478583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373437383538333b7265645f75726c7c733a33333a22687474703a2f2f6c6f63616c686f73742f74616c6173685f63726d2f61646d696e223b),
('usf3lgeoorkh3l40o9vs8v9dt46toirm', '127.0.0.1', 1667485971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373438353937313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting_asset_allocation`
--

CREATE TABLE `tblsetting_asset_allocation` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `meta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting_training`
--

CREATE TABLE `tblsetting_training` (
  `id` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `position_training` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting_transfer_records`
--

CREATE TABLE `tblsetting_transfer_records` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `meta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblshared_customer_files`
--

CREATE TABLE `tblshared_customer_files` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblspam_filters`
--

CREATE TABLE `tblspam_filters` (
  `id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `rel_type` varchar(10) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext DEFAULT NULL,
  `linkedin` mediumtext DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(191) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `two_factor_auth_enabled` tinyint(1) DEFAULT 0,
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` text DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `birthplace` varchar(200) DEFAULT NULL,
  `sex` varchar(15) DEFAULT NULL,
  `marital_status` varchar(25) DEFAULT NULL,
  `nation` varchar(25) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `identification` varchar(100) DEFAULT NULL,
  `days_for_identity` date DEFAULT NULL,
  `home_town` varchar(200) DEFAULT NULL,
  `resident` varchar(200) DEFAULT NULL,
  `current_address` varchar(200) DEFAULT NULL,
  `literacy` varchar(50) DEFAULT NULL,
  `orther_infor` text DEFAULT NULL,
  `job_position` int(11) DEFAULT NULL,
  `workplace` int(11) DEFAULT NULL,
  `place_of_issue` varchar(50) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `name_account` varchar(50) DEFAULT NULL,
  `issue_bank` varchar(200) DEFAULT NULL,
  `records_received` longtext DEFAULT NULL,
  `Personal_tax_code` varchar(50) DEFAULT NULL,
  `google_auth_secret` text DEFAULT NULL,
  `team_manage` int(11) DEFAULT 0,
  `staff_identifi` varchar(200) DEFAULT NULL,
  `status_work` varchar(100) DEFAULT NULL,
  `date_update` date DEFAULT NULL,
  `mail_password` varchar(250) DEFAULT NULL,
  `mail_signature` varchar(250) DEFAULT NULL,
  `last_email_check` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`, `birthday`, `birthplace`, `sex`, `marital_status`, `nation`, `religion`, `identification`, `days_for_identity`, `home_town`, `resident`, `current_address`, `literacy`, `orther_infor`, `job_position`, `workplace`, `place_of_issue`, `account_number`, `name_account`, `issue_bank`, `records_received`, `Personal_tax_code`, `google_auth_secret`, `team_manage`, `staff_identifi`, `status_work`, `date_update`, `mail_password`, `mail_signature`, `last_email_check`) VALUES
(1, 'talashcrm@gmail.com', 'محمدرضا', 'زمانی', '', '', '', '', '$2a$08$WwDmBWNWb853OeqKdTsZQuwZ.8pqWrhYagr0dalH4xyVoMxSBKc9.', '2022-08-21 10:43:05', NULL, '::1', '2022-11-04 21:22:02', '2022-11-04 21:52:58', NULL, NULL, NULL, 1, 0, 1, 'english', 'rtl', NULL, 0, '0.00', 0, NULL, NULL, '', NULL, '', 'male', '', '', '', '', NULL, '', '', '', '', '', 1, 0, '', '', '', '', NULL, '', NULL, 0, '1', 'working', '2022-10-02', NULL, NULL, NULL),
(2, 'elnaz@gmail.com', 'الناز', 'زمانی غرقه', '', '', '09379438395', '', '$2a$08$ejd7NXAjwAKeABu.ccVW7.X/bbkSz9N1KfOOhgEMBnk4KSbkCQSyK', '2022-08-23 14:23:04', NULL, '127.0.0.1', '2022-10-02 13:35:42', '2022-10-02 13:43:55', '2022-08-26 21:25:50', NULL, NULL, 0, 2, 1, '', 'rtl', 'ln-z-zm-n-ghrkh', 0, '0.00', 0, NULL, NULL, '', '1992-08-08', '', 'female', '', '', '', '', NULL, '', '', '', '', '', 2, 0, '', '', '', '', NULL, '', NULL, 1, 'EC00001', 'working', '2022-08-26', NULL, NULL, NULL),
(3, 'kashani@gmail.com', 'محمد', 'کاشانی', '', '', '', '', '$2a$08$otdrbqnhM1kHhFigsO6mxu.z39YQgPO.B9GftXoCuadNFp5FPOGZe', '2022-10-02 19:44:19', NULL, '::1', '2022-11-04 18:49:40', '2022-11-04 21:21:53', NULL, NULL, NULL, 0, 2, 1, '', 'rtl', 'mhmd-ashany', 0, '0.00', 0, NULL, NULL, '', NULL, '', 'male', '', '', '', '', NULL, '', '', '', '', '', 6, 0, '', '', '', '', NULL, '', NULL, 0, 'EC00002', 'working', '2022-10-03', '1212', '', NULL),
(4, 'salimi@gmail.com', 'محمد', 'سلیمی', '', '', '', '', '$2a$08$wR.ufiVRdeE/BHHQ6j6nreJZ/Ufor8HfgKl6xMhmD3YmyqG8H92cq', '2022-10-02 19:44:54', NULL, '127.0.0.1', '2022-10-23 13:45:37', '2022-10-23 21:31:27', NULL, NULL, NULL, 0, 2, 1, '', 'rtl', 'mhmd-slymy', 0, '0.00', 0, NULL, NULL, '', NULL, '', 'male', '', '', '', '', NULL, '', '', '', '', '', 4, 0, '', '', '', '', NULL, '', NULL, 0, 'EC00003', 'working', '2022-10-03', NULL, NULL, NULL),
(5, 'saeed@gmail.com', 'سعید', 'سعیدی', '', '', '', '', '$2a$08$iE3g3cdYNBpV/AMsvw9jBOZbkhpk2Omls0s9F0i/MqcWEY3borNje', '2022-10-02 19:45:34', NULL, '::1', '2022-10-03 18:00:05', '2022-10-03 18:13:56', NULL, NULL, NULL, 0, 2, 1, '', 'rtl', 'sayd-saydy', 0, '0.00', 0, NULL, NULL, '', NULL, '', 'male', '', '', '', '', NULL, '', '', '', '', '', 5, 0, '', '', '', '', NULL, '', NULL, 0, 'EC00004', 'working', '2022-10-03', NULL, NULL, NULL),
(6, 'mehranfar@gmail.com', 'علی', 'مهرانفر', '', '', '', '', '$2a$08$nBak0gCAACXHvAZnFSP3teQ4BLQD5L9fXYc4s5PeJXmlbqWeBeauC', '2022-10-02 19:46:20', NULL, '::1', '2022-10-23 13:45:55', '2022-10-23 21:31:33', NULL, NULL, NULL, 0, 2, 1, '', 'rtl', 'aly-mhranfr', 0, '0.00', 0, NULL, NULL, '', NULL, '', 'male', '', '', '', '', NULL, '', '', '', '', '', 3, 0, '', '', '', '', NULL, '', NULL, 0, 'EC00005', 'working', '2022-10-03', NULL, NULL, NULL),
(7, 'montajebi@gmail.com', 'مسعود', 'منتجبی', '', '', '', '', '$2a$08$kmPraPr.lk3S6SbEZPn32ulbcGPTLTqFFTpiQi1MxR5YZRD4rGGVe', '2022-10-02 19:46:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '', '', 'msaod-mntjby', 0, '0.00', 0, NULL, NULL, '', NULL, '', 'male', '', '', '', '', NULL, '', '', '', '', '', 1, 0, '', '', '', '', NULL, '', NULL, 0, 'EC00006', 'working', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_departments`
--

CREATE TABLE `tblstaff_departments` (
  `staffdepartmentid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff_departments`
--

INSERT INTO `tblstaff_departments` (`staffdepartmentid`, `staffid`, `departmentid`) VALUES
(3, 2, 1),
(8, 7, 5),
(13, 6, 4),
(15, 3, 2),
(17, 4, 3),
(18, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_permissions`
--

CREATE TABLE `tblstaff_permissions` (
  `staff_id` int(11) NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff_permissions`
--

INSERT INTO `tblstaff_permissions` (`staff_id`, `feature`, `capability`) VALUES
(2, 'bulk_pdf_exporter', 'view'),
(2, 'contracts', 'view_own'),
(2, 'contracts', 'create'),
(2, 'contracts', 'edit'),
(2, 'contracts', 'delete'),
(2, 'credit_notes', 'view_own'),
(2, 'credit_notes', 'create'),
(2, 'credit_notes', 'edit'),
(2, 'credit_notes', 'delete'),
(2, 'customers', 'view'),
(2, 'customers', 'create'),
(2, 'customers', 'edit'),
(2, 'customers', 'delete'),
(2, 'email_templates', 'view'),
(2, 'email_templates', 'edit'),
(2, 'estimates', 'view_own'),
(2, 'estimates', 'create'),
(2, 'estimates', 'edit'),
(2, 'estimates', 'delete'),
(2, 'expenses', 'view_own'),
(2, 'expenses', 'create'),
(2, 'expenses', 'edit'),
(2, 'expenses', 'delete'),
(2, 'invoices', 'view_own'),
(2, 'invoices', 'create'),
(2, 'invoices', 'edit'),
(2, 'invoices', 'delete'),
(2, 'items', 'view'),
(2, 'items', 'create'),
(2, 'items', 'edit'),
(2, 'items', 'delete'),
(2, 'knowledge_base', 'view'),
(2, 'knowledge_base', 'create'),
(2, 'knowledge_base', 'edit'),
(2, 'knowledge_base', 'delete'),
(2, 'payments', 'view'),
(2, 'payments', 'create'),
(2, 'payments', 'edit'),
(2, 'payments', 'delete'),
(2, 'projects', 'view'),
(2, 'projects', 'create'),
(2, 'projects', 'edit'),
(2, 'projects', 'delete'),
(2, 'projects', 'create_milestones'),
(2, 'projects', 'edit_milestones'),
(2, 'projects', 'delete_milestones'),
(2, 'proposals', 'view_own'),
(2, 'proposals', 'create'),
(2, 'proposals', 'edit'),
(2, 'proposals', 'delete'),
(2, 'reports', 'view'),
(2, 'reports', 'view-timesheets'),
(2, 'roles', 'view'),
(2, 'roles', 'create'),
(2, 'roles', 'edit'),
(2, 'roles', 'delete'),
(2, 'settings', 'view'),
(2, 'settings', 'edit'),
(2, 'staff', 'view'),
(2, 'staff', 'edit'),
(2, 'staff', 'delete'),
(2, 'subscriptions', 'view_own'),
(2, 'subscriptions', 'create'),
(2, 'subscriptions', 'edit'),
(2, 'subscriptions', 'delete'),
(2, 'tasks', 'view'),
(2, 'tasks', 'create'),
(2, 'tasks', 'edit'),
(2, 'tasks', 'delete'),
(2, 'tasks', 'edit_timesheet'),
(2, 'tasks', 'edit_own_timesheet'),
(2, 'tasks', 'delete_timesheet'),
(2, 'tasks', 'delete_own_timesheet'),
(2, 'checklist_templates', 'create'),
(2, 'checklist_templates', 'delete'),
(2, 'estimate_request', 'view_own'),
(2, 'estimate_request', 'create'),
(2, 'estimate_request', 'edit'),
(2, 'estimate_request', 'delete'),
(2, 'leads', 'view'),
(2, 'leads', 'delete'),
(2, 'hrm_dashboard', 'view'),
(2, 'staffmanage_orgchart', 'view_own'),
(2, 'staffmanage_orgchart', 'create'),
(2, 'staffmanage_orgchart', 'edit'),
(2, 'staffmanage_orgchart', 'delete'),
(2, 'hrm_reception_staff', 'view_own'),
(2, 'hrm_reception_staff', 'create'),
(2, 'hrm_reception_staff', 'edit'),
(2, 'hrm_reception_staff', 'delete'),
(2, 'hrm_hr_records', 'view_own'),
(2, 'hrm_hr_records', 'create'),
(2, 'hrm_hr_records', 'edit'),
(2, 'hrm_hr_records', 'delete'),
(2, 'staffmanage_job_position', 'view_own'),
(2, 'staffmanage_job_position', 'create'),
(2, 'staffmanage_job_position', 'edit'),
(2, 'staffmanage_job_position', 'delete'),
(2, 'staffmanage_training', 'view_own'),
(2, 'staffmanage_training', 'create'),
(2, 'staffmanage_training', 'edit'),
(2, 'staffmanage_training', 'delete'),
(2, 'hr_manage_q_a', 'view'),
(2, 'hr_manage_q_a', 'create'),
(2, 'hr_manage_q_a', 'edit'),
(2, 'hr_manage_q_a', 'delete'),
(2, 'hrm_contract', 'view_own'),
(2, 'hrm_contract', 'create'),
(2, 'hrm_contract', 'edit'),
(2, 'hrm_contract', 'delete'),
(2, 'hrm_dependent_person', 'view_own'),
(2, 'hrm_dependent_person', 'create'),
(2, 'hrm_dependent_person', 'edit'),
(2, 'hrm_dependent_person', 'delete'),
(2, 'hrm_procedures_for_quitting_work', 'view_own'),
(2, 'hrm_procedures_for_quitting_work', 'create'),
(2, 'hrm_procedures_for_quitting_work', 'edit'),
(2, 'hrm_procedures_for_quitting_work', 'delete'),
(2, 'hrm_report', 'view'),
(2, 'hrm_setting', 'view'),
(2, 'hrm_setting', 'create'),
(2, 'hrm_setting', 'edit'),
(2, 'hrm_setting', 'delete'),
(2, 'purchase_items', 'view'),
(2, 'purchase_items', 'create'),
(2, 'purchase_items', 'edit'),
(2, 'purchase_items', 'delete'),
(2, 'purchase_vendors', 'view'),
(2, 'purchase_vendors', 'create'),
(2, 'purchase_vendors', 'edit'),
(2, 'purchase_vendors', 'delete'),
(2, 'purchase_vendor_items', 'view'),
(2, 'purchase_vendor_items', 'create'),
(2, 'purchase_vendor_items', 'edit'),
(2, 'purchase_vendor_items', 'delete'),
(2, 'purchase_request', 'view'),
(2, 'purchase_request', 'create'),
(2, 'purchase_request', 'edit'),
(2, 'purchase_request', 'delete'),
(2, 'purchase_quotations', 'view'),
(2, 'purchase_quotations', 'create'),
(2, 'purchase_quotations', 'edit'),
(2, 'purchase_quotations', 'delete'),
(2, 'purchase_orders', 'view'),
(2, 'purchase_orders', 'create'),
(2, 'purchase_orders', 'edit'),
(2, 'purchase_orders', 'delete'),
(2, 'purchase_order_return', 'view'),
(2, 'purchase_order_return', 'create'),
(2, 'purchase_order_return', 'edit'),
(2, 'purchase_order_return', 'delete'),
(2, 'purchase_contracts', 'view'),
(2, 'purchase_contracts', 'create'),
(2, 'purchase_contracts', 'edit'),
(2, 'purchase_contracts', 'delete'),
(2, 'purchase_invoices', 'view'),
(2, 'purchase_invoices', 'create'),
(2, 'purchase_invoices', 'edit'),
(2, 'purchase_invoices', 'delete'),
(2, 'purchase_debit_notes', 'view'),
(2, 'purchase_debit_notes', 'create'),
(2, 'purchase_debit_notes', 'edit'),
(2, 'purchase_debit_notes', 'delete'),
(2, 'purchase_reports', 'view'),
(2, 'warehouse', 'view'),
(2, 'warehouse', 'create'),
(2, 'warehouse', 'edit'),
(2, 'warehouse', 'delete'),
(6, 'bulk_pdf_exporter', 'view'),
(6, 'contracts', 'view_own'),
(6, 'contracts', 'create'),
(6, 'contracts', 'edit'),
(6, 'contracts', 'delete'),
(6, 'credit_notes', 'view_own'),
(6, 'credit_notes', 'create'),
(6, 'credit_notes', 'edit'),
(6, 'credit_notes', 'delete'),
(6, 'customers', 'view'),
(6, 'customers', 'create'),
(6, 'customers', 'edit'),
(6, 'customers', 'delete'),
(6, 'email_templates', 'view'),
(6, 'email_templates', 'edit'),
(6, 'estimates', 'view_own'),
(6, 'estimates', 'create'),
(6, 'estimates', 'edit'),
(6, 'estimates', 'delete'),
(6, 'expenses', 'view_own'),
(6, 'expenses', 'create'),
(6, 'expenses', 'edit'),
(6, 'expenses', 'delete'),
(6, 'invoices', 'view_own'),
(6, 'invoices', 'create'),
(6, 'invoices', 'edit'),
(6, 'invoices', 'delete'),
(6, 'items', 'view'),
(6, 'items', 'create'),
(6, 'items', 'edit'),
(6, 'items', 'delete'),
(6, 'knowledge_base', 'view'),
(6, 'knowledge_base', 'create'),
(6, 'knowledge_base', 'edit'),
(6, 'knowledge_base', 'delete'),
(6, 'payments', 'view'),
(6, 'payments', 'create'),
(6, 'payments', 'edit'),
(6, 'payments', 'delete'),
(6, 'projects', 'view'),
(6, 'projects', 'create'),
(6, 'projects', 'edit'),
(6, 'projects', 'delete'),
(6, 'projects', 'create_milestones'),
(6, 'projects', 'edit_milestones'),
(6, 'projects', 'delete_milestones'),
(6, 'proposals', 'view_own'),
(6, 'proposals', 'create'),
(6, 'proposals', 'edit'),
(6, 'proposals', 'delete'),
(6, 'reports', 'view'),
(6, 'reports', 'view-timesheets'),
(6, 'roles', 'view'),
(6, 'roles', 'create'),
(6, 'roles', 'edit'),
(6, 'roles', 'delete'),
(6, 'settings', 'view'),
(6, 'settings', 'edit'),
(6, 'staff', 'view'),
(6, 'staff', 'edit'),
(6, 'staff', 'delete'),
(6, 'subscriptions', 'view_own'),
(6, 'subscriptions', 'create'),
(6, 'subscriptions', 'edit'),
(6, 'subscriptions', 'delete'),
(6, 'tasks', 'view'),
(6, 'tasks', 'create'),
(6, 'tasks', 'edit'),
(6, 'tasks', 'delete'),
(6, 'tasks', 'edit_timesheet'),
(6, 'tasks', 'edit_own_timesheet'),
(6, 'tasks', 'delete_timesheet'),
(6, 'tasks', 'delete_own_timesheet'),
(6, 'checklist_templates', 'create'),
(6, 'checklist_templates', 'delete'),
(6, 'estimate_request', 'view_own'),
(6, 'estimate_request', 'create'),
(6, 'estimate_request', 'edit'),
(6, 'estimate_request', 'delete'),
(6, 'leads', 'view'),
(6, 'leads', 'delete'),
(6, 'hrm_dashboard', 'view'),
(6, 'staffmanage_orgchart', 'view_own'),
(6, 'staffmanage_orgchart', 'create'),
(6, 'staffmanage_orgchart', 'edit'),
(6, 'staffmanage_orgchart', 'delete'),
(6, 'hrm_reception_staff', 'view_own'),
(6, 'hrm_reception_staff', 'create'),
(6, 'hrm_reception_staff', 'edit'),
(6, 'hrm_reception_staff', 'delete'),
(6, 'hrm_hr_records', 'view_own'),
(6, 'hrm_hr_records', 'create'),
(6, 'hrm_hr_records', 'edit'),
(6, 'hrm_hr_records', 'delete'),
(6, 'staffmanage_job_position', 'view_own'),
(6, 'staffmanage_job_position', 'create'),
(6, 'staffmanage_job_position', 'edit'),
(6, 'staffmanage_job_position', 'delete'),
(6, 'staffmanage_training', 'view_own'),
(6, 'staffmanage_training', 'create'),
(6, 'staffmanage_training', 'edit'),
(6, 'staffmanage_training', 'delete'),
(6, 'hr_manage_q_a', 'view'),
(6, 'hr_manage_q_a', 'create'),
(6, 'hr_manage_q_a', 'edit'),
(6, 'hr_manage_q_a', 'delete'),
(6, 'hrm_contract', 'view_own'),
(6, 'hrm_contract', 'create'),
(6, 'hrm_contract', 'edit'),
(6, 'hrm_contract', 'delete'),
(6, 'hrm_dependent_person', 'view_own'),
(6, 'hrm_dependent_person', 'create'),
(6, 'hrm_dependent_person', 'edit'),
(6, 'hrm_dependent_person', 'delete'),
(6, 'hrm_procedures_for_quitting_work', 'view_own'),
(6, 'hrm_procedures_for_quitting_work', 'create'),
(6, 'hrm_procedures_for_quitting_work', 'edit'),
(6, 'hrm_procedures_for_quitting_work', 'delete'),
(6, 'hrm_report', 'view'),
(6, 'hrm_setting', 'view'),
(6, 'hrm_setting', 'create'),
(6, 'hrm_setting', 'edit'),
(6, 'hrm_setting', 'delete'),
(6, 'purchase_items', 'view'),
(6, 'purchase_items', 'create'),
(6, 'purchase_items', 'edit'),
(6, 'purchase_items', 'delete'),
(6, 'purchase_vendors', 'view'),
(6, 'purchase_vendors', 'create'),
(6, 'purchase_vendors', 'edit'),
(6, 'purchase_vendors', 'delete'),
(6, 'purchase_vendor_items', 'view'),
(6, 'purchase_vendor_items', 'create'),
(6, 'purchase_vendor_items', 'edit'),
(6, 'purchase_vendor_items', 'delete'),
(6, 'purchase_request', 'view'),
(6, 'purchase_request', 'create'),
(6, 'purchase_request', 'edit'),
(6, 'purchase_request', 'delete'),
(6, 'purchase_quotations', 'view'),
(6, 'purchase_quotations', 'create'),
(6, 'purchase_quotations', 'edit'),
(6, 'purchase_quotations', 'delete'),
(6, 'purchase_orders', 'view'),
(6, 'purchase_orders', 'create'),
(6, 'purchase_orders', 'edit'),
(6, 'purchase_orders', 'delete'),
(6, 'purchase_order_return', 'view'),
(6, 'purchase_order_return', 'create'),
(6, 'purchase_order_return', 'edit'),
(6, 'purchase_order_return', 'delete'),
(6, 'purchase_contracts', 'view'),
(6, 'purchase_contracts', 'create'),
(6, 'purchase_contracts', 'edit'),
(6, 'purchase_contracts', 'delete'),
(6, 'purchase_invoices', 'view'),
(6, 'purchase_invoices', 'create'),
(6, 'purchase_invoices', 'edit'),
(6, 'purchase_invoices', 'delete'),
(6, 'purchase_debit_notes', 'view'),
(6, 'purchase_debit_notes', 'create'),
(6, 'purchase_debit_notes', 'edit'),
(6, 'purchase_debit_notes', 'delete'),
(6, 'purchase_reports', 'view'),
(6, 'warehouse', 'view'),
(6, 'warehouse', 'create'),
(6, 'warehouse', 'edit'),
(6, 'warehouse', 'delete'),
(3, 'bulk_pdf_exporter', 'view'),
(3, 'contracts', 'view_own'),
(3, 'contracts', 'create'),
(3, 'contracts', 'edit'),
(3, 'contracts', 'delete'),
(3, 'credit_notes', 'view_own'),
(3, 'credit_notes', 'create'),
(3, 'credit_notes', 'edit'),
(3, 'credit_notes', 'delete'),
(3, 'customers', 'view'),
(3, 'customers', 'create'),
(3, 'customers', 'edit'),
(3, 'customers', 'delete'),
(3, 'email_templates', 'view'),
(3, 'email_templates', 'edit'),
(3, 'estimates', 'view_own'),
(3, 'estimates', 'create'),
(3, 'estimates', 'edit'),
(3, 'estimates', 'delete'),
(3, 'expenses', 'view_own'),
(3, 'expenses', 'create'),
(3, 'expenses', 'edit'),
(3, 'expenses', 'delete'),
(3, 'invoices', 'view_own'),
(3, 'invoices', 'create'),
(3, 'invoices', 'edit'),
(3, 'invoices', 'delete'),
(3, 'items', 'view'),
(3, 'items', 'create'),
(3, 'items', 'edit'),
(3, 'items', 'delete'),
(3, 'knowledge_base', 'view'),
(3, 'knowledge_base', 'create'),
(3, 'knowledge_base', 'edit'),
(3, 'knowledge_base', 'delete'),
(3, 'payments', 'view'),
(3, 'payments', 'create'),
(3, 'payments', 'edit'),
(3, 'payments', 'delete'),
(3, 'projects', 'view'),
(3, 'projects', 'create'),
(3, 'projects', 'edit'),
(3, 'projects', 'delete'),
(3, 'projects', 'create_milestones'),
(3, 'projects', 'edit_milestones'),
(3, 'projects', 'delete_milestones'),
(3, 'proposals', 'view_own'),
(3, 'proposals', 'create'),
(3, 'proposals', 'edit'),
(3, 'proposals', 'delete'),
(3, 'reports', 'view'),
(3, 'reports', 'view-timesheets'),
(3, 'roles', 'view'),
(3, 'roles', 'create'),
(3, 'roles', 'edit'),
(3, 'roles', 'delete'),
(3, 'settings', 'view'),
(3, 'settings', 'edit'),
(3, 'staff', 'view'),
(3, 'staff', 'edit'),
(3, 'staff', 'delete'),
(3, 'subscriptions', 'view_own'),
(3, 'subscriptions', 'create'),
(3, 'subscriptions', 'edit'),
(3, 'subscriptions', 'delete'),
(3, 'tasks', 'view'),
(3, 'tasks', 'create'),
(3, 'tasks', 'edit'),
(3, 'tasks', 'delete'),
(3, 'tasks', 'edit_timesheet'),
(3, 'tasks', 'edit_own_timesheet'),
(3, 'tasks', 'delete_timesheet'),
(3, 'tasks', 'delete_own_timesheet'),
(3, 'checklist_templates', 'create'),
(3, 'checklist_templates', 'delete'),
(3, 'estimate_request', 'view_own'),
(3, 'estimate_request', 'create'),
(3, 'estimate_request', 'edit'),
(3, 'estimate_request', 'delete'),
(3, 'leads', 'view'),
(3, 'leads', 'delete'),
(3, 'hrm_dashboard', 'view'),
(3, 'staffmanage_orgchart', 'view_own'),
(3, 'staffmanage_orgchart', 'create'),
(3, 'staffmanage_orgchart', 'edit'),
(3, 'staffmanage_orgchart', 'delete'),
(3, 'hrm_reception_staff', 'view_own'),
(3, 'hrm_reception_staff', 'create'),
(3, 'hrm_reception_staff', 'edit'),
(3, 'hrm_reception_staff', 'delete'),
(3, 'hrm_hr_records', 'view_own'),
(3, 'hrm_hr_records', 'create'),
(3, 'hrm_hr_records', 'edit'),
(3, 'hrm_hr_records', 'delete'),
(3, 'staffmanage_job_position', 'view_own'),
(3, 'staffmanage_job_position', 'create'),
(3, 'staffmanage_job_position', 'edit'),
(3, 'staffmanage_job_position', 'delete'),
(3, 'staffmanage_training', 'view_own'),
(3, 'staffmanage_training', 'create'),
(3, 'staffmanage_training', 'edit'),
(3, 'staffmanage_training', 'delete'),
(3, 'hr_manage_q_a', 'view'),
(3, 'hr_manage_q_a', 'create'),
(3, 'hr_manage_q_a', 'edit'),
(3, 'hr_manage_q_a', 'delete'),
(3, 'hrm_contract', 'view_own'),
(3, 'hrm_contract', 'create'),
(3, 'hrm_contract', 'edit'),
(3, 'hrm_contract', 'delete'),
(3, 'hrm_dependent_person', 'view_own'),
(3, 'hrm_dependent_person', 'create'),
(3, 'hrm_dependent_person', 'edit'),
(3, 'hrm_dependent_person', 'delete'),
(3, 'hrm_procedures_for_quitting_work', 'view_own'),
(3, 'hrm_procedures_for_quitting_work', 'create'),
(3, 'hrm_procedures_for_quitting_work', 'edit'),
(3, 'hrm_procedures_for_quitting_work', 'delete'),
(3, 'hrm_report', 'view'),
(3, 'hrm_setting', 'view'),
(3, 'hrm_setting', 'create'),
(3, 'hrm_setting', 'edit'),
(3, 'hrm_setting', 'delete'),
(3, 'purchase_items', 'view'),
(3, 'purchase_items', 'create'),
(3, 'purchase_items', 'edit'),
(3, 'purchase_items', 'delete'),
(3, 'purchase_vendors', 'view'),
(3, 'purchase_vendors', 'create'),
(3, 'purchase_vendors', 'edit'),
(3, 'purchase_vendors', 'delete'),
(3, 'purchase_vendor_items', 'view'),
(3, 'purchase_vendor_items', 'create'),
(3, 'purchase_vendor_items', 'edit'),
(3, 'purchase_vendor_items', 'delete'),
(3, 'purchase_request', 'view'),
(3, 'purchase_request', 'create'),
(3, 'purchase_request', 'edit'),
(3, 'purchase_request', 'delete'),
(3, 'purchase_quotations', 'view'),
(3, 'purchase_quotations', 'create'),
(3, 'purchase_quotations', 'edit'),
(3, 'purchase_quotations', 'delete'),
(3, 'purchase_orders', 'view'),
(3, 'purchase_orders', 'create'),
(3, 'purchase_orders', 'edit'),
(3, 'purchase_orders', 'delete'),
(3, 'purchase_order_return', 'view'),
(3, 'purchase_order_return', 'create'),
(3, 'purchase_order_return', 'edit'),
(3, 'purchase_order_return', 'delete'),
(3, 'purchase_contracts', 'view'),
(3, 'purchase_contracts', 'create'),
(3, 'purchase_contracts', 'edit'),
(3, 'purchase_contracts', 'delete'),
(3, 'purchase_invoices', 'view'),
(3, 'purchase_invoices', 'create'),
(3, 'purchase_invoices', 'edit'),
(3, 'purchase_invoices', 'delete'),
(3, 'purchase_debit_notes', 'view'),
(3, 'purchase_debit_notes', 'create'),
(3, 'purchase_debit_notes', 'edit'),
(3, 'purchase_debit_notes', 'delete'),
(3, 'purchase_reports', 'view'),
(3, 'warehouse', 'view'),
(3, 'warehouse', 'create'),
(3, 'warehouse', 'edit'),
(3, 'warehouse', 'delete'),
(4, 'bulk_pdf_exporter', 'view'),
(4, 'contracts', 'view_own'),
(4, 'contracts', 'create'),
(4, 'contracts', 'edit'),
(4, 'contracts', 'delete'),
(4, 'credit_notes', 'view_own'),
(4, 'credit_notes', 'create'),
(4, 'credit_notes', 'edit'),
(4, 'credit_notes', 'delete'),
(4, 'customers', 'view'),
(4, 'customers', 'create'),
(4, 'customers', 'edit'),
(4, 'customers', 'delete'),
(4, 'email_templates', 'view'),
(4, 'email_templates', 'edit'),
(4, 'estimates', 'view_own'),
(4, 'estimates', 'create'),
(4, 'estimates', 'edit'),
(4, 'estimates', 'delete'),
(4, 'expenses', 'view_own'),
(4, 'expenses', 'create'),
(4, 'expenses', 'edit'),
(4, 'expenses', 'delete'),
(4, 'invoices', 'view_own'),
(4, 'invoices', 'create'),
(4, 'invoices', 'edit'),
(4, 'invoices', 'delete'),
(4, 'items', 'view'),
(4, 'items', 'create'),
(4, 'items', 'edit'),
(4, 'items', 'delete'),
(4, 'knowledge_base', 'view'),
(4, 'knowledge_base', 'create'),
(4, 'knowledge_base', 'edit'),
(4, 'knowledge_base', 'delete'),
(4, 'payments', 'view'),
(4, 'payments', 'create'),
(4, 'payments', 'edit'),
(4, 'payments', 'delete'),
(4, 'projects', 'view'),
(4, 'projects', 'create'),
(4, 'projects', 'edit'),
(4, 'projects', 'delete'),
(4, 'projects', 'create_milestones'),
(4, 'projects', 'edit_milestones'),
(4, 'projects', 'delete_milestones'),
(4, 'proposals', 'view_own'),
(4, 'proposals', 'create'),
(4, 'proposals', 'edit'),
(4, 'proposals', 'delete'),
(4, 'reports', 'view'),
(4, 'reports', 'view-timesheets'),
(4, 'roles', 'view'),
(4, 'roles', 'create'),
(4, 'roles', 'edit'),
(4, 'roles', 'delete'),
(4, 'settings', 'view'),
(4, 'settings', 'edit'),
(4, 'staff', 'view'),
(4, 'staff', 'edit'),
(4, 'staff', 'delete'),
(4, 'subscriptions', 'view_own'),
(4, 'subscriptions', 'create'),
(4, 'subscriptions', 'edit'),
(4, 'subscriptions', 'delete'),
(4, 'tasks', 'view'),
(4, 'tasks', 'create'),
(4, 'tasks', 'edit'),
(4, 'tasks', 'delete'),
(4, 'tasks', 'edit_timesheet'),
(4, 'tasks', 'edit_own_timesheet'),
(4, 'tasks', 'delete_timesheet'),
(4, 'tasks', 'delete_own_timesheet'),
(4, 'checklist_templates', 'create'),
(4, 'checklist_templates', 'delete'),
(4, 'estimate_request', 'view_own'),
(4, 'estimate_request', 'create'),
(4, 'estimate_request', 'edit'),
(4, 'estimate_request', 'delete'),
(4, 'leads', 'view'),
(4, 'leads', 'delete'),
(4, 'hrm_dashboard', 'view'),
(4, 'staffmanage_orgchart', 'view_own'),
(4, 'staffmanage_orgchart', 'create'),
(4, 'staffmanage_orgchart', 'edit'),
(4, 'staffmanage_orgchart', 'delete'),
(4, 'hrm_reception_staff', 'view_own'),
(4, 'hrm_reception_staff', 'create'),
(4, 'hrm_reception_staff', 'edit'),
(4, 'hrm_reception_staff', 'delete'),
(4, 'hrm_hr_records', 'view_own'),
(4, 'hrm_hr_records', 'create'),
(4, 'hrm_hr_records', 'edit'),
(4, 'hrm_hr_records', 'delete'),
(4, 'staffmanage_job_position', 'view_own'),
(4, 'staffmanage_job_position', 'create'),
(4, 'staffmanage_job_position', 'edit'),
(4, 'staffmanage_job_position', 'delete'),
(4, 'staffmanage_training', 'view_own'),
(4, 'staffmanage_training', 'create'),
(4, 'staffmanage_training', 'edit'),
(4, 'staffmanage_training', 'delete'),
(4, 'hr_manage_q_a', 'view'),
(4, 'hr_manage_q_a', 'create'),
(4, 'hr_manage_q_a', 'edit'),
(4, 'hr_manage_q_a', 'delete'),
(4, 'hrm_contract', 'view_own'),
(4, 'hrm_contract', 'create'),
(4, 'hrm_contract', 'edit'),
(4, 'hrm_contract', 'delete'),
(4, 'hrm_dependent_person', 'view_own'),
(4, 'hrm_dependent_person', 'create'),
(4, 'hrm_dependent_person', 'edit'),
(4, 'hrm_dependent_person', 'delete'),
(4, 'hrm_procedures_for_quitting_work', 'view_own'),
(4, 'hrm_procedures_for_quitting_work', 'create'),
(4, 'hrm_procedures_for_quitting_work', 'edit'),
(4, 'hrm_procedures_for_quitting_work', 'delete'),
(4, 'hrm_report', 'view'),
(4, 'hrm_setting', 'view'),
(4, 'hrm_setting', 'create'),
(4, 'hrm_setting', 'edit'),
(4, 'hrm_setting', 'delete'),
(4, 'purchase_items', 'view'),
(4, 'purchase_items', 'create'),
(4, 'purchase_items', 'edit'),
(4, 'purchase_items', 'delete'),
(4, 'purchase_vendors', 'view'),
(4, 'purchase_vendors', 'create'),
(4, 'purchase_vendors', 'edit'),
(4, 'purchase_vendors', 'delete'),
(4, 'purchase_vendor_items', 'view'),
(4, 'purchase_vendor_items', 'create'),
(4, 'purchase_vendor_items', 'edit'),
(4, 'purchase_vendor_items', 'delete'),
(4, 'purchase_request', 'view'),
(4, 'purchase_request', 'create'),
(4, 'purchase_request', 'edit'),
(4, 'purchase_request', 'delete'),
(4, 'purchase_quotations', 'view'),
(4, 'purchase_quotations', 'create'),
(4, 'purchase_quotations', 'edit'),
(4, 'purchase_quotations', 'delete'),
(4, 'purchase_orders', 'view'),
(4, 'purchase_orders', 'create'),
(4, 'purchase_orders', 'edit'),
(4, 'purchase_orders', 'delete'),
(4, 'purchase_order_return', 'view'),
(4, 'purchase_order_return', 'create'),
(4, 'purchase_order_return', 'edit'),
(4, 'purchase_order_return', 'delete'),
(4, 'purchase_contracts', 'view'),
(4, 'purchase_contracts', 'create'),
(4, 'purchase_contracts', 'edit'),
(4, 'purchase_contracts', 'delete'),
(4, 'purchase_invoices', 'view'),
(4, 'purchase_invoices', 'create'),
(4, 'purchase_invoices', 'edit'),
(4, 'purchase_invoices', 'delete'),
(4, 'purchase_debit_notes', 'view'),
(4, 'purchase_debit_notes', 'create'),
(4, 'purchase_debit_notes', 'edit'),
(4, 'purchase_debit_notes', 'delete'),
(4, 'purchase_reports', 'view'),
(4, 'warehouse', 'view'),
(4, 'warehouse', 'create'),
(4, 'warehouse', 'edit'),
(4, 'warehouse', 'delete'),
(5, 'bulk_pdf_exporter', 'view'),
(5, 'contracts', 'view_own'),
(5, 'contracts', 'create'),
(5, 'contracts', 'edit'),
(5, 'contracts', 'delete'),
(5, 'credit_notes', 'view_own'),
(5, 'credit_notes', 'create'),
(5, 'credit_notes', 'edit'),
(5, 'credit_notes', 'delete'),
(5, 'customers', 'view'),
(5, 'customers', 'create'),
(5, 'customers', 'edit'),
(5, 'customers', 'delete'),
(5, 'email_templates', 'view'),
(5, 'email_templates', 'edit'),
(5, 'estimates', 'view_own'),
(5, 'estimates', 'create'),
(5, 'estimates', 'edit'),
(5, 'estimates', 'delete'),
(5, 'expenses', 'view_own'),
(5, 'expenses', 'create'),
(5, 'expenses', 'edit'),
(5, 'expenses', 'delete'),
(5, 'invoices', 'view_own'),
(5, 'invoices', 'create'),
(5, 'invoices', 'edit'),
(5, 'invoices', 'delete'),
(5, 'items', 'view'),
(5, 'items', 'create'),
(5, 'items', 'edit'),
(5, 'items', 'delete'),
(5, 'knowledge_base', 'view'),
(5, 'knowledge_base', 'create'),
(5, 'knowledge_base', 'edit'),
(5, 'knowledge_base', 'delete'),
(5, 'payments', 'view'),
(5, 'payments', 'create'),
(5, 'payments', 'edit'),
(5, 'payments', 'delete'),
(5, 'projects', 'view'),
(5, 'projects', 'create'),
(5, 'projects', 'edit'),
(5, 'projects', 'delete'),
(5, 'projects', 'create_milestones'),
(5, 'projects', 'edit_milestones'),
(5, 'projects', 'delete_milestones'),
(5, 'proposals', 'view_own'),
(5, 'proposals', 'create'),
(5, 'proposals', 'edit'),
(5, 'proposals', 'delete'),
(5, 'reports', 'view'),
(5, 'reports', 'view-timesheets'),
(5, 'roles', 'view'),
(5, 'roles', 'create'),
(5, 'roles', 'edit'),
(5, 'roles', 'delete'),
(5, 'settings', 'view'),
(5, 'settings', 'edit'),
(5, 'staff', 'view'),
(5, 'staff', 'edit'),
(5, 'staff', 'delete'),
(5, 'subscriptions', 'view_own'),
(5, 'subscriptions', 'create'),
(5, 'subscriptions', 'edit'),
(5, 'subscriptions', 'delete'),
(5, 'tasks', 'view'),
(5, 'tasks', 'create'),
(5, 'tasks', 'edit'),
(5, 'tasks', 'delete'),
(5, 'tasks', 'edit_timesheet'),
(5, 'tasks', 'edit_own_timesheet'),
(5, 'tasks', 'delete_timesheet'),
(5, 'tasks', 'delete_own_timesheet'),
(5, 'checklist_templates', 'create'),
(5, 'checklist_templates', 'delete'),
(5, 'estimate_request', 'view_own'),
(5, 'estimate_request', 'create'),
(5, 'estimate_request', 'edit'),
(5, 'estimate_request', 'delete'),
(5, 'leads', 'view'),
(5, 'leads', 'delete'),
(5, 'hrm_dashboard', 'view'),
(5, 'staffmanage_orgchart', 'view_own'),
(5, 'staffmanage_orgchart', 'create'),
(5, 'staffmanage_orgchart', 'edit'),
(5, 'staffmanage_orgchart', 'delete'),
(5, 'hrm_reception_staff', 'view_own'),
(5, 'hrm_reception_staff', 'create'),
(5, 'hrm_reception_staff', 'edit'),
(5, 'hrm_reception_staff', 'delete'),
(5, 'hrm_hr_records', 'view_own'),
(5, 'hrm_hr_records', 'create'),
(5, 'hrm_hr_records', 'edit'),
(5, 'hrm_hr_records', 'delete'),
(5, 'staffmanage_job_position', 'view_own'),
(5, 'staffmanage_job_position', 'create'),
(5, 'staffmanage_job_position', 'edit'),
(5, 'staffmanage_job_position', 'delete'),
(5, 'staffmanage_training', 'view_own'),
(5, 'staffmanage_training', 'create'),
(5, 'staffmanage_training', 'edit'),
(5, 'staffmanage_training', 'delete'),
(5, 'hr_manage_q_a', 'view'),
(5, 'hr_manage_q_a', 'create'),
(5, 'hr_manage_q_a', 'edit'),
(5, 'hr_manage_q_a', 'delete'),
(5, 'hrm_contract', 'view_own'),
(5, 'hrm_contract', 'create'),
(5, 'hrm_contract', 'edit'),
(5, 'hrm_contract', 'delete'),
(5, 'hrm_dependent_person', 'view_own'),
(5, 'hrm_dependent_person', 'create'),
(5, 'hrm_dependent_person', 'edit'),
(5, 'hrm_dependent_person', 'delete'),
(5, 'hrm_procedures_for_quitting_work', 'view_own'),
(5, 'hrm_procedures_for_quitting_work', 'create'),
(5, 'hrm_procedures_for_quitting_work', 'edit'),
(5, 'hrm_procedures_for_quitting_work', 'delete'),
(5, 'hrm_report', 'view'),
(5, 'hrm_setting', 'view'),
(5, 'hrm_setting', 'create'),
(5, 'hrm_setting', 'edit'),
(5, 'hrm_setting', 'delete'),
(5, 'purchase_items', 'view'),
(5, 'purchase_items', 'create'),
(5, 'purchase_items', 'edit'),
(5, 'purchase_items', 'delete'),
(5, 'purchase_vendors', 'view'),
(5, 'purchase_vendors', 'create'),
(5, 'purchase_vendors', 'edit'),
(5, 'purchase_vendors', 'delete'),
(5, 'purchase_vendor_items', 'view'),
(5, 'purchase_vendor_items', 'create'),
(5, 'purchase_vendor_items', 'edit'),
(5, 'purchase_vendor_items', 'delete'),
(5, 'purchase_request', 'view'),
(5, 'purchase_request', 'create'),
(5, 'purchase_request', 'edit'),
(5, 'purchase_request', 'delete'),
(5, 'purchase_quotations', 'view'),
(5, 'purchase_quotations', 'create'),
(5, 'purchase_quotations', 'edit'),
(5, 'purchase_quotations', 'delete'),
(5, 'purchase_orders', 'view'),
(5, 'purchase_orders', 'create'),
(5, 'purchase_orders', 'edit'),
(5, 'purchase_orders', 'delete'),
(5, 'purchase_order_return', 'view'),
(5, 'purchase_order_return', 'create'),
(5, 'purchase_order_return', 'edit'),
(5, 'purchase_order_return', 'delete'),
(5, 'purchase_contracts', 'view'),
(5, 'purchase_contracts', 'create'),
(5, 'purchase_contracts', 'edit'),
(5, 'purchase_contracts', 'delete'),
(5, 'purchase_invoices', 'view'),
(5, 'purchase_invoices', 'create'),
(5, 'purchase_invoices', 'edit'),
(5, 'purchase_invoices', 'delete'),
(5, 'purchase_debit_notes', 'view'),
(5, 'purchase_debit_notes', 'create'),
(5, 'purchase_debit_notes', 'edit'),
(5, 'purchase_debit_notes', 'delete'),
(5, 'purchase_reports', 'view'),
(5, 'warehouse', 'view'),
(5, 'warehouse', 'create'),
(5, 'warehouse', 'edit'),
(5, 'warehouse', 'delete');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_take`
--

CREATE TABLE `tblstock_take` (
  `id` int(11) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL COMMENT 'the reason stock take',
  `warehouse_id` int(11) DEFAULT NULL,
  `date_stock_take` date DEFAULT NULL,
  `stock_take_code` varchar(100) DEFAULT NULL COMMENT 'số kiểm kê kho',
  `date_add` date DEFAULT NULL,
  `hour_add` date DEFAULT NULL,
  `staff_id` varchar(100) DEFAULT NULL,
  `approval` int(11) DEFAULT 0 COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_take_detail`
--

CREATE TABLE `tblstock_take_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `stock_take_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `unit_id` text DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `quantity_stock_take` varchar(100) DEFAULT NULL,
  `quantity_accounting_book` varchar(100) DEFAULT NULL,
  `quantity_change` varchar(100) DEFAULT NULL,
  `handling` text DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `approval` int(11) DEFAULT 0 COMMENT 'status approval '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriptions`
--

CREATE TABLE `tblsubscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `description_in_item` tinyint(1) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id` varchar(50) DEFAULT NULL,
  `tax_id_2` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id_2` varchar(50) DEFAULT NULL,
  `stripe_plan_id` text DEFAULT NULL,
  `stripe_subscription_id` text NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL,
  `in_test_environment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaggables`
--

CREATE TABLE `tbltaggables` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltaggables`
--

INSERT INTO `tbltaggables` (`rel_id`, `rel_type`, `tag_id`, `tag_order`) VALUES
(1, 'project', 1, 1),
(1, 'project', 2, 2),
(1, 'project', 3, 3),
(1, 'project', 4, 4),
(1, 'project', 5, 5),
(1, 'project', 6, 6),
(245647, 'project', 7, 1),
(245647, 'project', 8, 2),
(245647, 'project', 9, 3),
(245648, 'project', 10, 1),
(243681, 'lead', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltags`
--

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltags`
--

INSERT INTO `tbltags` (`id`, `name`) VALUES
(4, '.'),
(5, '..'),
(6, '...'),
(10, '4545ج'),
(3, 'ب خ'),
(11, 'به به'),
(2, 'خ'),
(1, 'عالی'),
(9, 'عخح'),
(8, 'عههغ'),
(7, 'لبیظ');

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks`
--

CREATE TABLE `tbltasks` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `billable` tinyint(1) NOT NULL DEFAULT 0,
  `billed` tinyint(1) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `milestone` int(11) DEFAULT 0,
  `kanban_order` int(11) DEFAULT 1,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `deadline_notified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskstimers`
--

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks_checklist_templates`
--

CREATE TABLE `tbltasks_checklist_templates` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_assigned`
--

CREATE TABLE `tbltask_assigned` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT 0,
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_checklist_items`
--

CREATE TABLE `tbltask_checklist_items` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `description` text NOT NULL,
  `finished` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT 0,
  `list_order` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_comments`
--

CREATE TABLE `tbltask_comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_followers`
--

CREATE TABLE `tbltask_followers` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxes`
--

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltemplates`
--

CREATE TABLE `tbltemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltemplates`
--

INSERT INTO `tbltemplates` (`id`, `name`, `type`, `addedfrom`, `content`) VALUES
(1, 'پیش فاکتور', 'proposals', 1, '<p>&#1578;&#1608;&#1590;&#1740;&#1581;&#1575;&#1578;: <br>&#1605;&#1583;&#1578; &#1575;&#1593;&#1578;&#1576;&#1575;&#1585;: 3&#1585;&#1608;&#1586;, <br>&#1586;&#1605;&#1575;&#1606; &#1578;&#1581;&#1608;&#1740;&#1604;: , <br>&#1588;&#1740;&#1608;&#1607; &#1662;&#1585;&#1583;&#1575;&#1582;&#1578;: , <br>- &#1605;&#1581;&#1604; &#1578;&#1581;&#1608;&#1740;&#1604;: &#1575;&#1606;&#1576;&#1575;&#1585; &#1588;&#1585;&#1705;&#1578; &#1606;&#1711;&#1575;&#1585; &#1589;&#1606;&#1593;&#1578; &#1605;&#1575;&#1607;&#1575;&#1606; <br>- &#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578; &#1588;&#1605;&#1575;&#1585;&#1607;: <br>- &#1705;&#1575;&#1585;&#1588;&#1606;&#1575;&#1587; &#1601;&#1585;&#1608;&#1588;: &#1570;&#1602;&#1575;&#1740; &#1587;&#1604;&#1740;&#1605;&#1740; <br>- &#1581;&#1583;&#1575;&#1705;&#1579;&#1585; &#1586;&#1605;&#1575;&#1606; &#1575;&#1585;&#1587;&#1575;&#1604; &#1578;&#1575;&#1740;&#1740;&#1583; &#1601;&#1606;&#1740; &#1578;&#1608;&#1587;&#1591; &#1705;&#1575;&#1585;&#1601;&#1585;&#1605;&#1575; &#1740;&#1705; &#1607;&#1601;&#1578;&#1607; &#1662;&#1587; &#1575;&#1586; &#1578;&#1581;&#1608;&#1740;&#1604; &#1705;&#1575;&#1604;&#1575; &#1576;&#1608;&#1583;&#1607; &#1608; &#1593;&#1583;&#1605; &#1575;&#1585;&#1587;&#1575;&#1604; &#1578;&#1575;&#1740;&#1740;&#1583;&#1740;&#1607; &#1662;&#1587; &#1575;&#1586; &#1570;&#1606; &#1576;&#1607; &#1605;&#1606;&#1586;&#1604;&#1607; &#1578;&#1575;&#1740;&#1740;&#1583; &#1601;&#1606;&#1740; &#1705;&#1575;&#1604;&#1575;&#1607;&#1575; &#1605;&#1581;&#1587;&#1608;&#1576; &#1582;&#1608;&#1575;&#1607;&#1583; &#1588;&#1583;. <br>- &#1588;&#1605;&#1575;&#1585;&#1607; &#1588;&#1576;&#1575;&#1610; IR240570021701101435967001&#1576;&#1575;&#1606;&#1705; &#1662;&#1575;&#1587;&#1575;&#1585;&#1711;&#1575;&#1583; &#1576;&#1606;&#1575;&#1605; &#1588;&#1585;&#1705;&#1578; &#1606;&#1711;&#1575;&#1585; &#1589;&#1606;&#1593;&#1578; &#1605;&#1575;&#1607;&#1575;&#1606; <br>- &#1602;&#1740;&#1605;&#1578;&#1607;&#1575;&#1610; &#1601;&#1608;&#1602; &#1576;&#1585; &#1575;&#1587;&#1575;&#1587; &#1606;&#1585;&#1582; &#1601;&#1585;&#1608;&#1588; &#1575;&#1587;&#1705;&#1606;&#1575;&#1587; &#1740;&#1608;&#1585;&#1608; &#1587;&#1575;&#1605;&#1575;&#1606;&#1607; &#1587;&#1606;&#1575; &#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1589;&#1583;&#1608;&#1585; &#1662;&#1740;&#1588; &#1601;&#1575;&#1705;&#1578;&#1608;&#1585; &#1578;&#1606;&#1592;&#1740;&#1605; &#1608; &#1605;&#1581;&#1575;&#1587;&#1576;&#1607; &#1711;&#1585;&#1583;&#1740;&#1583;&#1607; &#1575;&#1587;&#1578;.&#1604;&#1584;&#1575; &#1583;&#1585; &#1589;&#1608;&#1585;&#1578; &#1575;&#1601;&#1586;&#1575;&#1740;&#1588; &#1606;&#1585;&#1582; &#1575;&#1585;&#1586; &#1602;&#1740;&#1605;&#1578;&#1607;&#1575; &#1578;&#1593;&#1583;&#1740;&#1604; &#1605;&#1740; &#1711;&#1585;&#1583;&#1583;.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL,
  `adminreplying` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `merged_ticket_id` int(11) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT 0,
  `adminread` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `staff_id_replying` int(11) DEFAULT NULL,
  `cc` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets`
--

INSERT INTO `tbltickets` (`ticketid`, `adminreplying`, `userid`, `contactid`, `merged_ticket_id`, `email`, `name`, `department`, `priority`, `status`, `service`, `ticketkey`, `subject`, `message`, `admin`, `date`, `project_id`, `lastreply`, `clientread`, `adminread`, `assigned`, `staff_id_replying`, `cc`) VALUES
(1, 0, 1, 1, NULL, NULL, NULL, 1, 3, 1, 0, '7164339acc398f965cb2a6ff22385f1b', 'پیش فاکتور333', '<p>&#1587;&#1604;&#1575;&#1605; &#1604;&#1591;&#1601;&#1575; &#1575;&#1740;&#1606; &#1705;&#1575;&#1585; &#1605;&#1575; &#1575;&#1585;&#1575; &#1575;&#1606;&#1580;&#1575;&#1605; &#1583;&#1607;&#1740;&#1583;.</p>', 1, '2022-08-25 17:12:19', 1, NULL, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_pipe_log`
--

CREATE TABLE `tbltickets_pipe_log` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_predefined_replies`
--

CREATE TABLE `tbltickets_predefined_replies` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_priorities`
--

CREATE TABLE `tbltickets_priorities` (
  `priorityid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_priorities`
--

INSERT INTO `tbltickets_priorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_status`
--

CREATE TABLE `tbltickets_status` (
  `ticketstatusid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT 0,
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_status`
--

INSERT INTO `tbltickets_status` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(1, 'Open', 1, '#ff2d42', 1),
(2, 'In progress', 1, '#84c529', 2),
(3, 'Answered', 1, '#0000ff', 3),
(4, 'On Hold', 1, '#c0c0c0', 4),
(5, 'Closed', 1, '#03a9f4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_attachments`
--

CREATE TABLE `tblticket_attachments` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_replies`
--

CREATE TABLE `tblticket_replies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `message` text DEFAULT NULL,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltodos`
--

CREATE TABLE `tbltodos` (
  `todoid` int(11) NOT NULL,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltracked_mails`
--

CREATE TABLE `tbltracked_mails` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0,
  `date_opened` datetime DEFAULT NULL,
  `subject` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltraining_allocation`
--

CREATE TABLE `tbltraining_allocation` (
  `id` int(11) NOT NULL,
  `training_process_id` varchar(100) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `training_type` int(11) DEFAULT NULL,
  `date_add` datetime NOT NULL DEFAULT current_timestamp(),
  `training_name` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbltransfer_records_reception`
--

CREATE TABLE `tbltransfer_records_reception` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `meta` varchar(50) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltwocheckout_log`
--

CREATE TABLE `tbltwocheckout_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_auto_login`
--

CREATE TABLE `tbluser_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_auto_login`
--

INSERT INTO `tbluser_auto_login` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`, `staff`) VALUES
('31c62e9166610be5fbcffaecfe77f0e5', 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', '127.0.0.1', '2022-10-06 20:28:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_meta`
--

CREATE TABLE `tbluser_meta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_meta`
--

INSERT INTO `tbluser_meta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
(1, 0, 0, 1, 'consent_key', 'a0d06166ea3bd19aaa6e425920d55c66-e17374978121ca92858952b4ff37d434'),
(2, 0, 0, 2, 'consent_key', '685c64fac565fdd54f0d33f2dca7d4b5-87a4e22858eeb8e1ce83f070e18643b5'),
(3, 0, 0, 3, 'consent_key', '28ed8e7fda24a4db4e83ce6889802f2d-22515cca0d95c5af23b3b0e1c8669610'),
(4, 0, 0, 4, 'consent_key', '2d2b678059155395bdab8e6b2073505c-3fb6217116dce40e7fc5a668ca4d9e8e'),
(5, 0, 0, 5, 'consent_key', 'c0b81fcff6e036e3be7c846e12e9c517-c2e169ec1ce1c35bd76b1a37bc345357'),
(6, 1, 0, 0, 'recent_searches', '[]'),
(7, 3, 0, 0, 'recent_searches', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `tblvault`
--

CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(191) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` text NOT NULL,
  `description` text DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `share_in_projects` tinyint(1) NOT NULL DEFAULT 0,
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblviews_tracking`
--

CREATE TABLE `tblviews_tracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwarehouse`
--

CREATE TABLE `tblwarehouse` (
  `warehouse_id` int(11) UNSIGNED NOT NULL,
  `warehouse_code` varchar(100) DEFAULT NULL,
  `warehouse_name` text DEFAULT NULL,
  `warehouse_address` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip_code` text DEFAULT NULL,
  `country` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwarehouse`
--

INSERT INTO `tblwarehouse` (`warehouse_id`, `warehouse_code`, `warehouse_name`, `warehouse_address`, `order`, `display`, `note`, `city`, `state`, `zip_code`, `country`) VALUES
(1, '1', 'زیر زمین نگار صنعت ماهان', 'ونک کوچه سیداشهدا', 1, 1, 'انبار خوبی است....', 'تهران', 'تهران', '123456', '104');

-- --------------------------------------------------------

--
-- Table structure for table `tblware_body_type`
--

CREATE TABLE `tblware_body_type` (
  `body_type_id` int(11) UNSIGNED NOT NULL,
  `body_code` varchar(100) DEFAULT NULL,
  `body_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_color`
--

CREATE TABLE `tblware_color` (
  `color_id` int(11) UNSIGNED NOT NULL,
  `color_code` varchar(100) DEFAULT NULL,
  `color_name` varchar(100) DEFAULT NULL,
  `color_hex` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_commodity_type`
--

CREATE TABLE `tblware_commodity_type` (
  `commodity_type_id` int(11) UNSIGNED NOT NULL,
  `commondity_code` varchar(100) DEFAULT NULL,
  `commondity_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_size_type`
--

CREATE TABLE `tblware_size_type` (
  `size_type_id` int(11) UNSIGNED NOT NULL,
  `size_code` varchar(100) DEFAULT NULL,
  `size_name` text DEFAULT NULL,
  `size_symbol` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_style_type`
--

CREATE TABLE `tblware_style_type` (
  `style_type_id` int(11) UNSIGNED NOT NULL,
  `style_code` varchar(100) DEFAULT NULL,
  `style_barcode` text DEFAULT NULL,
  `style_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_unit_type`
--

CREATE TABLE `tblware_unit_type` (
  `unit_type_id` int(11) UNSIGNED NOT NULL,
  `unit_code` varchar(100) DEFAULT NULL,
  `unit_name` text DEFAULT NULL,
  `unit_symbol` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblware_unit_type`
--

INSERT INTO `tblware_unit_type` (`unit_type_id`, `unit_code`, `unit_name`, `unit_symbol`, `order`, `display`, `note`) VALUES
(1, '123', 'تعداد', 'عدد', 321, 1, 'این تستی است.'),
(2, '2', 'وزن', 'kg', 2, 1, 'وزن که به کیلو گرم باید باشد');

-- --------------------------------------------------------

--
-- Table structure for table `tblweb_to_lead`
--

CREATE TABLE `tblweb_to_lead` (
  `id` int(11) NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `responsible` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext DEFAULT NULL,
  `recaptcha` int(11) NOT NULL DEFAULT 0,
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `success_submit_msg` text DEFAULT NULL,
  `submit_action` int(11) DEFAULT 0,
  `lead_name_prefix` varchar(255) DEFAULT NULL,
  `submit_redirect_url` mediumtext DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT 1,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblweb_to_lead`
--

INSERT INTO `tblweb_to_lead` (`id`, `form_key`, `lead_source`, `lead_status`, `notify_lead_imported`, `notify_type`, `notify_ids`, `responsible`, `name`, `form_data`, `recaptcha`, `submit_btn_name`, `submit_btn_text_color`, `submit_btn_bg_color`, `success_submit_msg`, `submit_action`, `lead_name_prefix`, `submit_redirect_url`, `language`, `allow_duplicate`, `mark_public`, `track_duplicate_field`, `track_duplicate_field_and`, `create_task_on_duplicate`, `dateadded`) VALUES
(1, 'c26298ccb495aa9002aa7dd1f5ff0842', 1, 2, 1, 'specific_staff', 'a:0:{}', 1, 'فرم درخواست', NULL, 0, 'ذخیره', '#ffffff', '#84c529', 'سلام ممنون', 0, 'requestForm', '', 'persian', 1, 0, '', '', 0, '2022-09-01 14:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_activity_log`
--

CREATE TABLE `tblwh_activity_log` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblwh_activity_log`
--

INSERT INTO `tblwh_activity_log` (`id`, `rel_id`, `rel_type`, `staffid`, `date`, `note`) VALUES
(1, 1, 'stock_import', 1, '2022-08-25 16:38:10', 'stock_import'),
(2, 1, 'stock_export', 1, '2022-08-25 16:42:30', 'stock_export'),
(3, 1, 'packing_lists', 1, '2022-08-25 16:45:39', 'packing_lists');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_approval_details`
--

CREATE TABLE `tblwh_approval_details` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `approve` varchar(45) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_approval_setting`
--

CREATE TABLE `tblwh_approval_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `related` varchar(255) NOT NULL,
  `setting` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_brand`
--

CREATE TABLE `tblwh_brand` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_custom_fields`
--

CREATE TABLE `tblwh_custom_fields` (
  `id` int(11) UNSIGNED NOT NULL,
  `custom_fields_id` int(11) DEFAULT NULL,
  `warehouse_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_goods_delivery_activity_log`
--

CREATE TABLE `tblwh_goods_delivery_activity_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `additional_data` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwh_goods_delivery_activity_log`
--

INSERT INTO `tblwh_goods_delivery_activity_log` (`id`, `rel_id`, `rel_type`, `description`, `additional_data`, `date`, `staffid`, `full_name`) VALUES
(1, 1, 'shipment', 'The order has been confirmed', NULL, '2022-08-25 16:42:30', 1, 'mohammadreza zamani'),
(2, 1, 'shipment', 'The shipment has been created', NULL, '2022-08-25 16:42:30', 1, 'mohammadreza zamani'),
(3, 1, 'delivery', ' <a href=\"http://localhost/talash_crm/admin/warehouse/manage_packing_list/1\">The Packing has been successfully packed</a> ', NULL, '2022-08-25 16:45:39', 1, 'mohammadreza zamani');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_inventory_serial_numbers`
--

CREATE TABLE `tblwh_inventory_serial_numbers` (
  `id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `inventory_manage_id` int(11) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `is_used` varchar(20) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_loss_adjustment`
--

CREATE TABLE `tblwh_loss_adjustment` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `addfrom` int(11) DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `date_create` date NOT NULL,
  `status` int(11) NOT NULL,
  `warehouses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_loss_adjustment_detail`
--

CREATE TABLE `tblwh_loss_adjustment_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `items` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `current_number` int(15) DEFAULT NULL,
  `updates_number` int(15) DEFAULT NULL,
  `loss_adjustment` int(11) DEFAULT NULL,
  `expiry_date` text DEFAULT NULL,
  `lot_number` text DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_model`
--

CREATE TABLE `tblwh_model` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_omni_shipments`
--

CREATE TABLE `tblwh_omni_shipments` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `shipment_number` varchar(100) DEFAULT NULL,
  `planned_shipping_date` datetime DEFAULT NULL,
  `shipment_status` varchar(50) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `goods_delivery_id` int(11) DEFAULT NULL,
  `shipment_hash` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwh_omni_shipments`
--

INSERT INTO `tblwh_omni_shipments` (`id`, `cart_id`, `shipment_number`, `planned_shipping_date`, `shipment_status`, `datecreated`, `goods_delivery_id`, `shipment_hash`) VALUES
(1, NULL, 'SHIPMENT202208251642', NULL, 'confirmed_order', '2022-08-25 16:42:30', 1, 'b190debf52db4801d8682ed2970f6447');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_order_returns`
--

CREATE TABLE `tblwh_order_returns` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(50) NOT NULL COMMENT 'manual, sales_return_order, purchasing_return_order',
  `return_type` varchar(50) DEFAULT NULL COMMENT 'manual, partially, fully',
  `company_id` int(11) DEFAULT NULL,
  `company_name` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `order_number` varchar(500) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `number_of_item` decimal(15,2) DEFAULT 0.00,
  `order_total` decimal(15,2) DEFAULT 0.00,
  `order_return_number` varchar(200) DEFAULT NULL,
  `order_return_name` varchar(500) DEFAULT NULL,
  `fee_return_order` decimal(15,2) DEFAULT 0.00,
  `refund_loyaty_point` int(11) DEFAULT 0,
  `subtotal` decimal(15,2) DEFAULT 0.00,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `additional_discount` decimal(15,2) DEFAULT 0.00,
  `adjustment_amount` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `return_policies_information` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `approval` int(11) DEFAULT 0,
  `datecreated` datetime DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `receipt_delivery_id` int(1) DEFAULT 0,
  `return_reason` longtext DEFAULT NULL,
  `status` varchar(30) DEFAULT 'draft',
  `receipt_delivery_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_order_returns_refunds`
--

CREATE TABLE `tblwh_order_returns_refunds` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_return_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `refunded_on` date DEFAULT NULL,
  `payment_mode` varchar(40) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_order_return_details`
--

CREATE TABLE `tblwh_order_return_details` (
  `id` int(11) NOT NULL,
  `order_return_id` int(11) NOT NULL,
  `rel_type_detail_id` int(11) DEFAULT NULL,
  `commodity_code` int(11) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `quantity` decimal(15,2) DEFAULT 0.00,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT 0.00,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `tax_id` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `reason_return` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_packing_lists`
--

CREATE TABLE `tblwh_packing_lists` (
  `id` int(11) NOT NULL,
  `delivery_note_id` int(11) DEFAULT NULL,
  `packing_list_number` varchar(100) DEFAULT NULL,
  `packing_list_name` varchar(200) DEFAULT NULL,
  `width` decimal(15,2) DEFAULT 0.00,
  `height` decimal(15,2) DEFAULT 0.00,
  `lenght` decimal(15,2) DEFAULT 0.00,
  `weight` decimal(15,2) DEFAULT 0.00,
  `volume` decimal(15,2) DEFAULT 0.00,
  `clientid` int(11) DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT 0.00,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `additional_discount` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `client_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `approval` int(11) DEFAULT 0,
  `datecreated` datetime DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `type_of_packing_list` varchar(100) DEFAULT 'total',
  `delivery_status` varchar(100) DEFAULT 'wh_ready_to_deliver',
  `shipping_fee` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwh_packing_lists`
--

INSERT INTO `tblwh_packing_lists` (`id`, `delivery_note_id`, `packing_list_number`, `packing_list_name`, `width`, `height`, `lenght`, `weight`, `volume`, `clientid`, `subtotal`, `total_amount`, `discount_total`, `additional_discount`, `total_after_discount`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `client_note`, `admin_note`, `approval`, `datecreated`, `staff_id`, `type_of_packing_list`, `delivery_status`, `shipping_fee`) VALUES
(1, 1, 'PL1', 'PACKING_LIST202208251644', '9.00', '0.03', '5.00', '7.00', '1.35', 1, '324000.00', '324000.00', '0.00', '0.00', '686000.00', 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 'اتااتتاتاتاتا', 'کرج', 'شاهین ویلا', '0235698562', 104, 'بسته بندی شد.', 'لطفا به خوبی دسته بندی کنید.', 1, '2022-08-25 16:45:38', 1, 'total', 'wh_ready_to_deliver', '362000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_packing_list_details`
--

CREATE TABLE `tblwh_packing_list_details` (
  `id` int(11) NOT NULL,
  `packing_list_id` int(11) NOT NULL,
  `delivery_detail_id` int(11) DEFAULT NULL,
  `commodity_code` int(11) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `quantity` decimal(15,2) DEFAULT 0.00,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT 0.00,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `tax_id` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwh_packing_list_details`
--

INSERT INTO `tblwh_packing_list_details` (`id`, `packing_list_id`, `delivery_detail_id`, `commodity_code`, `commodity_name`, `quantity`, `unit_id`, `unit_price`, `sub_total`, `tax_id`, `tax_rate`, `tax_name`, `total_amount`, `discount`, `discount_total`, `total_after_discount`, `serial_number`) VALUES
(1, 1, 1, 2, '6_الکتروموتور تستی', '3.00', 1, '108000.00', '324000.00', NULL, NULL, NULL, '324000.00', '0.00', '0.00', '324000.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_series`
--

CREATE TABLE `tblwh_series` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_sub_group`
--

CREATE TABLE `tblwh_sub_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `sub_group_code` varchar(100) DEFAULT NULL,
  `sub_group_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwh_sub_group`
--

INSERT INTO `tblwh_sub_group` (`id`, `sub_group_code`, `sub_group_name`, `order`, `display`, `note`, `group_id`) VALUES
(1, '1', 'الکتروموتور', 0, 1, '', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_items`
--
ALTER TABLE `project_items`
  ADD PRIMARY KEY (`pitem_id`);

--
-- Indexes for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcementid`);

--
-- Indexes for table `tblbonus_discipline`
--
ALTER TABLE `tblbonus_discipline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbonus_discipline_detail`
--
ALTER TABLE `tblbonus_discipline_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblchecklist`
--
ALTER TABLE `tblchecklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblchecklist_allocation`
--
ALTER TABLE `tblchecklist_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `country` (`country`),
  ADD KEY `leadid` (`leadid`),
  ADD KEY `company` (`company`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `tblconsents`
--
ALTER TABLE `tblconsents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purpose_id` (`purpose_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `email` (`email`),
  ADD KEY `is_primary` (`is_primary`);

--
-- Indexes for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `contract_type` (`contract_type`);

--
-- Indexes for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcountries`
--
ALTER TABLE `tblcountries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcredits`
--
ALTER TABLE `tblcredits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrency_rates`
--
ALTER TABLE `tblcurrency_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrency_rate_logs`
--
ALTER TABLE `tblcurrency_rate_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblcustomer_admins`
--
ALTER TABLE `tblcustomer_admins`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relid` (`relid`),
  ADD KEY `fieldto` (`fieldto`),
  ADD KEY `fieldid` (`fieldid`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  ADD PRIMARY KEY (`dismissedannouncementid`),
  ADD KEY `announcementid` (`announcementid`),
  ADD KEY `staff` (`staff`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  ADD PRIMARY KEY (`emailtemplateid`);

--
-- Indexes for table `tblestimates`
--
ALTER TABLE `tblestimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category` (`category`),
  ADD KEY `currency` (`currency`);

--
-- Indexes for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  ADD PRIMARY KEY (`boxid`);

--
-- Indexes for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indexes for table `tblform_results`
--
ALTER TABLE `tblform_results`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_delivery`
--
ALTER TABLE `tblgoods_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_delivery_detail`
--
ALTER TABLE `tblgoods_delivery_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_delivery_invoices_pr_orders`
--
ALTER TABLE `tblgoods_delivery_invoices_pr_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_receipt`
--
ALTER TABLE `tblgoods_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_receipt_detail`
--
ALTER TABLE `tblgoods_receipt_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_transaction_detail`
--
ALTER TABLE `tblgoods_transaction_detail`
  ADD PRIMARY KEY (`id`,`commodity_id`);

--
-- Indexes for table `tblgroup_checklist`
--
ALTER TABLE `tblgroup_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgroup_checklist_allocation`
--
ALTER TABLE `tblgroup_checklist_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_allocation_asset`
--
ALTER TABLE `tblhr_allocation_asset`
  ADD PRIMARY KEY (`allocation_id`);

--
-- Indexes for table `tblhr_allowance_type`
--
ALTER TABLE `tblhr_allowance_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tblhr_checklist_allocation`
--
ALTER TABLE `tblhr_checklist_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_contract_template`
--
ALTER TABLE `tblhr_contract_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_dependent_person`
--
ALTER TABLE `tblhr_dependent_person`
  ADD PRIMARY KEY (`id`,`dependent_iden`);

--
-- Indexes for table `tblhr_education`
--
ALTER TABLE `tblhr_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_group_checklist_allocation`
--
ALTER TABLE `tblhr_group_checklist_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_job_p`
--
ALTER TABLE `tblhr_job_p`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `tblhr_job_position`
--
ALTER TABLE `tblhr_job_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tblhr_jp_interview_training`
--
ALTER TABLE `tblhr_jp_interview_training`
  ADD PRIMARY KEY (`training_process_id`);

--
-- Indexes for table `tblhr_jp_salary_scale`
--
ALTER TABLE `tblhr_jp_salary_scale`
  ADD PRIMARY KEY (`salary_scale_id`);

--
-- Indexes for table `tblhr_knowedge_base_article_feedback`
--
ALTER TABLE `tblhr_knowedge_base_article_feedback`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Indexes for table `tblhr_knowledge_base`
--
ALTER TABLE `tblhr_knowledge_base`
  ADD PRIMARY KEY (`articleid`);

--
-- Indexes for table `tblhr_knowledge_base_groups`
--
ALTER TABLE `tblhr_knowledge_base_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tblhr_list_staff_quitting_work`
--
ALTER TABLE `tblhr_list_staff_quitting_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_position_training`
--
ALTER TABLE `tblhr_position_training`
  ADD PRIMARY KEY (`training_id`);

--
-- Indexes for table `tblhr_position_training_question_form`
--
ALTER TABLE `tblhr_position_training_question_form`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `tblhr_procedure_retire`
--
ALTER TABLE `tblhr_procedure_retire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_procedure_retire_manage`
--
ALTER TABLE `tblhr_procedure_retire_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_procedure_retire_of_staff`
--
ALTER TABLE `tblhr_procedure_retire_of_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_procedure_retire_of_staff_by_id`
--
ALTER TABLE `tblhr_procedure_retire_of_staff_by_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_profile_option`
--
ALTER TABLE `tblhr_profile_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tblhr_p_t_form_question_box`
--
ALTER TABLE `tblhr_p_t_form_question_box`
  ADD PRIMARY KEY (`boxid`);

--
-- Indexes for table `tblhr_p_t_form_question_box_description`
--
ALTER TABLE `tblhr_p_t_form_question_box_description`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indexes for table `tblhr_p_t_form_results`
--
ALTER TABLE `tblhr_p_t_form_results`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `tblhr_p_t_surveyresultsets`
--
ALTER TABLE `tblhr_p_t_surveyresultsets`
  ADD PRIMARY KEY (`resultsetid`);

--
-- Indexes for table `tblhr_rec_transfer_records`
--
ALTER TABLE `tblhr_rec_transfer_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_salary_form`
--
ALTER TABLE `tblhr_salary_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tblhr_staff_contract`
--
ALTER TABLE `tblhr_staff_contract`
  ADD PRIMARY KEY (`id_contract`);

--
-- Indexes for table `tblhr_staff_contract_detail`
--
ALTER TABLE `tblhr_staff_contract_detail`
  ADD PRIMARY KEY (`contract_detail_id`);

--
-- Indexes for table `tblhr_staff_contract_type`
--
ALTER TABLE `tblhr_staff_contract_type`
  ADD PRIMARY KEY (`id_contracttype`);

--
-- Indexes for table `tblhr_training_allocation`
--
ALTER TABLE `tblhr_training_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_type_of_trainings`
--
ALTER TABLE `tblhr_type_of_trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_views_tracking`
--
ALTER TABLE `tblhr_views_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhr_workplace`
--
ALTER TABLE `tblhr_workplace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinternal_delivery_note`
--
ALTER TABLE `tblinternal_delivery_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinternal_delivery_note_detail`
--
ALTER TABLE `tblinternal_delivery_note_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinventory_commodity_min`
--
ALTER TABLE `tblinventory_commodity_min`
  ADD PRIMARY KEY (`id`,`commodity_id`);

--
-- Indexes for table `tblinventory_manage`
--
ALTER TABLE `tblinventory_manage`
  ADD PRIMARY KEY (`id`,`commodity_id`,`warehouse_id`);

--
-- Indexes for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Indexes for table `tblinvoicepaymentrecordspish`
--
ALTER TABLE `tblinvoicepaymentrecordspish`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `invoiceid` (`pishid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Indexes for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `total` (`total`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblitemable`
--
ALTER TABLE `tblitemable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `qty` (`qty`),
  ADD KEY `rate` (`rate`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `tax2` (`tax2`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblitems_of_vendor`
--
ALTER TABLE `tblitems_of_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `rel_id` (`rel_id`);

--
-- Indexes for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Indexes for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  ADD PRIMARY KEY (`articleid`);

--
-- Indexes for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tblleads`
--
ALTER TABLE `tblleads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `company` (`company`),
  ADD KEY `email` (`email`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `lastcontact` (`lastcontact`),
  ADD KEY `dateadded` (`dateadded`),
  ADD KEY `leadorder` (`leadorder`),
  ADD KEY `from_form_id` (`from_form_id`);

--
-- Indexes for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail_attachment`
--
ALTER TABLE `tblmail_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail_inbox`
--
ALTER TABLE `tblmail_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail_outbox`
--
ALTER TABLE `tblmail_outbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmodules`
--
ALTER TABLE `tblmodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmz_bazargani`
--
ALTER TABLE `tblmz_bazargani`
  ADD PRIMARY KEY (`bazargani_id`);

--
-- Indexes for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbloptions`
--
ALTER TABLE `tbloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblposition_training_question_form`
--
ALTER TABLE `tblposition_training_question_form`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_items_details`
--
ALTER TABLE `tblproject_items_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblproposals`
--
ALTER TABLE `tblproposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpurchase_option`
--
ALTER TABLE `tblpurchase_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tblpur_activity_log`
--
ALTER TABLE `tblpur_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_approval_details`
--
ALTER TABLE `tblpur_approval_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_approval_setting`
--
ALTER TABLE `tblpur_approval_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_comments`
--
ALTER TABLE `tblpur_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_contacts`
--
ALTER TABLE `tblpur_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_contracts`
--
ALTER TABLE `tblpur_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_debits`
--
ALTER TABLE `tblpur_debits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_debits_refunds`
--
ALTER TABLE `tblpur_debits_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_debit_notes`
--
ALTER TABLE `tblpur_debit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_estimates`
--
ALTER TABLE `tblpur_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_estimate_detail`
--
ALTER TABLE `tblpur_estimate_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_invoices`
--
ALTER TABLE `tblpur_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_invoice_details`
--
ALTER TABLE `tblpur_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_invoice_payment`
--
ALTER TABLE `tblpur_invoice_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_orders`
--
ALTER TABLE `tblpur_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_order_detail`
--
ALTER TABLE `tblpur_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_order_payment`
--
ALTER TABLE `tblpur_order_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_request`
--
ALTER TABLE `tblpur_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_request_detail`
--
ALTER TABLE `tblpur_request_detail`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `tblpur_unit`
--
ALTER TABLE `tblpur_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `tblpur_vendor`
--
ALTER TABLE `tblpur_vendor`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tblpur_vendor_cate`
--
ALTER TABLE `tblpur_vendor_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_vendor_items`
--
ALTER TABLE `tblpur_vendor_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblp_t_form_question_box_description`
--
ALTER TABLE `tblp_t_form_question_box_description`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indexes for table `tblrecords_meta`
--
ALTER TABLE `tblrecords_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrec_criteria`
--
ALTER TABLE `tblrec_criteria`
  ADD PRIMARY KEY (`criteria_id`);

--
-- Indexes for table `tblrec_job_position`
--
ALTER TABLE `tblrec_job_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tblrec_set_transfer_record`
--
ALTER TABLE `tblrec_set_transfer_record`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `tblrec_transfer_records`
--
ALTER TABLE `tblrec_transfer_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreminders`
--
ALTER TABLE `tblreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `staff` (`staff`);

--
-- Indexes for table `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblsetting_asset_allocation`
--
ALTER TABLE `tblsetting_asset_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsetting_training`
--
ALTER TABLE `tblsetting_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsetting_transfer_records`
--
ALTER TABLE `tblsetting_transfer_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`);

--
-- Indexes for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  ADD PRIMARY KEY (`staffdepartmentid`);

--
-- Indexes for table `tblstock_take`
--
ALTER TABLE `tblstock_take`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstock_take_detail`
--
ALTER TABLE `tblstock_take_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Indexes for table `tbltaggables`
--
ALTER TABLE `tbltaggables`
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tbltags`
--
ALTER TABLE `tbltags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbltasks`
--
ALTER TABLE `tbltasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `milestone` (`milestone`),
  ADD KEY `kanban_order` (`kanban_order`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `service` (`service`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `priority` (`priority`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `contactid` (`contactid`);

--
-- Indexes for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  ADD PRIMARY KEY (`priorityid`);

--
-- Indexes for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  ADD PRIMARY KEY (`ticketstatusid`);

--
-- Indexes for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltodos`
--
ALTER TABLE `tbltodos`
  ADD PRIMARY KEY (`todoid`);

--
-- Indexes for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltraining_allocation`
--
ALTER TABLE `tbltraining_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltransfer_records_reception`
--
ALTER TABLE `tbltransfer_records_reception`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `tblvault`
--
ALTER TABLE `tblvault`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwarehouse`
--
ALTER TABLE `tblwarehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indexes for table `tblware_body_type`
--
ALTER TABLE `tblware_body_type`
  ADD PRIMARY KEY (`body_type_id`);

--
-- Indexes for table `tblware_color`
--
ALTER TABLE `tblware_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tblware_commodity_type`
--
ALTER TABLE `tblware_commodity_type`
  ADD PRIMARY KEY (`commodity_type_id`);

--
-- Indexes for table `tblware_size_type`
--
ALTER TABLE `tblware_size_type`
  ADD PRIMARY KEY (`size_type_id`);

--
-- Indexes for table `tblware_style_type`
--
ALTER TABLE `tblware_style_type`
  ADD PRIMARY KEY (`style_type_id`);

--
-- Indexes for table `tblware_unit_type`
--
ALTER TABLE `tblware_unit_type`
  ADD PRIMARY KEY (`unit_type_id`);

--
-- Indexes for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_activity_log`
--
ALTER TABLE `tblwh_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_approval_details`
--
ALTER TABLE `tblwh_approval_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_approval_setting`
--
ALTER TABLE `tblwh_approval_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_brand`
--
ALTER TABLE `tblwh_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_custom_fields`
--
ALTER TABLE `tblwh_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_goods_delivery_activity_log`
--
ALTER TABLE `tblwh_goods_delivery_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_inventory_serial_numbers`
--
ALTER TABLE `tblwh_inventory_serial_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_loss_adjustment`
--
ALTER TABLE `tblwh_loss_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_loss_adjustment_detail`
--
ALTER TABLE `tblwh_loss_adjustment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_model`
--
ALTER TABLE `tblwh_model`
  ADD PRIMARY KEY (`id`,`brand_id`);

--
-- Indexes for table `tblwh_omni_shipments`
--
ALTER TABLE `tblwh_omni_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_order_returns`
--
ALTER TABLE `tblwh_order_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_order_returns_refunds`
--
ALTER TABLE `tblwh_order_returns_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_order_return_details`
--
ALTER TABLE `tblwh_order_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_packing_lists`
--
ALTER TABLE `tblwh_packing_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_packing_list_details`
--
ALTER TABLE `tblwh_packing_list_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_series`
--
ALTER TABLE `tblwh_series`
  ADD PRIMARY KEY (`id`,`model_id`);

--
-- Indexes for table `tblwh_sub_group`
--
ALTER TABLE `tblwh_sub_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_items`
--
ALTER TABLE `project_items`
  MODIFY `pitem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbonus_discipline`
--
ALTER TABLE `tblbonus_discipline`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbonus_discipline_detail`
--
ALTER TABLE `tblbonus_discipline_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblchecklist`
--
ALTER TABLE `tblchecklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblchecklist_allocation`
--
ALTER TABLE `tblchecklist_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblconsents`
--
ALTER TABLE `tblconsents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcountries`
--
ALTER TABLE `tblcountries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcredits`
--
ALTER TABLE `tblcredits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcurrency_rates`
--
ALTER TABLE `tblcurrency_rates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcurrency_rate_logs`
--
ALTER TABLE `tblcurrency_rate_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  MODIFY `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2089;

--
-- AUTO_INCREMENT for table `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_results`
--
ALTER TABLE `tblform_results`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgoods_delivery`
--
ALTER TABLE `tblgoods_delivery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgoods_delivery_detail`
--
ALTER TABLE `tblgoods_delivery_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgoods_delivery_invoices_pr_orders`
--
ALTER TABLE `tblgoods_delivery_invoices_pr_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgoods_receipt`
--
ALTER TABLE `tblgoods_receipt`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgoods_receipt_detail`
--
ALTER TABLE `tblgoods_receipt_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgoods_transaction_detail`
--
ALTER TABLE `tblgoods_transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblgroup_checklist`
--
ALTER TABLE `tblgroup_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgroup_checklist_allocation`
--
ALTER TABLE `tblgroup_checklist_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_allocation_asset`
--
ALTER TABLE `tblhr_allocation_asset`
  MODIFY `allocation_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_allowance_type`
--
ALTER TABLE `tblhr_allowance_type`
  MODIFY `type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_checklist_allocation`
--
ALTER TABLE `tblhr_checklist_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_contract_template`
--
ALTER TABLE `tblhr_contract_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_dependent_person`
--
ALTER TABLE `tblhr_dependent_person`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_education`
--
ALTER TABLE `tblhr_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_group_checklist_allocation`
--
ALTER TABLE `tblhr_group_checklist_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_job_p`
--
ALTER TABLE `tblhr_job_p`
  MODIFY `job_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_job_position`
--
ALTER TABLE `tblhr_job_position`
  MODIFY `position_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblhr_jp_interview_training`
--
ALTER TABLE `tblhr_jp_interview_training`
  MODIFY `training_process_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_jp_salary_scale`
--
ALTER TABLE `tblhr_jp_salary_scale`
  MODIFY `salary_scale_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_knowedge_base_article_feedback`
--
ALTER TABLE `tblhr_knowedge_base_article_feedback`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_knowledge_base`
--
ALTER TABLE `tblhr_knowledge_base`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_knowledge_base_groups`
--
ALTER TABLE `tblhr_knowledge_base_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_list_staff_quitting_work`
--
ALTER TABLE `tblhr_list_staff_quitting_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_position_training`
--
ALTER TABLE `tblhr_position_training`
  MODIFY `training_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_position_training_question_form`
--
ALTER TABLE `tblhr_position_training_question_form`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_procedure_retire`
--
ALTER TABLE `tblhr_procedure_retire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_procedure_retire_manage`
--
ALTER TABLE `tblhr_procedure_retire_manage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_procedure_retire_of_staff`
--
ALTER TABLE `tblhr_procedure_retire_of_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_procedure_retire_of_staff_by_id`
--
ALTER TABLE `tblhr_procedure_retire_of_staff_by_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_profile_option`
--
ALTER TABLE `tblhr_profile_option`
  MODIFY `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblhr_p_t_form_question_box`
--
ALTER TABLE `tblhr_p_t_form_question_box`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_p_t_form_question_box_description`
--
ALTER TABLE `tblhr_p_t_form_question_box_description`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_p_t_form_results`
--
ALTER TABLE `tblhr_p_t_form_results`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_p_t_surveyresultsets`
--
ALTER TABLE `tblhr_p_t_surveyresultsets`
  MODIFY `resultsetid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_rec_transfer_records`
--
ALTER TABLE `tblhr_rec_transfer_records`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_salary_form`
--
ALTER TABLE `tblhr_salary_form`
  MODIFY `form_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_staff_contract`
--
ALTER TABLE `tblhr_staff_contract`
  MODIFY `id_contract` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_staff_contract_detail`
--
ALTER TABLE `tblhr_staff_contract_detail`
  MODIFY `contract_detail_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_staff_contract_type`
--
ALTER TABLE `tblhr_staff_contract_type`
  MODIFY `id_contracttype` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_training_allocation`
--
ALTER TABLE `tblhr_training_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_type_of_trainings`
--
ALTER TABLE `tblhr_type_of_trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblhr_views_tracking`
--
ALTER TABLE `tblhr_views_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhr_workplace`
--
ALTER TABLE `tblhr_workplace`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinternal_delivery_note`
--
ALTER TABLE `tblinternal_delivery_note`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinternal_delivery_note_detail`
--
ALTER TABLE `tblinternal_delivery_note_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinventory_commodity_min`
--
ALTER TABLE `tblinventory_commodity_min`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblinventory_manage`
--
ALTER TABLE `tblinventory_manage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblinvoicepaymentrecordspish`
--
ALTER TABLE `tblinvoicepaymentrecordspish`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblitemable`
--
ALTER TABLE `tblitemable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblitems_of_vendor`
--
ALTER TABLE `tblitems_of_vendor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads`
--
ALTER TABLE `tblleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243682;

--
-- AUTO_INCREMENT for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmail_attachment`
--
ALTER TABLE `tblmail_attachment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmail_inbox`
--
ALTER TABLE `tblmail_inbox`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmail_outbox`
--
ALTER TABLE `tblmail_outbox`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmz_bazargani`
--
ALTER TABLE `tblmz_bazargani`
  MODIFY `bazargani_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbloptions`
--
ALTER TABLE `tbloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblposition_training_question_form`
--
ALTER TABLE `tblposition_training_question_form`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245661;

--
-- AUTO_INCREMENT for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_items_details`
--
ALTER TABLE `tblproject_items_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `tblproposals`
--
ALTER TABLE `tblproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpurchase_option`
--
ALTER TABLE `tblpurchase_option`
  MODIFY `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpur_activity_log`
--
ALTER TABLE `tblpur_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_approval_details`
--
ALTER TABLE `tblpur_approval_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_approval_setting`
--
ALTER TABLE `tblpur_approval_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_comments`
--
ALTER TABLE `tblpur_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_contacts`
--
ALTER TABLE `tblpur_contacts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_contracts`
--
ALTER TABLE `tblpur_contracts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_debits`
--
ALTER TABLE `tblpur_debits`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_debits_refunds`
--
ALTER TABLE `tblpur_debits_refunds`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_debit_notes`
--
ALTER TABLE `tblpur_debit_notes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_estimates`
--
ALTER TABLE `tblpur_estimates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_estimate_detail`
--
ALTER TABLE `tblpur_estimate_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_invoices`
--
ALTER TABLE `tblpur_invoices`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_invoice_details`
--
ALTER TABLE `tblpur_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_invoice_payment`
--
ALTER TABLE `tblpur_invoice_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpur_orders`
--
ALTER TABLE `tblpur_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_order_detail`
--
ALTER TABLE `tblpur_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_order_payment`
--
ALTER TABLE `tblpur_order_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_request`
--
ALTER TABLE `tblpur_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_request_detail`
--
ALTER TABLE `tblpur_request_detail`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_unit`
--
ALTER TABLE `tblpur_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_vendor`
--
ALTER TABLE `tblpur_vendor`
  MODIFY `userid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_vendor_cate`
--
ALTER TABLE `tblpur_vendor_cate`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_vendor_items`
--
ALTER TABLE `tblpur_vendor_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblp_t_form_question_box_description`
--
ALTER TABLE `tblp_t_form_question_box_description`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrecords_meta`
--
ALTER TABLE `tblrecords_meta`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblrec_criteria`
--
ALTER TABLE `tblrec_criteria`
  MODIFY `criteria_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrec_job_position`
--
ALTER TABLE `tblrec_job_position`
  MODIFY `position_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrec_set_transfer_record`
--
ALTER TABLE `tblrec_set_transfer_record`
  MODIFY `set_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrec_transfer_records`
--
ALTER TABLE `tblrec_transfer_records`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsetting_asset_allocation`
--
ALTER TABLE `tblsetting_asset_allocation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsetting_training`
--
ALTER TABLE `tblsetting_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsetting_transfer_records`
--
ALTER TABLE `tblsetting_transfer_records`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblstock_take`
--
ALTER TABLE `tblstock_take`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstock_take_detail`
--
ALTER TABLE `tblstock_take_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltags`
--
ALTER TABLE `tbltags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbltasks`
--
ALTER TABLE `tbltasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  MODIFY `priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  MODIFY `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltodos`
--
ALTER TABLE `tbltodos`
  MODIFY `todoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltraining_allocation`
--
ALTER TABLE `tbltraining_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltransfer_records_reception`
--
ALTER TABLE `tbltransfer_records_reception`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwarehouse`
--
ALTER TABLE `tblwarehouse`
  MODIFY `warehouse_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblware_body_type`
--
ALTER TABLE `tblware_body_type`
  MODIFY `body_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblware_color`
--
ALTER TABLE `tblware_color`
  MODIFY `color_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblware_commodity_type`
--
ALTER TABLE `tblware_commodity_type`
  MODIFY `commodity_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblware_size_type`
--
ALTER TABLE `tblware_size_type`
  MODIFY `size_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblware_style_type`
--
ALTER TABLE `tblware_style_type`
  MODIFY `style_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblware_unit_type`
--
ALTER TABLE `tblware_unit_type`
  MODIFY `unit_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblwh_activity_log`
--
ALTER TABLE `tblwh_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblwh_approval_details`
--
ALTER TABLE `tblwh_approval_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_approval_setting`
--
ALTER TABLE `tblwh_approval_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_brand`
--
ALTER TABLE `tblwh_brand`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_custom_fields`
--
ALTER TABLE `tblwh_custom_fields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_goods_delivery_activity_log`
--
ALTER TABLE `tblwh_goods_delivery_activity_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblwh_inventory_serial_numbers`
--
ALTER TABLE `tblwh_inventory_serial_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_loss_adjustment`
--
ALTER TABLE `tblwh_loss_adjustment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_loss_adjustment_detail`
--
ALTER TABLE `tblwh_loss_adjustment_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_model`
--
ALTER TABLE `tblwh_model`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_omni_shipments`
--
ALTER TABLE `tblwh_omni_shipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblwh_order_returns`
--
ALTER TABLE `tblwh_order_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_order_returns_refunds`
--
ALTER TABLE `tblwh_order_returns_refunds`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_order_return_details`
--
ALTER TABLE `tblwh_order_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_packing_lists`
--
ALTER TABLE `tblwh_packing_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblwh_packing_list_details`
--
ALTER TABLE `tblwh_packing_list_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblwh_series`
--
ALTER TABLE `tblwh_series`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwh_sub_group`
--
ALTER TABLE `tblwh_sub_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  ADD CONSTRAINT `tbltwocheckout_log_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `tblinvoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
