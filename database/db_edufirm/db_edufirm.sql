-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 29, 2021 at 05:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_edufirm`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_infos`
--

CREATE TABLE `academic_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `division_grade` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major_subjects` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_categories`
--

CREATE TABLE `account_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_categories`
--

INSERT INTO `account_categories` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `ac_name`, `ac_type`, `dr`, `cr`, `status`) VALUES
(1, '2021-08-08 09:20:57', '2021-08-08 09:20:57', 1, NULL, 'ACCOUNTS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(2, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'ACCOUNTS RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(3, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'ACCUMULATED DEPRECIATION', 'Contra Asset', 'Decrease', 'Increase', 1),
(4, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'ADVERTISING EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(5, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'ALLOWANCE FOR UNCOLLECTIBLE ACCOUNTS', 'Contra Asset', 'Decrease', 'Increase', 1),
(6, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'AMORTIZATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(7, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'AVAILABLE FOR SALE SECURITIES', 'Asset', 'Increase', 'Decrease', 1),
(8, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'Bank Accounts', 'Asset', 'Increase', 'Decrease', 1),
(9, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'Bank OD A/c', 'Liability', 'Decrease', 'Increase', 1),
(10, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(11, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'BUILDING', 'Asset', 'Increase', 'Decrease', 1),
(12, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'CAPITAL STOCK', 'Equity', 'Decrease', 'Increase', 1),
(13, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'CASH', 'Asset', 'Increase', 'Decrease', 1),
(14, '2021-08-08 09:20:58', '2021-08-08 09:20:58', 1, NULL, 'CASH OVER', 'Revenue', 'Decrease', 'Increase', 1),
(15, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'CASH SHORT', 'Expense', 'Increase', 'Decrease', 1),
(16, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'CHARITABLE CONTRIBUTIONS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(17, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'COMMON STOCK', 'Equity', 'Decrease', 'Increase', 1),
(18, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'COST OF GOODS SOLD', 'Expense', 'Increase', 'Decrease', 1),
(19, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'CURRENCY EXCHANGE GAIN', 'Gain', 'Decrease', 'Increase', 1),
(20, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'CURRENCY EXCHANGE LOSS', 'Loss', 'Increase', 'Decrease', 1),
(21, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'DEPRECIATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(22, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'DISCOUNT ON BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(23, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'DISCOUNT ON NOTES PAYABLE', 'Contra Liability', 'Increase', 'Decrease', 1),
(24, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'DIVIDEND INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(25, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'DIVIDENDS', 'Dividend', 'Increase', 'Decrease', 1),
(26, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'DIVIDENDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(27, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'DOMAIN NAME', 'Asset', 'Increase', 'Decrease', 1),
(28, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'EMPLOYEE BENEFITS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(29, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'EQUIPMENT', 'Asset', 'Increase', 'Decrease', 1),
(30, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'FEDERAL INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(31, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'FEDERAL UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(32, '2021-08-08 09:20:59', '2021-08-08 09:20:59', 1, NULL, 'FREIGHT-IN', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1),
(33, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'FREIGHT-OUT', 'Expense', 'Increase', 'Decrease', 1),
(34, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'FUEL EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(35, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'GAIN', 'Gain', 'Decrease', 'Increase', 1),
(36, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'HEALTH/CHILD FLEX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(37, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INCOME SUMMARY', 'Not a Financial Statement Account', 'Debited for Total Expenses', 'Credited for Total Revenues', 1),
(38, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INSURANCE EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(39, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INSURANCE PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(40, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INTEREST EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(41, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INTEREST INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(42, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INTEREST PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(43, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INTEREST RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(44, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INVENTORY', 'Asset', 'Increase', 'Decrease', 1),
(45, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INVESTMENT IN BONDS', 'Asset', 'Increase', 'Decrease', 1),
(46, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INVESTMENT INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(47, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'INVESTMENTS', 'Asset', 'Increase', 'Decrease', 1),
(48, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'LAND', 'Asset', 'Increase', 'Decrease', 1),
(49, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'LOAN PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(50, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'LOAN & ADVANCE', 'Asset', 'Increase', 'Decrease', 1),
(51, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'LOSS', 'Loss', 'Increase', 'Decrease', 1),
(52, '2021-08-08 09:21:00', '2021-08-08 09:21:00', 1, NULL, 'MEDICARE/MEDICAID PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(53, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'MISCELLANEOUS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(54, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'NOTES PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(55, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'NOTES RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(56, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'OBLIGATION UNDER CAPITAL LEASE', 'Liability', 'Decrease', 'Increase', 1),
(57, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – COMMON', 'Equity', 'Decrease', 'Increase', 1),
(58, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – PREFERRED', 'Equity', 'Decrease', 'Increase', 1),
(59, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PATENT', 'Asset', 'Increase', 'Decrease', 1),
(60, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PAYROLL TAX EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(61, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PETTY CASH', 'Asset', 'Increase', 'Decrease', 1),
(62, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'POSTAGE EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(63, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PREMIUM ON BONDS PAYABLE', 'Liability Adjunct Account', 'Decrease', 'Increase', 1),
(64, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PREPAID INSURANCE', 'Asset', 'Increase', 'Decrease', 1),
(65, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PREPAID RENT', 'Asset', 'Increase', 'Decrease', 1),
(66, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PURCHASE DISCOUNTS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1),
(67, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PURCHASE DISCOUNTS LOST', 'Expense', 'Increase', 'Decrease', 1),
(68, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PURCHASES', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1),
(69, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'PURCHASE RETURNS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1),
(70, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'RENT EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(71, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'REPAIR EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(72, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'RETAINED EARNINGS', 'Equity', 'Decrease', 'Increase', 1),
(73, '2021-08-08 09:21:01', '2021-08-08 09:21:01', 1, NULL, 'RETIREMENT CONTRIBUTION PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(74, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'REVENUE', 'Revenue', 'Decrease', 'Increase', 1),
(75, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SALARIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(76, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SALARIES PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(77, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SALES', 'Revenue', 'Decrease', 'Increase', 1),
(78, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SALES DISCOUNTS', 'Contra Revenue', 'Increase', 'Decrease', 1),
(79, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SALES RETURNS', 'Contra Revenue', 'Increase', 'Decrease', 1),
(80, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SERVICE CHARGE', 'Expense', 'Increase', 'Decrease', 1),
(81, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SERVICE REVENUE', 'Revenue', 'Decrease', 'Increase', 1),
(82, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SOCIAL SECURITY PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(83, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'STATE INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(84, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'STATE UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(85, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SUNDRY CREDITORS', 'Current liabilities', 'Decrease', 'Increase', 1),
(86, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SUNDRY DEBTORS', 'Current Assets', 'Increase', 'Decrease', 1),
(87, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SUPPLIES', 'Asset', 'Increase', 'Decrease', 1),
(88, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'SUPPLIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(89, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'TRADING SECURITIES', 'Asset', 'Increase', 'Decrease', 1),
(90, '2021-08-08 09:21:02', '2021-08-08 09:21:02', 1, NULL, 'TREASURY STOCK', 'Contra Equity', 'Increase', 'Decrease', 1),
(91, '2021-08-08 09:21:02', '2021-08-08 09:21:03', 1, NULL, 'UNCOLLECTIBLE ACCOUNTS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(92, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'UNEARNED REVENUE', 'Liability', 'Decrease', 'Increase', 1),
(93, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'UNREALIZED GAIN', 'Gain', 'Decrease', 'Increase', 1),
(94, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'UNREALIZED LOSS', 'Loss', 'Increase', 'Decrease', 1),
(95, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'UNREALIZED GAIN – OTHER COMPREHENSIVE INCOME', 'Increase in Equity Via Other Comprehensive Income', 'Decrease', 'Increase', 1),
(96, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'UNREALIZED LOSS – OTHER COMPREHENSIVE INCOME', 'Decrease in Equity Via Other Comprehensive Income', 'Increase', 'Decrease', 1),
(97, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'UTILITIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(98, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'WARRANTY EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(99, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'WARRANTY LIABILITY', 'Liability', 'Decrease', 'Increase', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addressinfos`
--

CREATE TABLE `addressinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addressinfos`
--

INSERT INTO `addressinfos` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `status`) VALUES
(1, '2021-08-09 14:27:15', '2021-08-09 14:27:15', 1, NULL, 1, 'DAR ES SALAAM', 'TEMEKE', 'TANZANIA', 'DAR ES SALAAM', 'TEMEKE', 'TANZANIA', '977-31-23079', '977-98989898', '977-91239123', 1),
(2, '2021-08-09 14:37:10', '2021-08-09 14:37:10', 1, NULL, 2, 'DAR ES SALAAM', 'UBUNGO', 'TANZANIA', 'DAR ES SALAAM', 'UBUNGO', 'TANZANIA', '977-31-23079', '977-98989898', '977-91239123', 1),
(3, '2021-08-09 14:45:08', '2021-08-09 14:45:08', 1, NULL, 3, 'DAR ES SALAAM', 'UBUNGO', 'TANZANIA', 'DAR ES SALAAM', 'UBUNGO', 'TANZANIA', '977-31-23079', '90909', '977-91239123', 1),
(4, '2021-08-09 14:49:43', '2021-08-09 14:49:43', 1, NULL, 4, 'DAR ES SALAAM', 'K/NDONI', 'TANZANIA', 'DAR ES SALAAM', 'K/NDONI', 'TANZANIA', '977-31-23079', '977-98989898', '977-91239123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `event` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 1,
  `email` tinyint(1) NOT NULL DEFAULT 1,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `event`, `sms`, `email`, `subject`, `template`, `status`) VALUES
(1, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'BirthdayWish', 0, 0, 'Wish Your Birthday Dear', 'Dear {{first_name}}, Sending you smiles for every moment of your special day…Have a wonderful time and a very happy birthday!', 1),
(2, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'StudentRegistration', 0, 0, 'Registration Information', 'Dear {{first_name}}, you are successfully registered in our institution with RegNo.{{reg_no}}. Thank You.', 1),
(3, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'StudentTransfer', 0, 0, 'Transfer Information', 'Dear {{first_name}}, We would like to inform you are successfully transferred to {{semester}}. Thank You.', 1),
(4, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'FeeReceive', 0, 0, 'Fees Receive Information', 'Dear {{first_name}}, We would like to inform you we are successfully received {{amount}} on {{date}}. Thank you for the Deposit.', 1),
(5, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'BalanceFees', 0, 0, 'Balance Fees Information', 'Dear {{first_name}}, you have {{due_amount}} balance fees. please deposit on time. For more info contact the Account Department.', 1),
(6, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'SubjectAttendance', 0, 0, 'Student Subject Wise Attendance Information', 'Dear {{guardian_name}}, your child {{first_name}} was Absent in {{absent_status}} subjects attendance on {{date}}.', 1),
(7, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'StudentAttendance', 0, 0, 'Student Attendance Information', 'Dear Guardian, This is to inform you that {{first_name}} is {{status}} on {{date}}.', 1),
(8, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'StaffAttendance', 0, 0, 'Staff Attendance Information', 'Dear {{first_name}}, This is to inform you are {{status}} on {{date}}.', 1),
(9, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'StaffAbsentNotification', 0, 0, 'Staff Absent Information', 'Dear Sir, This is to inform you following staffs are absent today. {{staffs_name}}', 1),
(10, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'ExamScoreForGuardian', 0, 0, 'Exam Score Information', 'Dear Guardian, {{first_name}} has obtained the following marks in {{exam_mark_detail}}.', 1),
(11, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'ExamScoreForStudent', 0, 0, 'Exam Score Information', 'Dear {{first_name}}, you have obtained following marks in {{exam_mark_detail}}.', 1),
(12, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'LibraryRegistration', 0, 0, 'Library Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our library.', 1),
(13, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'LibraryReturnPeriodOver', 0, 0, 'Library Clearance Reminder', 'Dear {{first_name}}, We would like to inform you have some books return time period is over. So, please return as soon as possible.', 1),
(14, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'HostelRegistration', 0, 0, 'Hostel Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our hostel.', 1),
(15, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'HostelShift', 0, 0, 'Hostel Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{new_hostel}}.', 1),
(16, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'HostelLeave', 0, 0, 'Hostel Leave Information', 'Dear {{first_name}}, You are successfully leaving from our hostel. Thank you.', 1),
(17, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'HostelActive', 0, 0, 'Hostel Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our hostel service in {{new_hostel}}.', 1),
(18, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'TransportRegistration', 0, 0, 'Transport Service Registration Information', 'Dear {{first_name}}, You are successfully registered for our transport service in {{transport}}.', 1),
(19, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'TransportShift', 0, 0, 'Transport Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{transport}}.', 1),
(20, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'TransportLeave', 0, 0, 'Transport Leave Information', 'Dear {{first_name}}, You are successfully deactivated for transport service. Thank you.', 1),
(21, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'TransportActive', 0, 0, 'Transport Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our transport service in {{transport}}.', 1),
(22, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'CustomerRegistration', 0, 0, 'Customer Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1),
(23, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'VendorRegistration', 0, 0, 'Vendor Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `quantity`, `rate`, `status`) VALUES
(1, '2021-08-08 10:46:43', '2021-08-08 10:47:34', 2, 2, 'COMPUTERS', 0, 0, 1),
(2, '2021-08-08 10:47:17', '2021-08-08 10:47:17', 2, NULL, 'OFFICE CHAIR', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_answers`
--

CREATE TABLE `assignment_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `assignments_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `answer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `attendees_type` int(11) NOT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT 0,
  `day_2` int(11) NOT NULL DEFAULT 0,
  `day_3` int(11) NOT NULL DEFAULT 0,
  `day_4` int(11) NOT NULL DEFAULT 0,
  `day_5` int(11) NOT NULL DEFAULT 0,
  `day_6` int(11) NOT NULL DEFAULT 0,
  `day_7` int(11) NOT NULL DEFAULT 0,
  `day_8` int(11) NOT NULL DEFAULT 0,
  `day_9` int(11) NOT NULL DEFAULT 0,
  `day_10` int(11) NOT NULL DEFAULT 0,
  `day_11` int(11) NOT NULL DEFAULT 0,
  `day_12` int(11) NOT NULL DEFAULT 0,
  `day_13` int(11) NOT NULL DEFAULT 0,
  `day_14` int(11) NOT NULL DEFAULT 0,
  `day_15` int(11) NOT NULL DEFAULT 0,
  `day_16` int(11) NOT NULL DEFAULT 0,
  `day_17` int(11) NOT NULL DEFAULT 0,
  `day_18` int(11) NOT NULL DEFAULT 0,
  `day_19` int(11) NOT NULL DEFAULT 0,
  `day_20` int(11) NOT NULL DEFAULT 0,
  `day_21` int(11) NOT NULL DEFAULT 0,
  `day_22` int(11) NOT NULL DEFAULT 0,
  `day_23` int(11) NOT NULL DEFAULT 0,
  `day_24` int(11) NOT NULL DEFAULT 0,
  `day_25` int(11) NOT NULL DEFAULT 0,
  `day_26` int(11) NOT NULL DEFAULT 0,
  `day_27` int(11) NOT NULL DEFAULT 0,
  `day_28` int(11) NOT NULL DEFAULT 0,
  `day_29` int(11) NOT NULL DEFAULT 0,
  `day_30` int(11) NOT NULL DEFAULT 0,
  `day_31` int(11) NOT NULL DEFAULT 0,
  `day_32` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `attendees_type`, `link_id`, `years_id`, `months_id`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `day_32`, `status`) VALUES
(1, '2021-08-10 14:39:51', '2021-08-10 14:39:51', 1, NULL, 1, 1, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, '2021-08-10 14:39:51', '2021-08-10 14:39:51', 1, NULL, 1, 3, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, '2021-08-11 05:36:25', '2021-08-11 05:36:25', 1, NULL, 2, 5, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(4, '2021-08-11 05:36:25', '2021-08-11 05:36:25', 1, NULL, 2, 6, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(5, '2021-08-11 05:36:25', '2021-08-11 05:36:25', 1, NULL, 2, 7, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(6, '2021-08-11 05:36:25', '2021-08-11 05:36:25', 1, NULL, 2, 8, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_certificates`
--

CREATE TABLE `attendance_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `year_of_study` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_of_attendance` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_certificates`
--

INSERT INTO `attendance_certificates` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `date_of_issue`, `year_of_study`, `percentage_of_attendance`, `ref_text`, `status`) VALUES
(1, '2021-08-10 16:41:22', '2021-08-10 16:41:22', 1, NULL, 1, '2021-08-10', '2020-21', '95', '{\"date_of_issue\":\"2021-08-10T16:41:22.411798Z\",\"year_of_study\":\"2020-21\",\"percentage_of_attendance\":\"95\",\"students_id\":\"1\",\"faculty\":\"8\",\"semester\":\"1\",\"reg_no\":\"STUD-0001\",\"reg_date\":\"2021-08-09\",\"university_reg\":null,\"first_name\":\"EZEKIEL\",\"middle_name\":\"GIDEON\",\"last_name\":\"EGWAGA\",\"date_of_birth\":\"2017-11-15\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"nationality\":\"TANZANIAN\",\"religion\":\"CHRISTIAN\",\"caste\":\"TEMEKE\",\"issue_certificate\":\"Issue\",\"created_by\":1}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_masters`
--

CREATE TABLE `attendance_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `month` int(10) UNSIGNED NOT NULL,
  `day_in_month` int(11) NOT NULL,
  `holiday` int(11) NOT NULL,
  `open` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_masters`
--

INSERT INTO `attendance_masters` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `year`, `month`, `day_in_month`, `holiday`, `open`, `status`) VALUES
(1, '2021-08-10 14:36:42', '2021-08-10 14:36:42', 1, NULL, 3, 1, 31, 1, 30, 1),
(2, '2021-08-10 14:36:42', '2021-08-10 14:36:42', 1, NULL, 3, 2, 28, 1, 27, 1),
(3, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 3, 31, 2, 29, 1),
(4, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 4, 30, 1, 29, 1),
(5, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 5, 31, 1, 30, 1),
(6, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 6, 30, 0, 30, 1),
(7, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 7, 31, 1, 30, 1),
(8, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 8, 31, 1, 30, 1),
(9, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 9, 30, 0, 30, 1),
(10, '2021-08-10 14:36:43', '2021-08-10 14:36:43', 1, NULL, 3, 10, 31, 0, 31, 1),
(11, '2021-08-10 14:36:44', '2021-08-10 14:36:44', 1, NULL, 3, 11, 30, 0, 30, 1),
(12, '2021-08-10 14:36:44', '2021-08-10 14:36:44', 1, NULL, 3, 12, 31, 2, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_statuses`
--

CREATE TABLE `attendance_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_statuses`
--

INSERT INTO `attendance_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'PRESENT', 'btn-primary', 1),
(2, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'ABSENT', 'btn-danger', 1),
(3, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'LATE', 'btn-warning', 1),
(4, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'LEAVE', 'btn-success', 1),
(5, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'HOLIDAY', 'btn-info', 1);

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2021-08-08 12:21:38\",\"last_login_ip\":\"127.0.0.1\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 09:21:38', '2021-08-08 09:21:38'),
(2, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"institute\":\"Unlimited EduFirm\",\"salogan\":null,\"copyright\":null,\"address\":null,\"phone\":null,\"email\":null,\"website\":null,\"favicon\":null,\"time_zones_id\":null}', '{\"institute\":\"Kamo Nusery & Primary\",\"salogan\":\"\\\"quality & integrity\\\"\",\"copyright\":\"gielab Innovations \\u00a9 2021\",\"address\":\"Dar es Salaam\",\"phone\":\"+255 (22) 909090909\",\"email\":\"info@kamoschools.ac.tz\",\"website\":\"http:\\/\\/www.kamoschools.ac.tz\",\"favicon\":\"4992.ico\",\"time_zones_id\":\"19\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 09:47:31', '2021-08-08 09:47:31'),
(3, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"logo\":null}', '{\"logo\":\"7783.png\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 09:52:48', '2021-08-08 09:52:48'),
(4, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-08 12:21:38\"}', '{\"last_login_at\":\"2021-08-08 13:00:47\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:00:47', '2021-08-08 10:00:47'),
(5, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-08 13:00:47\"}', '{\"last_login_at\":\"2021-08-08 13:37:56\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:37:56', '2021-08-08 10:37:56'),
(6, 'App\\User', 1, 'created', 'App\\User', 2, '[]', '{\"name\":\"Grace Amelda\",\"email\":\"grace@gielab.com\",\"password\":\"$2y$10$qbc6Nw1HCwzkND.mNkvpbeafgIIGEOgKdWuufpXZNMVLxbitnnaU2\",\"contact_number\":\"909092\",\"address\":\"Dar es Salaam\",\"profile_image\":\"\",\"id\":2}', 'http://localhost/EduFirm/public/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:44:03', '2021-08-08 10:44:03'),
(7, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2021-08-08 13:44:50\",\"last_login_ip\":\"127.0.0.1\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:44:50', '2021-08-08 10:44:50'),
(8, 'App\\User', 2, 'created', 'App\\Models\\Assets', 1, '[]', '{\"title\":\"Computer\",\"created_by\":2,\"id\":1}', 'http://localhost/EduFirm/public/inventory/assets/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:46:43', '2021-08-08 10:46:43'),
(9, 'App\\User', 2, 'created', 'App\\Models\\Assets', 2, '[]', '{\"title\":\"OFFICE CHAIR\",\"created_by\":2,\"id\":2}', 'http://localhost/EduFirm/public/inventory/assets/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:47:17', '2021-08-08 10:47:17'),
(10, 'App\\User', 2, 'updated', 'App\\Models\\Assets', 1, '{\"last_updated_by\":null,\"title\":\"Computer\"}', '{\"last_updated_by\":2,\"title\":\"COMPUTERS\"}', 'http://localhost/EduFirm/public/inventory/assets/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:47:34', '2021-08-08 10:47:34'),
(11, 'App\\User', 2, 'created', 'App\\Models\\Category', 1, '[]', '{\"title\":\"COMPUTERS\",\"created_by\":2,\"id\":1}', 'http://localhost/EduFirm/public/product/category/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:49:18', '2021-08-08 10:49:18'),
(12, 'App\\User', 2, 'created', 'App\\Models\\Category', 2, '[]', '{\"title\":\"PRINTERS\",\"created_by\":2,\"id\":2}', 'http://localhost/EduFirm/public/product/category/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:49:48', '2021-08-08 10:49:48'),
(13, 'App\\User', 2, 'created', 'App\\Models\\SubCategory', 1, '[]', '{\"category_id\":2,\"title\":\"COPIER\",\"created_by\":2,\"id\":1}', 'http://localhost/EduFirm/public/product/category/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:49:48', '2021-08-08 10:49:48'),
(14, 'App\\User', 2, 'deleted', 'App\\Models\\Category', 2, '{\"id\":2,\"created_by\":2,\"last_updated_by\":null,\"title\":\"PRINTERS\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/product/category/eyJpdiI6IjMreGU5cmZuVlpsTFVpUlhkNWIyNGc9PSIsInZhbHVlIjoiVW1pR3ZjQVBzK0Rld25zV214TVZMdz09IiwibWFjIjoiNjc0ZmViNWIyM2Y4Nzg1NTAyOTc3MWY0MGQzOWUzM2M5NDExODRiOWRkMTNkMGMwNGIzMmU5MzA1NjE1NWExZiJ9/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:50:12', '2021-08-08 10:50:12'),
(15, 'App\\User', 2, 'deleted', 'App\\Models\\Category', 1, '{\"id\":1,\"created_by\":2,\"last_updated_by\":null,\"title\":\"COMPUTERS\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/product/category/eyJpdiI6Ijd1WVk5VVwvYVk2XC9JK09sditkWjdqZz09IiwidmFsdWUiOiJXVXNMbWxpeVwvUE9wN0c0cFFUelwvZFE9PSIsIm1hYyI6ImMwNWZlMGNiNTg0YjQxYmNiMjE0ZGU5YmU2NWJhZjlhMDMyYTM4MDdiNDM1ZjAwZDEzMTc0MWM1NjBlNzQ1MDYifQ==/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:50:19', '2021-08-08 10:50:19'),
(16, 'App\\User', 2, 'created', 'App\\Models\\Category', 3, '[]', '{\"title\":\"ELECTRONIC ITEM\",\"created_by\":2,\"id\":3}', 'http://localhost/EduFirm/public/product/category/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:50:57', '2021-08-08 10:50:57'),
(17, 'App\\User', 2, 'created', 'App\\Models\\Product', 1, '[]', '{\"category_id\":\"3\",\"sub_category_id\":\"0\",\"code\":\"PRO493601\",\"name\":\"COMUTER\",\"warranty\":\"1 YEAR\",\"description\":\"GOOD IN ORDER\",\"created_by\":2,\"product_image\":\"PRO493601.webp\",\"id\":1}', 'http://localhost/EduFirm/public/product/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:53:00', '2021-08-08 10:53:00'),
(18, 'App\\User', 2, 'created', 'App\\Models\\Product', 2, '[]', '{\"category_id\":\"3\",\"sub_category_id\":\"0\",\"code\":\"PRO138253\",\"name\":\"COMUTER\",\"warranty\":\"1 YEAR\",\"description\":\"GOOD IN ORDER\",\"created_by\":2,\"product_image\":\"PRO138253.webp\",\"id\":2}', 'http://localhost/EduFirm/public/product/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:55:38', '2021-08-08 10:55:38'),
(19, 'App\\User', 2, 'created', 'App\\Models\\Stock', 1, '[]', '{\"created_by\":2,\"products_id\":2,\"transaction_type\":\"Registration\",\"date\":\"2021-08-08T10:55:38.358211Z\",\"qty_in\":\"3\",\"id\":1}', 'http://localhost/EduFirm/public/product/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:55:38', '2021-08-08 10:55:38'),
(20, 'App\\User', 2, 'created', 'App\\Models\\ProductPrice', 1, '[]', '{\"created_by\":2,\"products_id\":2,\"cost_price\":\"3000000\",\"sale_price\":\"1000000\",\"id\":1}', 'http://localhost/EduFirm/public/product/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:55:38', '2021-08-08 10:55:38'),
(21, 'App\\User', 2, 'created', 'App\\Models\\Category', 4, '[]', '{\"title\":\"TEACHING MATERIAL\",\"created_by\":2,\"id\":4}', 'http://localhost/EduFirm/public/product/category/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 10:57:06', '2021-08-08 10:57:06'),
(22, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-08 13:37:56\"}', '{\"last_login_at\":\"2021-08-08 14:00:12\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:00:12', '2021-08-08 11:00:12'),
(23, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 1, '[]', '{\"title\":\"PEON\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:48', '2021-08-08 11:13:48'),
(24, 'App\\User', 1, 'created', 'App\\Models\\Staff', 3, '[]', '{\"reg_no\":\"S001\",\"join_date\":\"2018-06-01\",\"designation\":1,\"first_name\":\"LOREM\",\"middle_name\":\"KR\",\"last_name\":\"IPSUM\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"2001-05-08\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"nationality\":\"NEPALI\",\"mother_tongue\":\"MAITHILI\",\"email\":\"staff@gmail.com\",\"home_phone\":\"977-31-23078\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"2 NO\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"3 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"MA ECONOMICS\",\"experience\":\"2 YEAR\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:48', '2021-08-08 11:13:48'),
(25, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 4, '[]', '{\"tr_head\":\"LOREM KR IPSUM  [S001]\",\"ref_id\":3,\"acc_id\":76,\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:48', '2021-08-08 11:13:48'),
(26, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 2, '[]', '{\"title\":\"TEACHER\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:48', '2021-08-08 11:13:48'),
(27, 'App\\User', 1, 'created', 'App\\Models\\Staff', 4, '[]', '{\"reg_no\":\"S002\",\"join_date\":\"2018-06-02\",\"designation\":2,\"first_name\":\"UTTAM\",\"middle_name\":\"RAJ\",\"last_name\":\"YADU\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1988-05-31\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"nationality\":\"INDIAN\",\"mother_tongue\":\"HINDI\",\"email\":\"staff1@gmail.com\",\"home_phone\":\"977-31-23079\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"BAGMATI8\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"4 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"BCA \",\"experience\":\"3 YEAR\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:48', '2021-08-08 11:13:48'),
(28, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 5, '[]', '{\"tr_head\":\"UTTAM RAJ YADU  [S002]\",\"ref_id\":4,\"acc_id\":76,\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:48', '2021-08-08 11:13:48'),
(29, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 3, '[]', '{\"title\":\"ACCOUNTANT\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(30, 'App\\User', 1, 'created', 'App\\Models\\Staff', 5, '[]', '{\"reg_no\":\"S003\",\"join_date\":\"2018-06-03\",\"designation\":3,\"first_name\":\"UMESH\",\"middle_name\":\"KUMAR\",\"last_name\":\"YADAV\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1975-06-24\",\"gender\":\"MALE\",\"blood_group\":\"A-\",\"nationality\":\"NEPALI\",\"mother_tongue\":\"NEPALI\",\"email\":\"staff2@gmail.com\",\"home_phone\":\"977-31-23080\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"UP\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"5 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"BSC IT\",\"experience\":\"10 YEARS\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(31, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 6, '[]', '{\"tr_head\":\"UMESH KUMAR YADAV  [S003]\",\"ref_id\":5,\"acc_id\":76,\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(32, 'App\\User', 1, 'created', 'App\\Models\\Staff', 6, '[]', '{\"reg_no\":\"S004\",\"join_date\":\"2018-06-04\",\"designation\":2,\"first_name\":\"HARI\",\"middle_name\":\"\",\"last_name\":\"ADHIKARI\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1962-07-17\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"nationality\":\"INDIAN\",\"mother_tongue\":\"THARU\",\"email\":\"staff3@gmail.com\",\"home_phone\":\"977-31-23081\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"PUNJAB\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"6 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"MA ECONOMICS\",\"experience\":\"4 YEAR\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(33, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 7, '[]', '{\"tr_head\":\"HARI  ADHIKARI  [S004]\",\"ref_id\":6,\"acc_id\":76,\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(34, 'App\\User', 1, 'created', 'App\\Models\\Staff', 7, '[]', '{\"reg_no\":\"S005\",\"join_date\":\"2018-06-05\",\"designation\":2,\"first_name\":\"NOV\",\"middle_name\":\"\",\"last_name\":\"AANAND\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1949-08-09\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"nationality\":\"NEPALI\",\"mother_tongue\":\"ENGLISH\",\"email\":\"staff4@gmail.com\",\"home_phone\":\"977-31-23082\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"3 NO\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"7 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"BCA \",\"experience\":\"5 YEAR\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(35, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 8, '[]', '{\"tr_head\":\"NOV  AANAND  [S005]\",\"ref_id\":7,\"acc_id\":76,\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(36, 'App\\User', 1, 'created', 'App\\Models\\Staff', 8, '[]', '{\"reg_no\":\"S006\",\"join_date\":\"2018-06-06\",\"designation\":2,\"first_name\":\"GITA\",\"middle_name\":\"\",\"last_name\":\"SHRESTHA\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1936-09-01\",\"gender\":\"FEMALE\",\"blood_group\":\"A\",\"nationality\":\"INDIAN\",\"mother_tongue\":\"MAITHILI\",\"email\":\"staff5@gmail.com\",\"home_phone\":\"977-31-23083\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"BAGMATI9\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"8 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"BSC IT\",\"experience\":\"11 YEARS\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(37, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 9, '[]', '{\"tr_head\":\"GITA  SHRESTHA  [S006]\",\"ref_id\":8,\"acc_id\":76,\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(38, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 4, '[]', '{\"title\":\"SECURITY GUARD\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(39, 'App\\User', 1, 'created', 'App\\Models\\Staff', 9, '[]', '{\"reg_no\":\"S007\",\"join_date\":\"2018-06-07\",\"designation\":4,\"first_name\":\"SITA\",\"middle_name\":\"\",\"last_name\":\"MADE\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1923-09-25\",\"gender\":\"FEMALE\",\"blood_group\":\"O-\",\"nationality\":\"NEPALI\",\"mother_tongue\":\"HINDI\",\"email\":\"staff6@gmail.com\",\"home_phone\":\"977-31-23084\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"UP\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"9 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"MA ECONOMICS\",\"experience\":\"6 YEAR\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(40, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 10, '[]', '{\"tr_head\":\"SITA  MADE  [S007]\",\"ref_id\":9,\"acc_id\":76,\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:49', '2021-08-08 11:13:49'),
(41, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 5, '[]', '{\"title\":\"RECEPTION\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(42, 'App\\User', 1, 'created', 'App\\Models\\Staff', 10, '[]', '{\"reg_no\":\"S008\",\"join_date\":\"2018-06-08\",\"designation\":5,\"first_name\":\"RITA\",\"middle_name\":\"\",\"last_name\":\"GOSWAMI\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1910-10-18\",\"gender\":\"FEMALE\",\"blood_group\":\"B+\",\"nationality\":\"INDIAN\",\"mother_tongue\":\"NEPALI\",\"email\":\"staff7@gmail.com\",\"home_phone\":\"977-31-23085\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"PUNJAB\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"10 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"BCA \",\"experience\":\"7 YEAR\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(43, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 11, '[]', '{\"tr_head\":\"RITA  GOSWAMI  [S008]\",\"ref_id\":10,\"acc_id\":76,\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(44, 'App\\User', 1, 'created', 'App\\Models\\Staff', 11, '[]', '{\"reg_no\":\"S009\",\"join_date\":\"2018-06-09\",\"designation\":4,\"first_name\":\"AAYUSH\",\"middle_name\":\"\",\"last_name\":\"GHOSLA\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"2001-05-08\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"nationality\":\"NEPALI\",\"mother_tongue\":\"THARU\",\"email\":\"staff8@gmail.com\",\"home_phone\":\"977-31-23086\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"4 NO\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"11 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"BSC IT\",\"experience\":\"12 YEARS\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(45, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 12, '[]', '{\"tr_head\":\"AAYUSH  GHOSLA  [S009]\",\"ref_id\":11,\"acc_id\":76,\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(46, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 6, '[]', '{\"title\":\"DRIVER\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(47, 'App\\User', 1, 'created', 'App\\Models\\Staff', 12, '[]', '{\"reg_no\":\"S010\",\"join_date\":\"2018-06-10\",\"designation\":6,\"first_name\":\"PREETI\",\"middle_name\":\"\",\"last_name\":\"SHRESTHA\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1988-05-31\",\"gender\":\"FEMALE\",\"blood_group\":\"A+\",\"nationality\":\"INDIAN\",\"mother_tongue\":\"ENGLISH\",\"email\":\"staff9@gmail.com\",\"home_phone\":\"977-31-23087\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"KATHMANDU\",\"state\":\"BAGMATI10\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"12 NO\",\"temp_country\":\"NEPAL\",\"qualification\":\"MA ECONOMICS\",\"experience\":\"8 YEAR\",\"experience_info\":\"\",\"other_info\":\"\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(48, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 13, '[]', '{\"tr_head\":\"PREETI  SHRESTHA  [S010]\",\"ref_id\":12,\"acc_id\":76,\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/staff/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:13:50', '2021-08-08 11:13:50'),
(49, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 12, '{\"last_updated_by\":null,\"join_date\":\"2018-06-10 00:00:00\",\"middle_name\":\"\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1988-05-31 00:00:00\",\"nationality\":\"INDIAN\",\"address\":\"KATHMANDU\",\"state\":\"BAGMATI10\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"12 NO\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"ENGLISH\",\"qualification\":\"MA ECONOMICS\",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-10\",\"middle_name\":null,\"father_name\":\"HUSSEIN\",\"mother_name\":\"SARAFINA\",\"date_of_birth\":\"1988-05-31\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"state\":\"K\\/NDONI\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"K\\/NDONI\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"MACHENICS AND DRIVER\",\"experience_info\":null,\"other_info\":null}', 'http://localhost/EduFirm/public/staff/12/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:17:31', '2021-08-08 11:17:31'),
(50, 'App\\User', 1, 'updated', 'App\\Models\\StaffDesignation', 5, '{\"last_updated_by\":null,\"title\":\"RECEPTION\"}', '{\"last_updated_by\":1,\"title\":\"RECEPTIONIST\"}', 'http://localhost/EduFirm/public/staff/designation/5/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:18:16', '2021-08-08 11:18:16'),
(51, 'App\\User', 1, 'updated', 'App\\Models\\StaffDesignation', 1, '{\"last_updated_by\":null,\"title\":\"PEON\"}', '{\"last_updated_by\":1,\"title\":\"CLEANER\"}', 'http://localhost/EduFirm/public/staff/designation/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:18:53', '2021-08-08 11:18:53'),
(52, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 11, '{\"last_updated_by\":null,\"join_date\":\"2018-06-09 00:00:00\",\"first_name\":\"AAYUSH\",\"middle_name\":\"\",\"last_name\":\"GHOSLA\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"2001-05-08 00:00:00\",\"nationality\":\"NEPALI\",\"address\":\"KATHMANDU\",\"state\":\"4 NO\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"11 NO\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"THARU\",\"qualification\":\"BSC IT\",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-09\",\"first_name\":\"YUSUPH\",\"middle_name\":\"ALMEDA\",\"last_name\":\"GOLANI\",\"father_name\":\"ALMEDA\",\"mother_name\":\"ATANASI\",\"date_of_birth\":\"2001-05-08\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"state\":\"TEMEKE\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"TEMEKE\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"JKT\",\"experience_info\":null,\"other_info\":null}', 'http://localhost/EduFirm/public/staff/11/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:22:11', '2021-08-08 11:22:11'),
(53, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 10, '{\"last_updated_by\":null,\"join_date\":\"2018-06-08 00:00:00\",\"middle_name\":\"\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1910-10-18 00:00:00\",\"nationality\":\"INDIAN\",\"address\":\"KATHMANDU\",\"state\":\"PUNJAB\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"10 NO\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"NEPALI\",\"qualification\":\"BCA \",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-08\",\"middle_name\":\"MLATA\",\"father_name\":\"MLATA\",\"mother_name\":\"DUMBA\",\"date_of_birth\":\"1910-10-18\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"state\":\"K\\/NDONI\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"K\\/NDONI\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"DIPLOMA IN SECRETARIAL\",\"experience_info\":\"SEVEN YEARS WORKING AS RECEPTIONIST, I HAVE DEEPLY\",\"other_info\":\"CONCERN OF THIS WORK AM WELL COMPROMISE WITH OTHERS\"}', 'http://localhost/EduFirm/public/staff/10/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:27:10', '2021-08-08 11:27:10'),
(54, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 9, '{\"last_updated_by\":null,\"join_date\":\"2018-06-07 00:00:00\",\"middle_name\":\"\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1923-09-25 00:00:00\",\"nationality\":\"NEPALI\",\"address\":\"KATHMANDU\",\"state\":\"UP\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"9 NO\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"HINDI\",\"qualification\":\"MA ECONOMICS\",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-07\",\"middle_name\":\"JR\",\"father_name\":\"JR\",\"mother_name\":\"ATANASI\",\"date_of_birth\":\"1923-09-25\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"state\":\"TEMEKE\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"TEMEKE\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"JKT\",\"experience_info\":\"CONCERN OF THIS WORK AM WELL COMPROMISE WITH OTHERS\",\"other_info\":\"CONCERN OF THIS WORK AM WELL COMPROMISE WITH OTHERS\"}', 'http://localhost/EduFirm/public/staff/9/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:29:22', '2021-08-08 11:29:22'),
(55, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 8, '{\"last_updated_by\":null,\"join_date\":\"2018-06-06 00:00:00\",\"middle_name\":\"\",\"last_name\":\"SHRESTHA\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1936-09-01 00:00:00\",\"blood_group\":\"A\",\"nationality\":\"INDIAN\",\"address\":\"KATHMANDU\",\"state\":\"BAGMATI9\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_state\":\"8 NO\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"MAITHILI\",\"qualification\":\"BSC IT\",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-06\",\"middle_name\":\"MLATA\",\"last_name\":\"GOMEZ\",\"father_name\":\"MLATA\",\"mother_name\":\"SARA\",\"date_of_birth\":\"1936-09-01\",\"blood_group\":\"AB-\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"state\":\"UBUNGO\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"UBUNGO\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"CERTIFICATE IN EDUCATION\",\"experience_info\":\"MLATA\",\"other_info\":\"MLATA\"}', 'http://localhost/EduFirm/public/staff/8/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:32:23', '2021-08-08 11:32:23'),
(56, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 7, '{\"last_updated_by\":null,\"join_date\":\"2018-06-05 00:00:00\",\"middle_name\":\"\",\"last_name\":\"AANAND\",\"father_name\":\"HARI BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1949-08-09 00:00:00\",\"gender\":\"MALE\",\"nationality\":\"NEPALI\",\"address\":\"KATHMANDU\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_country\":\"NEPAL\",\"qualification\":\"BCA \",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-05\",\"middle_name\":\"AWADH\",\"last_name\":\"NDEE\",\"father_name\":\"AWADH\",\"mother_name\":\"NOVER\",\"date_of_birth\":\"1949-08-09\",\"gender\":\"FEMALE\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"country\":\"TANZANIA\",\"temp_address\":\"KILIMANJARO\",\"temp_country\":\"TANZANIA\",\"qualification\":\"BE\",\"experience_info\":\"READY TO GO\",\"other_info\":\"READY TO GO\"}', 'http://localhost/EduFirm/public/staff/7/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:34:56', '2021-08-08 11:34:56'),
(57, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 6, '{\"last_updated_by\":null,\"join_date\":\"2018-06-04 00:00:00\",\"middle_name\":\"\",\"last_name\":\"ADHIKARI\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1962-07-17 00:00:00\",\"nationality\":\"INDIAN\",\"address\":\"KATHMANDU\",\"state\":\"PUNJAB\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"THARU\",\"qualification\":\"MA ECONOMICS\",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-04\",\"middle_name\":\"AMIGO\",\"last_name\":\"ADHI\",\"father_name\":\"AMIGO\",\"mother_name\":\"DUMBA\",\"date_of_birth\":\"1962-07-17\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"state\":\"UBUNGO\",\"country\":\"TANZANIA\",\"temp_address\":\"KILIMANJARO\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"DIPLOMA IN EDUCATION\",\"experience_info\":null,\"other_info\":null}', 'http://localhost/EduFirm/public/staff/6/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:37:20', '2021-08-08 11:37:20'),
(58, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 5, '{\"last_updated_by\":null,\"join_date\":\"2018-06-03 00:00:00\",\"designation\":3,\"first_name\":\"UMESH\",\"middle_name\":\"KUMAR\",\"last_name\":\"YADAV\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1975-06-24 00:00:00\",\"nationality\":\"NEPALI\",\"address\":\"KATHMANDU\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"NEPALI\",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-03\",\"designation\":\"2\",\"first_name\":\"EZEKIEL\",\"middle_name\":\"GIDEON\",\"last_name\":\"EGWAGA\",\"mother_name\":\"SARAFINA\",\"date_of_birth\":\"1975-06-24\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"experience_info\":null,\"other_info\":null}', 'http://localhost/EduFirm/public/staff/5/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:39:01', '2021-08-08 11:39:01'),
(59, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 4, '{\"last_updated_by\":null,\"join_date\":\"2018-06-02 00:00:00\",\"designation\":2,\"middle_name\":\"RAJ\",\"last_name\":\"YADU\",\"father_name\":\"RAM BAHADUR\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"1988-05-31 00:00:00\",\"gender\":\"MALE\",\"nationality\":\"INDIAN\",\"address\":\"KATHMANDU\",\"country\":\"INDIA\",\"temp_address\":\"KATHMANDU\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"HINDI\",\"qualification\":\"BCA \",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-02\",\"designation\":\"3\",\"middle_name\":\"RAJAB\",\"last_name\":\"YAMASUKULUU\",\"father_name\":\"RAJAB\",\"mother_name\":\"NOVER\",\"date_of_birth\":\"1988-05-31\",\"gender\":\"FEMALE\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"BCA\",\"experience_info\":null,\"other_info\":null}', 'http://localhost/EduFirm/public/staff/4/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:41:36', '2021-08-08 11:41:36'),
(60, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 3, '{\"last_updated_by\":null,\"join_date\":\"2018-06-01 00:00:00\",\"mother_name\":\"TEST MOTHER\",\"date_of_birth\":\"2001-05-08 00:00:00\",\"gender\":\"MALE\",\"nationality\":\"NEPALI\",\"address\":\"KATHMANDU\",\"country\":\"NEPAL\",\"temp_address\":\"KATHMANDU\",\"temp_country\":\"NEPAL\",\"mother_tongue\":\"MAITHILI\",\"qualification\":\"MA ECONOMICS\",\"experience_info\":\"\",\"other_info\":\"\"}', '{\"last_updated_by\":1,\"join_date\":\"2018-06-01\",\"mother_name\":\"SARAFINA\",\"date_of_birth\":\"2001-05-08\",\"gender\":\"FEMALE\",\"nationality\":\"TANZANIAN\",\"address\":\"DAR ES SALAAM\",\"country\":\"TANZANIA\",\"temp_address\":\"KILIMANJARO\",\"temp_country\":\"TANZANIA\",\"mother_tongue\":\"SWAHILI\",\"qualification\":\"CLINER\",\"experience_info\":null,\"other_info\":null}', 'http://localhost/EduFirm/public/staff/3/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 11:43:41', '2021-08-08 11:43:41'),
(61, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-08 14:00:12\"}', '{\"last_login_at\":\"2021-08-08 22:02:29\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-08 19:02:29', '2021-08-08 19:02:29'),
(62, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-08 22:02:29\"}', '{\"last_login_at\":\"2021-08-09 16:20:12\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:20:12', '2021-08-09 13:20:12'),
(63, 'App\\User', 1, 'created', 'App\\Models\\LibraryMember', 1, '[]', '{\"user_type\":\"2\",\"status\":1,\"member_id\":3,\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/library/member/quick-membership?reg_no=S001&status=active&user_type=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:21:10', '2021-08-09 13:21:10'),
(64, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 1, '[]', '{\"faculty\":\"Class One\",\"faculty_code\":\"C001\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:33:41', '2021-08-09 13:33:41'),
(65, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 2, '[]', '{\"faculty\":\"CLASS TWO\",\"faculty_code\":\"C002\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:34:19', '2021-08-09 13:34:19'),
(66, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 3, '[]', '{\"faculty\":\"CLASS THREE\",\"faculty_code\":\"C003\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:34:41', '2021-08-09 13:34:41'),
(67, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 4, '[]', '{\"faculty\":\"CLASS FOUR\",\"faculty_code\":\"C004\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:35:07', '2021-08-09 13:35:07'),
(68, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 5, '[]', '{\"faculty\":\"CLASS FIVE\",\"faculty_code\":\"C005\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:35:30', '2021-08-09 13:35:30'),
(69, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 6, '[]', '{\"faculty\":\"CLASS SIX\",\"faculty_code\":\"C006\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:35:47', '2021-08-09 13:35:47'),
(70, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 7, '[]', '{\"faculty\":\"CLASS SEVEN\",\"faculty_code\":\"C007\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:36:15', '2021-08-09 13:36:15'),
(71, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 1, '[]', '{\"title\":\"1\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/student-batch/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:40:51', '2021-08-09 13:40:51'),
(72, 'App\\User', 1, 'created', 'App\\Models\\Semester', 1, '[]', '{\"semester\":\"A\",\"gradingType_id\":\"0\",\"staff_id\":\"0\",\"created_by\":1,\"slug\":\"A\",\"id\":1}', 'http://localhost/EduFirm/public/semester/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:42:02', '2021-08-09 13:42:02'),
(73, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 1, '[]', '{\"title\":\"PRIMARY LEVEL\",\"created_by\":1,\"slug\":\"PRIMARY-LEVEL\",\"id\":1}', 'http://localhost/EduFirm/public/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:46:02', '2021-08-09 13:46:02'),
(74, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 1, '[]', '{\"gradingType_id\":1,\"name\":\"A+\",\"percentage_from\":\"80\",\"percentage_to\":\"100\",\"grade_point\":\"5\",\"description\":\"Excellent\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:46:02', '2021-08-09 13:46:02'),
(75, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 1, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:48:21', '2021-08-09 13:48:21'),
(76, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 2, '[]', '{\"gradingType_id\":1,\"name\":\"A\",\"percentage_from\":\"70\",\"percentage_to\":\"79\",\"grade_point\":\"4.5\",\"description\":\"Very Good\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:48:21', '2021-08-09 13:48:21'),
(77, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 3, '[]', '{\"gradingType_id\":1,\"name\":\"B\",\"percentage_from\":\"60\",\"percentage_to\":\"69\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:48:21', '2021-08-09 13:48:21'),
(78, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 4, '[]', '{\"gradingType_id\":1,\"name\":\"C\",\"percentage_from\":\"50\",\"percentage_to\":\"59\",\"grade_point\":\"2\",\"description\":\"Fair\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:48:21', '2021-08-09 13:48:21'),
(79, 'App\\User', 1, 'updated', 'App\\Models\\GradingType', 1, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:48:21', '2021-08-09 13:48:21'),
(80, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 2, '{\"last_updated_by\":null,\"grade_point\":5}', '{\"last_updated_by\":1,\"grade_point\":\"4\"}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:49:27', '2021-08-09 13:49:27'),
(81, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 3, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:49:27', '2021-08-09 13:49:27'),
(82, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 4, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:49:27', '2021-08-09 13:49:27'),
(83, 'App\\User', 1, 'created', 'App\\Models\\Subject', 1, '[]', '{\"title\":\"MATHEMATICS\",\"code\":\"M01\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"35\",\"full_mark_practical\":\"0\",\"pass_mark_practical\":\"0\",\"credit_hour\":\"5\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"5\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:52:27', '2021-08-09 13:52:27'),
(84, 'App\\User', 1, 'created', 'App\\Models\\Subject', 2, '[]', '{\"title\":\"KISWAHILI\",\"code\":\"KW02\",\"full_mark_theory\":\"75\",\"pass_mark_theory\":\"24\",\"full_mark_practical\":\"25\",\"pass_mark_practical\":\"13\",\"credit_hour\":\"4\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"9\",\"description\":\"AM READY\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:56:57', '2021-08-09 13:56:57'),
(85, 'App\\User', 1, 'created', 'App\\Models\\Subject', 3, '[]', '{\"title\":\"ENGLISH\",\"code\":\"E03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":\"0\",\"pass_mark_practical\":\"0\",\"credit_hour\":\"4\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"6\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:58:02', '2021-08-09 13:58:02'),
(86, 'App\\User', 1, 'updated', 'App\\Models\\Semester', 1, '{\"last_updated_by\":null,\"staff_id\":0,\"gradingType_id\":0}', '{\"last_updated_by\":1,\"staff_id\":\"5\",\"gradingType_id\":\"1\"}', 'http://localhost/EduFirm/public/semester/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 13:59:34', '2021-08-09 13:59:34'),
(87, 'App\\User', 1, 'created', 'App\\Models\\Semester', 2, '[]', '{\"semester\":\"B\",\"gradingType_id\":\"1\",\"staff_id\":\"6\",\"created_by\":1,\"slug\":\"B\",\"id\":2}', 'http://localhost/EduFirm/public/semester/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:02:47', '2021-08-09 14:02:47'),
(88, 'App\\User', 1, 'deleted', 'App\\Models\\Faculty', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":null,\"faculty\":\"CLASS TWO\",\"faculty_code\":\"C002\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/faculty/2/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:04:50', '2021-08-09 14:04:50'),
(89, 'App\\User', 1, 'deleted', 'App\\Models\\Faculty', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"faculty\":\"CLASS THREE\",\"faculty_code\":\"C003\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/faculty/3/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:04:58', '2021-08-09 14:04:58'),
(90, 'App\\User', 1, 'deleted', 'App\\Models\\Faculty', 6, '{\"id\":6,\"created_by\":1,\"last_updated_by\":null,\"faculty\":\"CLASS SIX\",\"faculty_code\":\"C006\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/faculty/6/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:05:07', '2021-08-09 14:05:07'),
(91, 'App\\User', 1, 'deleted', 'App\\Models\\Faculty', 7, '{\"id\":7,\"created_by\":1,\"last_updated_by\":null,\"faculty\":\"CLASS SEVEN\",\"faculty_code\":\"C007\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/faculty/7/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:05:14', '2021-08-09 14:05:14'),
(92, 'App\\User', 1, 'deleted', 'App\\Models\\Faculty', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"faculty\":\"Class One\",\"faculty_code\":\"C001\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/faculty/1/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:05:21', '2021-08-09 14:05:21');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(93, 'App\\User', 1, 'deleted', 'App\\Models\\Faculty', 4, '{\"id\":4,\"created_by\":1,\"last_updated_by\":null,\"faculty\":\"CLASS FOUR\",\"faculty_code\":\"C004\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/faculty/4/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:05:27', '2021-08-09 14:05:27'),
(94, 'App\\User', 1, 'deleted', 'App\\Models\\Faculty', 5, '{\"id\":5,\"created_by\":1,\"last_updated_by\":null,\"faculty\":\"CLASS FIVE\",\"faculty_code\":\"C005\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/faculty/5/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:05:34', '2021-08-09 14:05:34'),
(95, 'App\\User', 1, 'updated', 'App\\Models\\Semester', 2, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/semester/2/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:09:54', '2021-08-09 14:09:54'),
(96, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 8, '[]', '{\"faculty\":\"CLASS ONE\",\"faculty_code\":\"C001\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:12:23', '2021-08-09 14:12:23'),
(97, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 9, '[]', '{\"faculty\":\"CLASS TWO\",\"faculty_code\":\"C002\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:12:40', '2021-08-09 14:12:40'),
(98, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 10, '[]', '{\"faculty\":\"CLASS THREE\",\"faculty_code\":\"C003\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:13:06', '2021-08-09 14:13:06'),
(99, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 11, '[]', '{\"faculty\":\"CLASS FOUR\",\"faculty_code\":\"C004\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:13:27', '2021-08-09 14:13:27'),
(100, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 12, '[]', '{\"faculty\":\"CLASS FIVE\",\"faculty_code\":\"C005\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:14:01', '2021-08-09 14:14:01'),
(101, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 13, '[]', '{\"faculty\":\"CLASS SIX\",\"faculty_code\":\"C006\",\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:14:38', '2021-08-09 14:14:38'),
(102, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 14, '[]', '{\"faculty\":\"CLASS SEVEN\",\"faculty_code\":\"C007\",\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:15:09', '2021-08-09 14:15:09'),
(103, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 2, '[]', '{\"title\":\"2\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/student-batch/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:19:44', '2021-08-09 14:19:44'),
(104, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 3, '[]', '{\"title\":\"3\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/student-batch/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:19:51', '2021-08-09 14:19:51'),
(105, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 4, '[]', '{\"title\":\"4\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/student-batch/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:19:57', '2021-08-09 14:19:57'),
(106, 'App\\User', 1, 'created', 'App\\Models\\Student', 1, '[]', '{\"reg_no\":\"STUD-0001\",\"reg_date\":\"2021-08-09\",\"university_reg\":null,\"faculty\":\"8\",\"semester\":\"1\",\"batch\":\"1\",\"academic_status\":\"1\",\"first_name\":\"EZEKIEL\",\"middle_name\":\"GIDEON\",\"last_name\":\"EGWAGA\",\"date_of_birth\":\"2017-11-15\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"religion\":\"CHRISTIAN\",\"caste\":\"TEMEKE\",\"nationality\":\"TANZANIAN\",\"mother_tongue\":\"SWAHILI\",\"email\":\"ezekiel@gielab.com\",\"extra_info\":\"I LOVE THIS SCHOOL AS MUCH POSSIBLE\",\"created_by\":1,\"student_image\":\"\",\"student_signature\":\"\",\"id\":1}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:27:15', '2021-08-09 14:27:15'),
(107, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 1, '[]', '{\"home_phone\":\"977-31-23079\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"DAR ES SALAAM\",\"state\":\"TEMEKE\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"TEMEKE\",\"temp_country\":\"TANZANIA\",\"created_by\":1,\"students_id\":1,\"id\":1}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:27:15', '2021-08-09 14:27:15'),
(108, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 1, '[]', '{\"grandfather_first_name\":\"EGWAGA\",\"grandfather_middle_name\":\"GUMI\",\"grandfather_last_name\":\"RYOBHA\",\"father_first_name\":\"GIDEON\",\"father_middle_name\":\"EGWAGA\",\"father_last_name\":\"RYOBHA\",\"father_eligibility\":\"MA\",\"father_occupation\":\"ICT TECHNICAL\",\"father_office\":\"IPS\",\"father_office_number\":\"977\",\"father_residence_number\":\"23080\",\"father_mobile_1\":\"977-31-23070\",\"father_mobile_2\":\"977-31-23071\",\"father_email\":\"gideon@gielab.com\",\"mother_first_name\":\"SARA\",\"mother_middle_name\":\"GUMI\",\"mother_last_name\":\"MATAMBO\",\"mother_eligibility\":\"ELIGIBLE\",\"mother_occupation\":\"HOME MOTHER\",\"mother_office\":\"IPS\",\"mother_office_number\":\"977\",\"mother_residence_number\":\"23080\",\"mother_mobile_1\":\"977-31-23072\",\"mother_mobile_2\":\"973-31-23072\",\"mother_email\":\"sara@gielab.com\",\"created_by\":1,\"father_image\":\"\",\"mother_image\":\"\",\"students_id\":1,\"id\":1}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:27:15', '2021-08-09 14:27:15'),
(109, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 1, '[]', '{\"guardian_first_name\":\"GIDEON\",\"guardian_middle_name\":\"EGWAGA\",\"guardian_last_name\":\"RYOBHA\",\"guardian_eligibility\":\"MA\",\"guardian_occupation\":\"ICT TECHNICAL\",\"guardian_office\":\"IPS\",\"guardian_office_number\":\"977\",\"guardian_residence_number\":\"23080\",\"guardian_mobile_1\":\"977-31-23070\",\"guardian_mobile_2\":\"977-31-23071\",\"guardian_email\":\"gideon@gielab.com\",\"guardian_relation\":\"FATHER\",\"guardian_address\":\"DAR\",\"created_by\":1,\"guardian_image\":\"\",\"id\":1}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:27:15', '2021-08-09 14:27:15'),
(110, 'App\\User', 1, 'created', 'App\\Models\\Student', 2, '[]', '{\"reg_no\":\"STUD-0002\",\"reg_date\":\"2021-08-08\",\"university_reg\":null,\"faculty\":\"8\",\"semester\":\"2\",\"batch\":\"1\",\"academic_status\":\"1\",\"first_name\":\"YUSUPH\",\"middle_name\":\"AMIGO\",\"last_name\":\"ADHI\",\"date_of_birth\":\"2017-03-25\",\"gender\":\"MALE\",\"blood_group\":\"AB+\",\"religion\":\"ISLAMIC\",\"caste\":\"TEMEKE\",\"nationality\":\"TANZANIAN\",\"mother_tongue\":\"SWAHILI\",\"email\":\"YA@gielab.com\",\"extra_info\":\"READY TO GO\",\"created_by\":1,\"student_image\":\"\",\"student_signature\":\"\",\"id\":2}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:37:10', '2021-08-09 14:37:10'),
(111, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 2, '[]', '{\"home_phone\":\"977-31-23079\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"DAR ES SALAAM\",\"state\":\"UBUNGO\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"UBUNGO\",\"temp_country\":\"TANZANIA\",\"created_by\":1,\"students_id\":2,\"id\":2}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:37:10', '2021-08-09 14:37:10'),
(112, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 2, '[]', '{\"grandfather_first_name\":\"ADHI\",\"grandfather_middle_name\":\"RUDO\",\"grandfather_last_name\":\"CHECHEMI\",\"father_first_name\":\"AMIGO\",\"father_middle_name\":\"ADHI\",\"father_last_name\":\"RUDO\",\"father_eligibility\":\"MA\",\"father_occupation\":\"ICT\",\"father_office\":\"IPS\",\"father_office_number\":\"977\",\"father_residence_number\":\"23080\",\"father_mobile_1\":\"977-31-23070\",\"father_mobile_2\":\"977-31-23071\",\"father_email\":\"AA@gielab.com\",\"mother_first_name\":\"ISABELA\",\"mother_middle_name\":\"GUMI\",\"mother_last_name\":\"AMADOL\",\"mother_eligibility\":\"ELIGIBLE\",\"mother_occupation\":\"HOME MOTHER\",\"mother_office\":\"IPS\",\"mother_office_number\":\"977\",\"mother_residence_number\":\"23080\",\"mother_mobile_1\":\"977-31-23072\",\"mother_mobile_2\":\"973-31-23072\",\"mother_email\":\"IG@gielab.com\",\"created_by\":1,\"father_image\":\"\",\"mother_image\":\"\",\"students_id\":2,\"id\":2}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:37:10', '2021-08-09 14:37:10'),
(113, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 2, '[]', '{\"guardian_first_name\":\"AMIGO\",\"guardian_middle_name\":\"ADHI\",\"guardian_last_name\":\"RUDO\",\"guardian_eligibility\":\"MA\",\"guardian_occupation\":\"ICT\",\"guardian_office\":\"IPS\",\"guardian_office_number\":\"977\",\"guardian_residence_number\":\"23080\",\"guardian_mobile_1\":\"977-31-23070\",\"guardian_mobile_2\":\"977-31-23071\",\"guardian_email\":\"AA@gielab.com\",\"guardian_relation\":\"FATHER\",\"guardian_address\":\"DAR\",\"created_by\":1,\"guardian_image\":\"\",\"id\":2}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:37:10', '2021-08-09 14:37:10'),
(114, 'App\\User', 1, 'created', 'App\\Models\\Student', 3, '[]', '{\"reg_no\":\"STUD-0003\",\"reg_date\":\"2021-02-25\",\"university_reg\":null,\"faculty\":\"8\",\"semester\":\"1\",\"batch\":\"1\",\"academic_status\":\"1\",\"first_name\":\"GRACE\",\"middle_name\":\"ALMEDA\",\"last_name\":\"GOMEZ\",\"date_of_birth\":\"2016-11-19\",\"gender\":\"FEMALE\",\"blood_group\":\"O-\",\"religion\":\"CHRISTIAN\",\"caste\":\"TEMEKE\",\"nationality\":\"TANZANIAN\",\"mother_tongue\":\"SWAHILI\",\"email\":\"grace@gielab.com\",\"extra_info\":\"GOOD TO GOOO\",\"created_by\":1,\"student_image\":\"\",\"student_signature\":\"\",\"id\":3}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:45:08', '2021-08-09 14:45:08'),
(115, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 3, '[]', '{\"home_phone\":\"977-31-23079\",\"mobile_1\":\"90909\",\"mobile_2\":\"977-91239123\",\"address\":\"DAR ES SALAAM\",\"state\":\"UBUNGO\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"UBUNGO\",\"temp_country\":\"TANZANIA\",\"created_by\":1,\"students_id\":3,\"id\":3}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:45:08', '2021-08-09 14:45:08'),
(116, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 3, '[]', '{\"grandfather_first_name\":\"KRISHNA\",\"grandfather_middle_name\":\"THAPA\",\"grandfather_last_name\":\"DEMO\",\"father_first_name\":\"ALMELDA\",\"father_middle_name\":\"THAPA\",\"father_last_name\":\"KRISHNA\",\"father_eligibility\":\"MA\",\"father_occupation\":\"ENGINEER\",\"father_office\":\"IPS\",\"father_office_number\":\"977\",\"father_residence_number\":\"23080\",\"father_mobile_1\":\"977-31-23070\",\"father_mobile_2\":\"977-31-23071\",\"father_email\":\"GA@gielab.com\",\"mother_first_name\":\"SARA\",\"mother_middle_name\":\"GUMI\",\"mother_last_name\":\"MATAMBO\",\"mother_eligibility\":\"ELIGIBLE\",\"mother_occupation\":\"HOME MOTHER\",\"mother_office\":\"IPS\",\"mother_office_number\":\"977\",\"mother_residence_number\":\"23080\",\"mother_mobile_1\":\"977-31-23072\",\"mother_mobile_2\":\"973-31-23072\",\"mother_email\":\"sara@gielab.com\",\"created_by\":1,\"father_image\":\"\",\"mother_image\":\"\",\"students_id\":3,\"id\":3}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:45:08', '2021-08-09 14:45:08'),
(117, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 3, '[]', '{\"guardian_first_name\":\"ALMELDA\",\"guardian_middle_name\":\"THAPA\",\"guardian_last_name\":\"KRISHNA\",\"guardian_eligibility\":\"MA\",\"guardian_occupation\":\"ENGINEER\",\"guardian_office\":\"IPS\",\"guardian_office_number\":\"977\",\"guardian_residence_number\":\"23080\",\"guardian_mobile_1\":\"977-31-23070\",\"guardian_mobile_2\":\"977-31-23071\",\"guardian_email\":\"AT@gielab.com\",\"guardian_relation\":\"FATHER\",\"guardian_address\":\"DAR\",\"created_by\":1,\"guardian_image\":\"\",\"id\":3}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:45:08', '2021-08-09 14:45:08'),
(118, 'App\\User', 1, 'created', 'App\\Models\\Student', 4, '[]', '{\"reg_no\":\"STUD-0004\",\"reg_date\":\"2021-02-18\",\"university_reg\":null,\"faculty\":\"8\",\"semester\":\"2\",\"batch\":\"1\",\"academic_status\":\"1\",\"first_name\":\"NDUKO\",\"middle_name\":\"JR\",\"last_name\":\"GOMEZ\",\"date_of_birth\":\"2015-08-09\",\"gender\":\"FEMALE\",\"blood_group\":\"B+\",\"religion\":\"ISLAMIC\",\"caste\":\"TEMEKE\",\"nationality\":\"TANZANIAN\",\"mother_tongue\":\"SWAHILI\",\"email\":\"JR@gielab.com\",\"extra_info\":\"GOOD TO GOO\",\"created_by\":1,\"student_image\":\"\",\"student_signature\":\"\",\"id\":4}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:49:42', '2021-08-09 14:49:42'),
(119, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 4, '[]', '{\"home_phone\":\"977-31-23079\",\"mobile_1\":\"977-98989898\",\"mobile_2\":\"977-91239123\",\"address\":\"DAR ES SALAAM\",\"state\":\"K\\/NDONI\",\"country\":\"TANZANIA\",\"temp_address\":\"DAR ES SALAAM\",\"temp_state\":\"K\\/NDONI\",\"temp_country\":\"TANZANIA\",\"created_by\":1,\"students_id\":4,\"id\":4}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:49:43', '2021-08-09 14:49:43'),
(120, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 4, '[]', '{\"grandfather_first_name\":\"EGWAGA\",\"grandfather_middle_name\":\"RUDO\",\"grandfather_last_name\":\"CHECHEMI\",\"father_first_name\":\"ZUMO\",\"father_middle_name\":\"ADHI\",\"father_last_name\":\"AMADOL\",\"father_eligibility\":\"ELIGIBLE\",\"father_occupation\":\"ENGINEER\",\"father_office\":\"IPS\",\"father_office_number\":\"977\",\"father_residence_number\":\"23080\",\"father_mobile_1\":\"977-31-23070\",\"father_mobile_2\":\"977-31-23071\",\"father_email\":\"ZA@gielab.com\",\"mother_first_name\":\"ISABELA\",\"mother_middle_name\":\"GUMI\",\"mother_last_name\":\"AMADOL\",\"mother_eligibility\":\"ELIGIBLE\",\"mother_occupation\":\"HOME MOTHER\",\"mother_office\":\"IPS\",\"mother_office_number\":\"977\",\"mother_residence_number\":\"23080\",\"mother_mobile_1\":\"977-31-23072\",\"mother_mobile_2\":\"973-31-23072\",\"mother_email\":\"IG@gielab.com\",\"created_by\":1,\"father_image\":\"\",\"mother_image\":\"\",\"students_id\":4,\"id\":4}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:49:43', '2021-08-09 14:49:43'),
(121, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 4, '[]', '{\"guardian_first_name\":\"ZUMO\",\"guardian_middle_name\":\"ADHI\",\"guardian_last_name\":\"AMADOL\",\"guardian_eligibility\":\"ELIGIBLE\",\"guardian_occupation\":\"ENGINEER\",\"guardian_office\":\"IPS\",\"guardian_office_number\":\"977\",\"guardian_residence_number\":\"23080\",\"guardian_mobile_1\":\"977-31-23070\",\"guardian_mobile_2\":\"977-31-23071\",\"guardian_email\":\"AT@gielab.com\",\"guardian_relation\":\"FATHER\",\"guardian_address\":\"DAR\",\"created_by\":1,\"guardian_image\":\"\",\"id\":4}', 'http://localhost/EduFirm/public/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:49:43', '2021-08-09 14:49:43'),
(122, 'App\\User', 1, 'created', 'App\\Models\\LibraryMember', 2, '[]', '{\"user_type\":\"1\",\"status\":1,\"member_id\":4,\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/library/member/quick-membership?reg_no=STUD-0004&status=active&user_type=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:51:26', '2021-08-09 14:51:26'),
(123, 'App\\User', 1, 'created', 'App\\Models\\LibraryMember', 3, '[]', '{\"user_type\":\"1\",\"status\":1,\"member_id\":3,\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/library/member/quick-membership?reg_no=STUD-0003&status=active&user_type=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:51:32', '2021-08-09 14:51:32'),
(124, 'App\\User', 1, 'created', 'App\\Models\\LibraryMember', 4, '[]', '{\"user_type\":\"1\",\"status\":1,\"member_id\":2,\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/library/member/quick-membership?reg_no=STUD-0002&status=active&user_type=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:51:40', '2021-08-09 14:51:40'),
(125, 'App\\User', 1, 'created', 'App\\Models\\LibraryMember', 5, '[]', '{\"user_type\":\"1\",\"status\":1,\"member_id\":1,\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/library/member/quick-membership?reg_no=STUD-0001&status=active&user_type=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:51:46', '2021-08-09 14:51:46'),
(126, 'App\\User', 1, 'created', 'App\\Models\\Route', 1, '[]', '{\"title\":\"MBAGALA KUU VIA ZAKHEM\",\"rent\":\"100000\",\"description\":\"PAYABLE PER QUATER\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/transport/route/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 14:57:55', '2021-08-09 14:57:55'),
(127, 'App\\User', 1, 'created', 'App\\Models\\Vehicle', 1, '[]', '{\"number\":\"T 783 DDR\",\"type\":\"BUS\",\"model\":\"TATA Macopollo\",\"description\":\"TAKES 70 CAPACITY\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/transport/vehicle/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:00:21', '2021-08-09 15:00:21'),
(128, 'App\\User', 1, 'created', 'App\\Models\\Vehicle', 2, '[]', '{\"number\":\"T 782 DDR\",\"type\":\"BUS\",\"model\":\"TATA Macopollo\",\"description\":\"CAPACITY 70 SEATED\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/transport/vehicle/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:01:49', '2021-08-09 15:01:49'),
(129, 'App\\User', 1, 'created', 'App\\Models\\Vehicle', 3, '[]', '{\"number\":\"T 781 DDR\",\"type\":\"BUS\",\"model\":\"TATA Macopollo\",\"description\":\"CAPACITY 65 SEATED\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/transport/vehicle/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:03:08', '2021-08-09 15:03:08'),
(130, 'App\\User', 1, 'created', 'App\\Models\\Vehicle', 4, '[]', '{\"number\":\"T 780 DDR\",\"type\":\"BUS\",\"model\":\"TATA Macopollo\",\"description\":\"CAPACITY 70 SEATED\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/transport/vehicle/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:03:54', '2021-08-09 15:03:54'),
(131, 'App\\User', 1, 'updated', 'App\\Models\\Route', 1, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/transport/route/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:04:24', '2021-08-09 15:04:24'),
(132, 'App\\User', 1, 'created', 'App\\Models\\Route', 2, '[]', '{\"title\":\"MGENI NANI VIA KAMPILINGE\",\"rent\":\"150000\",\"description\":\"PAYABLE PER QUATER\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/transport/route/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:05:39', '2021-08-09 15:05:39'),
(133, 'App\\User', 1, 'created', 'App\\Models\\Route', 3, '[]', '{\"title\":\"MBAGALA KUU VIA AZIZ ALLY\",\"rent\":\"170000\",\"description\":\"PAYABLE PER QUATER\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/transport/route/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:07:29', '2021-08-09 15:07:29'),
(134, 'App\\User', 1, 'created', 'App\\Models\\Route', 4, '[]', '{\"title\":\"MGENI NANI VIA VIKINDU\",\"rent\":\"200000\",\"description\":\"PAYABLE PER QUATER\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/transport/route/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:08:25', '2021-08-09 15:08:25'),
(135, 'App\\User', 1, 'created', 'App\\Models\\TransportUser', 1, '[]', '{\"user_type\":\"1\",\"status\":1,\"routes_id\":\"1\",\"vehicles_id\":\"1\",\"member_id\":1,\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:05', '2021-08-09 15:09:05'),
(136, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 1, '[]', '{\"years_id\":3,\"routes_id\":\"1\",\"vehicles_id\":\"1\",\"travellers_id\":1,\"history_type\":\"Registration\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:05', '2021-08-09 15:09:05'),
(137, 'App\\User', 1, 'created', 'App\\Models\\TransportUser', 2, '[]', '{\"user_type\":\"1\",\"status\":1,\"routes_id\":\"4\",\"vehicles_id\":\"4\",\"member_id\":2,\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:22', '2021-08-09 15:09:22'),
(138, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 2, '[]', '{\"years_id\":3,\"routes_id\":\"4\",\"vehicles_id\":\"4\",\"travellers_id\":2,\"history_type\":\"Registration\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:23', '2021-08-09 15:09:23'),
(139, 'App\\User', 1, 'created', 'App\\Models\\TransportUser', 3, '[]', '{\"user_type\":\"1\",\"status\":1,\"routes_id\":\"3\",\"vehicles_id\":\"3\",\"member_id\":3,\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:41', '2021-08-09 15:09:41'),
(140, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 3, '[]', '{\"years_id\":3,\"routes_id\":\"3\",\"vehicles_id\":\"3\",\"travellers_id\":3,\"history_type\":\"Registration\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:41', '2021-08-09 15:09:41'),
(141, 'App\\User', 1, 'created', 'App\\Models\\TransportUser', 4, '[]', '{\"user_type\":\"1\",\"status\":1,\"routes_id\":\"2\",\"vehicles_id\":\"2\",\"member_id\":4,\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:59', '2021-08-09 15:09:59'),
(142, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 4, '[]', '{\"years_id\":3,\"routes_id\":\"2\",\"vehicles_id\":\"2\",\"travellers_id\":4,\"history_type\":\"Registration\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:09:59', '2021-08-09 15:09:59'),
(143, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 5, '[]', '{\"years_id\":3,\"routes_id\":\"1\",\"vehicles_id\":\"1\",\"travellers_id\":1,\"history_type\":\"Shift\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/transport/user/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:13:52', '2021-08-09 15:13:52'),
(144, 'App\\User', 1, 'updated', 'App\\Models\\Student', 2, '{\"faculty\":8,\"semester\":2,\"academic_status\":1}', '{\"faculty\":\"9\",\"semester\":\"1\",\"academic_status\":\"6\"}', 'http://localhost/EduFirm/public/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:22:39', '2021-08-09 15:22:39'),
(145, 'App\\User', 1, 'created', 'App\\Models\\Document', 1, '[]', '{\"title\":\"BIRTH  CERTIFICATE\",\"description\":\"MUST BE ATTACHED\",\"created_by\":1,\"member_id\":1,\"file\":\"4657_birth-certificate.pdf\",\"member_type\":\"student\",\"id\":1}', 'http://localhost/EduFirm/public/student/document/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:25:35', '2021-08-09 15:25:35'),
(146, 'App\\User', 1, 'created', 'App\\Models\\Note', 1, '[]', '{\"subject\":\"HAJI\",\"note\":\"GERHHSHSGHGHGHGHGHFGHFGH\\r\\nHFFGJGFJGFGJJHJJKI8YLOILTILIU\",\"created_by\":1,\"member_id\":1,\"member_type\":\"student\",\"id\":1}', 'http://localhost/EduFirm/public/student/note/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:26:32', '2021-08-09 15:26:32'),
(147, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 1, '[]', '{\"fee_head_title\":\"SCHOOL FEE\",\"fee_head_amount\":\"1200000\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:30:55', '2021-08-09 15:30:55'),
(148, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 1, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"200000\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:37:13', '2021-08-09 15:37:13'),
(149, 'App\\User', 1, 'deleted', 'App\\Models\\FeeMaster', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"semester\":\"1\",\"fee_head\":\"1\",\"fee_due_date\":\"2021-08-09 00:00:00\",\"fee_amount\":200000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/master/1/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:38:55', '2021-08-09 15:38:55'),
(150, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 2, '[]', '{\"fee_head_title\":\"REGISTRATION FEE\",\"fee_head_amount\":\"20000\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:42:16', '2021-08-09 15:42:16'),
(151, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 1, '{\"last_updated_by\":null,\"fee_head_title\":\"SCHOOL FEE\",\"fee_head_amount\":1200000}', '{\"last_updated_by\":1,\"fee_head_title\":\"SCHOOL FEE NURSERY\",\"fee_head_amount\":\"950000\"}', 'http://localhost/EduFirm/public/account/fees/head/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:44:09', '2021-08-09 15:44:09'),
(152, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 3, '[]', '{\"fee_head_title\":\"SCHOOL FEE STD I - III\",\"fee_head_amount\":\"1100000\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:45:17', '2021-08-09 15:45:17'),
(153, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 4, '[]', '{\"fee_head_title\":\"SCHOOL FEE STD IV - VI\",\"fee_head_amount\":\"1150000\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:46:30', '2021-08-09 15:46:30'),
(154, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 5, '[]', '{\"fee_head_title\":\"SCHOOL FEE STD VII\",\"fee_head_amount\":\"1150000\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:47:37', '2021-08-09 15:47:37'),
(155, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 6, '[]', '{\"fee_head_title\":\"OTHER PAYMENTS NURSERY\",\"fee_head_amount\":\"195000\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:49:47', '2021-08-09 15:49:47'),
(156, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 7, '[]', '{\"fee_head_title\":\"OTHER PAYMENTS STD I - II\",\"fee_head_amount\":\"275000\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:51:21', '2021-08-09 15:51:21'),
(157, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 8, '[]', '{\"fee_head_title\":\"OTHER PAYMENTS STD III\",\"fee_head_amount\":\"280000\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:52:16', '2021-08-09 15:52:16'),
(158, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 9, '[]', '{\"fee_head_title\":\"OTHER PAYMENTS STD IV\",\"fee_head_amount\":\"436000\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:53:02', '2021-08-09 15:53:02'),
(159, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 10, '[]', '{\"fee_head_title\":\"OTHER PAYMENTS STD V - VI\",\"fee_head_amount\":\"285000\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:53:59', '2021-08-09 15:53:59'),
(160, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 11, '[]', '{\"fee_head_title\":\"OTHER PAYMENTS STD VII\",\"fee_head_amount\":\"460000\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:54:31', '2021-08-09 15:54:31'),
(161, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 2, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"1100000\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:56:22', '2021-08-09 15:56:22'),
(162, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 3, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"7\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"275000\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 15:56:22', '2021-08-09 15:56:22'),
(163, 'App\\User', 1, 'deleted', 'App\\Models\\FeeHead', 6, '{\"id\":6,\"created_by\":1,\"last_updated_by\":null,\"fee_head_title\":\"OTHER PAYMENTS NURSERY\",\"fee_head_amount\":195000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/head/6/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:38:41', '2021-08-09 16:38:41'),
(164, 'App\\User', 1, 'deleted', 'App\\Models\\FeeHead', 7, '{\"id\":7,\"created_by\":1,\"last_updated_by\":null,\"fee_head_title\":\"OTHER PAYMENTS STD I - II\",\"fee_head_amount\":275000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/head/7/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:39:35', '2021-08-09 16:39:35'),
(165, 'App\\User', 1, 'deleted', 'App\\Models\\FeeHead', 8, '{\"id\":8,\"created_by\":1,\"last_updated_by\":null,\"fee_head_title\":\"OTHER PAYMENTS STD III\",\"fee_head_amount\":280000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/head/8/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:39:43', '2021-08-09 16:39:43'),
(166, 'App\\User', 1, 'deleted', 'App\\Models\\FeeHead', 9, '{\"id\":9,\"created_by\":1,\"last_updated_by\":null,\"fee_head_title\":\"OTHER PAYMENTS STD IV\",\"fee_head_amount\":436000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/head/9/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:39:59', '2021-08-09 16:39:59'),
(167, 'App\\User', 1, 'deleted', 'App\\Models\\FeeHead', 10, '{\"id\":10,\"created_by\":1,\"last_updated_by\":null,\"fee_head_title\":\"OTHER PAYMENTS STD V - VI\",\"fee_head_amount\":285000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/head/10/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:40:06', '2021-08-09 16:40:06'),
(168, 'App\\User', 1, 'deleted', 'App\\Models\\FeeHead', 11, '{\"id\":11,\"created_by\":1,\"last_updated_by\":null,\"fee_head_title\":\"OTHER PAYMENTS STD VII\",\"fee_head_amount\":460000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/head/11/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:40:16', '2021-08-09 16:40:16'),
(169, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 12, '[]', '{\"fee_head_title\":\"STATIONERY NURSERY\",\"fee_head_amount\":\"130000\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:51:49', '2021-08-09 16:51:49'),
(170, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 13, '[]', '{\"fee_head_title\":\"NURSERY UNIFORM (2 PAIRS)\",\"fee_head_amount\":\"40000\",\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:53:31', '2021-08-09 16:53:31'),
(171, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 14, '[]', '{\"fee_head_title\":\"NURSERY SWETA\",\"fee_head_amount\":\"20000\",\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:54:17', '2021-08-09 16:54:17'),
(172, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 15, '[]', '{\"fee_head_title\":\"NURSERY SCHOOL BADGE\",\"fee_head_amount\":\"5000\",\"created_by\":1,\"id\":15}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:54:53', '2021-08-09 16:54:53'),
(173, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 15, '{\"last_updated_by\":null,\"fee_head_title\":\"NURSERY SCHOOL BADGE\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"NURSERY & PRE UNIT SCHOOL BADGE\"}', 'http://localhost/EduFirm/public/account/fees/head/15/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:56:22', '2021-08-09 16:56:22'),
(174, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 14, '{\"last_updated_by\":null,\"fee_head_title\":\"NURSERY SWETA\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"NURSERY PRE UNIT SWETA\"}', 'http://localhost/EduFirm/public/account/fees/head/14/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:56:43', '2021-08-09 16:56:43'),
(175, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 13, '{\"last_updated_by\":null,\"fee_head_title\":\"NURSERY UNIFORM (2 PAIRS)\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"NURSERY PRE UNIT UNIFORM (2 PAIRS)\"}', 'http://localhost/EduFirm/public/account/fees/head/13/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:57:07', '2021-08-09 16:57:07'),
(176, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 12, '{\"last_updated_by\":null,\"fee_head_title\":\"STATIONERY NURSERY\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"STATIONERY PRE UNIT NURSERY\"}', 'http://localhost/EduFirm/public/account/fees/head/12/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:57:34', '2021-08-09 16:57:34'),
(177, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 16, '[]', '{\"fee_head_title\":\"STATIONERY CLASS I - II\",\"fee_head_amount\":\"200000\",\"created_by\":1,\"id\":16}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 16:59:52', '2021-08-09 16:59:52'),
(178, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 16, '{\"last_updated_by\":null,\"fee_head_title\":\"STATIONERY CLASS I - II\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"CLASS I - II STATIONERY\"}', 'http://localhost/EduFirm/public/account/fees/head/16/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:01:18', '2021-08-09 17:01:18'),
(179, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 17, '[]', '{\"fee_head_title\":\"CLASS I - II UNIFORMS (2 PAIRS)\",\"fee_head_amount\":\"50000\",\"created_by\":1,\"id\":17}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:49:48', '2021-08-09 17:49:48'),
(180, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 18, '[]', '{\"fee_head_title\":\"CLASS I - II  SWETA\",\"fee_head_amount\":\"20000\",\"created_by\":1,\"id\":18}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:51:04', '2021-08-09 17:51:04'),
(181, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 19, '[]', '{\"fee_head_title\":\"CLASS I - II  SCHOOL BADGE\",\"fee_head_amount\":\"5000\",\"created_by\":1,\"id\":19}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:52:06', '2021-08-09 17:52:06'),
(182, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 20, '[]', '{\"fee_head_title\":\"CLASS III  SCHOOL BADGE\",\"fee_head_amount\":\"5000\",\"created_by\":1,\"id\":20}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:53:33', '2021-08-09 17:53:33'),
(183, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 21, '[]', '{\"fee_head_title\":\"CLASS III STATIONERY\",\"fee_head_amount\":\"205000\",\"created_by\":1,\"id\":21}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:53:57', '2021-08-09 17:53:57'),
(184, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 22, '[]', '{\"fee_head_title\":\"CLASS III  SWETA\",\"fee_head_amount\":\"20000\",\"created_by\":1,\"id\":22}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:54:42', '2021-08-09 17:54:42'),
(185, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 23, '[]', '{\"fee_head_title\":\"CLASS III UNIFORMS (2 PAIRS)\",\"fee_head_amount\":\"50000\",\"created_by\":1,\"id\":23}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:55:16', '2021-08-09 17:55:16'),
(186, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 24, '[]', '{\"fee_head_title\":\"CLASS IV SCHOOL BADGE\",\"fee_head_amount\":\"5000\",\"created_by\":1,\"id\":24}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:56:51', '2021-08-09 17:56:51'),
(187, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 25, '[]', '{\"fee_head_title\":\"CLASS IV NECTA\",\"fee_head_amount\":\"6000\",\"created_by\":1,\"id\":25}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:57:38', '2021-08-09 17:57:38'),
(188, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 26, '[]', '{\"fee_head_title\":\"CLASS IV REMEDIAL\",\"fee_head_amount\":\"150000\",\"created_by\":1,\"id\":26}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:58:13', '2021-08-09 17:58:13'),
(189, 'App\\User', 1, 'deleted', 'App\\Models\\FeeHead', 24, '{\"id\":24,\"created_by\":1,\"last_updated_by\":null,\"fee_head_title\":\"CLASS IV SCHOOL BADGE\",\"fee_head_amount\":5000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/head/24/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:59:08', '2021-08-09 17:59:08'),
(190, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 20, '{\"last_updated_by\":null,\"fee_head_title\":\"CLASS III  SCHOOL BADGE\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"CLASS III - IV  SCHOOL BADGE\"}', 'http://localhost/EduFirm/public/account/fees/head/20/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 17:59:53', '2021-08-09 17:59:53'),
(191, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 23, '{\"last_updated_by\":null,\"fee_head_title\":\"CLASS III UNIFORMS (2 PAIRS)\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"CLASS III - IV UNIFORMS (2 PAIRS)\"}', 'http://localhost/EduFirm/public/account/fees/head/23/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:00:33', '2021-08-09 18:00:33'),
(192, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 22, '{\"last_updated_by\":null,\"fee_head_title\":\"CLASS III  SWETA\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"CLASS III - IV SWETA\"}', 'http://localhost/EduFirm/public/account/fees/head/22/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:00:58', '2021-08-09 18:00:58'),
(193, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 21, '{\"last_updated_by\":null,\"fee_head_title\":\"CLASS III STATIONERY\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"CLASS III - IV STATIONERY\"}', 'http://localhost/EduFirm/public/account/fees/head/21/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:01:23', '2021-08-09 18:01:23'),
(194, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 27, '[]', '{\"fee_head_title\":\"CLASS V - VI UNIFORMS (2 PAIRS)\",\"fee_head_amount\":\"50000\",\"created_by\":1,\"id\":27}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:03:07', '2021-08-09 18:03:07'),
(195, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 28, '[]', '{\"fee_head_title\":\"CLASS V - VI SWETA\",\"fee_head_amount\":\"20000\",\"created_by\":1,\"id\":28}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:04:00', '2021-08-09 18:04:00'),
(196, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 29, '[]', '{\"fee_head_title\":\"CLASS V - VI SCHOOL BADGE\",\"fee_head_amount\":\"5000\",\"created_by\":1,\"id\":29}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:04:29', '2021-08-09 18:04:29'),
(197, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 30, '[]', '{\"fee_head_title\":\"CLASS V - VI STATIONERY\",\"fee_head_amount\":\"210000\",\"created_by\":1,\"id\":30}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:05:24', '2021-08-09 18:05:24'),
(198, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 31, '[]', '{\"fee_head_title\":\"CLASS V - VII SWETA\",\"fee_head_amount\":\"20000\",\"created_by\":1,\"id\":31}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:06:26', '2021-08-09 18:06:26'),
(199, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 32, '[]', '{\"fee_head_title\":\"CLASS V - VII STATIONERY\",\"fee_head_amount\":\"220000\",\"created_by\":1,\"id\":32}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:06:54', '2021-08-09 18:06:54'),
(200, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 33, '[]', '{\"fee_head_title\":\"CLASS VII UNIFORMS (2 PAIRS)\",\"fee_head_amount\":\"50000\",\"created_by\":1,\"id\":33}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:07:30', '2021-08-09 18:07:30');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(201, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 34, '[]', '{\"fee_head_title\":\"CLASS V - VII SCHOOL BADGE\",\"fee_head_amount\":\"5000\",\"created_by\":1,\"id\":34}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:08:35', '2021-08-09 18:08:35'),
(202, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 35, '[]', '{\"fee_head_title\":\"CLASS VII NECTA\",\"fee_head_amount\":\"15000\",\"created_by\":1,\"id\":35}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:09:21', '2021-08-09 18:09:21'),
(203, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 36, '[]', '{\"fee_head_title\":\"CLASS VII REMEDIAL\",\"fee_head_amount\":\"150000\",\"created_by\":1,\"id\":36}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:09:47', '2021-08-09 18:09:47'),
(204, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 37, '[]', '{\"fee_head_title\":\"TRANSPORT FEE - ROUTE A\",\"fee_head_amount\":\"30000\",\"created_by\":1,\"id\":37}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:12:28', '2021-08-09 18:12:28'),
(205, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 38, '[]', '{\"fee_head_title\":\"TRANSPORT FEE - ROUTE B\",\"fee_head_amount\":\"40000\",\"created_by\":1,\"id\":38}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:13:09', '2021-08-09 18:13:09'),
(206, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 39, '[]', '{\"fee_head_title\":\"TRANSPORT FEE - ROUTE C\",\"fee_head_amount\":\"50000\",\"created_by\":1,\"id\":39}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:13:37', '2021-08-09 18:13:37'),
(207, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 40, '[]', '{\"fee_head_title\":\"TRANSPORT FEE - ROUTE D\",\"fee_head_amount\":\"60000\",\"created_by\":1,\"id\":40}', 'http://localhost/EduFirm/public/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:14:02', '2021-08-09 18:14:02'),
(208, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 4, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"1100000\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:18:27', '2021-08-09 18:18:27'),
(209, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 5, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"16\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"200000\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:18:27', '2021-08-09 18:18:27'),
(210, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 6, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"17\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"50000\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:18:27', '2021-08-09 18:18:27'),
(211, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 7, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"18\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"20000\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:18:28', '2021-08-09 18:18:28'),
(212, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 8, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"19\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"5000\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:18:28', '2021-08-09 18:18:28'),
(213, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 9, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"37\",\"fee_due_date\":\"2021-08-09\",\"fee_amount\":\"30000\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:18:28', '2021-08-09 18:18:28'),
(214, 'App\\User', 1, 'deleted', 'App\\Models\\FeeMaster', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"semester\":\"1\",\"fee_head\":\"7\",\"fee_due_date\":\"2021-08-09 00:00:00\",\"fee_amount\":275000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/master/3/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:23:35', '2021-08-09 18:23:35'),
(215, 'App\\User', 1, 'deleted', 'App\\Models\\FeeMaster', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"semester\":\"1\",\"fee_head\":\"3\",\"fee_due_date\":\"2021-08-09 00:00:00\",\"fee_amount\":1100000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/master/2/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:24:28', '2021-08-09 18:24:28'),
(216, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":4,\"date\":\"2021-08-09\",\"paid_amount\":1100000,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:39:27', '2021-08-09 18:39:27'),
(217, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 2, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":5,\"date\":\"2021-08-09\",\"paid_amount\":200000,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:39:27', '2021-08-09 18:39:27'),
(218, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 3, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":6,\"date\":\"2021-08-09\",\"paid_amount\":50000,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:39:27', '2021-08-09 18:39:27'),
(219, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 4, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":7,\"date\":\"2021-08-09\",\"paid_amount\":20000,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:39:27', '2021-08-09 18:39:27'),
(220, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 5, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":8,\"date\":\"2021-08-09\",\"paid_amount\":5000,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:39:27', '2021-08-09 18:39:27'),
(221, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 6, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":9,\"date\":\"2021-08-09\",\"paid_amount\":30000,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:39:28', '2021-08-09 18:39:28'),
(222, 'App\\User', 1, 'created', 'App\\Models\\PayrollHead', 1, '[]', '{\"title\":\"MONTHLY SALARY\",\"created_by\":1,\"slug\":\"MONTHLY-SALARY\",\"id\":1}', 'http://localhost/EduFirm/public/account/payroll/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 18:59:40', '2021-08-09 18:59:40'),
(223, 'App\\User', 1, 'created', 'App\\Models\\PayrollHead', 2, '[]', '{\"title\":\"ALLOWANCE\",\"created_by\":1,\"slug\":\"ALLOWANCE\",\"id\":2}', 'http://localhost/EduFirm/public/account/payroll/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:00:00', '2021-08-09 19:00:00'),
(224, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 1, '[]', '{\"staff_id\":4,\"tag_line\":\"DIPLOMA\",\"payroll_head\":\"1\",\"due_date\":\"2021-08-09\",\"amount\":\"500000\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/payroll/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:02:25', '2021-08-09 19:02:25'),
(225, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 2, '[]', '{\"staff_id\":4,\"tag_line\":\"SADAS\",\"payroll_head\":\"2\",\"due_date\":\"2021-08-09\",\"amount\":\"400000\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/account/payroll/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:02:25', '2021-08-09 19:02:25'),
(226, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollHead', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":null,\"title\":\"ALLOWANCE\",\"slug\":\"ALLOWANCE\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/head/2/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:09:27', '2021-08-09 19:09:27'),
(227, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollHead', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"title\":\"MONTHLY SALARY\",\"slug\":\"MONTHLY-SALARY\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/head/1/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:12:19', '2021-08-09 19:12:19'),
(228, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollMaster', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":4,\"tag_line\":\"SADAS\",\"payroll_head\":\"2\",\"due_date\":\"2021-08-09 00:00:00\",\"amount\":400000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/master/2/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:12:43', '2021-08-09 19:12:43'),
(229, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollMaster', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":4,\"tag_line\":\"DIPLOMA\",\"payroll_head\":\"1\",\"due_date\":\"2021-08-09 00:00:00\",\"amount\":500000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/master/1/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:12:52', '2021-08-09 19:12:52'),
(230, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 1, '[]', '{\"date\":\"2021-08-09\",\"tr_head_id\":\"13\",\"dr_amount\":\"40000\",\"cr_amount\":0,\"description\":\"EWEERRJWEOPWEPOFQWEOF[OEK\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/transaction/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:22:24', '2021-08-09 19:22:24'),
(231, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 2, '[]', '{\"date\":\"2021-08-08\",\"tr_head_id\":\"13\",\"dr_amount\":\"90000\",\"cr_amount\":\"7000\",\"description\":\"ERYERTRT\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/account/transaction/multi-store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:29:18', '2021-08-09 19:29:18'),
(232, 'App\\User', 1, 'deleted', 'App\\Models\\Transaction', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"tr_head_id\":13,\"date\":\"2021-08-09 00:00:00\",\"dr_amount\":40000,\"cr_amount\":0,\"description\":\"EWEERRJWEOPWEPOFQWEOF[OEK\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/transaction/1/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:29:46', '2021-08-09 19:29:46'),
(233, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 3, '[]', '{\"date\":\"2021-08-09\",\"tr_head_id\":\"5\",\"dr_amount\":\"7090\",\"description\":\"KJHJTYGJHJKJLJK,JK\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/account/transfer/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:32:27', '2021-08-09 19:32:27'),
(234, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 4, '[]', '{\"date\":\"2021-08-09\",\"tr_head_id\":\"4\",\"cr_amount\":\"7090\",\"description\":\"KJHJTYGJHJKJLJK,JK\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/account/transfer/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-09 19:32:27', '2021-08-09 19:32:27'),
(235, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-09 16:20:12\"}', '{\"last_login_at\":\"2021-08-10 16:27:29\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:27:29', '2021-08-10 13:27:29'),
(236, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"institute\":\"Kamo Nusery & Primary\",\"salogan\":\"\\\"quality & integrity\\\"\"}', '{\"institute\":\"Kamo Nursery & Primary School\",\"salogan\":\"Quality & Integrity\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:38:13', '2021-08-10 13:38:13'),
(237, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 10, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2021-08-10\",\"fee_amount\":\"20000\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:45:56', '2021-08-10 13:45:56'),
(238, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 11, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2021-08-10\",\"fee_amount\":\"1100000\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:45:56', '2021-08-10 13:45:56'),
(239, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 12, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"16\",\"fee_due_date\":\"2021-08-10\",\"fee_amount\":\"200000\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:45:56', '2021-08-10 13:45:56'),
(240, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 13, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"17\",\"fee_due_date\":\"2021-08-10\",\"fee_amount\":\"50000\",\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:45:56', '2021-08-10 13:45:56'),
(241, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 14, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"18\",\"fee_due_date\":\"2021-08-10\",\"fee_amount\":\"20000\",\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:45:56', '2021-08-10 13:45:56'),
(242, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 15, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"38\",\"fee_due_date\":\"2021-08-10\",\"fee_amount\":\"40000\",\"created_by\":1,\"id\":15}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:45:57', '2021-08-10 13:45:57'),
(243, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 7, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":\"10\",\"date\":\"2021-08-10\",\"paid_amount\":\"20000\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"BD\",\"note\":\"GOOD TO KNOW\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:54:00', '2021-08-10 13:54:00'),
(244, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 8, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":\"15\",\"date\":\"2021-08-12\",\"paid_amount\":\"40000\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"BD\",\"note\":\"GOOD TO KNOW\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:54:50', '2021-08-10 13:54:50'),
(245, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 9, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":\"12\",\"date\":\"2021-08-09\",\"paid_amount\":\"100000\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"BD\",\"note\":null,\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:55:25', '2021-08-10 13:55:25'),
(246, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 10, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":\"11\",\"date\":\"2021-08-10\",\"paid_amount\":\"900000\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"BD\",\"note\":\"THANKS\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:56:49', '2021-08-10 13:56:49'),
(247, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 11, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":\"13\",\"date\":\"2021-08-08\",\"paid_amount\":\"50000\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":\"THANKS\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:57:10', '2021-08-10 13:57:10'),
(248, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 12, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":\"14\",\"date\":\"2021-08-10\",\"paid_amount\":\"20000\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"BD\",\"note\":\"THANKS\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 13:57:30', '2021-08-10 13:57:30'),
(249, 'App\\User', 1, 'updated', 'App\\Models\\PaymentSetting', 1, '{\"status\":0}', '{\"status\":1}', 'http://localhost/EduFirm/public/setting/payment-gateway/1/active', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:06:32', '2021-08-10 14:06:32'),
(250, 'App\\User', 1, 'updated', 'App\\Models\\PaymentSetting', 1, '{\"config\":\"{\\\"Publishable_Key\\\":\\\"\\\",\\\"Secret_Key\\\":\\\"\\\"}\"}', '{\"config\":\"{\\\"Publishable_Key\\\":null,\\\"Secret_Key\\\":null}\"}', 'http://localhost/EduFirm/public/setting/payment-gateway/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:06:45', '2021-08-10 14:06:45'),
(251, 'App\\User', 1, 'created', 'App\\Models\\BookCategory', 1, '[]', '{\"title\":\"BOOK\",\"slug\":\"BOOK\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/library/book/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:19:20', '2021-08-10 14:19:20'),
(252, 'App\\User', 1, 'created', 'App\\Models\\BookMaster', 1, '[]', '{\"isbn_number\":\"1\",\"code\":\"ANPH\",\"title\":\"anatomy & physiology\",\"sub_title\":\"anatomy & physiology\",\"categories\":1,\"author\":\"Ross & wilson\",\"price\":\"1399\",\"edition\":\"1st\",\"edition_year\":\"2019\",\"language\":\"English\",\"publisher\":\"delhi elsevier\",\"publish_year\":\"2014\",\"series\":\"1st\",\"rack_location\":\"101\",\"total_pages\":\"500\",\"source\":\"BUY\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/library/book/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:19:20', '2021-08-10 14:19:20'),
(253, 'App\\User', 1, 'created', 'App\\Models\\Book', 1, '[]', '{\"book_masters_id\":1,\"book_code\":\"ANPH1\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/library/book/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:19:21', '2021-08-10 14:19:21'),
(254, 'App\\User', 1, 'created', 'App\\Models\\BookMaster', 2, '[]', '{\"isbn_number\":\"2\",\"code\":\"HUPHY\",\"title\":\"Human physiology\",\"sub_title\":\"Human physiology\",\"categories\":1,\"author\":\"c.c. Chatterjee\",\"price\":\"550\",\"edition\":\"2nd\",\"edition_year\":\"2019\",\"language\":\"English\",\"publisher\":\"c.b.s publisher\",\"publish_year\":\"2014\",\"series\":\"2nd\",\"rack_location\":\"102\",\"total_pages\":\"300\",\"source\":\"GIEFT\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/library/book/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:19:21', '2021-08-10 14:19:21'),
(255, 'App\\User', 1, 'created', 'App\\Models\\Book', 2, '[]', '{\"book_masters_id\":2,\"book_code\":\"HUPHY2\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/library/book/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:19:21', '2021-08-10 14:19:21'),
(256, 'App\\User', 1, 'created', 'App\\Models\\BookIssue', 1, '[]', '{\"created_by\":1,\"member_id\":\"5\",\"book_id\":\"1\",\"issued_on\":\"2021-08-10T14:23:00.550932Z\",\"due_date\":\"2021-08-17T14:23:00.551024Z\",\"id\":1}', 'http://localhost/EduFirm/public/library/issue', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:23:00', '2021-08-10 14:23:00'),
(257, 'App\\User', 1, 'created', 'App\\Models\\BookIssue', 2, '[]', '{\"created_by\":1,\"member_id\":\"5\",\"book_id\":\"2\",\"issued_on\":\"2021-08-10T14:26:40.566861Z\",\"due_date\":\"2021-08-17T14:26:40.566950Z\",\"id\":2}', 'http://localhost/EduFirm/public/library/issue', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:26:40', '2021-08-10 14:26:40'),
(258, 'App\\User', 1, 'updated', 'App\\Models\\Year', 3, '{\"last_updated_by\":null,\"title\":\"2020\"}', '{\"last_updated_by\":1,\"title\":\"2021\"}', 'http://localhost/EduFirm/public/year/3/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:28:32', '2021-08-10 14:28:32'),
(259, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 1, '[]', '{\"year\":\"3\",\"month\":\"1\",\"day_in_month\":\"31\",\"holiday\":\"1\",\"open\":\"30\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:42', '2021-08-10 14:36:42'),
(260, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 2, '[]', '{\"year\":\"3\",\"month\":\"2\",\"day_in_month\":\"28\",\"holiday\":\"1\",\"open\":\"27\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:42', '2021-08-10 14:36:42'),
(261, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 3, '[]', '{\"year\":\"3\",\"month\":\"3\",\"day_in_month\":\"31\",\"holiday\":\"2\",\"open\":\"29\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:43', '2021-08-10 14:36:43'),
(262, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 4, '[]', '{\"year\":\"3\",\"month\":\"4\",\"day_in_month\":\"30\",\"holiday\":\"1\",\"open\":\"29\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:43', '2021-08-10 14:36:43'),
(263, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 5, '[]', '{\"year\":\"3\",\"month\":\"5\",\"day_in_month\":\"31\",\"holiday\":\"1\",\"open\":\"30\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:43', '2021-08-10 14:36:43'),
(264, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 6, '[]', '{\"year\":\"3\",\"month\":\"6\",\"day_in_month\":\"30\",\"holiday\":\"0\",\"open\":\"30\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:43', '2021-08-10 14:36:43'),
(265, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 7, '[]', '{\"year\":\"3\",\"month\":\"7\",\"day_in_month\":\"31\",\"holiday\":\"1\",\"open\":\"30\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:43', '2021-08-10 14:36:43'),
(266, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 8, '[]', '{\"year\":\"3\",\"month\":\"8\",\"day_in_month\":\"31\",\"holiday\":\"1\",\"open\":\"30\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:43', '2021-08-10 14:36:43'),
(267, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 9, '[]', '{\"year\":\"3\",\"month\":\"9\",\"day_in_month\":\"30\",\"holiday\":\"0\",\"open\":\"30\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:43', '2021-08-10 14:36:43'),
(268, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 10, '[]', '{\"year\":\"3\",\"month\":\"10\",\"day_in_month\":\"31\",\"holiday\":\"0\",\"open\":\"31\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:44', '2021-08-10 14:36:44'),
(269, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 11, '[]', '{\"year\":\"3\",\"month\":\"11\",\"day_in_month\":\"30\",\"holiday\":\"0\",\"open\":\"30\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:44', '2021-08-10 14:36:44'),
(270, 'App\\User', 1, 'created', 'App\\Models\\AttendanceMaster', 12, '[]', '{\"year\":\"3\",\"month\":\"12\",\"day_in_month\":\"31\",\"holiday\":\"2\",\"open\":\"29\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/attendance/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:36:44', '2021-08-10 14:36:44'),
(271, 'App\\User', 1, 'created', 'App\\Models\\Attendance', 1, '[]', '{\"attendees_type\":1,\"link_id\":\"1\",\"years_id\":3,\"months_id\":8,\"day_10\":\"1\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/attendance/student/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:39:51', '2021-08-10 14:39:51'),
(272, 'App\\User', 1, 'created', 'App\\Models\\Attendance', 2, '[]', '{\"attendees_type\":1,\"link_id\":\"3\",\"years_id\":3,\"months_id\":8,\"day_10\":\"1\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/attendance/student/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:39:51', '2021-08-10 14:39:51'),
(273, 'App\\User', 1, 'created', 'App\\Models\\Exam', 1, '[]', '{\"title\":\"MATHEMATICS\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/exam/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:43:53', '2021-08-10 14:43:53'),
(274, 'App\\User', 1, 'created', 'App\\Models\\Exam', 2, '[]', '{\"title\":\"KISWAHILI\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/exam/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:44:04', '2021-08-10 14:44:04'),
(275, 'App\\User', 1, 'created', 'App\\Models\\Exam', 3, '[]', '{\"title\":\"ENGLISH\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/exam/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:44:13', '2021-08-10 14:44:13'),
(276, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 1, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"1\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"1\",\"date\":\"2021-08-10\",\"start_time\":\"11:00\",\"end_time\":\"13:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"35\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:46:59', '2021-08-10 14:46:59'),
(277, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 2, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"1\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"2\",\"date\":\"2021-08-11\",\"start_time\":\"11:00\",\"end_time\":\"13:00\",\"full_mark_theory\":\"75\",\"pass_mark_theory\":\"24\",\"full_mark_practical\":\"25\",\"pass_mark_practical\":\"13\",\"sorting_order\":2,\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:46:59', '2021-08-10 14:46:59'),
(278, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 3, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"1\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"3\",\"date\":\"2021-08-12\",\"start_time\":\"11:00\",\"end_time\":\"13:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:47:00', '2021-08-10 14:47:00'),
(279, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 1, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"1\",\"obtain_mark_theory\":\"97\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:51:43', '2021-08-10 14:51:43'),
(280, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 2, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"3\",\"obtain_mark_theory\":\"85\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:51:43', '2021-08-10 14:51:43'),
(281, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 4, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"3\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"3\",\"date\":\"2021-08-10\",\"start_time\":\"11:00\",\"end_time\":\"13:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:55:26', '2021-08-10 14:55:26'),
(282, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 5, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"2\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"2\",\"date\":\"2021-08-10\",\"start_time\":\"11:00\",\"end_time\":\"13:00\",\"full_mark_theory\":\"75\",\"pass_mark_theory\":\"24\",\"full_mark_practical\":\"25\",\"pass_mark_practical\":\"13\",\"sorting_order\":1,\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:56:07', '2021-08-10 14:56:07'),
(283, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 3, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"1\",\"obtain_mark_theory\":\"79\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:57:06', '2021-08-10 14:57:06'),
(284, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 4, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"3\",\"obtain_mark_theory\":\"89\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:57:06', '2021-08-10 14:57:06'),
(285, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 5, '[]', '{\"exam_schedule_id\":5,\"students_id\":\"1\",\"obtain_mark_theory\":\"88\",\"obtain_mark_practical\":\"23\",\"absent_theory\":1,\"absent_practical\":1,\"sorting_order\":1,\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:58:14', '2021-08-10 14:58:14'),
(286, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 6, '[]', '{\"exam_schedule_id\":5,\"students_id\":\"3\",\"obtain_mark_theory\":\"78\",\"obtain_mark_practical\":\"14\",\"absent_theory\":1,\"absent_practical\":1,\"sorting_order\":2,\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 14:58:14', '2021-08-10 14:58:14'),
(287, 'App\\User', 1, 'updated', 'App\\Models\\Subject', 2, '{\"last_updated_by\":null,\"full_mark_theory\":75,\"pass_mark_theory\":24,\"full_mark_practical\":25,\"pass_mark_practical\":13}', '{\"last_updated_by\":1,\"full_mark_theory\":\"100\",\"pass_mark_theory\":null,\"full_mark_practical\":\"30\",\"pass_mark_practical\":null}', 'http://localhost/EduFirm/public/subject/2/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:21:41', '2021-08-10 15:21:41'),
(288, 'App\\User', 1, 'updated', 'App\\Models\\Subject', 2, '{\"pass_mark_theory\":null,\"full_mark_practical\":30}', '{\"pass_mark_theory\":\"30\",\"full_mark_practical\":null}', 'http://localhost/EduFirm/public/subject/2/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:23:53', '2021-08-10 15:23:53'),
(289, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 6, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"1\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"1\",\"date\":\"2021-08-10\",\"start_time\":\"08:00\",\"end_time\":\"09:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"35\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:26:14', '2021-08-10 15:26:14'),
(290, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 7, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"1\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"2\",\"date\":\"2021-08-10\",\"start_time\":\"10:00\",\"end_time\":\"11:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"30\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:26:14', '2021-08-10 15:26:14'),
(291, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 8, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"1\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"3\",\"date\":\"2021-08-10\",\"start_time\":\"15:00\",\"end_time\":\"16:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:26:14', '2021-08-10 15:26:14'),
(292, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 9, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"3\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"1\",\"date\":\"2021-08-11\",\"start_time\":\"08:00\",\"end_time\":\"09:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"35\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:28:01', '2021-08-10 15:28:01'),
(293, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 10, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"3\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"2\",\"date\":\"2021-08-11\",\"start_time\":\"10:00\",\"end_time\":\"11:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"30\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:28:01', '2021-08-10 15:28:01'),
(294, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 11, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"3\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"3\",\"date\":\"2021-08-11\",\"start_time\":\"15:00\",\"end_time\":\"16:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:28:01', '2021-08-10 15:28:01'),
(295, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 12, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"2\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"1\",\"date\":\"2021-08-12\",\"start_time\":\"08:00\",\"end_time\":\"09:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"35\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:29:11', '2021-08-10 15:29:11'),
(296, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 13, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"2\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"2\",\"date\":\"2021-08-12\",\"start_time\":\"10:00\",\"end_time\":\"11:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"30\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:29:11', '2021-08-10 15:29:11'),
(297, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 14, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"2\",\"faculty_id\":\"8\",\"semesters_id\":\"1\",\"subjects_id\":\"3\",\"date\":\"2021-08-12\",\"start_time\":\"15:00\",\"end_time\":\"16:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:29:11', '2021-08-10 15:29:11'),
(298, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 7, '[]', '{\"exam_schedule_id\":6,\"students_id\":\"1\",\"obtain_mark_theory\":\"90\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:31:07', '2021-08-10 15:31:07'),
(299, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 8, '[]', '{\"exam_schedule_id\":6,\"students_id\":\"3\",\"obtain_mark_theory\":\"78\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:31:07', '2021-08-10 15:31:07'),
(300, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 9, '[]', '{\"exam_schedule_id\":13,\"students_id\":\"1\",\"obtain_mark_theory\":\"69\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:31:52', '2021-08-10 15:31:52'),
(301, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 10, '[]', '{\"exam_schedule_id\":13,\"students_id\":\"3\",\"obtain_mark_theory\":\"89\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:31:52', '2021-08-10 15:31:52'),
(302, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 11, '[]', '{\"exam_schedule_id\":11,\"students_id\":\"1\",\"obtain_mark_theory\":\"98\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:32:31', '2021-08-10 15:32:31'),
(303, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 12, '[]', '{\"exam_schedule_id\":11,\"students_id\":\"3\",\"obtain_mark_theory\":\"89\",\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:32:31', '2021-08-10 15:32:31'),
(304, 'App\\User', 1, 'created', 'App\\User', 3, '[]', '{\"role_id\":\"6\",\"hook_id\":\"1\",\"name\":\"EZEKIEL GIDEON EGWAGA\",\"email\":\"ezekiel@gielab.com\",\"password\":\"$2y$10$e3MQEBi0U\\/6E0bZX5gsSve094vKfuMfMoU15rpl53b0FBuiTtFzOu\",\"id\":3}', 'http://localhost/EduFirm/public/student/user/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:52:59', '2021-08-10 15:52:59'),
(305, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2021-08-10 18:58:14\",\"last_login_ip\":\"127.0.0.1\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 15:58:14', '2021-08-10 15:58:14'),
(306, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-10 16:27:29\"}', '{\"last_login_at\":\"2021-08-10 19:32:26\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 16:32:26', '2021-08-10 16:32:26'),
(307, 'App\\User', 1, 'created', 'App\\Models\\AttendanceCertificate', 1, '[]', '{\"date_of_issue\":\"2021-08-10T16:41:22.411798Z\",\"year_of_study\":\"2020-21\",\"percentage_of_attendance\":\"95\",\"students_id\":\"1\",\"created_by\":1,\"ref_text\":\"{\\\"date_of_issue\\\":\\\"2021-08-10T16:41:22.411798Z\\\",\\\"year_of_study\\\":\\\"2020-21\\\",\\\"percentage_of_attendance\\\":\\\"95\\\",\\\"students_id\\\":\\\"1\\\",\\\"faculty\\\":\\\"8\\\",\\\"semester\\\":\\\"1\\\",\\\"reg_no\\\":\\\"STUD-0001\\\",\\\"reg_date\\\":\\\"2021-08-09\\\",\\\"university_reg\\\":null,\\\"first_name\\\":\\\"EZEKIEL\\\",\\\"middle_name\\\":\\\"GIDEON\\\",\\\"last_name\\\":\\\"EGWAGA\\\",\\\"date_of_birth\\\":\\\"2017-11-15\\\",\\\"gender\\\":\\\"MALE\\\",\\\"blood_group\\\":\\\"O+\\\",\\\"nationality\\\":\\\"TANZANIAN\\\",\\\"religion\\\":\\\"CHRISTIAN\\\",\\\"caste\\\":\\\"TEMEKE\\\",\\\"issue_certificate\\\":\\\"Issue\\\",\\\"created_by\\\":1}\",\"id\":1}', 'http://localhost/EduFirm/public/certificate/attendance/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 16:41:22', '2021-08-10 16:41:22');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(308, 'App\\User', 1, 'created', 'App\\Models\\CertificateHistory', 1, '[]', '{\"students_id\":\"1\",\"certificate\":\"attendance\",\"certificate_id\":1,\"history_type\":\"Created\",\"ref_text\":\"{\\\"date_of_issue\\\":\\\"2021-08-10T16:41:22.411798Z\\\",\\\"year_of_study\\\":\\\"2020-21\\\",\\\"percentage_of_attendance\\\":\\\"95\\\",\\\"students_id\\\":\\\"1\\\",\\\"faculty\\\":\\\"8\\\",\\\"semester\\\":\\\"1\\\",\\\"reg_no\\\":\\\"STUD-0001\\\",\\\"reg_date\\\":\\\"2021-08-09\\\",\\\"university_reg\\\":null,\\\"first_name\\\":\\\"EZEKIEL\\\",\\\"middle_name\\\":\\\"GIDEON\\\",\\\"last_name\\\":\\\"EGWAGA\\\",\\\"date_of_birth\\\":\\\"2017-11-15\\\",\\\"gender\\\":\\\"MALE\\\",\\\"blood_group\\\":\\\"O+\\\",\\\"nationality\\\":\\\"TANZANIAN\\\",\\\"religion\\\":\\\"CHRISTIAN\\\",\\\"caste\\\":\\\"TEMEKE\\\",\\\"issue_certificate\\\":\\\"Issue\\\",\\\"created_by\\\":1}\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/certificate/attendance/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 16:41:22', '2021-08-10 16:41:22'),
(309, 'App\\User', 1, 'updated', 'App\\Models\\TransportUser', 1, '{\"last_updated_by\":null,\"routes_id\":1,\"vehicles_id\":1,\"status\":1}', '{\"last_updated_by\":1,\"routes_id\":null,\"vehicles_id\":null,\"status\":0}', 'http://localhost/EduFirm/public/transport/user/1/leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 16:52:17', '2021-08-10 16:52:17'),
(310, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 6, '[]', '{\"years_id\":3,\"routes_id\":1,\"vehicles_id\":1,\"travellers_id\":1,\"history_type\":\"Leave\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/transport/user/1/leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 16:52:17', '2021-08-10 16:52:17'),
(311, 'App\\User', 1, 'created', 'App\\Models\\TransportUser', 5, '[]', '{\"user_type\":\"2\",\"status\":1,\"routes_id\":\"2\",\"vehicles_id\":\"2\",\"member_id\":4,\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 16:53:52', '2021-08-10 16:53:52'),
(312, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 7, '[]', '{\"years_id\":3,\"routes_id\":\"2\",\"vehicles_id\":\"2\",\"travellers_id\":5,\"history_type\":\"Registration\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/transport/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-10 16:53:52', '2021-08-10 16:53:52'),
(313, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-10 19:32:26\"}', '{\"last_login_at\":\"2021-08-11 08:26:05\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 05:26:05', '2021-08-11 05:26:05'),
(314, 'App\\User', 1, 'created', 'App\\Models\\Attendance', 3, '[]', '{\"attendees_type\":2,\"link_id\":\"5\",\"years_id\":3,\"months_id\":8,\"day_11\":\"1\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/attendance/staff/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 05:36:25', '2021-08-11 05:36:25'),
(315, 'App\\User', 1, 'created', 'App\\Models\\Attendance', 4, '[]', '{\"attendees_type\":2,\"link_id\":\"6\",\"years_id\":3,\"months_id\":8,\"day_11\":\"1\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/attendance/staff/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 05:36:25', '2021-08-11 05:36:25'),
(316, 'App\\User', 1, 'created', 'App\\Models\\Attendance', 5, '[]', '{\"attendees_type\":2,\"link_id\":\"7\",\"years_id\":3,\"months_id\":8,\"day_11\":\"1\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/attendance/staff/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 05:36:25', '2021-08-11 05:36:25'),
(317, 'App\\User', 1, 'created', 'App\\Models\\Attendance', 6, '[]', '{\"attendees_type\":2,\"link_id\":\"8\",\"years_id\":3,\"months_id\":8,\"day_11\":\"1\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/attendance/staff/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 05:36:25', '2021-08-11 05:36:25'),
(318, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"last_login_at\":\"2021-08-08 13:44:50\"}', '{\"last_login_at\":\"2021-08-11 09:28:33\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:28:34', '2021-08-11 06:28:34'),
(319, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-11 08:26:05\"}', '{\"last_login_at\":\"2021-08-11 09:31:31\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:31:31', '2021-08-11 06:31:31'),
(320, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 16, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"40\",\"fee_due_date\":\"2021-08-11\",\"fee_amount\":\"60000\",\"created_by\":1,\"id\":16}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:46:08', '2021-08-11 06:46:08'),
(321, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 17, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"2\",\"fee_due_date\":\"2021-08-11\",\"fee_amount\":\"20000\",\"created_by\":1,\"id\":17}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:46:08', '2021-08-11 06:46:08'),
(322, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 18, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"19\",\"fee_due_date\":\"2021-08-11\",\"fee_amount\":\"5000\",\"created_by\":1,\"id\":18}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:46:09', '2021-08-11 06:46:09'),
(323, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 19, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"18\",\"fee_due_date\":\"2021-08-11\",\"fee_amount\":\"20000\",\"created_by\":1,\"id\":19}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:46:09', '2021-08-11 06:46:09'),
(324, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 20, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"17\",\"fee_due_date\":\"2021-08-11\",\"fee_amount\":\"50000\",\"created_by\":1,\"id\":20}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:46:09', '2021-08-11 06:46:09'),
(325, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 21, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"16\",\"fee_due_date\":\"2021-08-11\",\"fee_amount\":\"200000\",\"created_by\":1,\"id\":21}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:46:09', '2021-08-11 06:46:09'),
(326, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 22, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2021-08-11\",\"fee_amount\":\"1100000\",\"created_by\":1,\"id\":22}', 'http://localhost/EduFirm/public/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:46:09', '2021-08-11 06:46:09'),
(327, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 13, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":16,\"date\":\"2021-08-11\",\"paid_amount\":60000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:54:13', '2021-08-11 06:54:13'),
(328, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 14, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":17,\"date\":\"2021-08-11\",\"paid_amount\":20000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:54:13', '2021-08-11 06:54:13'),
(329, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 15, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":18,\"date\":\"2021-08-11\",\"paid_amount\":5000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"created_by\":1,\"id\":15}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:54:13', '2021-08-11 06:54:13'),
(330, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 16, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":19,\"date\":\"2021-08-11\",\"paid_amount\":20000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"created_by\":1,\"id\":16}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:54:13', '2021-08-11 06:54:13'),
(331, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 17, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":20,\"date\":\"2021-08-11\",\"paid_amount\":50000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"created_by\":1,\"id\":17}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:54:14', '2021-08-11 06:54:14'),
(332, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 18, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":21,\"date\":\"2021-08-11\",\"paid_amount\":200000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"created_by\":1,\"id\":18}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:54:14', '2021-08-11 06:54:14'),
(333, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 19, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":22,\"date\":\"2021-08-11\",\"paid_amount\":1100000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"created_by\":1,\"id\":19}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 06:54:14', '2021-08-11 06:54:14'),
(334, 'App\\User', 1, 'updated', 'App\\Models\\PaymentMethod', 3, '{\"title\":\"Online Payment\"}', '{\"title\":\"Online PaymentB\"}', 'http://localhost/EduFirm/public/payment-method/3/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 07:24:28', '2021-08-11 07:24:28'),
(335, 'App\\User', 1, 'updated', 'App\\Models\\PaymentMethod', 3, '{\"title\":\"Online PaymentB\"}', '{\"title\":\"Mobile Payment\"}', 'http://localhost/EduFirm/public/payment-method/3/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 07:25:40', '2021-08-11 07:25:40'),
(336, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 20, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":11,\"date\":\"2021-08-11\",\"paid_amount\":200000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : Mobile payment test\",\"created_by\":1,\"id\":20}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 07:30:31', '2021-08-11 07:30:31'),
(337, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 21, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":12,\"date\":\"2021-08-11\",\"paid_amount\":100000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : Mobile payment test\",\"created_by\":1,\"id\":21}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 07:30:31', '2021-08-11 07:30:31'),
(338, 'App\\User', 1, 'created', 'App\\Models\\PayrollHead', 3, '[]', '{\"title\":\"MONTHLY SALARY\",\"created_by\":1,\"slug\":\"MONTHLY-SALARY\",\"id\":3}', 'http://localhost/EduFirm/public/account/payroll/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 07:50:21', '2021-08-11 07:50:21'),
(339, 'App\\User', 1, 'created', 'App\\Models\\PayrollHead', 4, '[]', '{\"title\":\"ALLOWANCE\",\"created_by\":1,\"slug\":\"ALLOWANCE\",\"id\":4}', 'http://localhost/EduFirm/public/account/payroll/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 07:50:48', '2021-08-11 07:50:48'),
(340, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 3, '[]', '{\"staff_id\":5,\"tag_line\":\"DIPLOMA | EDUCATION\",\"payroll_head\":\"3\",\"due_date\":\"2021-08-11\",\"amount\":\"500000\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/account/payroll/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 08:03:47', '2021-08-11 08:03:47'),
(341, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 4, '[]', '{\"staff_id\":5,\"tag_line\":\"August. Salary\",\"payroll_head\":\"3\",\"due_date\":\"2021-08-11\",\"amount\":\"500000\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/account/payroll/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 08:12:23', '2021-08-11 08:12:23'),
(342, 'App\\User', 1, 'created', 'App\\Models\\SalaryPay', 1, '[]', '{\"staff_id\":\"5\",\"salary_masters_id\":\"4\",\"date\":\"2021-08-11\",\"paid_amount\":\"500000\",\"allowance\":\"400000\",\"fine\":\"100000\",\"payment_mode\":\"BD\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/salary/payment/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 08:13:57', '2021-08-11 08:13:57'),
(343, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollMaster', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"tag_line\":\"DIPLOMA | EDUCATION\",\"payroll_head\":\"3\",\"due_date\":\"2021-08-11 00:00:00\",\"amount\":500000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/master/3/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 08:19:45', '2021-08-11 08:19:45'),
(344, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-11 09:31:31\"}', '{\"last_login_at\":\"2021-08-11 15:07:16\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 12:07:17', '2021-08-11 12:07:17'),
(345, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-11 15:07:16\"}', '{\"last_login_at\":\"2021-08-11 18:55:25\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 15:55:25', '2021-08-11 15:55:25'),
(346, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-11 18:55:25\"}', '{\"last_login_at\":\"2021-08-11 21:05:26\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-11 18:05:26', '2021-08-11 18:05:26'),
(347, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-11 21:05:26\"}', '{\"last_login_at\":\"2021-08-12 08:45:08\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 05:45:08', '2021-08-12 05:45:08'),
(348, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-12 08:45:08\"}', '{\"last_login_at\":\"2021-08-12 11:31:36\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 08:31:36', '2021-08-12 08:31:36'),
(349, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-12 11:31:36\"}', '{\"last_login_at\":\"2021-08-12 14:07:43\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 11:07:43', '2021-08-12 11:07:43'),
(350, 'App\\User', 1, 'updated', 'App\\Models\\TransportUser', 1, '{\"routes_id\":null,\"vehicles_id\":null,\"status\":0}', '{\"routes_id\":\"4\",\"vehicles_id\":\"4\",\"status\":1}', 'http://localhost/EduFirm/public/transport/user/renew', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 11:08:42', '2021-08-12 11:08:42'),
(351, 'App\\User', 1, 'created', 'App\\Models\\TransportHistory', 8, '[]', '{\"years_id\":3,\"routes_id\":\"4\",\"vehicles_id\":\"4\",\"travellers_id\":\"1\",\"history_type\":\"Renew\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/transport/user/renew', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 11:08:42', '2021-08-12 11:08:42'),
(352, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"copyright\":\"gielab Innovations \\u00a9 2021\"}', '{\"copyright\":null}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 11:22:36', '2021-08-12 11:22:36'),
(353, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"favicon\":\"4992.ico\"}', '{\"favicon\":\"5038.ico\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 11:23:16', '2021-08-12 11:23:16'),
(354, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-12 14:07:43\"}', '{\"last_login_at\":\"2021-08-12 15:57:23\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 12:57:23', '2021-08-12 12:57:23'),
(355, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":4,\"date\":\"2021-08-09 00:00:00\",\"paid_amount\":1100000,\"discount\":null,\"fine\":null,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"response\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/collection/1/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:54:33', '2021-08-12 14:54:33'),
(356, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":5,\"date\":\"2021-08-09 00:00:00\",\"paid_amount\":200000,\"discount\":null,\"fine\":null,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"response\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/collection/2/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:54:43', '2021-08-12 14:54:43'),
(357, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":6,\"date\":\"2021-08-09 00:00:00\",\"paid_amount\":50000,\"discount\":null,\"fine\":null,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"response\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/collection/3/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:55:08', '2021-08-12 14:55:08'),
(358, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 4, '{\"id\":4,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":7,\"date\":\"2021-08-09 00:00:00\",\"paid_amount\":20000,\"discount\":null,\"fine\":null,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"response\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/collection/4/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:55:18', '2021-08-12 14:55:18'),
(359, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 5, '{\"id\":5,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":8,\"date\":\"2021-08-09 00:00:00\",\"paid_amount\":5000,\"discount\":null,\"fine\":null,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"response\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/collection/5/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:55:30', '2021-08-12 14:55:30'),
(360, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 6, '{\"id\":6,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":9,\"date\":\"2021-08-09 00:00:00\",\"paid_amount\":30000,\"discount\":null,\"fine\":null,\"payment_mode\":\"Bank\",\"note\":\"ALL PAYMENTS MADE\",\"response\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/collection/6/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:55:38', '2021-08-12 14:55:38'),
(361, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 22, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":4,\"date\":\"2021-08-12\",\"paid_amount\":1100000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : lk;lk\';k\';k\'jkhmmn,\",\"created_by\":1,\"id\":22}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:59:10', '2021-08-12 14:59:10'),
(362, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 23, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":5,\"date\":\"2021-08-12\",\"paid_amount\":200000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : lk;lk\';k\';k\'jkhmmn,\",\"created_by\":1,\"id\":23}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:59:10', '2021-08-12 14:59:10'),
(363, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 24, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":6,\"date\":\"2021-08-12\",\"paid_amount\":50000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : lk;lk\';k\';k\'jkhmmn,\",\"created_by\":1,\"id\":24}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:59:10', '2021-08-12 14:59:10'),
(364, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 25, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":7,\"date\":\"2021-08-12\",\"paid_amount\":20000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : lk;lk\';k\';k\'jkhmmn,\",\"created_by\":1,\"id\":25}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:59:10', '2021-08-12 14:59:10'),
(365, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 26, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":8,\"date\":\"2021-08-12\",\"paid_amount\":5000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : lk;lk\';k\';k\'jkhmmn,\",\"created_by\":1,\"id\":26}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:59:10', '2021-08-12 14:59:10'),
(366, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 27, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":9,\"date\":\"2021-08-12\",\"paid_amount\":30000,\"payment_mode\":\"Mobile Payment\",\"note\":\"Quick Receive : lk;lk\';k\';k\'jkhmmn,\",\"created_by\":1,\"id\":27}', 'http://localhost/EduFirm/public/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 14:59:10', '2021-08-12 14:59:10'),
(367, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-12 15:57:23\"}', '{\"last_login_at\":\"2021-08-12 20:55:33\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-12 17:55:33', '2021-08-12 17:55:33'),
(368, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-12 20:55:33\"}', '{\"last_login_at\":\"2021-08-13 17:08:34\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-13 14:08:35', '2021-08-13 14:08:35'),
(369, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"logo\":\"7783.png\"}', '{\"logo\":\"4743.png\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-13 14:09:33', '2021-08-13 14:09:33'),
(370, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-13 17:08:34\"}', '{\"last_login_at\":\"2021-08-16 17:03:10\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-16 14:03:10', '2021-08-16 14:03:10'),
(371, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-16 17:03:10\"}', '{\"last_login_at\":\"2021-08-16 21:35:47\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-16 18:35:47', '2021-08-16 18:35:47'),
(372, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-16 21:35:47\"}', '{\"last_login_at\":\"2021-08-17 19:08:03\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-17 16:08:03', '2021-08-17 16:08:03'),
(373, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-17 19:08:03\"}', '{\"last_login_at\":\"2021-08-17 22:11:32\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-17 19:11:32', '2021-08-17 19:11:32'),
(374, 'App\\User', 1, 'created', 'App\\Models\\PostalExchange', 1, '[]', '{\"type\":\"COURIER RECEIVE\",\"ref_no\":\"DXY9090\",\"date\":\"2021-08-17\",\"subject\":\"To Meet with Manager\",\"from\":\"gieLab School of Innovations\",\"to\":\"Kyamusonge Primary School\",\"note\":\"gieLab School of Innovations\",\"created_by\":1,\"attachment\":\"9_.pdf\",\"id\":1}', 'http://localhost/EduFirm/public/front/postal-exchange/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-17 19:13:27', '2021-08-17 19:13:27'),
(375, 'App\\User', 1, 'created', 'App\\Models\\VisitorPurpose', 1, '[]', '{\"title\":\"See\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/front/visitor/purpose/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-17 19:16:41', '2021-08-17 19:16:41'),
(376, 'App\\User', 1, 'created', 'App\\Models\\VisitorLog', 1, '[]', '{\"purpose\":\"See\",\"date\":\"2021-08-17\",\"in_time\":\"09:00\",\"out_time\":\"11:00\",\"name\":\"Super Admin\",\"phone\":\"909090909\",\"email\":\"grace@gielab.com\",\"id_doc\":\"7890\",\"id_num\":\"90909\",\"token\":\"76tyfd\",\"note\":\"fsdgdfgdfgdfhdhgf\",\"created_by\":1,\"attachment\":\"0_.pdf\",\"id\":1}', 'http://localhost/EduFirm/public/front/visitor/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-17 19:18:04', '2021-08-17 19:18:04'),
(377, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-17 22:11:32\"}', '{\"last_login_at\":\"2021-08-18 18:22:30\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-18 15:22:31', '2021-08-18 15:22:31'),
(378, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 13, '{\"id\":13,\"created_by\":1,\"last_updated_by\":null,\"students_id\":4,\"fee_masters_id\":16,\"date\":\"2021-08-11 00:00:00\",\"paid_amount\":60000,\"discount\":null,\"fine\":null,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : Test payment\",\"response\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/fees/collection/13/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-18 16:26:08', '2021-08-18 16:26:08'),
(379, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 14, '[]', '{\"tr_head\":\"Nduko JR\",\"acc_id\":\"2\",\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/account/transaction-head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-18 16:30:08', '2021-08-18 16:30:08'),
(380, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 5, '[]', '{\"date\":\"2021-08-17T21:00:00.000000Z\",\"tr_head_id\":14,\"dr_amount\":\"1100000\",\"cr_amount\":0,\"description\":\"Opening Balance\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/account/transaction-head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-18 16:30:08', '2021-08-18 16:30:08'),
(381, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-18 18:22:30\"}', '{\"last_login_at\":\"2021-08-18 20:37:38\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', NULL, '2021-08-18 17:37:38', '2021-08-18 17:37:38'),
(382, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-18 20:37:38\"}', '{\"last_login_at\":\"2021-08-19 18:37:22\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-08-19 15:37:23', '2021-08-19 15:37:23'),
(383, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"favicon\":\"5038.ico\",\"logo\":\"4743.png\"}', '{\"favicon\":\"7811.ico\",\"logo\":\"9733.png\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-08-19 15:39:55', '2021-08-19 15:39:55'),
(384, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-19 18:37:22\"}', '{\"last_login_at\":\"2021-08-21 18:36:24\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-08-21 15:36:24', '2021-08-21 15:36:24'),
(385, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"quick_menu\":1,\"front_desk\":1,\"student_staff\":1}', '{\"quick_menu\":\"0\",\"front_desk\":\"0\",\"student_staff\":\"0\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-08-21 17:55:49', '2021-08-21 17:55:49'),
(386, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"quick_menu\":0,\"front_desk\":0,\"student_staff\":0}', '{\"quick_menu\":\"1\",\"front_desk\":\"1\",\"student_staff\":\"1\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-08-21 17:57:07', '2021-08-21 17:57:07'),
(387, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-21 08:36:24\",\"last_login_ip\":\"127.0.0.1\"}', '{\"last_login_at\":\"2021-08-23 04:55:15\",\"last_login_ip\":\"::1\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-23 11:55:15', '2021-08-23 11:55:15'),
(388, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-23 04:55:15\"}', '{\"last_login_at\":\"2021-08-23 07:02:35\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18363', NULL, '2021-08-23 14:02:35', '2021-08-23 14:02:35'),
(389, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-23 07:02:35\"}', '{\"last_login_at\":\"2021-08-24 04:33:18\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-24 11:33:18', '2021-08-24 11:33:18'),
(390, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-24 04:33:18\"}', '{\"last_login_at\":\"2021-08-24 00:06:00\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-24 07:06:01', '2021-08-24 07:06:01'),
(391, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-24 00:06:00\"}', '{\"last_login_at\":\"2021-08-24 18:26:18\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-25 01:26:18', '2021-08-25 01:26:18'),
(392, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-24 18:26:18\"}', '{\"last_login_at\":\"2021-08-24 23:47:38\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-25 06:47:38', '2021-08-25 06:47:38'),
(393, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-24 23:47:38\"}', '{\"last_login_at\":\"2021-08-25 18:05:01\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-26 01:05:01', '2021-08-26 01:05:01'),
(394, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-25 18:05:01\"}', '{\"last_login_at\":\"2021-08-25 21:00:47\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-26 04:00:47', '2021-08-26 04:00:47'),
(395, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-25 21:00:47\"}', '{\"last_login_at\":\"2021-08-26 17:06:57\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-27 00:06:58', '2021-08-27 00:06:58'),
(396, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-26 17:06:57\"}', '{\"last_login_at\":\"2021-08-28 15:52:33\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-28 22:52:33', '2021-08-28 22:52:33'),
(397, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-28 15:52:33\"}', '{\"last_login_at\":\"2021-08-29 10:59:36\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-29 17:59:36', '2021-08-29 17:59:36'),
(398, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-29 10:59:36\"}', '{\"last_login_at\":\"2021-08-29 12:49:33\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-29 19:49:33', '2021-08-29 19:49:33'),
(399, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-29 12:49:33\"}', '{\"last_login_at\":\"2021-08-29 20:29:15\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-30 03:29:16', '2021-08-30 03:29:16'),
(400, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-29 20:29:15\"}', '{\"last_login_at\":\"2021-08-29 21:41:35\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-08-30 04:41:35', '2021-08-30 04:41:35'),
(401, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-29 21:41:35\"}', '{\"last_login_at\":\"2021-08-31 17:42:40\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 00:42:40', '2021-09-01 00:42:40'),
(402, 'App\\User', 1, 'updated', 'App\\Models\\VisitorLog', 1, '{\"status\":1}', '{\"status\":0}', 'http://localhost/EduFirm/public/front/visitor/1/in-active', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 00:46:36', '2021-09-01 00:46:36'),
(403, 'App\\User', 1, 'created', 'App\\Models\\SubjectAttendance', 1, '[]', '{\"attendance_type\":\"1\",\"link_id\":\"1\",\"subjects_id\":\"1\",\"years_id\":3,\"months_id\":8,\"day_31\":\"1\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/attendance/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 01:30:47', '2021-09-01 01:30:47'),
(404, 'App\\User', 1, 'created', 'App\\Models\\SubjectAttendance', 2, '[]', '{\"attendance_type\":\"1\",\"link_id\":\"3\",\"subjects_id\":\"1\",\"years_id\":3,\"months_id\":8,\"day_31\":\"1\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/attendance/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 01:30:47', '2021-09-01 01:30:47'),
(405, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-08-31 17:42:40\"}', '{\"last_login_at\":\"2021-09-01 08:21:22\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 15:21:22', '2021-09-01 15:21:22'),
(406, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-01 08:21:22\"}', '{\"last_login_at\":\"2021-09-01 11:15:01\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:15:01', '2021-09-01 18:15:01'),
(407, 'App\\User', 1, 'created', 'App\\Models\\SalaryPay', 2, '[]', '{\"staff_id\":\"5\",\"salary_masters_id\":\"4\",\"date\":\"2021-08-31\",\"paid_amount\":\"300000\",\"allowance\":\"0\",\"fine\":\"189000\",\"payment_mode\":\"BD\",\"created_by\":1,\"id\":2}', 'http://localhost/EduFirm/public/account/salary/payment/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:28:30', '2021-09-01 18:28:30'),
(408, 'App\\User', 1, 'created', 'App\\Models\\Bank', 1, '[]', '{\"bank_name\":\"NATIONAL BANK OF COMMERCE\",\"ac_name\":\"NDUKO JR\",\"ac_number\":\"090012JQS90\",\"branch\":\"MBAGALA\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/bank/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:36:47', '2021-09-01 18:36:47'),
(409, 'App\\User', 1, 'updated', 'App\\Models\\Bank', 1, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/account/bank/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:38:44', '2021-09-01 18:38:44'),
(410, 'App\\User', 1, 'created', 'App\\Models\\BankTransaction', 1, '[]', '{\"banks_id\":\"1\",\"description\":\"Salary\",\"deposit_id\":\"245678\",\"date\":\"2021-08-31\",\"dr_amt\":\"279000\",\"cr_amt\":0,\"amount\":\"279000\",\"created_by\":1,\"id\":1}', 'http://localhost/EduFirm/public/account/bank-transaction/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:42:13', '2021-09-01 18:42:13'),
(411, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 6, '[]', '{\"date\":\"2021-08-31\",\"tr_head_id\":\"14\",\"dr_amount\":\"279000\",\"cr_amount\":0,\"description\":\"Salary\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/account/transaction/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:44:55', '2021-09-01 18:44:55'),
(412, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 7, '[]', '{\"date\":\"2021-09-01\",\"tr_head_id\":\"11\",\"dr_amount\":\"0\",\"cr_amount\":\"23000\",\"description\":\"iij;j;k;k;l\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/account/transaction/multi-store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:49:39', '2021-09-01 18:49:39'),
(413, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 8, '[]', '{\"date\":\"2021-09-01\",\"tr_head_id\":\"14\",\"dr_amount\":\"23000\",\"cr_amount\":\"0\",\"description\":\"Advance\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/account/transaction/multi-store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:49:39', '2021-09-01 18:49:39'),
(414, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 9, '[]', '{\"date\":\"2021-10-01\",\"tr_head_id\":\"14\",\"dr_amount\":\"78000\",\"description\":\"Advance\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/account/transfer/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:51:36', '2021-09-01 18:51:36'),
(415, 'App\\User', 1, 'created', 'App\\Models\\Transaction', 10, '[]', '{\"date\":\"2021-10-01\",\"tr_head_id\":\"4\",\"cr_amount\":\"78000\",\"description\":\"Advance\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/account/transfer/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 18:51:36', '2021-09-01 18:51:36'),
(416, 'App\\User', 1, 'created', 'App\\Models\\PayrollHead', 5, '[]', '{\"title\":\"DEDUCTION\",\"created_by\":1,\"slug\":\"DEDUCTION\",\"id\":5}', 'http://localhost/EduFirm/public/account/payroll/head/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:03:20', '2021-09-01 19:03:20'),
(417, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 5, '[]', '{\"staff_id\":5,\"tag_line\":\"QS\",\"payroll_head\":\"5\",\"due_date\":\"2021-09-30\",\"amount\":\"79000\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/account/payroll/master/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:06:30', '2021-09-01 19:06:30'),
(418, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 6, '[]', '{\"staff_id\":5,\"tag_line\":\"QS\",\"payroll_head\":\"5\",\"due_date\":\"2021-09-30\",\"amount\":\"79000\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/account/payroll/master/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:09:03', '2021-09-01 19:09:03'),
(419, 'App\\User', 1, 'created', 'App\\Models\\SalaryPay', 3, '[]', '{\"staff_id\":\"5\",\"salary_masters_id\":\"6\",\"date\":\"2021-09-30\",\"paid_amount\":\"79000\",\"allowance\":\"0\",\"fine\":\"79000\",\"payment_mode\":\"BD\",\"created_by\":1,\"id\":3}', 'http://localhost/EduFirm/public/account/salary/payment/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:11:56', '2021-09-01 19:11:56'),
(420, 'App\\User', 1, 'created', 'App\\Models\\SalaryPay', 4, '[]', '{\"staff_id\":\"5\",\"salary_masters_id\":\"5\",\"date\":\"2021-09-30\",\"paid_amount\":\"79000\",\"allowance\":\"0\",\"fine\":\"79000\",\"payment_mode\":\"BD\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/account/salary/payment/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:13:47', '2021-09-01 19:13:47'),
(421, 'App\\User', 1, 'deleted', 'App\\Models\\SalaryPay', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"salary_masters_id\":4,\"date\":\"2021-08-31 00:00:00\",\"paid_amount\":300000,\"allowance\":0,\"fine\":189000,\"payment_mode\":\"BD\",\"note\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/salary/payment/2/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:14:41', '2021-09-01 19:14:41'),
(422, 'App\\User', 1, 'deleted', 'App\\Models\\SalaryPay', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"salary_masters_id\":4,\"date\":\"2021-08-11 00:00:00\",\"paid_amount\":500000,\"allowance\":400000,\"fine\":100000,\"payment_mode\":\"BD\",\"note\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/salary/payment/1/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:14:49', '2021-09-01 19:14:49'),
(423, 'App\\User', 1, 'deleted', 'App\\Models\\SalaryPay', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"salary_masters_id\":6,\"date\":\"2021-09-30 00:00:00\",\"paid_amount\":79000,\"allowance\":0,\"fine\":79000,\"payment_mode\":\"BD\",\"note\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/salary/payment/3/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:14:57', '2021-09-01 19:14:57');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(424, 'App\\User', 1, 'deleted', 'App\\Models\\SalaryPay', 4, '{\"id\":4,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"salary_masters_id\":5,\"date\":\"2021-09-30 00:00:00\",\"paid_amount\":79000,\"allowance\":0,\"fine\":79000,\"payment_mode\":\"BD\",\"note\":null,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/salary/payment/4/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:15:05', '2021-09-01 19:15:05'),
(425, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollMaster', 5, '{\"id\":5,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"tag_line\":\"QS\",\"payroll_head\":\"5\",\"due_date\":\"2021-09-30 00:00:00\",\"amount\":79000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/master/5/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:17:17', '2021-09-01 19:17:17'),
(426, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollMaster', 6, '{\"id\":6,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"tag_line\":\"QS\",\"payroll_head\":\"5\",\"due_date\":\"2021-09-30 00:00:00\",\"amount\":79000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/master/6/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:17:27', '2021-09-01 19:17:27'),
(427, 'App\\User', 1, 'deleted', 'App\\Models\\PayrollMaster', 4, '{\"id\":4,\"created_by\":1,\"last_updated_by\":null,\"staff_id\":5,\"tag_line\":\"August. Salary\",\"payroll_head\":\"3\",\"due_date\":\"2021-08-11 00:00:00\",\"amount\":500000,\"status\":1}', '[]', 'http://localhost/EduFirm/public/account/payroll/master/4/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:17:39', '2021-09-01 19:17:39'),
(428, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"public_registration\":0}', '{\"public_registration\":\"1\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:39:34', '2021-09-01 19:39:34'),
(429, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-01 11:15:01\"}', '{\"last_login_at\":\"2021-09-01 12:45:51\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:45:51', '2021-09-01 19:45:51'),
(430, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"public_registration\":1}', '{\"public_registration\":\"0\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 19:46:14', '2021-09-01 19:46:14'),
(431, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-01 12:45:51\"}', '{\"last_login_at\":\"2021-09-01 13:54:13\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 20:54:13', '2021-09-01 20:54:13'),
(432, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"copyright\":null}', '{\"copyright\":\"gieLab Innovations\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 20:55:12', '2021-09-01 20:55:12'),
(433, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-01 13:54:13\"}', '{\"last_login_at\":\"2021-09-01 14:44:10\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 21:44:10', '2021-09-01 21:44:10'),
(434, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-01 14:44:10\"}', '{\"last_login_at\":\"2021-09-01 14:56:38\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 21:56:39', '2021-09-01 21:56:39'),
(435, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"public_registration\":0}', '{\"public_registration\":\"1\"}', 'http://localhost/EduFirm/public/setting/general/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 21:57:08', '2021-09-01 21:57:08'),
(436, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-01 14:56:38\"}', '{\"last_login_at\":\"2021-09-01 15:08:28\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-01 22:08:28', '2021-09-01 22:08:28'),
(437, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-01 15:08:28\"}', '{\"last_login_at\":\"2021-09-02 18:26:42\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-03 01:26:42', '2021-09-03 01:26:42'),
(438, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-02 18:26:42\"}', '{\"last_login_at\":\"2021-09-04 09:17:55\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:17:55', '2021-09-04 16:17:55'),
(439, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 8, '{\"last_updated_by\":null,\"faculty\":\"CLASS ONE\"}', '{\"last_updated_by\":1,\"faculty\":\"GRADE I\"}', 'http://localhost/EduFirm/public/faculty/8/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:26:59', '2021-09-04 16:26:59'),
(440, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 9, '{\"last_updated_by\":null,\"faculty\":\"CLASS TWO\"}', '{\"last_updated_by\":1,\"faculty\":\"GRADE II\"}', 'http://localhost/EduFirm/public/faculty/9/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:27:38', '2021-09-04 16:27:38'),
(441, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 10, '{\"last_updated_by\":null,\"faculty\":\"CLASS THREE\"}', '{\"last_updated_by\":1,\"faculty\":\"GRADE III\"}', 'http://localhost/EduFirm/public/faculty/10/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:27:58', '2021-09-04 16:27:58'),
(442, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 11, '{\"last_updated_by\":null,\"faculty\":\"CLASS FOUR\"}', '{\"last_updated_by\":1,\"faculty\":\"GRADE IV\"}', 'http://localhost/EduFirm/public/faculty/11/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:28:24', '2021-09-04 16:28:24'),
(443, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 12, '{\"last_updated_by\":null,\"faculty\":\"CLASS FIVE\"}', '{\"last_updated_by\":1,\"faculty\":\"GRADE V\"}', 'http://localhost/EduFirm/public/faculty/12/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:28:43', '2021-09-04 16:28:43'),
(444, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 13, '{\"last_updated_by\":null,\"faculty\":\"CLASS SIX\"}', '{\"last_updated_by\":1,\"faculty\":\"GRADE VI\"}', 'http://localhost/EduFirm/public/faculty/13/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:29:04', '2021-09-04 16:29:04'),
(445, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 14, '{\"last_updated_by\":null,\"faculty\":\"CLASS SEVEN\"}', '{\"last_updated_by\":1,\"faculty\":\"GRADE VII\"}', 'http://localhost/EduFirm/public/faculty/14/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:29:25', '2021-09-04 16:29:25'),
(446, 'App\\User', 1, 'updated', 'App\\Models\\Semester', 1, '{\"semester\":\"A\",\"slug\":\"A\"}', '{\"semester\":\"STREAM - A\",\"slug\":\"STREAM---A\"}', 'http://localhost/EduFirm/public/semester/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:40:08', '2021-09-04 16:40:08'),
(447, 'App\\User', 1, 'updated', 'App\\Models\\Semester', 2, '{\"semester\":\"B\",\"slug\":\"B\"}', '{\"semester\":\"STREAM - B\",\"slug\":\"STREAM---B\"}', 'http://localhost/EduFirm/public/semester/2/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:40:37', '2021-09-04 16:40:37'),
(448, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 1, '{\"name\":\"A+\"}', '{\"name\":\"A\"}', 'http://localhost/EduFirm/public/grading/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:53:09', '2021-09-04 16:53:09'),
(449, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 2, '{\"name\":\"A\",\"percentage_from\":70}', '{\"name\":\"B\",\"percentage_from\":\"60\"}', 'http://localhost/EduFirm/public/grading/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:53:09', '2021-09-04 16:53:09'),
(450, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 3, '{\"name\":\"B\",\"percentage_from\":60,\"percentage_to\":69}', '{\"name\":\"C\",\"percentage_from\":\"50\",\"percentage_to\":\"59\"}', 'http://localhost/EduFirm/public/grading/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:53:10', '2021-09-04 16:53:10'),
(451, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 4, '{\"name\":\"C\",\"percentage_from\":50,\"percentage_to\":59}', '{\"name\":\"D\",\"percentage_from\":\"20\",\"percentage_to\":\"49\"}', 'http://localhost/EduFirm/public/grading/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:53:10', '2021-09-04 16:53:10'),
(452, 'App\\User', 1, 'updated', 'App\\Models\\GradingType', 1, '{\"title\":\"PRIMARY LEVEL\"}', '{\"title\":\"STD ONE PRIMARY LEVEL\"}', 'http://localhost/EduFirm/public/grading/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:53:10', '2021-09-04 16:53:10'),
(453, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 2, '[]', '{\"title\":\"STD TWO PRIMARY LEVEL\",\"created_by\":1,\"slug\":\"STD-TWO-PRIMARY-LEVEL\",\"id\":2}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:16', '2021-09-04 16:57:16'),
(454, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 5, '[]', '{\"gradingType_id\":2,\"name\":\"A\",\"percentage_from\":\"80\",\"percentage_to\":\"100\",\"grade_point\":\"5\",\"description\":\"Excellent\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:17', '2021-09-04 16:57:17'),
(455, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 6, '[]', '{\"gradingType_id\":2,\"name\":\"B\",\"percentage_from\":\"60\",\"percentage_to\":\"79\",\"grade_point\":\"4\",\"description\":\"Very Good\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:17', '2021-09-04 16:57:17'),
(456, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 7, '[]', '{\"gradingType_id\":2,\"name\":\"C\",\"percentage_from\":\"50\",\"percentage_to\":\"59\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:17', '2021-09-04 16:57:17'),
(457, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 8, '[]', '{\"gradingType_id\":2,\"name\":\"D\",\"percentage_from\":\"20\",\"percentage_to\":\"49\",\"grade_point\":null,\"description\":\"Fair\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:17', '2021-09-04 16:57:17'),
(458, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 5, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/2/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:41', '2021-09-04 16:57:41'),
(459, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 6, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/2/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:41', '2021-09-04 16:57:41'),
(460, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 7, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/2/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:41', '2021-09-04 16:57:41'),
(461, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 8, '{\"last_updated_by\":null,\"grade_point\":null}', '{\"last_updated_by\":1,\"grade_point\":\"2\"}', 'http://localhost/EduFirm/public/grading/2/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:42', '2021-09-04 16:57:42'),
(462, 'App\\User', 1, 'updated', 'App\\Models\\GradingType', 2, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/2/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 16:57:42', '2021-09-04 16:57:42'),
(463, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 3, '[]', '{\"title\":\"STD THREE PRIMARY LEVEL\",\"created_by\":1,\"slug\":\"STD-THREE-PRIMARY-LEVEL\",\"id\":3}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:02:56', '2021-09-04 17:02:56'),
(464, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 9, '[]', '{\"gradingType_id\":3,\"name\":\"A\",\"percentage_from\":\"80\",\"percentage_to\":\"100\",\"grade_point\":\"5\",\"description\":\"Excellent\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:02:56', '2021-09-04 17:02:56'),
(465, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 10, '[]', '{\"gradingType_id\":3,\"name\":\"B\",\"percentage_from\":\"60\",\"percentage_to\":\"79\",\"grade_point\":\"4\",\"description\":\"Very Good\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:02:56', '2021-09-04 17:02:56'),
(466, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 11, '[]', '{\"gradingType_id\":3,\"name\":\"C\",\"percentage_from\":\"50\",\"percentage_to\":\"59\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:02:56', '2021-09-04 17:02:56'),
(467, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 12, '[]', '{\"gradingType_id\":3,\"name\":\"D\",\"percentage_from\":\"20\",\"percentage_to\":\"49\",\"grade_point\":\"2\",\"description\":\"Fair\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:02:57', '2021-09-04 17:02:57'),
(468, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 4, '[]', '{\"title\":\"STD FOUR PRIMARY LEVEL\",\"created_by\":1,\"slug\":\"STD-FOUR-PRIMARY-LEVEL\",\"id\":4}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:15:20', '2021-09-04 17:15:20'),
(469, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 13, '[]', '{\"gradingType_id\":4,\"name\":\"A\",\"percentage_from\":\"80\",\"percentage_to\":\"100\",\"grade_point\":\"5\",\"description\":\"Excellent\",\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:15:20', '2021-09-04 17:15:20'),
(470, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 14, '[]', '{\"gradingType_id\":4,\"name\":\"B\",\"percentage_from\":\"62\",\"percentage_to\":\"79\",\"grade_point\":\"4\",\"description\":\"Very Good\",\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:15:21', '2021-09-04 17:15:21'),
(471, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 15, '[]', '{\"gradingType_id\":4,\"name\":\"C\",\"percentage_from\":\"42\",\"percentage_to\":\"61\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":15}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:15:21', '2021-09-04 17:15:21'),
(472, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 16, '[]', '{\"gradingType_id\":4,\"name\":\"D\",\"percentage_from\":\"32\",\"percentage_to\":\"41\",\"grade_point\":\"2\",\"description\":\"Fair\",\"created_by\":1,\"id\":16}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:15:21', '2021-09-04 17:15:21'),
(473, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 5, '[]', '{\"title\":\"STD FIVE PRIMARY LEVEL\",\"created_by\":1,\"slug\":\"STD-FIVE-PRIMARY-LEVEL\",\"id\":5}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:18:32', '2021-09-04 17:18:32'),
(474, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 17, '[]', '{\"gradingType_id\":5,\"name\":\"A\",\"percentage_from\":\"80\",\"percentage_to\":\"100\",\"grade_point\":\"5\",\"description\":\"Excellent\",\"created_by\":1,\"id\":17}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:18:32', '2021-09-04 17:18:32'),
(475, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 18, '[]', '{\"gradingType_id\":5,\"name\":\"B\",\"percentage_from\":\"62\",\"percentage_to\":\"79\",\"grade_point\":\"4\",\"description\":\"Very Good\",\"created_by\":1,\"id\":18}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:18:32', '2021-09-04 17:18:32'),
(476, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 19, '[]', '{\"gradingType_id\":5,\"name\":\"C\",\"percentage_from\":\"42\",\"percentage_to\":\"61\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":19}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:18:32', '2021-09-04 17:18:32'),
(477, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 20, '[]', '{\"gradingType_id\":5,\"name\":\"D\",\"percentage_from\":\"32\",\"percentage_to\":\"41\",\"grade_point\":\"2\",\"description\":\"Fair\",\"created_by\":1,\"id\":20}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:18:33', '2021-09-04 17:18:33'),
(478, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 6, '[]', '{\"title\":\"STD SIX PRIMARY LEVEL\",\"created_by\":1,\"slug\":\"STD-SIX-PRIMARY-LEVEL\",\"id\":6}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:25:33', '2021-09-04 17:25:33'),
(479, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 21, '[]', '{\"gradingType_id\":6,\"name\":\"A\",\"percentage_from\":\"82\",\"percentage_to\":\"100\",\"grade_point\":\"5\",\"description\":\"Excellent\",\"created_by\":1,\"id\":21}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:25:33', '2021-09-04 17:25:33'),
(480, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 22, '[]', '{\"gradingType_id\":6,\"name\":\"B\",\"percentage_from\":\"62\",\"percentage_to\":\"81\",\"grade_point\":\"4\",\"description\":\"Very Good\",\"created_by\":1,\"id\":22}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:25:33', '2021-09-04 17:25:33'),
(481, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 23, '[]', '{\"gradingType_id\":6,\"name\":\"C\",\"percentage_from\":\"42\",\"percentage_to\":\"61\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":23}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:25:33', '2021-09-04 17:25:33'),
(482, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 24, '[]', '{\"gradingType_id\":6,\"name\":\"D\",\"percentage_from\":\"32\",\"percentage_to\":\"41\",\"grade_point\":\"2\",\"description\":\"Fair\",\"created_by\":1,\"id\":24}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:25:34', '2021-09-04 17:25:34'),
(483, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 7, '[]', '{\"title\":\"STD SEVEN PRIMARY LEVEL\",\"created_by\":1,\"slug\":\"STD-SEVEN-PRIMARY-LEVEL\",\"id\":7}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:29:17', '2021-09-04 17:29:17'),
(484, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 25, '[]', '{\"gradingType_id\":7,\"name\":\"A\",\"percentage_from\":\"82\",\"percentage_to\":\"100\",\"grade_point\":\"5\",\"description\":\"Excellent\",\"created_by\":1,\"id\":25}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:29:17', '2021-09-04 17:29:17'),
(485, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 26, '[]', '{\"gradingType_id\":7,\"name\":\"B\",\"percentage_from\":\"62\",\"percentage_to\":\"81\",\"grade_point\":\"4\",\"description\":\"Very Good\",\"created_by\":1,\"id\":26}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:29:17', '2021-09-04 17:29:17'),
(486, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 27, '[]', '{\"gradingType_id\":7,\"name\":\"C\",\"percentage_from\":\"42\",\"percentage_to\":\"61\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":27}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:29:17', '2021-09-04 17:29:17'),
(487, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 28, '[]', '{\"gradingType_id\":7,\"name\":\"D\",\"percentage_from\":\"32\",\"percentage_to\":\"41\",\"grade_point\":\"2\",\"description\":\"Fair\",\"created_by\":1,\"id\":28}', 'http://localhost/EduFirm/public/grading/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:29:17', '2021-09-04 17:29:17'),
(488, 'App\\User', 1, 'created', 'App\\Models\\Subject', 4, '[]', '{\"title\":\"ARITHMETIC\",\"code\":\"AC01\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"20\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"5\",\"sub_type\":\"Compulsory\",\"class_type\":\"Both\",\"staff_id\":\"10\",\"description\":\"THANKS\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:47:31', '2021-09-04 17:47:31'),
(489, 'App\\User', 1, 'updated', 'App\\Models\\Subject', 3, '{\"last_updated_by\":null,\"pass_mark_theory\":32}', '{\"last_updated_by\":1,\"pass_mark_theory\":\"20\"}', 'http://localhost/EduFirm/public/subject/3/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:49:57', '2021-09-04 17:49:57'),
(490, 'App\\User', 1, 'created', 'App\\Models\\Subject', 5, '[]', '{\"title\":\"ENGLISH\",\"code\":\"EH01\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":\"100\",\"pass_mark_practical\":\"20\",\"credit_hour\":null,\"sub_type\":\"Compulsory\",\"class_type\":\"Practical\",\"staff_id\":\"6\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:52:21', '2021-09-04 17:52:21'),
(491, 'App\\User', 1, 'created', 'App\\Models\\Subject', 6, '[]', '{\"title\":\"HEALTH CARE\",\"code\":\"HR01\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"20\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"3\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"9\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:54:50', '2021-09-04 17:54:50'),
(492, 'App\\User', 1, 'created', 'App\\Models\\Subject', 7, '[]', '{\"title\":\"SPORTS\",\"code\":\"ST01\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":\"100\",\"pass_mark_practical\":\"20\",\"credit_hour\":\"4\",\"sub_type\":\"Compulsory\",\"class_type\":\"Practical\",\"staff_id\":\"7\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:56:07', '2021-09-04 17:56:07'),
(493, 'App\\User', 1, 'updated', 'App\\Models\\Subject', 2, '{\"code\":\"KW02\",\"pass_mark_theory\":30}', '{\"code\":\"KL01\",\"pass_mark_theory\":\"20\"}', 'http://localhost/EduFirm/public/subject/2/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 17:57:32', '2021-09-04 17:57:32'),
(494, 'App\\User', 1, 'updated', 'App\\Models\\Semester', 1, '{\"staff_id\":5}', '{\"staff_id\":\"6\"}', 'http://localhost/EduFirm/public/semester/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:03:43', '2021-09-04 18:03:43'),
(495, 'App\\User', 1, 'deleted', 'App\\Models\\GradingType', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":1,\"title\":\"STD TWO PRIMARY LEVEL\",\"slug\":\"STD-TWO-PRIMARY-LEVEL\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/grading/2/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:14:24', '2021-09-04 18:14:24'),
(496, 'App\\User', 1, 'deleted', 'App\\Models\\GradingType', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"title\":\"STD THREE PRIMARY LEVEL\",\"slug\":\"STD-THREE-PRIMARY-LEVEL\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/grading/3/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:14:38', '2021-09-04 18:14:38'),
(497, 'App\\User', 1, 'updated', 'App\\Models\\GradingType', 1, '{\"title\":\"STD ONE PRIMARY LEVEL\"}', '{\"title\":\"STD I-III PRIMARY LEVEL\"}', 'http://localhost/EduFirm/public/grading/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:15:48', '2021-09-04 18:15:48'),
(498, 'App\\User', 1, 'deleted', 'App\\Models\\GradingType', 5, '{\"id\":5,\"created_by\":1,\"last_updated_by\":null,\"title\":\"STD FIVE PRIMARY LEVEL\",\"slug\":\"STD-FIVE-PRIMARY-LEVEL\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/grading/5/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:19:20', '2021-09-04 18:19:20'),
(499, 'App\\User', 1, 'deleted', 'App\\Models\\GradingType', 7, '{\"id\":7,\"created_by\":1,\"last_updated_by\":null,\"title\":\"STD SEVEN PRIMARY LEVEL\",\"slug\":\"STD-SEVEN-PRIMARY-LEVEL\",\"status\":1}', '[]', 'http://localhost/EduFirm/public/grading/7/delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:20:08', '2021-09-04 18:20:08'),
(500, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 13, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/4/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:20:37', '2021-09-04 18:20:37'),
(501, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 14, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/4/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:20:37', '2021-09-04 18:20:37'),
(502, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 15, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/4/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:20:38', '2021-09-04 18:20:38'),
(503, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 16, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/4/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:20:38', '2021-09-04 18:20:38'),
(504, 'App\\User', 1, 'updated', 'App\\Models\\GradingType', 4, '{\"last_updated_by\":null,\"title\":\"STD FOUR PRIMARY LEVEL\"}', '{\"last_updated_by\":1,\"title\":\"STD IV-V PRIMARY LEVEL\"}', 'http://localhost/EduFirm/public/grading/4/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:20:38', '2021-09-04 18:20:38'),
(505, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 21, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/6/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:21:01', '2021-09-04 18:21:01'),
(506, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 22, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/6/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:21:01', '2021-09-04 18:21:01'),
(507, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 23, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/6/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:21:01', '2021-09-04 18:21:01'),
(508, 'App\\User', 1, 'updated', 'App\\Models\\GradingScale', 24, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/grading/6/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:21:01', '2021-09-04 18:21:01'),
(509, 'App\\User', 1, 'updated', 'App\\Models\\GradingType', 6, '{\"last_updated_by\":null,\"title\":\"STD SIX PRIMARY LEVEL\"}', '{\"last_updated_by\":1,\"title\":\"STD VI-VII PRIMARY LEVEL\"}', 'http://localhost/EduFirm/public/grading/6/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:21:02', '2021-09-04 18:21:02'),
(510, 'App\\User', 1, 'updated', 'App\\Models\\Subject', 1, '{\"last_updated_by\":null,\"title\":\"MATHEMATICS\",\"pass_mark_theory\":35}', '{\"last_updated_by\":1,\"title\":\"MATHS\",\"pass_mark_theory\":\"32\"}', 'http://localhost/EduFirm/public/subject/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:25:03', '2021-09-04 18:25:03'),
(511, 'App\\User', 1, 'created', 'App\\Models\\Subject', 8, '[]', '{\"title\":\"ENGLISH\",\"code\":\"EH02\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"3\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"5\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":8}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:27:44', '2021-09-04 18:27:44'),
(512, 'App\\User', 1, 'created', 'App\\Models\\Subject', 9, '[]', '{\"title\":\"KISWAHILI\",\"code\":\"KL02\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"3\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"3\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":9}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:29:16', '2021-09-04 18:29:16'),
(513, 'App\\User', 1, 'created', 'App\\Models\\Subject', 10, '[]', '{\"title\":\"SCIE TECH\",\"code\":\"ST02\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"4\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"5\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":10}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:30:49', '2021-09-04 18:30:49'),
(514, 'App\\User', 1, 'created', 'App\\Models\\Subject', 11, '[]', '{\"title\":\"SST\",\"code\":\"SS02\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"2\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"3\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":11}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:32:09', '2021-09-04 18:32:09'),
(515, 'App\\User', 1, 'created', 'App\\Models\\Subject', 12, '[]', '{\"title\":\"CIV & MORAL\",\"code\":\"CM02\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"3\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"3\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":12}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:35:04', '2021-09-04 18:35:04'),
(516, 'App\\User', 1, 'updated', 'App\\Models\\Subject', 1, '{\"code\":\"M01\"}', '{\"code\":\"M02\"}', 'http://localhost/EduFirm/public/subject/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:39:46', '2021-09-04 18:39:46'),
(517, 'App\\User', 1, 'created', 'App\\Models\\Subject', 13, '[]', '{\"title\":\"MATHS\",\"code\":\"M03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"4\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"8\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":13}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:40:46', '2021-09-04 18:40:46'),
(518, 'App\\User', 1, 'created', 'App\\Models\\Subject', 14, '[]', '{\"title\":\"ENGLISH\",\"code\":\"EH03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"3\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"4\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":14}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:41:47', '2021-09-04 18:41:47'),
(519, 'App\\User', 1, 'created', 'App\\Models\\Subject', 15, '[]', '{\"title\":\"KISWAHILI\",\"code\":\"KL03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"3\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"7\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":15}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:42:48', '2021-09-04 18:42:48'),
(520, 'App\\User', 1, 'created', 'App\\Models\\Subject', 16, '[]', '{\"title\":\"SCIE TECH\",\"code\":\"ST03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"2\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"6\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":16}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:44:21', '2021-09-04 18:44:21'),
(521, 'App\\User', 1, 'created', 'App\\Models\\Subject', 17, '[]', '{\"title\":\"SST\",\"code\":\"SS03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"2\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"6\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":17}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:45:19', '2021-09-04 18:45:19'),
(522, 'App\\User', 1, 'created', 'App\\Models\\Subject', 18, '[]', '{\"title\":\"CIV & MORAL\",\"code\":\"CM03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"2\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"3\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":18}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:46:54', '2021-09-04 18:46:54'),
(523, 'App\\User', 1, 'created', 'App\\Models\\Subject', 19, '[]', '{\"title\":\"VOCATIONAL SKILLS\",\"code\":\"VS03\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":\"3\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"7\",\"description\":\"GOOD TO GO\",\"created_by\":1,\"id\":19}', 'http://localhost/EduFirm/public/subject/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 18:48:00', '2021-09-04 18:48:00'),
(524, 'App\\User', 1, 'created', 'App\\Models\\Semester', 3, '[]', '{\"semester\":\"STREAM - A1\",\"gradingType_id\":\"4\",\"staff_id\":\"11\",\"created_by\":1,\"slug\":\"STREAM---A1\",\"id\":3}', 'http://localhost/EduFirm/public/semester/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:00:54', '2021-09-04 19:00:54'),
(525, 'App\\User', 1, 'updated', 'App\\Models\\Semester', 3, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost/EduFirm/public/semester/3/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:03:11', '2021-09-04 19:03:11'),
(526, 'App\\User', 1, 'created', 'App\\Models\\Semester', 4, '[]', '{\"semester\":\"STREAM - A2\",\"gradingType_id\":\"6\",\"staff_id\":\"12\",\"created_by\":1,\"slug\":\"STREAM---A2\",\"id\":4}', 'http://localhost/EduFirm/public/semester/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:14:39', '2021-09-04 19:14:39'),
(527, 'App\\User', 1, 'updated', 'App\\Models\\Exam', 1, '{\"last_updated_by\":null,\"title\":\"MATHEMATICS\"}', '{\"last_updated_by\":1,\"title\":\"MATHS\"}', 'http://localhost/EduFirm/public/exam/1/update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:23:07', '2021-09-04 19:23:07'),
(528, 'App\\User', 1, 'created', 'App\\Models\\Exam', 4, '[]', '{\"title\":\"SCIE TECH\",\"created_by\":1,\"id\":4}', 'http://localhost/EduFirm/public/exam/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:24:02', '2021-09-04 19:24:02'),
(529, 'App\\User', 1, 'created', 'App\\Models\\Exam', 5, '[]', '{\"title\":\"SST\",\"created_by\":1,\"id\":5}', 'http://localhost/EduFirm/public/exam/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:24:10', '2021-09-04 19:24:10'),
(530, 'App\\User', 1, 'created', 'App\\Models\\Exam', 6, '[]', '{\"title\":\"CIV & MORAL\",\"created_by\":1,\"id\":6}', 'http://localhost/EduFirm/public/exam/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:24:30', '2021-09-04 19:24:30'),
(531, 'App\\User', 1, 'created', 'App\\Models\\Exam', 7, '[]', '{\"title\":\"VOCATIONAL SKILLS\",\"created_by\":1,\"id\":7}', 'http://localhost/EduFirm/public/exam/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:24:56', '2021-09-04 19:24:56');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(532, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 15, '[]', '{\"years_id\":\"3\",\"months_id\":\"9\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"13\",\"date\":\"2021-09-06\",\"start_time\":\"08:00\",\"end_time\":\"10:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":15}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:30:40', '2021-09-04 19:30:40'),
(533, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 16, '[]', '{\"years_id\":\"3\",\"months_id\":\"9\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"14\",\"date\":\"2021-09-06\",\"start_time\":\"11:00\",\"end_time\":\"01:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":16}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:30:40', '2021-09-04 19:30:40'),
(534, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 17, '[]', '{\"years_id\":\"3\",\"months_id\":\"9\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"15\",\"date\":\"2021-09-06\",\"start_time\":\"03:00\",\"end_time\":\"05:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":17}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:30:41', '2021-09-04 19:30:41'),
(535, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 18, '[]', '{\"years_id\":\"3\",\"months_id\":\"9\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"16\",\"date\":\"2021-09-07\",\"start_time\":\"08:00\",\"end_time\":\"10:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":4,\"created_by\":1,\"id\":18}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:30:41', '2021-09-04 19:30:41'),
(536, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 19, '[]', '{\"years_id\":\"3\",\"months_id\":\"9\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"17\",\"date\":\"2021-09-07\",\"start_time\":\"11:00\",\"end_time\":\"01:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":5,\"created_by\":1,\"id\":19}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:30:41', '2021-09-04 19:30:41'),
(537, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 20, '[]', '{\"years_id\":\"3\",\"months_id\":\"9\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"18\",\"date\":\"2021-09-07\",\"start_time\":\"02:00\",\"end_time\":\"03:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":6,\"created_by\":1,\"id\":20}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:30:41', '2021-09-04 19:30:41'),
(538, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 21, '[]', '{\"years_id\":\"3\",\"months_id\":\"9\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"19\",\"date\":\"2021-09-07\",\"start_time\":\"04:00\",\"end_time\":\"05:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":7,\"created_by\":1,\"id\":21}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 19:30:41', '2021-09-04 19:30:41'),
(539, 'App\\User', 1, 'updated', 'App\\Models\\ExamSchedule', 15, '{\"date\":\"2021-09-06 00:00:00\",\"end_time\":\"10:00:00\"}', '{\"date\":\"2021-09-04\",\"end_time\":\"09:00\"}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:20:47', '2021-09-04 20:20:47'),
(540, 'App\\User', 1, 'updated', 'App\\Models\\ExamSchedule', 16, '{\"date\":\"2021-09-06 00:00:00\",\"start_time\":\"11:00:00\",\"end_time\":\"01:00:00\"}', '{\"date\":\"2021-09-04\",\"start_time\":\"10:00\",\"end_time\":\"11:00\"}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:20:47', '2021-09-04 20:20:47'),
(541, 'App\\User', 1, 'updated', 'App\\Models\\ExamSchedule', 17, '{\"date\":\"2021-09-06 00:00:00\",\"start_time\":\"03:00:00\",\"end_time\":\"05:00:00\"}', '{\"date\":\"2021-09-04\",\"start_time\":\"12:00\",\"end_time\":\"01:00\"}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:20:47', '2021-09-04 20:20:47'),
(542, 'App\\User', 1, 'updated', 'App\\Models\\ExamSchedule', 18, '{\"date\":\"2021-09-07 00:00:00\",\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"}', '{\"date\":\"2021-09-04\",\"start_time\":\"03:00\",\"end_time\":\"04:00\"}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:20:48', '2021-09-04 20:20:48'),
(543, 'App\\User', 1, 'updated', 'App\\Models\\ExamSchedule', 19, '{\"date\":\"2021-09-07 00:00:00\",\"start_time\":\"11:00:00\",\"end_time\":\"01:00:00\"}', '{\"date\":\"2021-09-04\",\"start_time\":\"05:00\",\"end_time\":\"06:00\"}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:20:48', '2021-09-04 20:20:48'),
(544, 'App\\User', 1, 'updated', 'App\\Models\\ExamSchedule', 20, '{\"date\":\"2021-09-07 00:00:00\",\"start_time\":\"02:00:00\",\"end_time\":\"03:00:00\"}', '{\"date\":\"2021-09-04\",\"start_time\":\"07:00\",\"end_time\":\"08:00\"}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:20:48', '2021-09-04 20:20:48'),
(545, 'App\\User', 1, 'updated', 'App\\Models\\ExamSchedule', 21, '{\"date\":\"2021-09-07 00:00:00\",\"start_time\":\"04:00:00\",\"end_time\":\"05:00:00\"}', '{\"date\":\"2021-09-04\",\"start_time\":\"21:00\",\"end_time\":\"22:00\"}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:20:48', '2021-09-04 20:20:48'),
(546, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 22, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"1\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"13\",\"date\":\"2021-09-03\",\"start_time\":\"08:00\",\"end_time\":\"09:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":22}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:35:22', '2021-09-04 20:35:22'),
(547, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 23, '[]', '{\"years_id\":\"3\",\"months_id\":\"8\",\"exams_id\":\"3\",\"faculty_id\":\"14\",\"semesters_id\":\"4\",\"subjects_id\":\"14\",\"date\":\"2021-09-03\",\"start_time\":\"08:00\",\"end_time\":\"09:00\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"32\",\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":23}', 'http://localhost/EduFirm/public/exam/schedule/store', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-04 20:36:50', '2021-09-04 20:36:50'),
(548, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-04 09:17:55\"}', '{\"last_login_at\":\"2021-09-04 20:29:13\"}', 'http://localhost/EduFirm/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.147', NULL, '2021-09-05 03:29:13', '2021-09-05 03:29:13'),
(549, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-04 20:29:13\",\"last_login_ip\":\"::1\"}', '{\"last_login_at\":\"2021-09-05 12:43:59\",\"last_login_ip\":\"127.0.0.1\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-09-05 19:44:01', '2021-09-05 19:44:01'),
(550, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-05 12:43:59\"}', '{\"last_login_at\":\"2021-09-05 15:15:30\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-09-05 22:15:30', '2021-09-05 22:15:30'),
(551, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-05 15:15:30\"}', '{\"last_login_at\":\"2021-09-06 09:58:09\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-09-06 16:58:09', '2021-09-06 16:58:09'),
(552, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-06 09:58:09\"}', '{\"last_login_at\":\"2021-09-08 22:41:45\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-09-09 05:41:45', '2021-09-09 05:41:45'),
(553, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-08 22:41:45\"}', '{\"last_login_at\":\"2021-09-11 18:38:04\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', NULL, '2021-09-12 01:38:05', '2021-09-12 01:38:05'),
(554, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-11 18:38:04\"}', '{\"last_login_at\":\"2021-09-17 20:56:05\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', NULL, '2021-09-18 03:56:06', '2021-09-18 03:56:06'),
(555, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-17 20:56:05\"}', '{\"last_login_at\":\"2021-09-18 10:43:20\"}', 'http://localhost/EduFirm/public/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', NULL, '2021-09-18 17:43:20', '2021-09-18 17:43:20'),
(556, 'App\\User', 1, 'updated', 'App\\Models\\VisitorPurpose', 1, '{\"status\":1}', '{\"status\":0}', 'http://localhost/EduFirm/public/front/visitor/purpose/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', NULL, '2021-09-18 17:51:43', '2021-09-18 17:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `bank_name`, `ac_name`, `ac_number`, `branch`, `status`) VALUES
(1, '2021-09-01 18:36:47', '2021-09-01 18:38:43', 1, 1, 'NATIONAL BANK OF COMMERCE', 'NDUKO JR', '090012JQS90', 'MBAGALA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `banks_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `dr_amt` int(11) NOT NULL DEFAULT 0,
  `cr_amt` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_transactions`
--

INSERT INTO `bank_transactions` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `banks_id`, `description`, `deposit_id`, `date`, `dr_amt`, `cr_amt`, `amount`, `status`) VALUES
(1, '2021-09-01 18:42:13', '2021-09-01 18:42:13', 1, NULL, 1, 'Salary', '245678', '2021-08-31 00:00:00', 279000, 0, 279000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED NOT NULL,
  `bed_number` int(11) NOT NULL,
  `bed_status` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bed_statuses`
--

CREATE TABLE `bed_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_statuses`
--

INSERT INTO `bed_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Available', 'btn-success', 1),
(2, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Occupied', 'btn-primary', 1),
(3, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'UnderConstruction', 'btn-default', 1),
(5, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'UnderMaintinance', 'btn-default', 1),
(6, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'NeedMaintinance', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonafide_certificates`
--

CREATE TABLE `bonafide_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `book_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_status` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `book_masters_id`, `book_code`, `book_status`) VALUES
(1, '2021-08-10 14:19:21', '2021-08-10 14:23:00', 1, NULL, 1, 'ANPH1', 2),
(2, '2021-08-10 14:19:21', '2021-08-10 14:26:40', 1, NULL, 2, 'HUPHY2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `slug`, `status`) VALUES
(1, '2021-08-10 14:19:20', '2021-08-10 14:19:20', 1, NULL, 'BOOK', 'BOOK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `issued_on` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `member_id`, `book_id`, `issued_on`, `due_date`, `return_date`, `status`) VALUES
(1, '2021-08-10 14:23:00', '2021-08-10 14:23:00', 1, NULL, 5, 1, '2021-08-10 17:23:00', '2021-08-17 17:23:00', NULL, 1),
(2, '2021-08-10 14:26:40', '2021-08-10 14:26:40', 1, NULL, 5, 2, '2021-08-10 17:26:40', '2021-08-17 17:26:40', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_masters`
--

CREATE TABLE `book_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `categories` int(10) UNSIGNED DEFAULT NULL,
  `isbn_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pages` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_masters`
--

INSERT INTO `book_masters` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `categories`, `isbn_number`, `code`, `title`, `sub_title`, `image`, `language`, `editor`, `edition`, `edition_year`, `publisher`, `publish_year`, `series`, `author`, `rack_location`, `price`, `total_pages`, `source`, `notes`, `status`) VALUES
(1, '2021-08-10 14:19:20', '2021-08-10 14:19:20', 1, NULL, 1, '1', 'ANPH', 'anatomy & physiology', 'anatomy & physiology', NULL, 'English', NULL, '1st', '2019', 'delhi elsevier', '2014', '1st', 'Ross & wilson', '101', '1399', '500', 'BUY', NULL, 1),
(2, '2021-08-10 14:19:21', '2021-08-10 14:19:21', 1, NULL, 1, '2', 'HUPHY', 'Human physiology', 'Human physiology', NULL, 'English', NULL, '2nd', '2019', 'c.b.s publisher', '2014', '2nd', 'c.c. Chatterjee', '102', '550', '300', 'GIEFT', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_statuses`
--

CREATE TABLE `book_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_statuses`
--

INSERT INTO `book_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'Available', 'btn-success', 1),
(2, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'Issued', 'btn-primary', 1),
(3, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'Lost', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(3, '2021-08-08 10:50:57', '2021-08-08 10:50:57', 2, NULL, 'ELECTRONIC ITEM', 1),
(4, '2021-08-08 10:57:06', '2021-08-08 10:57:06', 2, NULL, 'TEACHING MATERIAL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_histories`
--

CREATE TABLE `certificate_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `certificate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_histories`
--

INSERT INTO `certificate_histories` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `certificate`, `certificate_id`, `history_type`, `ref_text`, `status`) VALUES
(1, '2021-08-10 16:41:22', '2021-08-10 16:41:22', 1, NULL, 1, 'attendance', 1, 'Created', '{\"date_of_issue\":\"2021-08-10T16:41:22.411798Z\",\"year_of_study\":\"2020-21\",\"percentage_of_attendance\":\"95\",\"students_id\":\"1\",\"faculty\":\"8\",\"semester\":\"1\",\"reg_no\":\"STUD-0001\",\"reg_date\":\"2021-08-09\",\"university_reg\":null,\"first_name\":\"EZEKIEL\",\"middle_name\":\"GIDEON\",\"last_name\":\"EGWAGA\",\"date_of_birth\":\"2017-11-15\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"nationality\":\"TANZANIAN\",\"religion\":\"CHRISTIAN\",\"caste\":\"TEMEKE\",\"issue_certificate\":\"Issue\",\"created_by\":1}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

CREATE TABLE `certificate_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint(1) NOT NULL DEFAULT 1,
  `background_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_templates`
--

INSERT INTO `certificate_templates` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `certificate`, `template`, `background_image`, `custom_css`, `student_photo`, `background_status`, `status`) VALUES
(1, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'ATTENDANCE', '<table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">University Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{university_reg}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Faculty/Level&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr><tr><td>05.</td><td style=\"text-align: right; \">Batch :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Year of Study&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{year_of_study}}</span><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Percentage of Attendance Secured&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{percentage_of_attendance}}%</b><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(2, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'TRANSFER', '<table class=\"table table-bordered\"> <tbody> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">TC No. :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{tc_num}}</span><br></td> <td rowspan=\"5\">{{student_image}}</td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Faculty/Level :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Admission No./Reg.No. :</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">University Reg. No. :</span><br></td> <td style=\"text-align: left;\"><b>{{university_reg}}</b><br></td> </tr><tr><td style=\"text-align: right;\">Batch. :<br></td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> </tbody></table><table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Name of Father.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{parents_name}}</b><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">Date of Birth :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_birth}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Gender :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{gender}}</span><br></td> </tr> <tr> <td>05.</td> <td style=\"text-align: right; \">Nationality :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td> </tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Religion :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{religion}}</b><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Community &amp; Caste :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td> </tr> <tr> <td>08.</td> <td style=\"text-align: right; \">Date of Admission :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}</span><br></td> </tr> <tr> <td>09.</td> <td style=\"text-align: right; \">Date of Leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{date_of_leaving}}</b><br></td> </tr> <tr> <td>10.</td> <td style=\"text-align: right;\">Class studied at the time of leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td> </tr> <tr> <td>11.</td> <td style=\"text-align: right; \">Whether qualified for promotion to higher class :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{qualified_to_promote}}</b><br></td> </tr> <tr> <td>12.</td> <td style=\"text-align: right; \">Whether the student has paid all Balance fees to the college :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{paid_fee_status}}</b><br></td> </tr> <tr> <td>13.</td> <td style=\"text-align: right; \">Conduct and Character :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{character}}</span><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(3, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'CHARACTER', '<p>This is to certify that&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{student_name}}</b></span>&nbsp;Son of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{father_name}}</b> </span>&amp;&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{mother_name}}</b></span>, Permanent Address<b>&nbsp;<span style=\"color: rgb(57, 57, 57);\">{{address}}</span></b>, is known to me for about&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{year}}</b></span>&nbsp;years. He is a citizen of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{country}}</b>&nbsp;</span>by birth.</p><p><br></p><p>To the best of my knowledge, he bears a <b>{{character}}</b> character and is not involved in such activities which are against the state freedom and peace. I wish all success and prosperity in his life.</p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(4, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'BONAFIDE', 'This is to certify that <b>{{student_name}} </b>Reg No. <b>{{reg_no}}</b>   Son of <b>{{parents_name}}</b> is a bonafide student of this College in the <b>{{course}}</b> course during the period <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b>.', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(5, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'COURSE COMPLETION', '<p>This is to certify that <b>{{student_name}}</b> Reg No. <b>{{reg_no}}</b>&nbsp; Son of <b>{{parents_name}} </b>has studied <b>{{course}}</b> in our college during the <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b> during the tenure of his studies.<br></p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(6, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'GENERAL TEMPLATE', '<p style=\"text-align: center; \">REG.NO.:<b>{{reg_no}}</b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;REG.DATE: <b>{{reg_date}}</b></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \">This is to certify that <b>{{student_name}}</b> son/daughter of <b>{{parents_name}}</b> Residing at <b>{{address}}</b> is bonafide Student of our school.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She is /was very obedient, sincere and hardworking.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She bears a good moral character. His/Her Date of Birth is <b>{{date_of_birth}}</b> and Place of Birth is <b>{{address}}</b>.<br></p>', NULL, '.subpage{padding: 100px;}', 1, 0, 1),
(7, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'IDENTITY CARD', '<h5 style=\"text-align: center;\"><b>{{student_name}}</b></h5><h6 style=\"text-align: center; \"><b>{{faculty}}-</b><b>{{semester}}</b></h6><p></p><p><b>PARENT : {{parents_name}}</b></p><p></p><p><b>ADDRESS : {{address}}</b></p><p><b>CONTACT : {{guardian_mobile_1}}</b></p><p><b>VALID DATE : JAN 2019-  FEB 2020</b></p><p></p>', NULL, '.subpage{padding:83px 5px 5px;color:#000!important}.page-content{padding:8px 20px 24px}h5{font-size:14px;margin:2px auto}h6{font-size:12px;margin:2px auto}.student_image{border-radius:0;width:100px;height:auto;border:2px #438eb9 solid}p{margin:1px 0 0;font-size:10px;text-align:left!important}', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `character_certificates`
--

CREATE TABLE `character_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `cc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_completion_certificates`
--

CREATE TABLE `course_completion_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_status` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_statuses`
--

CREATE TABLE `customer_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_statuses`
--

INSERT INTO `customer_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-08 09:21:04', '2021-08-08 09:21:04', 1, 1, 'New Customer', 1),
(2, '2021-08-08 09:21:04', '2021-08-08 09:21:04', 1, 1, 'Annual Contract', 1),
(3, '2021-08-08 09:21:04', '2021-08-08 09:21:04', 1, 1, 'Office Contract', 1),
(4, '2021-08-08 09:21:04', '2021-08-08 09:21:04', 1, 1, 'Individual', 1),
(5, '2021-08-08 09:21:04', '2021-08-08 09:21:04', 1, 1, 'inquiry/Lead', 1);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Sunday', 1),
(2, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Monday', 1),
(3, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Tuesday', 1),
(4, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Wednesday', 1),
(5, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Thursday', 1),
(6, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Friday', 1),
(7, '2021-08-08 09:20:23', '2021-08-08 09:20:23', 1, NULL, 'Saturday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `member_type`, `member_id`, `title`, `file`, `description`, `status`) VALUES
(1, '2021-08-09 15:25:35', '2021-08-09 15:25:35', 1, NULL, 'student', 1, 'BIRTH  CERTIFICATE', '4657_birth-certificate.pdf', 'MUST BE ATTACHED', 1);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eating_times`
--

CREATE TABLE `eating_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `driver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-10 14:43:53', '2021-09-04 19:23:07', 1, 1, 'MATHS', 1),
(2, '2021-08-10 14:44:04', '2021-08-10 14:44:04', 1, NULL, 'KISWAHILI', 1),
(3, '2021-08-10 14:44:13', '2021-08-10 14:44:13', 1, NULL, 'ENGLISH', 1),
(4, '2021-09-04 19:24:02', '2021-09-04 19:24:02', 1, NULL, 'SCIE TECH', 1),
(5, '2021-09-04 19:24:10', '2021-09-04 19:24:10', 1, NULL, 'SST', 1),
(6, '2021-09-04 19:24:30', '2021-09-04 19:24:30', 1, NULL, 'CIV & MORAL', 1),
(7, '2021-09-04 19:24:56', '2021-09-04 19:24:56', 1, NULL, 'VOCATIONAL SKILLS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_mark_ledgers`
--

CREATE TABLE `exam_mark_ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `exam_schedule_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `obtain_mark_theory` int(11) NOT NULL DEFAULT 0,
  `absent_theory` tinyint(1) NOT NULL DEFAULT 0,
  `obtain_mark_practical` int(11) NOT NULL DEFAULT 0,
  `absent_practical` tinyint(1) NOT NULL DEFAULT 0,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_mark_ledgers`
--

INSERT INTO `exam_mark_ledgers` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `exam_schedule_id`, `students_id`, `obtain_mark_theory`, `absent_theory`, `obtain_mark_practical`, `absent_practical`, `sorting_order`, `status`) VALUES
(1, '2021-08-10 14:51:43', '2021-08-10 14:51:43', 1, NULL, 1, 1, 97, 1, 0, 0, 1, 1),
(2, '2021-08-10 14:51:43', '2021-08-10 14:51:43', 1, NULL, 1, 3, 85, 1, 0, 0, 2, 1),
(3, '2021-08-10 14:57:06', '2021-08-10 14:57:06', 1, NULL, 4, 1, 79, 1, 0, 0, 1, 1),
(4, '2021-08-10 14:57:06', '2021-08-10 14:57:06', 1, NULL, 4, 3, 89, 1, 0, 0, 2, 1),
(5, '2021-08-10 14:58:14', '2021-08-10 14:58:14', 1, NULL, 5, 1, 88, 1, 23, 1, 1, 1),
(6, '2021-08-10 14:58:14', '2021-08-10 14:58:14', 1, NULL, 5, 3, 78, 1, 14, 1, 2, 1),
(7, '2021-08-10 15:31:07', '2021-08-10 15:31:07', 1, NULL, 6, 1, 90, 1, 0, 0, 1, 1),
(8, '2021-08-10 15:31:07', '2021-08-10 15:31:07', 1, NULL, 6, 3, 78, 1, 0, 0, 2, 1),
(9, '2021-08-10 15:31:52', '2021-08-10 15:31:52', 1, NULL, 13, 1, 69, 1, 0, 0, 1, 1),
(10, '2021-08-10 15:31:52', '2021-08-10 15:31:52', 1, NULL, 13, 3, 89, 1, 0, 0, 2, 1),
(11, '2021-08-10 15:32:31', '2021-08-10 15:32:31', 1, NULL, 11, 1, 98, 1, 0, 0, 1, 1),
(12, '2021-08-10 15:32:31', '2021-08-10 15:32:31', 1, NULL, 11, 3, 89, 1, 0, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `exams_id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `full_mark_theory` int(11) NOT NULL DEFAULT 0,
  `pass_mark_theory` int(11) NOT NULL DEFAULT 0,
  `full_mark_practical` int(11) NOT NULL DEFAULT 0,
  `pass_mark_practical` int(11) NOT NULL DEFAULT 0,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `years_id`, `months_id`, `exams_id`, `faculty_id`, `semesters_id`, `subjects_id`, `date`, `start_time`, `end_time`, `full_mark_theory`, `pass_mark_theory`, `full_mark_practical`, `pass_mark_practical`, `sorting_order`, `publish_status`, `status`) VALUES
(22, '2021-09-04 20:35:22', '2021-09-05 22:23:32', 1, NULL, 3, 8, 1, 14, 4, 13, '2021-09-03 00:00:00', '08:00:00', '09:00:00', 100, 32, 0, 0, 1, 1, 1),
(23, '2021-09-04 20:36:49', '2021-09-05 22:23:25', 1, NULL, 3, 8, 3, 14, 4, 14, '2021-09-03 00:00:00', '08:00:00', '09:00:00', 100, 32, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculty` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `faculty`, `faculty_code`, `status`) VALUES
(8, '2021-08-09 14:12:23', '2021-09-04 16:26:58', 1, 1, 'GRADE I', 'C001', 1),
(9, '2021-08-09 14:12:40', '2021-09-04 16:27:38', 1, 1, 'GRADE II', 'C002', 1),
(10, '2021-08-09 14:13:06', '2021-09-04 16:27:58', 1, 1, 'GRADE III', 'C003', 1),
(11, '2021-08-09 14:13:27', '2021-09-04 16:28:24', 1, 1, 'GRADE IV', 'C004', 1),
(12, '2021-08-09 14:14:01', '2021-09-04 16:28:43', 1, 1, 'GRADE V', 'C005', 1),
(13, '2021-08-09 14:14:38', '2021-09-04 16:29:04', 1, 1, 'GRADE VI', 'C006', 1),
(14, '2021-08-09 14:15:09', '2021-09-04 16:29:24', 1, 1, 'GRADE VII', 'C007', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_semester`
--

CREATE TABLE `faculty_semester` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculty_semester`
--

INSERT INTO `faculty_semester` (`id`, `created_at`, `updated_at`, `faculty_id`, `semester_id`) VALUES
(1, NULL, NULL, 8, 1),
(3, NULL, NULL, 9, 1),
(5, NULL, NULL, 10, 1),
(15, NULL, NULL, 11, 3),
(16, NULL, NULL, 12, 3),
(17, NULL, NULL, 13, 4),
(18, NULL, NULL, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fee_collections`
--

CREATE TABLE `fee_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `fee_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_collections`
--

INSERT INTO `fee_collections` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `fee_masters_id`, `date`, `paid_amount`, `discount`, `fine`, `payment_mode`, `note`, `response`, `status`) VALUES
(7, '2021-08-10 13:54:00', '2021-08-10 13:54:00', 1, NULL, 2, 10, '2021-08-10 00:00:00', 20000, 0, 0, 'BD', 'GOOD TO KNOW', NULL, 1),
(8, '2021-08-10 13:54:50', '2021-08-10 13:54:50', 1, NULL, 2, 15, '2021-08-12 00:00:00', 40000, 0, 0, 'BD', 'GOOD TO KNOW', NULL, 1),
(9, '2021-08-10 13:55:24', '2021-08-10 13:55:24', 1, NULL, 2, 12, '2021-08-09 00:00:00', 100000, 0, 0, 'BD', NULL, NULL, 1),
(10, '2021-08-10 13:56:49', '2021-08-10 13:56:49', 1, NULL, 2, 11, '2021-08-10 00:00:00', 900000, 0, 0, 'BD', 'THANKS', NULL, 1),
(11, '2021-08-10 13:57:10', '2021-08-10 13:57:10', 1, NULL, 2, 13, '2021-08-08 00:00:00', 50000, 0, 0, 'Cash', 'THANKS', NULL, 1),
(12, '2021-08-10 13:57:30', '2021-08-10 13:57:30', 1, NULL, 2, 14, '2021-08-10 00:00:00', 20000, 0, 0, 'BD', 'THANKS', NULL, 1),
(14, '2021-08-11 06:54:13', '2021-08-11 06:54:13', 1, NULL, 4, 17, '2021-08-11 00:00:00', 20000, NULL, NULL, 'Bank', 'Quick Receive : Test payment', NULL, 1),
(15, '2021-08-11 06:54:13', '2021-08-11 06:54:13', 1, NULL, 4, 18, '2021-08-11 00:00:00', 5000, NULL, NULL, 'Bank', 'Quick Receive : Test payment', NULL, 1),
(16, '2021-08-11 06:54:13', '2021-08-11 06:54:13', 1, NULL, 4, 19, '2021-08-11 00:00:00', 20000, NULL, NULL, 'Bank', 'Quick Receive : Test payment', NULL, 1),
(17, '2021-08-11 06:54:14', '2021-08-11 06:54:14', 1, NULL, 4, 20, '2021-08-11 00:00:00', 50000, NULL, NULL, 'Bank', 'Quick Receive : Test payment', NULL, 1),
(18, '2021-08-11 06:54:14', '2021-08-11 06:54:14', 1, NULL, 4, 21, '2021-08-11 00:00:00', 200000, NULL, NULL, 'Bank', 'Quick Receive : Test payment', NULL, 1),
(19, '2021-08-11 06:54:14', '2021-08-11 06:54:14', 1, NULL, 4, 22, '2021-08-11 00:00:00', 1100000, NULL, NULL, 'Bank', 'Quick Receive : Test payment', NULL, 1),
(20, '2021-08-11 07:30:31', '2021-08-11 07:30:31', 1, NULL, 2, 11, '2021-08-11 00:00:00', 200000, NULL, NULL, 'Mobile Payment', 'Quick Receive : Mobile payment test', NULL, 1),
(21, '2021-08-11 07:30:31', '2021-08-11 07:30:31', 1, NULL, 2, 12, '2021-08-11 00:00:00', 100000, NULL, NULL, 'Mobile Payment', 'Quick Receive : Mobile payment test', NULL, 1),
(22, '2021-08-12 14:59:09', '2021-08-12 14:59:09', 1, NULL, 1, 4, '2021-08-12 00:00:00', 1100000, NULL, NULL, 'Mobile Payment', 'Quick Receive : lk;lk\';k\';k\'jkhmmn,', NULL, 1),
(23, '2021-08-12 14:59:10', '2021-08-12 14:59:10', 1, NULL, 1, 5, '2021-08-12 00:00:00', 200000, NULL, NULL, 'Mobile Payment', 'Quick Receive : lk;lk\';k\';k\'jkhmmn,', NULL, 1),
(24, '2021-08-12 14:59:10', '2021-08-12 14:59:10', 1, NULL, 1, 6, '2021-08-12 00:00:00', 50000, NULL, NULL, 'Mobile Payment', 'Quick Receive : lk;lk\';k\';k\'jkhmmn,', NULL, 1),
(25, '2021-08-12 14:59:10', '2021-08-12 14:59:10', 1, NULL, 1, 7, '2021-08-12 00:00:00', 20000, NULL, NULL, 'Mobile Payment', 'Quick Receive : lk;lk\';k\';k\'jkhmmn,', NULL, 1),
(26, '2021-08-12 14:59:10', '2021-08-12 14:59:10', 1, NULL, 1, 8, '2021-08-12 00:00:00', 5000, NULL, NULL, 'Mobile Payment', 'Quick Receive : lk;lk\';k\';k\'jkhmmn,', NULL, 1),
(27, '2021-08-12 14:59:10', '2021-08-12 14:59:10', 1, NULL, 1, 9, '2021-08-12 00:00:00', 30000, NULL, NULL, 'Mobile Payment', 'Quick Receive : lk;lk\';k\';k\'jkhmmn,', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_heads`
--

CREATE TABLE `fee_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `fee_head_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_heads`
--

INSERT INTO `fee_heads` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `fee_head_title`, `fee_head_amount`, `status`) VALUES
(1, '2021-08-09 15:30:55', '2021-08-09 15:44:09', 1, 1, 'SCHOOL FEE NURSERY', 950000, 1),
(2, '2021-08-09 15:42:16', '2021-08-09 15:42:16', 1, NULL, 'REGISTRATION FEE', 20000, 1),
(3, '2021-08-09 15:45:17', '2021-08-09 15:45:17', 1, NULL, 'SCHOOL FEE STD I - III', 1100000, 1),
(4, '2021-08-09 15:46:30', '2021-08-09 15:46:30', 1, NULL, 'SCHOOL FEE STD IV - VI', 1150000, 1),
(5, '2021-08-09 15:47:37', '2021-08-09 15:47:37', 1, NULL, 'SCHOOL FEE STD VII', 1150000, 1),
(12, '2021-08-09 16:51:49', '2021-08-09 16:57:34', 1, 1, 'STATIONERY PRE UNIT NURSERY', 130000, 1),
(13, '2021-08-09 16:53:30', '2021-08-09 16:57:07', 1, 1, 'NURSERY PRE UNIT UNIFORM (2 PAIRS)', 40000, 1),
(14, '2021-08-09 16:54:17', '2021-08-09 16:56:43', 1, 1, 'NURSERY PRE UNIT SWETA', 20000, 1),
(15, '2021-08-09 16:54:53', '2021-08-09 16:56:22', 1, 1, 'NURSERY & PRE UNIT SCHOOL BADGE', 5000, 1),
(16, '2021-08-09 16:59:52', '2021-08-09 17:01:18', 1, 1, 'CLASS I - II STATIONERY', 200000, 1),
(17, '2021-08-09 17:49:48', '2021-08-09 17:49:48', 1, NULL, 'CLASS I - II UNIFORMS (2 PAIRS)', 50000, 1),
(18, '2021-08-09 17:51:04', '2021-08-09 17:51:04', 1, NULL, 'CLASS I - II  SWETA', 20000, 1),
(19, '2021-08-09 17:52:06', '2021-08-09 17:52:06', 1, NULL, 'CLASS I - II  SCHOOL BADGE', 5000, 1),
(20, '2021-08-09 17:53:33', '2021-08-09 17:59:53', 1, 1, 'CLASS III - IV  SCHOOL BADGE', 5000, 1),
(21, '2021-08-09 17:53:57', '2021-08-09 18:01:23', 1, 1, 'CLASS III - IV STATIONERY', 205000, 1),
(22, '2021-08-09 17:54:42', '2021-08-09 18:00:58', 1, 1, 'CLASS III - IV SWETA', 20000, 1),
(23, '2021-08-09 17:55:16', '2021-08-09 18:00:33', 1, 1, 'CLASS III - IV UNIFORMS (2 PAIRS)', 50000, 1),
(25, '2021-08-09 17:57:37', '2021-08-09 17:57:37', 1, NULL, 'CLASS IV NECTA', 6000, 1),
(26, '2021-08-09 17:58:13', '2021-08-09 17:58:13', 1, NULL, 'CLASS IV REMEDIAL', 150000, 1),
(27, '2021-08-09 18:03:07', '2021-08-09 18:03:07', 1, NULL, 'CLASS V - VI UNIFORMS (2 PAIRS)', 50000, 1),
(28, '2021-08-09 18:03:59', '2021-08-09 18:03:59', 1, NULL, 'CLASS V - VI SWETA', 20000, 1),
(29, '2021-08-09 18:04:29', '2021-08-09 18:04:29', 1, NULL, 'CLASS V - VI SCHOOL BADGE', 5000, 1),
(30, '2021-08-09 18:05:24', '2021-08-09 18:05:24', 1, NULL, 'CLASS V - VI STATIONERY', 210000, 1),
(31, '2021-08-09 18:06:26', '2021-08-09 18:06:26', 1, NULL, 'CLASS V - VII SWETA', 20000, 1),
(32, '2021-08-09 18:06:54', '2021-08-09 18:06:54', 1, NULL, 'CLASS V - VII STATIONERY', 220000, 1),
(33, '2021-08-09 18:07:30', '2021-08-09 18:07:30', 1, NULL, 'CLASS VII UNIFORMS (2 PAIRS)', 50000, 1),
(34, '2021-08-09 18:08:35', '2021-08-09 18:08:35', 1, NULL, 'CLASS V - VII SCHOOL BADGE', 5000, 1),
(35, '2021-08-09 18:09:21', '2021-08-09 18:09:21', 1, NULL, 'CLASS VII NECTA', 15000, 1),
(36, '2021-08-09 18:09:47', '2021-08-09 18:09:47', 1, NULL, 'CLASS VII REMEDIAL', 150000, 1),
(37, '2021-08-09 18:12:28', '2021-08-09 18:12:28', 1, NULL, 'TRANSPORT FEE - ROUTE A', 30000, 1),
(38, '2021-08-09 18:13:09', '2021-08-09 18:13:09', 1, NULL, 'TRANSPORT FEE - ROUTE B', 40000, 1),
(39, '2021-08-09 18:13:37', '2021-08-09 18:13:37', 1, NULL, 'TRANSPORT FEE - ROUTE C', 50000, 1),
(40, '2021-08-09 18:14:01', '2021-08-09 18:14:01', 1, NULL, 'TRANSPORT FEE - ROUTE D', 60000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_masters`
--

CREATE TABLE `fee_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_due_date` datetime NOT NULL,
  `fee_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_masters`
--

INSERT INTO `fee_masters` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `semester`, `fee_head`, `fee_due_date`, `fee_amount`, `status`) VALUES
(4, '2021-08-09 18:18:27', '2021-08-09 18:18:27', 1, NULL, 1, '1', '3', '2021-08-09 00:00:00', 1100000, 1),
(5, '2021-08-09 18:18:27', '2021-08-09 18:18:27', 1, NULL, 1, '1', '16', '2021-08-09 00:00:00', 200000, 1),
(6, '2021-08-09 18:18:27', '2021-08-09 18:18:27', 1, NULL, 1, '1', '17', '2021-08-09 00:00:00', 50000, 1),
(7, '2021-08-09 18:18:28', '2021-08-09 18:18:28', 1, NULL, 1, '1', '18', '2021-08-09 00:00:00', 20000, 1),
(8, '2021-08-09 18:18:28', '2021-08-09 18:18:28', 1, NULL, 1, '1', '19', '2021-08-09 00:00:00', 5000, 1),
(9, '2021-08-09 18:18:28', '2021-08-09 18:18:28', 1, NULL, 1, '1', '37', '2021-08-09 00:00:00', 30000, 1),
(10, '2021-08-10 13:45:56', '2021-08-10 13:45:56', 1, NULL, 2, '1', '2', '2021-08-10 00:00:00', 20000, 1),
(11, '2021-08-10 13:45:56', '2021-08-10 13:45:56', 1, NULL, 2, '1', '3', '2021-08-10 00:00:00', 1100000, 1),
(12, '2021-08-10 13:45:56', '2021-08-10 13:45:56', 1, NULL, 2, '1', '16', '2021-08-10 00:00:00', 200000, 1),
(13, '2021-08-10 13:45:56', '2021-08-10 13:45:56', 1, NULL, 2, '1', '17', '2021-08-10 00:00:00', 50000, 1),
(14, '2021-08-10 13:45:56', '2021-08-10 13:45:56', 1, NULL, 2, '1', '18', '2021-08-10 00:00:00', 20000, 1),
(15, '2021-08-10 13:45:56', '2021-08-10 13:45:56', 1, NULL, 2, '1', '38', '2021-08-10 00:00:00', 40000, 1),
(16, '2021-08-11 06:46:08', '2021-08-11 06:46:08', 1, NULL, 4, '2', '40', '2021-08-11 00:00:00', 60000, 1),
(17, '2021-08-11 06:46:08', '2021-08-11 06:46:08', 1, NULL, 4, '2', '2', '2021-08-11 00:00:00', 20000, 1),
(18, '2021-08-11 06:46:09', '2021-08-11 06:46:09', 1, NULL, 4, '2', '19', '2021-08-11 00:00:00', 5000, 1),
(19, '2021-08-11 06:46:09', '2021-08-11 06:46:09', 1, NULL, 4, '2', '18', '2021-08-11 00:00:00', 20000, 1),
(20, '2021-08-11 06:46:09', '2021-08-11 06:46:09', 1, NULL, 4, '2', '17', '2021-08-11 00:00:00', 50000, 1),
(21, '2021-08-11 06:46:09', '2021-08-11 06:46:09', 1, NULL, 4, '2', '16', '2021-08-11 00:00:00', 200000, 1),
(22, '2021-08-11 06:46:09', '2021-08-11 06:46:09', 1, NULL, 4, '2', '3', '2021-08-11 00:00:00', 1100000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `foodCategories_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_item_food_schedule`
--

CREATE TABLE `food_item_food_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_schedule_id` int(10) UNSIGNED NOT NULL,
  `food_item_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_schedules`
--

CREATE TABLE `food_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `eating_times_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `institute` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_header` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordpress` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zones_id` int(10) UNSIGNED DEFAULT NULL,
  `quick_menu` tinyint(1) NOT NULL DEFAULT 1,
  `public_registration` tinyint(1) NOT NULL DEFAULT 1,
  `front_desk` tinyint(1) NOT NULL DEFAULT 1,
  `student_staff` tinyint(1) NOT NULL DEFAULT 1,
  `staff` tinyint(1) NOT NULL DEFAULT 1,
  `account` tinyint(1) NOT NULL DEFAULT 1,
  `inventory` tinyint(1) NOT NULL DEFAULT 1,
  `library` tinyint(1) NOT NULL DEFAULT 1,
  `attendance` tinyint(1) NOT NULL DEFAULT 1,
  `exam` tinyint(1) NOT NULL DEFAULT 1,
  `certificate` tinyint(1) NOT NULL DEFAULT 1,
  `hostel` tinyint(1) NOT NULL DEFAULT 1,
  `transport` tinyint(1) NOT NULL DEFAULT 1,
  `assignment` tinyint(1) NOT NULL DEFAULT 1,
  `upload_download` tinyint(1) NOT NULL DEFAULT 1,
  `meeting` tinyint(1) NOT NULL DEFAULT 1,
  `alert` tinyint(1) NOT NULL DEFAULT 1,
  `academic` tinyint(1) NOT NULL DEFAULT 1,
  `help` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `institute`, `salogan`, `copyright`, `address`, `phone`, `email`, `website`, `favicon`, `logo`, `print_header`, `print_footer`, `facebook`, `twitter`, `linkedIn`, `youtube`, `googlePlus`, `instagram`, `whatsApp`, `skype`, `pinterest`, `wordpress`, `time_zones_id`, `quick_menu`, `public_registration`, `front_desk`, `student_staff`, `staff`, `account`, `inventory`, `library`, `attendance`, `exam`, `certificate`, `hostel`, `transport`, `assignment`, `upload_download`, `meeting`, `alert`, `academic`, `help`, `status`) VALUES
(1, '2021-08-08 09:20:21', '2021-09-01 21:57:08', 1, 1, 'Kamo Nursery & Primary School', 'Quality & Integrity', 'gieLab Innovations', 'Dar es Salaam', '+255 (22) 909090909', 'info@kamoschools.ac.tz', 'http://www.kamoschools.ac.tz', '7811.ico', '9733.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grading_scales`
--

CREATE TABLE `grading_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_from` int(11) NOT NULL,
  `percentage_to` int(11) NOT NULL,
  `grade_point` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_scales`
--

INSERT INTO `grading_scales` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `gradingType_id`, `name`, `percentage_from`, `percentage_to`, `grade_point`, `description`, `status`) VALUES
(1, '2021-08-09 13:46:02', '2021-09-04 16:53:09', 1, 1, 1, 'A', 80, 100, 5, 'Excellent', 1),
(2, '2021-08-09 13:48:21', '2021-09-04 16:53:09', 1, 1, 1, 'B', 60, 79, 4, 'Very Good', 1),
(3, '2021-08-09 13:48:21', '2021-09-04 16:53:10', 1, 1, 1, 'C', 50, 59, 3, 'Good', 1),
(4, '2021-08-09 13:48:21', '2021-09-04 16:53:10', 1, 1, 1, 'D', 20, 49, 2, 'Fair', 1),
(13, '2021-09-04 17:15:20', '2021-09-04 18:20:37', 1, 1, 4, 'A', 80, 100, 5, 'Excellent', 1),
(14, '2021-09-04 17:15:21', '2021-09-04 18:20:37', 1, 1, 4, 'B', 62, 79, 4, 'Very Good', 1),
(15, '2021-09-04 17:15:21', '2021-09-04 18:20:38', 1, 1, 4, 'C', 42, 61, 3, 'Good', 1),
(16, '2021-09-04 17:15:21', '2021-09-04 18:20:38', 1, 1, 4, 'D', 32, 41, 2, 'Fair', 1),
(21, '2021-09-04 17:25:33', '2021-09-04 18:21:01', 1, 1, 6, 'A', 82, 100, 5, 'Excellent', 1),
(22, '2021-09-04 17:25:33', '2021-09-04 18:21:01', 1, 1, 6, 'B', 62, 81, 4, 'Very Good', 1),
(23, '2021-09-04 17:25:33', '2021-09-04 18:21:01', 1, 1, 6, 'C', 42, 61, 3, 'Good', 1),
(24, '2021-09-04 17:25:33', '2021-09-04 18:21:01', 1, 1, 6, 'D', 32, 41, 2, 'Fair', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grading_types`
--

CREATE TABLE `grading_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_types`
--

INSERT INTO `grading_types` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `slug`, `status`) VALUES
(1, '2021-08-09 13:46:02', '2021-09-04 18:15:47', 1, 1, 'STD I-III PRIMARY LEVEL', 'PRIMARY-LEVEL', 1),
(4, '2021-09-04 17:15:20', '2021-09-04 18:20:38', 1, 1, 'STD IV-V PRIMARY LEVEL', 'STD-FOUR-PRIMARY-LEVEL', 1),
(6, '2021-09-04 17:25:33', '2021-09-04 18:21:02', 1, 1, 'STD VI-VII PRIMARY LEVEL', 'STD-SIX-PRIMARY-LEVEL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE `guardian_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `guardian_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardian_details`
--

INSERT INTO `guardian_details` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `guardian_first_name`, `guardian_middle_name`, `guardian_last_name`, `guardian_eligibility`, `guardian_occupation`, `guardian_office`, `guardian_office_number`, `guardian_residence_number`, `guardian_mobile_1`, `guardian_mobile_2`, `guardian_email`, `guardian_relation`, `guardian_address`, `guardian_image`, `status`) VALUES
(1, '2021-08-09 14:27:15', '2021-08-09 14:27:15', 1, NULL, 'GIDEON', 'EGWAGA', 'RYOBHA', 'MA', 'ICT TECHNICAL', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'gideon@gielab.com', 'FATHER', 'DAR', '', 1),
(2, '2021-08-09 14:37:10', '2021-08-09 14:37:10', 1, NULL, 'AMIGO', 'ADHI', 'RUDO', 'MA', 'ICT', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'AA@gielab.com', 'FATHER', 'DAR', '', 1),
(3, '2021-08-09 14:45:08', '2021-08-09 14:45:08', 1, NULL, 'ALMELDA', 'THAPA', 'KRISHNA', 'MA', 'ENGINEER', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'AT@gielab.com', 'FATHER', 'DAR', '', 1),
(4, '2021-08-09 14:49:43', '2021-08-09 14:49:43', 1, NULL, 'ZUMO', 'ADHI', 'AMADOL', 'ELIGIBLE', 'ENGINEER', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'AT@gielab.com', 'FATHER', 'DAR', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_contact` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_meals`
--

CREATE TABLE `hostel_meals` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `foods_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library_circulations`
--

CREATE TABLE `library_circulations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_prefix` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_limit_days` int(10) UNSIGNED DEFAULT NULL,
  `issue_limit_books` int(10) UNSIGNED DEFAULT NULL,
  `fine_per_day` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_circulations`
--

INSERT INTO `library_circulations` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `user_type`, `slug`, `code_prefix`, `issue_limit_days`, `issue_limit_books`, `fine_per_day`, `status`) VALUES
(1, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'Student', 'student', 'STUDLIB', 7, 5, 5, 1),
(2, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'Staff', 'staff', 'STALIB', 15, 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_members`
--

INSERT INTO `library_members` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `user_type`, `member_id`, `status`) VALUES
(1, '2021-08-09 13:21:10', '2021-08-09 13:21:10', 1, NULL, 2, 3, 1),
(2, '2021-08-09 14:51:26', '2021-08-09 14:51:26', 1, NULL, 1, 4, 1),
(3, '2021-08-09 14:51:32', '2021-08-09 14:51:32', 1, NULL, 1, 3, 1),
(4, '2021-08-09 14:51:40', '2021-08-09 14:51:40', 1, NULL, 1, 2, 1),
(5, '2021-08-09 14:51:46', '2021-08-09 14:51:46', 1, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_settings`
--

CREATE TABLE `meeting_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_settings`
--

INSERT INTO `meeting_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Zoom', 'zoom', 'https://zoom.us', '{\"Key\":\"\",\"Secret\":\"\",\"Email\":\"\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_04_100236_create_staff_designations_table', 1),
(4, '2017_10_05_003733_create_grading_types_table', 1),
(5, '2017_10_05_003849_create_grading_scales_table', 1),
(6, '2017_10_05_072329_create_staff_table', 1),
(7, '2017_10_06_085150_create_faculties_table', 1),
(8, '2017_10_06_085202_create_semesters_table', 1),
(9, '2017_10_09_094821_create_attendance_statuses_table', 1),
(10, '2017_10_10_083645_create_time_zones_table', 1),
(11, '2017_10_21_012144_create_bed_statuses_table', 1),
(12, '2017_10_27_010354_create_student_statuses_table', 1),
(13, '2017_10_28_060832_create_book_statuses_table', 1),
(14, '2017_10_29_074155_create_student_batches_table', 1),
(15, '2017_11_06_084909_create_customers_table', 1),
(16, '2017_11_06_084909_create_students_table', 1),
(17, '2017_11_06_085106_create_parent_details_table', 1),
(18, '2017_11_06_085135_create_guardian_details_table', 1),
(19, '2017_11_07_091332_create_faculty_semester_table', 1),
(20, '2017_11_11_120928_create_addressinfos_table', 1),
(21, '2017_11_17_011606_create_documents_table', 1),
(22, '2017_11_18_005300_create_notes_table', 1),
(23, '2017_11_19_055352_create_fee_heads_table', 1),
(24, '2017_11_20_012242_create_fee_masters_table', 1),
(25, '2017_11_21_035458_create_fee_collections_table', 1),
(26, '2017_11_26_014317_create_book_categories_table', 1),
(27, '2017_11_27_010354_create_customer_statuses_table', 1),
(28, '2017_11_27_094949_create_book_masters_table', 1),
(29, '2017_11_27_095001_create_books_table', 1),
(30, '2017_11_29_084116_create_library_circulations_table', 1),
(31, '2017_11_30_015025_create_library_members_table', 1),
(32, '2017_12_02_010529_create_book_issues_table', 1),
(33, '2017_12_06_005401_create_transaction_heads_table', 1),
(34, '2017_12_06_012542_create_transactions_table', 1),
(35, '2017_12_08_084025_create_payroll_heads_table', 1),
(36, '2017_12_08_090233_create_payroll_masters_table', 1),
(37, '2017_12_08_090813_create_salary_pays_table', 1),
(38, '2017_12_13_084859_create_years_table', 1),
(39, '2017_12_13_084925_create_months_table', 1),
(40, '2017_12_14_062342_create_attendance_masters_table', 1),
(41, '2017_12_14_063449_create_attendances_table', 1),
(42, '2018_02_15_104206_create_settings_table', 1),
(43, '2018_02_18_061426_create_sms_emails_table', 1),
(44, '2018_02_18_061538_create_notices_table', 1),
(45, '2018_03_02_003733_create_categories_table', 1),
(46, '2018_03_02_003849_create_sub_categories_table', 1),
(47, '2018_03_02_173947_create_subjects_table', 1),
(48, '2018_03_02_180148_create_semester_subject_table', 1),
(49, '2018_03_03_140508_create_exams_table', 1),
(50, '2018_03_03_140529_create_exam_schedules_table', 1),
(51, '2018_03_03_140543_create_exam_mark_ledgers_table', 1),
(52, '2018_03_09_155741_create_hostels_table', 1),
(53, '2018_03_10_002019_create_room_types_table', 1),
(54, '2018_03_18_233110_create_rooms_table', 1),
(55, '2018_03_20_175730_create_beds_table', 1),
(56, '2018_03_21_181903_create_residents_table', 1),
(57, '2018_03_21_190050_create_resident_histories_table', 1),
(58, '2018_03_26_233817_create_days_table', 1),
(59, '2018_03_27_045931_create_food_categories_table', 1),
(60, '2018_03_27_050051_create_food_items_table', 1),
(61, '2018_03_27_050835_create_hostel_meals_table', 1),
(62, '2018_03_27_223813_create_eating_times_table', 1),
(63, '2018_03_27_225950_create_food_schedules_table', 1),
(64, '2018_03_30_001832_create_food_item_food_schedule_table', 1),
(65, '2018_03_30_234754_create_routes_table', 1),
(66, '2018_03_30_234825_create_vehicles_table', 1),
(67, '2018_03_30_234840_create_route_vehicles_table', 1),
(68, '2018_03_31_000843_create_vehicle_staffs_table', 1),
(69, '2018_04_02_062605_create_general_settings_table', 1),
(70, '2018_04_03_054649_create_email_settings_table', 1),
(71, '2018_04_03_054651_create_meeting_settings_table', 1),
(72, '2018_04_03_054708_create_sms_settings_table', 1),
(73, '2018_04_03_055400_create_alert_settings_table', 1),
(74, '2018_04_29_234215_create_academic_infos_table', 1),
(75, '2018_05_22_001204_entrust_setup_tables', 1),
(76, '2018_05_28_101725_create_student_guardians_table', 1),
(77, '2018_05_30_141644_create_payment_settings_table', 1),
(78, '2018_06_04_091509_create_transport_users_table', 1),
(79, '2018_06_04_092336_create_transport_histories_table', 1),
(80, '2018_06_06_055405_create_assignments_table', 1),
(81, '2018_06_06_055442_create_assignment_answers_table', 1),
(82, '2018_06_06_055503_create_download_table', 1),
(83, '2019_01_18_065901_create_products_table', 1),
(84, '2019_01_29_032038_create_vendors_table', 1),
(85, '2019_01_29_042314_create_stocks_table', 1),
(86, '2019_01_29_042738_create_product_prices_table', 1),
(87, '2019_04_06_021557_create_payment_methods_table', 1),
(88, '2019_04_06_031653_create_banks_table', 1),
(89, '2019_04_06_031713_create_bank_transactions_table', 1),
(90, '2019_04_08_063125_create_account_categories_table', 1),
(91, '2019_04_11_090124_create_jobs_table', 1),
(92, '2019_05_04_152142_create_certificate_templates_table', 1),
(93, '2019_05_10_192213_create_subject_attendances_table', 1),
(94, '2019_07_08_064020_create_audits_table', 1),
(95, '2019_08_10_065318_create_attendance_certificates_table', 1),
(96, '2019_08_10_205022_create_certificate_histories_table', 1),
(97, '2019_08_12_081920_create_transfer_certificates_table', 1),
(98, '2019_08_14_070841_create_bonafide_certificates_table', 1),
(99, '2019_08_14_203420_create_course_completion_certificates_table', 1),
(100, '2019_10_08_205822_create_book_requests_table', 1),
(101, '2019_11_24_184741_create_assets_table', 1),
(102, '2019_11_24_184850_create_semester_assets_table', 1),
(103, '2020_01_16_223708_create_purchases_table', 1),
(104, '2020_01_16_223806_create_purchase_details_table', 1),
(105, '2020_01_16_223831_create_purchase_returns_table', 1),
(106, '2020_01_16_223855_create_sales_table', 1),
(107, '2020_01_16_223910_create_sales_details_table', 1),
(108, '2020_01_16_223928_create_sales_returns_table', 1),
(109, '2020_02_18_004730_create_postal_exchange_types_table', 1),
(110, '2020_02_19_011008_create_postal_exchanges_table', 1),
(111, '2020_02_20_073315_create_visitor_purposes_table', 1),
(112, '2020_02_20_073316_create_visitor_logs_table', 1),
(113, '2020_02_25_192332_create_online_payments_table', 1),
(114, '2020_04_12_165239_create_meetings_table', 1),
(115, '2020_04_21_115723_create_character_certificates_table', 1),
(116, '2020_04_27_084132_create_institutions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'January', 1),
(2, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'February', 1),
(3, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'March', 1),
(4, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'April', 1),
(5, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'May', 1),
(6, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'June', 1),
(7, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'July', 1),
(8, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'August', 1),
(9, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'September', 1),
(10, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'October', 1),
(11, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'November', 1),
(12, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, 'December', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `member_type`, `member_id`, `subject`, `note`, `status`) VALUES
(1, '2021-08-09 15:26:32', '2021-08-09 15:26:32', 1, NULL, 'student', 1, 'HAJI', 'GERHHSHSGHGHGHGHGHFGHFGH\r\nHFFGJGFJGFGJJHJJKI8YLOILTILIU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `display_group` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_payments`
--

CREATE TABLE `online_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_details`
--

CREATE TABLE `parent_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `grandfather_first_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_details`
--

INSERT INTO `parent_details` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `grandfather_first_name`, `grandfather_middle_name`, `grandfather_last_name`, `father_first_name`, `father_middle_name`, `father_last_name`, `father_eligibility`, `father_occupation`, `father_office`, `father_office_number`, `father_residence_number`, `father_mobile_1`, `father_mobile_2`, `father_email`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `mother_eligibility`, `mother_occupation`, `mother_office`, `mother_office_number`, `mother_residence_number`, `mother_mobile_1`, `mother_mobile_2`, `mother_email`, `father_image`, `mother_image`, `status`) VALUES
(1, '2021-08-09 14:27:15', '2021-08-09 14:27:15', 1, NULL, 1, 'EGWAGA', 'GUMI', 'RYOBHA', 'GIDEON', 'EGWAGA', 'RYOBHA', 'MA', 'ICT TECHNICAL', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'gideon@gielab.com', 'SARA', 'GUMI', 'MATAMBO', 'ELIGIBLE', 'HOME MOTHER', 'IPS', '977', '23080', '977-31-23072', '973-31-23072', 'sara@gielab.com', '', '', 1),
(2, '2021-08-09 14:37:10', '2021-08-09 14:37:10', 1, NULL, 2, 'ADHI', 'RUDO', 'CHECHEMI', 'AMIGO', 'ADHI', 'RUDO', 'MA', 'ICT', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'AA@gielab.com', 'ISABELA', 'GUMI', 'AMADOL', 'ELIGIBLE', 'HOME MOTHER', 'IPS', '977', '23080', '977-31-23072', '973-31-23072', 'IG@gielab.com', '', '', 1),
(3, '2021-08-09 14:45:08', '2021-08-09 14:45:08', 1, NULL, 3, 'KRISHNA', 'THAPA', 'DEMO', 'ALMELDA', 'THAPA', 'KRISHNA', 'MA', 'ENGINEER', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'GA@gielab.com', 'SARA', 'GUMI', 'MATAMBO', 'ELIGIBLE', 'HOME MOTHER', 'IPS', '977', '23080', '977-31-23072', '973-31-23072', 'sara@gielab.com', '', '', 1),
(4, '2021-08-09 14:49:43', '2021-08-09 14:49:43', 1, NULL, 4, 'EGWAGA', 'RUDO', 'CHECHEMI', 'ZUMO', 'ADHI', 'AMADOL', 'ELIGIBLE', 'ENGINEER', 'IPS', '977', '23080', '977-31-23070', '977-31-23071', 'ZA@gielab.com', 'ISABELA', 'GUMI', 'AMADOL', 'ELIGIBLE', 'HOME MOTHER', 'IPS', '977', '23080', '977-31-23072', '973-31-23072', 'IG@gielab.com', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gielab.com', '$2y$10$VMESlj8xWiutvK/bEU0so.AqM90Im2rxC7yalitTGM9Y4epOpfJcG', '2021-09-01 21:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-08 09:20:26', '2021-08-08 09:20:26', 1, 1, 'Cash', 1),
(2, '2021-08-08 09:20:26', '2021-08-08 09:20:26', 1, 1, 'Bank', 1),
(3, '2021-08-08 09:20:26', '2021-08-11 07:25:40', 1, 1, 'Mobile Payment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, '2021-08-10 14:06:45', 'Stripe', 'stripe', 'https://stripe.com', '{\"Publishable_Key\":null,\"Secret_Key\":null}', 1),
(2, NULL, '2021-08-10 14:06:32', 'Instamojo', 'instamojo', 'https://www.instamojo.com', '{\"API_KEY\":\"\",\"AUTH_TOKEN\":\"\"}', 0),
(3, NULL, '2021-08-10 14:06:32', 'PayUMoney', 'payumoney', 'https://www.payumoney.com', '{\"Merchant_Key\":\"\",\"Merchant_Salt\":\"\",\"Auth_Header\":\"\"}', 0),
(4, NULL, '2021-08-10 14:06:32', 'RozorPay', 'rozorpay', 'https://razorpay.com', '{\"Key\":\"\",\"Secret\":\"\"}', 0),
(5, NULL, '2021-08-10 14:06:32', 'PayStack', 'paystack', 'https://paystack.co', '{\"publicKey\":\"\",\"secretKey\":\"\",\"merchantEmail\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_heads`
--

CREATE TABLE `payroll_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_heads`
--

INSERT INTO `payroll_heads` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `slug`, `status`) VALUES
(3, '2021-08-11 07:50:20', '2021-08-11 07:50:20', 1, NULL, 'MONTHLY SALARY', 'MONTHLY-SALARY', 1),
(4, '2021-08-11 07:50:48', '2021-08-11 07:50:48', 1, NULL, 'ALLOWANCE', 'ALLOWANCE', 1),
(5, '2021-09-01 19:03:20', '2021-09-01 19:03:20', 1, NULL, 'DEDUCTION', 'DEDUCTION', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_masters`
--

CREATE TABLE `payroll_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `tag_line` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payroll_head` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_head` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin Setup Permission', 'super-admin-index', 'Super Admin Setup Permission', 'Super Admin Setup Permission', 1, '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(2, 'Menu', 'expand-action-menu', 'Expand Nav Menu', 'Expand Nav Menu', 0, '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(3, 'Menu', 'admin-control', 'Admin Control', 'Admin Control Menu', 0, '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(4, 'Menu', 'dashboard', 'Dashboard', 'Dashboard Menu', 0, '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(5, 'Menu', 'front-office', 'Front Office', 'Front Office Menu', 0, '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(6, 'Menu', 'student-staff', 'Student-Staff', 'Student-Staff Menu', 0, '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(7, 'Menu', 'account', 'Account', 'Account Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(8, 'Menu', 'inventory', 'Inventory', 'Inventory Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(9, 'Menu', 'library', 'Library', 'Libaray Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(10, 'Menu', 'attendance', 'Attendance', 'Attendance Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(11, 'Menu', 'examination', 'Examination', 'Examination Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(12, 'Menu', 'certificate', 'Certificate', 'Certificate Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(13, 'Menu', 'hostel', 'Hostel', 'Hostel Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(14, 'Menu', 'transport', 'Transport', 'Transport Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(15, 'Menu', 'assignment', 'Assignment', 'Assignment Menu', 0, '2021-08-08 09:19:08', '2021-08-08 09:19:08'),
(16, 'Menu', 'download', 'Download', 'Download Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(17, 'Menu', 'meeting', 'Meeting', 'Meeting Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(18, 'Menu', 'report', 'Report', 'Report Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(19, 'Menu', 'alert-center', 'Alert Center', 'Alert Center Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(20, 'Menu', 'academic', 'Academic Setup', 'Academic Setup Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(21, 'Menu', 'help', 'Help', 'Help Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(22, 'Student Menu', 'student-dashboard', 'Dashboard', 'Dashboard Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(23, 'Student Menu', 'student-profile', 'Profile', 'Profile Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(24, 'Student Menu', 'student-profile-edit', 'Profile Edit', 'Profile Edit Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(25, 'Student Menu', 'student-fees', 'Fees', 'Fees Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(26, 'Student Menu', 'student-library', 'Library', 'Library Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(27, 'Student Menu', 'student-attendance', 'Attendance', 'Attendance Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(28, 'Student Menu', 'student-exam', 'Exam', 'Exam Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(29, 'Student Menu', 'student-hostel', 'Hostel', 'Hostel Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(30, 'Student Menu', 'student-transport', 'Transport', 'Transport Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(31, 'Student Menu', 'student-course', 'Course', 'Course Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(32, 'Student Menu', 'student-notice', 'Notice', 'Notice Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(33, 'Student Menu', 'student-download', 'Download', 'Download Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(34, 'Student Menu', 'student-assignment', 'Assignment', 'Assignment Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(35, 'Student Menu', 'student-meeting', 'Meeting', 'Meeting Student Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(36, 'Guardian Menu', 'guardian-dashboard', 'Dashboard', 'Dashboard Guardian Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(37, 'Guardian Menu', 'guardian-profile-edit', 'Profile Edit', 'Profile Edit Guardian Menu', 0, '2021-08-08 09:19:09', '2021-08-08 09:19:09'),
(38, 'Guardian Menu', 'guardian-notice', 'Notice', 'Notice Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(39, 'Guardian Menu', 'guardian-student-list', 'Student List', 'Student List Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(40, 'Guardian Menu', 'guardian-student-profile', 'Student Profile', 'Student Profile Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(41, 'Guardian Menu', 'guardian-student-fees', 'Fees', 'Fees Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(42, 'Guardian Menu', 'guardian-student-library', 'Library', 'Library Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(43, 'Guardian Menu', 'guardian-student-attendance', 'Attendance', 'Attendance Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(44, 'Guardian Menu', 'guardian-student-hostel', 'Hostel', 'Hostel Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(45, 'Guardian Menu', 'guardian-student-transport', 'Transport', 'Transport Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(46, 'Guardian Menu', 'guardian-student-course', 'Course', 'Course Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(47, 'Guardian Menu', 'guardian-student-download', 'Download', 'Download Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(48, 'Guardian Menu', 'guardian-student-exam', 'Exam', 'Exam Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(49, 'Guardian Menu', 'guardian-student-assignment', 'Assignment', 'Assignment Guardian Menu', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(50, 'Super Suit', 'super-suit', 'Super Suit', 'Super Suit', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(51, 'User Activity', 'user-activity-index', 'Index', 'User Activity Index', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(52, 'User Activity', 'user-activity-delete', 'Delete', 'Delete User Activity', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(53, 'User Activity', 'user-activity-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Activity Bulk Action', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(54, 'Role', 'role-index', 'Index', 'Role Index', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(55, 'Role', 'role-add', 'Add', 'Role Add', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(56, 'Role', 'role-view', 'View', 'View Role', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(57, 'Role', 'role-edit', 'Edit', 'Edit Role', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(58, 'Role', 'role-delete', 'Delete', 'Delete Role', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(59, 'User', 'user-index', 'Index', 'User Index', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(60, 'User', 'user-add', 'Add', 'User Add', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(61, 'User', 'user-edit', 'Edit', 'Edit User', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(62, 'User', 'user-delete', 'Delete', 'Delete User', 0, '2021-08-08 09:19:10', '2021-08-08 09:19:10'),
(63, 'User', 'user-active', 'Active', 'Active User', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(64, 'User', 'user-in-active', 'In-Active', 'In-Active User', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(65, 'User', 'user-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Bulk Action', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(66, 'General Setting', 'general-setting-index', 'Index', 'General Setting Index', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(67, 'General Setting', 'general-setting-add', 'Add', 'General Setting Add', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(68, 'General Setting', 'general-setting-edit', 'Edit', 'Edit General Setting', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(69, 'Alert Setting', 'alert-setting-index', 'Index', 'Alert Setting Index', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(70, 'Alert Setting', 'alert-setting-add', 'Add', 'Alert Setting Add', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(71, 'Alert Setting', 'alert-setting-edit', 'Edit', 'Edit Alert Setting', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(72, 'SMS Setting', 'sms-setting-index', 'Index', 'SMS Setting Index', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(73, 'SMS Setting', 'sms-setting-add', 'Add', 'SMS Setting Add', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(74, 'SMS Setting', 'sms-setting-edit', 'Edit', 'Edit SMS Setting', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(75, 'SMS Setting', 'sms-setting-active', 'Active', 'Active SMS', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(76, 'SMS Setting', 'sms-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(77, 'Email Setting', 'email-setting-index', 'Index', 'Email Setting Index', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(78, 'Email Setting', 'email-setting-add', 'Add', 'Email Setting Add', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(79, 'Email Setting', 'email-setting-edit', 'Edit', 'Edit Email Setting', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(80, 'Email Setting', 'email-setting-status-change', 'Status', 'Change Status', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(81, 'Payment Gateway Setting', 'payment-gateway-setting-index', 'Index', 'Payment Gateway Setting Index', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(82, 'Payment Gateway Setting', 'payment-gateway-setting-add', 'Add', 'Payment Gateway Setting Add', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(83, 'Payment Gateway Setting', 'payment-gateway-setting-edit', 'Edit', 'Edit Payment Gateway Setting', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(84, 'Payment Gateway Setting', 'payment-gateway-active', 'Active', 'Active Payment Gateway', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(85, 'Payment Gateway Setting', 'payment-gateway-in-active', 'In-Active', 'In-Active Payment Gateway', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(86, 'Meeting Setting', 'meeting-setting-index', 'Index', 'Meeting Setting Index', 0, '2021-08-08 09:19:11', '2021-08-08 09:19:11'),
(87, 'Meeting Setting', 'meeting-setting-add', 'Add', 'Meeting Setting Add', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(88, 'Meeting Setting', 'meeting-setting-edit', 'Edit', 'Edit Meeting Setting', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(89, 'Meeting Setting', 'meeting-setting-active', 'Active', 'Active SMS', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(90, 'Meeting Setting', 'meeting-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(91, 'Academic Management Permission', 'academic-index', 'Academic Permission', 'Academic Permission', 1, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(92, 'Faculty', 'faculty-index', 'Index', 'Faculty Index', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(93, 'Faculty', 'faculty-add', 'Add', 'Faculty Add', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(94, 'Faculty', 'faculty-edit', 'Edit', 'Edit Faculty', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(95, 'Faculty', 'faculty-delete', 'Delete', 'Delete Faculty', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(96, 'Faculty', 'faculty-active', 'Active', 'Active Faculty', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(97, 'Faculty', 'faculty-in-active', 'In-Active', 'In-Active Faculty', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(98, 'Faculty', 'faculty-bulk-action', 'Bulk(Active,InActive,Delete)', 'Faculty Bulk Action', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(99, 'Semester', 'semester-index', 'Index', 'Semester Index', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(100, 'Semester', 'semester-add', 'Add', 'Semester Add', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(101, 'Semester', 'semester-edit', 'Edit', 'Edit Semester', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(102, 'Semester', 'semester-delete', 'Delete', 'Delete Semester', 0, '2021-08-08 09:19:12', '2021-08-08 09:19:12'),
(103, 'Semester', 'semester-active', 'Active', 'Active Semester', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(104, 'Semester', 'semester-in-active', 'In-Active', 'In-Active Semester', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(105, 'Semester', 'semester-bulk-action', 'Bulk(Active,InActive,Delete)', 'Semester Bulk Action', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(106, 'Student Batch', 'student-batch-index', 'Index', 'Student Batch Index', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(107, 'Student Batch', 'student-batch-add', 'Add', 'Student Batch Add', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(108, 'Student Batch', 'student-batch-edit', 'Edit', 'Edit Student Batch', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(109, 'Student Batch', 'student-batch-delete', 'Delete', 'Delete Student Batch', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(110, 'Student Batch', 'student-batch-active', 'Active', 'Active Student Batch', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(111, 'Student Batch', 'student-batch-in-active', 'In-Active', 'In-Active Student Batch', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(112, 'Student Batch', 'student-batch-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(113, 'Grading', 'grading-index', 'Index', 'Grading Index', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(114, 'Grading', 'grading-add', 'Add', 'Grading Add', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(115, 'Grading', 'grading-edit', 'Edit', 'Edit Grading', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(116, 'Grading', 'grading-delete', 'Delete', 'Delete Grading', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(117, 'Grading', 'grading-active', 'Active', 'Active Grading', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(118, 'Grading', 'grading-in-active', 'In-Active', 'In-Active Grading', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(119, 'Grading', 'grading-bulk-action', 'Bulk(Active,InActive,Delete)', 'Grading Bulk Action', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(120, 'Subject / Course', 'subject-index', 'Index', 'Subject / Course Index', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(121, 'Subject / Course', 'subject-add', 'Add', 'Subject / Course Add', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(122, 'Subject / Course', 'subject-edit', 'Edit', 'Edit Subject / Course', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(123, 'Subject / Course', 'subject-delete', 'Delete', 'Delete Subject / Course', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(124, 'Subject / Course', 'subject-active', 'Active', 'Active Subject / Course', 0, '2021-08-08 09:19:13', '2021-08-08 09:19:13'),
(125, 'Subject / Course', 'subject-in-active', 'In-Active', 'In-Active Subject / Course', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(126, 'Subject / Course', 'subject-bulk-action', 'Bulk(Active,InActive,Delete)', 'Subject / Course Bulk Action', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(127, 'Student Status', 'student-status-index', 'Index', 'Student Status Index', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(128, 'Student Status', 'student-status-add', 'Add', 'Student Status Add', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(129, 'Student Status', 'student-status-edit', 'Edit', 'Edit Student Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(130, 'Student Status', 'student-status-delete', 'Delete', 'Delete Student Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(131, 'Student Status', 'student-status-active', 'Active', 'Active Student Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(132, 'Student Status', 'student-status-in-active', 'In-Active', 'In-Active Student Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(133, 'Student Status', 'student-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(134, 'Book Status', 'book-status-index', 'Index', 'Book Status Index', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(135, 'Book Status', 'book-status-add', 'Add', 'Book Status Add', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(136, 'Book Status', 'book-status-edit', 'Edit', 'Edit Book Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(137, 'Book Status', 'book-status-delete', 'Delete', 'Delete Book Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(138, 'Book Status', 'book-status-active', 'Active', 'Active Book Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(139, 'Book Status', 'book-status-in-active', 'In-Active', 'In-Active Book Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(140, 'Book Status', 'book-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Status Bulk Action', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(141, 'Bed Status', 'bed-status-index', 'Index', 'Bed Status Index', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(142, 'Bed Status', 'bed-status-add', 'Add', 'Bed Status Add', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(143, 'Bed Status', 'bed-status-edit', 'Edit', 'Edit Bed Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(144, 'Bed Status', 'bed-status-delete', 'Delete', 'Delete Bed Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(145, 'Bed Status', 'bed-status-active', 'Active', 'Active Bed Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(146, 'Bed Status', 'bed-status-in-active', 'In-Active', 'In-Active Bed Status', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(147, 'Bed Status', 'bed-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Status Bulk Action', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(148, 'Year', 'year-index', 'Index', 'Year Index', 0, '2021-08-08 09:19:14', '2021-08-08 09:19:14'),
(149, 'Year', 'year-add', 'Add', 'Year Add', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(150, 'Year', 'year-edit', 'Edit', 'Edit Year', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(151, 'Year', 'year-delete', 'Delete', 'Delete Year', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(152, 'Year', 'year-active', 'Active', 'Active Year', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(153, 'Year', 'year-in-active', 'In-Active', 'In-Active Year', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(154, 'Year', 'year-bulk-action', 'Bulk(Active,InActive,Delete)', 'Year Bulk Action', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(155, 'Year', 'year-active-status', 'Make Active', 'Year Make Active', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(156, 'Month', 'month-index', 'Index', 'Month Index', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(157, 'Month', 'month-add', 'Add', 'Month Add', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(158, 'Month', 'month-edit', 'Edit', 'Edit Month', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(159, 'Month', 'month-delete', 'Delete', 'Delete Month', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(160, 'Month', 'month-active', 'Active', 'Active Month', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(161, 'Month', 'month-in-active', 'In-Active', 'In-Active Month', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(162, 'Month', 'month-bulk-action', 'Bulk(Active,InActive,Delete)', 'Month Bulk Action', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(163, 'Day', 'day-index', 'Index', 'Day Index', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(164, 'Day', 'day-add', 'Add', 'Day Add', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(165, 'Day', 'day-edit', 'Edit', 'Edit Day', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(166, 'Day', 'day-delete', 'Delete', 'Delete Day', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(167, 'Day', 'day-active', 'Active', 'Active Day', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(168, 'Day', 'day-in-active', 'In-Active', 'In-Active Day', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(169, 'Day', 'day-bulk-action', 'Bulk(Active,InActive,Delete)', 'Day Bulk Action', 0, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(170, 'Front Office Permission', 'front-office-index', 'Front Office Management', 'Front Office Management', 1, '2021-08-08 09:19:15', '2021-08-08 09:19:15'),
(171, 'Postal Exchange', 'postal-exchange-index', 'Index', 'Postal Exchange Index', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(172, 'Postal Exchange', 'postal-exchange-add', 'Add', 'Postal Exchange Add', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(173, 'Postal Exchange', 'postal-exchange-edit', 'Edit', 'Edit Postal Exchange', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(174, 'Postal Exchange', 'postal-exchange-delete', 'Delete', 'Delete Postal Exchange', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(175, 'Postal Exchange', 'postal-exchange-bulk-action', 'Bulk(Active,InActive,Delete)', 'Postal Exchange Bulk Action', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(176, 'Exchange Type', 'postal-exchange-type-index', 'Index', 'Exchange Type Index', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(177, 'Exchange Type', 'postal-exchange-type-add', 'Add', 'Exchange Type Add', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(178, 'Exchange Type', 'postal-exchange-type-edit', 'Edit', 'Edit Exchange Type', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(179, 'Exchange Type', 'postal-exchange-type-active', 'Active', 'Active Exchange Type', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(180, 'Exchange Type', 'postal-exchange-type-in-active', 'In-Active', 'In-Active Exchange Type', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(181, 'Exchange Type', 'postal-exchange-type-delete', 'Delete', 'Delete Exchange Type', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(182, 'Exchange Type', 'postal-exchange-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exchange Type Bulk Action', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(183, 'Visitor Log', 'visitor-index', 'Index', 'Visitor Log Index', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(184, 'Visitor Log', 'visitor-add', 'Add', 'Visitor Log Add', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(185, 'Visitor Log', 'visitor-edit', 'Edit', 'Edit Visitor Log', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(186, 'Visitor Log', 'visitor-active', 'Active', 'Active Visitor Log', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(187, 'Visitor Log', 'visitor-in-active', 'In-Active', 'In-Active Visitor Log', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(188, 'Visitor Log', 'visitor-delete', 'Delete', 'Delete Visitor Log', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(189, 'Visitor Log', 'visitor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visitor Log Bulk Action', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(190, 'Visit Purpose', 'visitor-purpose-index', 'Index', 'Visit Purpose Index', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(191, 'Visit Purpose', 'visitor-purpose-add', 'Add', 'Visit Purpose Add', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(192, 'Visit Purpose', 'visitor-purpose-edit', 'Edit', 'Edit Visit Purpose', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(193, 'Visit Purpose', 'visitor-purpose-active', 'Active', 'Active Visit Purpose', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(194, 'Visit Purpose', 'visitor-purpose-in-active', 'In-Active', 'In-Active Visit Purpose', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(195, 'Visit Purpose', 'visitor-purpose-delete', 'Delete', 'Delete Visit Purpose', 0, '2021-08-08 09:19:16', '2021-08-08 09:19:16'),
(196, 'Visit Purpose', 'visitor-purpose-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visit Purpose Bulk Action', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(197, 'Student Management Permission', 'student-management-index', 'Student Management', 'Student Management', 1, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(198, 'Student', 'student-index', 'Index', 'Student Index', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(199, 'Student', 'student-registration', 'Registration', 'Student Registration', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(200, 'Student', 'student-view', 'View', 'View Student', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(201, 'Student', 'student-edit', 'Edit', 'Edit Student', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(202, 'Student', 'student-delete', 'Delete', 'Delete Student', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(203, 'Student', 'student-active', 'Active', 'Active Student', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(204, 'Student', 'student-in-active', 'In-Active', 'In-Active Student', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(205, 'Student', 'student-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Bulk Action', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(206, 'Student', 'student-delete-academic-info', 'Delete Academic Info', 'Student Delete Academic Info', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(207, 'Student', 'student-transfer', 'Transfer', 'Transfer Student', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(208, 'Student Document', 'student-document-index', 'Index', 'Student Document Index', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(209, 'Student Document', 'student-document-add', 'Add', 'Student Document Add', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(210, 'Student Document', 'student-document-edit', 'Edit', 'Edit Student Document', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(211, 'Student Document', 'student-document-delete', 'Delete', 'Delete Student Document', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(212, 'Student Document', 'student-document-active', 'Active', 'Active Student Document', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(213, 'Student Document', 'student-document-in-active', 'In-Active', 'In-Active Student Document', 0, '2021-08-08 09:19:17', '2021-08-08 09:19:17'),
(214, 'Student Document', 'student-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Document Bulk Action', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(215, 'Student Note', 'student-note-index', 'Index', 'Student Note Index', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(216, 'Student Note', 'student-note-add', 'Add', 'Student Note Add', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(217, 'Student Note', 'student-note-edit', 'Edit', 'Edit Student Note', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(218, 'Student Note', 'student-note-delete', 'Delete', 'Delete Student Note', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(219, 'Student Note', 'student-note-active', 'Active', 'Active Student Note', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(220, 'Student Note', 'student-note-in-active', 'In-Active', 'In-Active Student Note', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(221, 'Student Note', 'student-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Note Bulk Action', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(222, 'Report', 'student-report', 'Student', 'Student Report', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(223, 'Guardian Management Permission', 'guardian-management-index', 'Guardian Management', 'Guardian Management', 1, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(224, 'Guardian', 'guardian-index', 'Index', 'Guardian Index', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(225, 'Guardian', 'guardian-registration', 'Registration', 'Guardian Registration', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(226, 'Guardian', 'guardian-view', 'View', 'View Guardian', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(227, 'Guardian', 'guardian-edit', 'Edit', 'Edit Guardian', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(228, 'Guardian', 'guardian-delete', 'Delete', 'Delete Guardian', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(229, 'Guardian', 'guardian-active', 'Active', 'Active Guardian', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(230, 'Guardian', 'guardian-in-active', 'In-Active', 'In-Active Guardian', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(231, 'Guardian', 'guardian-bulk-action', 'Bulk(Active,InActive,Delete)', 'Guardian Bulk Action', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(232, 'Guardian', 'guardian-link', 'Link Student', 'Guardian Link Student', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(233, 'Guardian', 'guardian-unlink', 'UnLink Student', 'Guardian UnLink Student', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(234, 'Staff Management Permission', 'staff-management-index', 'Staff Management', 'Staff Management', 1, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(235, 'Staff', 'staff-index', 'Index', 'Staff Index', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(236, 'Staff', 'staff-add', 'Add', 'Staff Registration', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(237, 'Staff', 'staff-view', 'View', 'View Staff', 0, '2021-08-08 09:19:18', '2021-08-08 09:19:18'),
(238, 'Staff', 'staff-edit', 'Edit', 'Edit Staff', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(239, 'Staff', 'staff-delete', 'Delete', 'Delete Staff', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(240, 'Staff', 'staff-active', 'Active', 'Active Staff', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(241, 'Staff', 'staff-in-active', 'In-Active', 'In-Active Staff', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(242, 'Staff', 'staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(243, 'Staff Document', 'staff-document-index', 'Index', 'Staff Document Index', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(244, 'Staff Document', 'staff-document-add', 'Add', 'Staff Document Add', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(245, 'Staff Document', 'staff-document-edit', 'Edit', 'Edit Staff Document', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(246, 'Staff Document', 'staff-document-delete', 'Delete', 'Delete Staff Document', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(247, 'Staff Document', 'staff-document-active', 'Active', 'Active Staff Document', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(248, 'Staff Document', 'staff-document-in-active', 'In-Active', 'In-Active Staff Document', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(249, 'Staff Document', 'staff-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Document Bulk Action', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(250, 'Staff Note', 'staff-note-index', 'Index', 'Staff Note Index', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(251, 'Staff Note', 'staff-note-add', 'Add', 'Staff Note Add', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(252, 'Staff Note', 'staff-note-edit', 'Edit', 'Edit Staff Note', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(253, 'Staff Note', 'staff-note-delete', 'Delete', 'Delete Staff Note', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(254, 'Staff Note', 'staff-note-active', 'Active', 'Active Staff Note', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(255, 'Staff Note', 'staff-note-in-active', 'In-Active', 'In-Active Staff Note', 0, '2021-08-08 09:19:19', '2021-08-08 09:19:19'),
(256, 'Staff Note', 'staff-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Note Bulk Action', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(257, 'Staff Designation', 'staff-designation-index', 'Index', 'Staff Designation Index', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(258, 'Staff Designation', 'staff-designation-add', 'Add', 'Staff Designation Add', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(259, 'Staff Designation', 'staff-designation-edit', 'Edit', 'Edit Staff Designation', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(260, 'Staff Designation', 'staff-designation-delete', 'Delete', 'Delete Staff Designation', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(261, 'Staff Designation', 'staff-designation-active', 'Active', 'Active Staff Designation', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(262, 'Staff Designation', 'staff-designation-in-active', 'In-Active', 'In-Active Staff Designation', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(263, 'Staff Designation', 'staff-designation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Designation Bulk Action', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(264, 'Report', 'staff-report', 'Staff', 'Staff Report', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(265, 'Account Management Permission', 'account-management-index', 'Account Management', 'Account Management', 1, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(266, 'Fees', 'fees-index', 'Index', 'Student Fees Index', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(267, 'Fees', 'fees-balance', 'Balance', 'Fees Balance', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(268, 'Fees Head', 'fees-head-index', 'Index', 'Fees Head Index', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(269, 'Fees Head', 'fees-head-add', 'Add', 'Fees Head Add', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(270, 'Fees Head', 'fees-head-edit', 'Edit', 'Edit Fees Head', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(271, 'Fees Head', 'fees-head-delete', 'Delete', 'Delete Fees Head', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(272, 'Fees Head', 'fees-head-active', 'Active', 'Active Fees Head', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(273, 'Fees Head', 'fees-head-in-active', 'In-Active', 'In-Active Fees Head', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(274, 'Fees Head', 'fees-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Head Bulk Action', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(275, 'Fees Master', 'fees-master-index', 'Index', 'Fees Master Index', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(276, 'Fees Master', 'fees-master-add', 'Add', 'Fees Master Add', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(277, 'Fees Master', 'fees-master-edit', 'Edit', 'Edit Fees Master', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(278, 'Fees Master', 'fees-master-delete', 'Delete', 'Delete Fees Master', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(279, 'Fees Master', 'fees-master-active', 'Active', 'Active Fees Master', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(280, 'Fees Master', 'fees-master-in-active', 'In-Active', 'In-Active Fees Master', 0, '2021-08-08 09:19:20', '2021-08-08 09:19:20'),
(281, 'Fees Master', 'fees-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Master Bulk Action', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(282, 'Quick Fee Receive', 'fees-quick-receive-add', 'Collect', 'Quick Fee Receive Index', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(283, 'Fees Collection', 'fees-collection-index', 'Index', 'Fees Collection Index', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(284, 'Fees Collection', 'fees-collection-add', 'Add', 'Fees Collection Add', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(285, 'Fees Collection', 'fees-collection-view', 'View', 'View Fees Collection', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(286, 'Fees Collection', 'fees-collection-delete', 'Delete', 'Delete Fees Collection', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(287, 'Online Fee Payment', 'fees-online-payment-pay', 'Pay', 'Pay Online Fee', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(288, 'Online Fee Payment', 'fees-online-payment-index', 'Index', 'Index Online Fee Payment', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(289, 'Online Fee Payment', 'fees-online-payment-view', 'View', 'View Online Fee Payment', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(290, 'Online Fee Payment', 'fees-online-payment-verify', 'Verify', 'Verify Online Fee Payment', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(291, 'Payroll', 'payroll-index', 'Index', 'Staff Payroll Index', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(292, 'Payroll', 'payroll-balance', 'Balance', 'Payroll Balance', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(293, 'Payroll Head', 'payroll-head-index', 'Index', 'Payroll Head Index', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(294, 'Payroll Head', 'payroll-head-add', 'Add', 'Payroll Head Add', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(295, 'Payroll Head', 'payroll-head-edit', 'Edit', 'Edit Payroll Head', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(296, 'Payroll Head', 'payroll-head-delete', 'Delete', 'Delete Payroll Head', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(297, 'Payroll Head', 'payroll-head-active', 'Active', 'Active Payroll Head', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(298, 'Payroll Head', 'payroll-head-in-active', 'In-Active', 'In-Active Payroll Head', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(299, 'Payroll Head', 'payroll-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(300, 'Payroll Master', 'payroll-master-index', 'Index', 'Payroll Master Index', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(301, 'Payroll Master', 'payroll-master-add', 'Add', 'Payroll Master Add', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(302, 'Payroll Master', 'payroll-master-edit', 'Edit', 'Edit Payroll Master', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(303, 'Payroll Master', 'payroll-master-delete', 'Delete', 'Delete Payroll Master', 0, '2021-08-08 09:19:21', '2021-08-08 09:19:21'),
(304, 'Payroll Master', 'payroll-master-active', 'Active', 'Active Payroll Master', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(305, 'Payroll Master', 'payroll-master-in-active', 'In-Active', 'In-Active Payroll Master', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(306, 'Payroll Master', 'payroll-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Master Bulk Action', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(307, 'Salary Pay', 'salary-payment-index', 'Index', 'Salary Pay Index', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(308, 'Salary Pay', 'salary-payment-add', 'Add', 'Salary Pay Add', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(309, 'Salary Pay', 'salary-payment-view', 'View', 'View Salary Pay', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(310, 'Salary Pay', 'salary-payment-delete', 'Delete', 'Delete Salary Pay', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(311, 'Account Group', 'account-group-index', 'Index', 'Account Group Index', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(312, 'Account Group', 'account-group-add', 'Add', 'Account Group Add', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(313, 'Account Group', 'account-group-edit', 'Edit', 'Edit Account Group', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(314, 'Account Group', 'account-group-delete', 'Delete', 'Delete Account Group', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(315, 'Account Group', 'account-group-active', 'Active', 'Active Account Group', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(316, 'Account Group', 'account-group-in-active', 'In-Active', 'In-Active Account Group', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(317, 'Account Group', 'account-group-bulk-action', 'Bulk(Active,InActive,Delete)', 'Account Group Bulk Action', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(318, 'Account Group', 'account-group-chart-of-account', 'Chart of Account', 'Account Group Chart of Account', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(319, 'Transaction Head', 'transaction-head-index', 'Index', 'Transaction Head Index', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(320, 'Transaction Head', 'transaction-head-add', 'Add', 'Transaction Head Add', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(321, 'Transaction Head', 'transaction-head-edit', 'Edit', 'Edit Transaction Head', 0, '2021-08-08 09:19:22', '2021-08-08 09:19:22'),
(322, 'Transaction Head', 'transaction-head-delete', 'Delete', 'Delete Transaction Head', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(323, 'Transaction Head', 'transaction-head-active', 'Active', 'Active Transaction Head', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(324, 'Transaction Head', 'transaction-head-in-active', 'In-Active', 'In-Active Transaction Head', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(325, 'Transaction Head', 'transaction-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(326, 'Transaction', 'transaction-index', 'Index', 'Transaction Index', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(327, 'Transaction', 'transaction-add', 'Add', 'Transaction Add', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(328, 'Transaction', 'transaction-edit', 'Edit', 'Edit Transaction', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(329, 'Transaction', 'transaction-delete', 'Delete', 'Delete Transaction', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(330, 'Transaction', 'transaction-active', 'Active', 'Active Transaction', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(331, 'Transaction', 'transaction-in-active', 'In-Active', 'In-Active Transaction', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(332, 'Transaction', 'transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transaction Bulk Action', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(333, 'Bank', 'bank-index', 'Index', 'Bank Index', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(334, 'Bank', 'bank-add', 'Add', 'Bank Add', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(335, 'Bank', 'bank-edit', 'Edit', 'Edit Bank', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(336, 'Bank', 'bank-view', 'View', 'View Bank', 0, '2021-08-08 09:19:23', '2021-08-08 09:19:23'),
(337, 'Bank', 'bank-delete', 'Delete', 'Delete Bank', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(338, 'Bank', 'bank-active', 'Active', 'Active Bank', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(339, 'Bank', 'bank-in-active', 'In-Active', 'In-Active Bank', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(340, 'Bank', 'bank-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(341, 'Bank Transaction', 'bank-transaction-index', 'Index', 'Bank Transaction Index', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(342, 'Bank Transaction', 'bank-transaction-add', 'Add', 'Bank Transaction Add', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(343, 'Bank Transaction', 'bank-transaction-delete', 'Delete', 'Delete Bank Transaction', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(344, 'Bank Transaction', 'bank-transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Transaction Bulk Action', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(345, 'Account Print', 'fee-print-master', 'Master Slip', 'Fee Master Slip', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(346, 'Account Print', 'fee-print-collection', 'Collection', 'Print Fee Collection', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(347, 'Account Print', 'fee-print-today-receipt', 'Today Short Receipt', 'Print Today Short Receipt', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(348, 'Account Print', 'fee-print-today-detail-receipt', 'Today Detail Receipt', 'Print Today Detail Receip', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(349, 'Account Print', 'fee-print-student-ledger', 'Student Ledger', 'Print Student Ledger', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(350, 'Account Print', 'fee-print-student-due', 'Due Short Slip', 'Print Due Short Slip', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(351, 'Account Print', 'fee-print-student-due-detail', 'Due Detail Slip', 'Print Due Detail Slip', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(352, 'Account Print', 'fee-print-bulk-due-slip', 'Bulk Due Short Slip', 'Print Bulk Due Short Slip', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(353, 'Account Print', 'fee-print-bulk-due-detail-slip', 'Bulk Due Detail SLip', 'Print Bulk Due Detail SLip', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(354, 'Account Report', 'report-cash-book', 'Cashbook', 'Cashbook Detail', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(355, 'Account Report', 'report-fee-collection', 'Fee Collection', 'Fee Collection Detail', 0, '2021-08-08 09:19:24', '2021-08-08 09:19:24'),
(356, 'Account Report', 'report-fee-collection-head', 'Fee Collection Head', 'Fee Collection Head Detail', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(357, 'Account Report', 'report.fee-online-payment', 'Online Payment', 'Fee Online Payment', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(358, 'Account Report', 'report.balance-fee', 'Fee Balance Statement', 'Fee Balance Statement', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(359, 'Account Report', 'transaction-head-view', 'Statement of Ledger', 'View Transaction Head', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(360, 'Account Report', 'transaction-head-balance-statement', 'Ledger Balance Statement', 'View Transaction Head', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(361, 'Inventory Management Permission', 'inventory-index', 'Inventory Management', 'Inventory Management', 1, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(362, 'Assets', 'assets-index', 'Index', 'Assets Index', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(363, 'Assets', 'assets-add', 'Add', 'Assets Add', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(364, 'Assets', 'assets-edit', 'Edit', 'Edit Assets', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(365, 'Assets', 'assets-view', 'View', 'View Assets', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(366, 'Assets', 'assets-delete', 'Delete', 'Delete Assets', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(367, 'Assets', 'assets-active', 'Active', 'Active Assets', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(368, 'Assets', 'assets-in-active', 'In-Active', 'In-Active Assets', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(369, 'Assets', 'assets-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(370, 'SemesterAssets', 'sem-assets-index', 'Index', 'SemesterAssets Index', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(371, 'SemesterAssets', 'sem-assets-add', 'Add', 'SemesterAssets Add', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(372, 'SemesterAssets', 'sem-assets-delete', 'Delete', 'Delete SemesterAssets', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(373, 'Product', 'product-index', 'Index', 'Product Index', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(374, 'Product', 'product-add', 'Add', 'Product Add', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(375, 'Product', 'product-view', 'View', 'Product View', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(376, 'Product', 'product-edit', 'Edit', 'Edit Product', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(377, 'Product', 'product-delete', 'Delete', 'Delete Product', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(378, 'Product', 'product-active', 'Active', 'Active Product', 0, '2021-08-08 09:19:25', '2021-08-08 09:19:25'),
(379, 'Product', 'product-in-active', 'In-Active', 'In-Active Product', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(380, 'Product', 'product-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Bulk Action', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(381, 'Product Category', 'product-category-index', 'Index', 'Product Category Index', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(382, 'Product Category', 'product-category-add', 'Add', 'Product Category Add', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(383, 'Product Category', 'product-category-edit', 'Edit', 'Edit Product Category', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(384, 'Product Category', 'product-category-delete', 'Delete', 'Delete Product Category', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(385, 'Product Category', 'product-category-active', 'Active', 'Active Product Category', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(386, 'Product Category', 'product-category-in-active', 'In-Active', 'In-Active Product Category', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(387, 'Product Category', 'product-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Category Bulk Action', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(388, 'Customer', 'customer-index', 'Index', 'Customer Index', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(389, 'Customer', 'customer-registration', 'Registration', 'Customer Registration', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(390, 'Customer', 'customer-view', 'View', 'View Customer', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(391, 'Customer', 'customer-edit', 'Edit', 'Edit Customer', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(392, 'Customer', 'customer-delete', 'Delete', 'Delete Customer', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(393, 'Customer', 'customer-active', 'Active', 'Active Customer', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(394, 'Customer', 'customer-in-active', 'In-Active', 'In-Active Customer', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(395, 'Customer', 'customer-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Bulk Action', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(396, 'Customer', 'customer-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(397, 'Customer Document', 'customer-document-index', 'Index', 'Customer Document Index', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(398, 'Customer Document', 'customer-document-add', 'Add', 'Customer Document Add', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(399, 'Customer Document', 'customer-document-edit', 'Edit', 'Edit Customer Document', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(400, 'Customer Document', 'customer-document-delete', 'Delete', 'Delete Customer Document', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(401, 'Customer Document', 'customer-document-active', 'Active', 'Active Customer Document', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(402, 'Customer Document', 'customer-document-in-active', 'In-Active', 'In-Active Customer Document', 0, '2021-08-08 09:19:26', '2021-08-08 09:19:26'),
(403, 'Customer Document', 'customer-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Document Bulk Action', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(404, 'Customer Note', 'customer-note-index', 'Index', 'Customer Note Index', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(405, 'Customer Note', 'customer-note-add', 'Add', 'Customer Note Add', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(406, 'Customer Note', 'customer-note-edit', 'Edit', 'Edit Customer Note', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(407, 'Customer Note', 'customer-note-delete', 'Delete', 'Delete Customer Note', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(408, 'Customer Note', 'customer-note-active', 'Active', 'Active Customer Note', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(409, 'Customer Note', 'customer-note-in-active', 'In-Active', 'In-Active Customer Note', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(410, 'Customer Note', 'customer-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Note Bulk Action', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(411, 'Customer Status', 'customer-status-index', 'Index', 'Customer Status Index', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(412, 'Customer Status', 'customer-status-add', 'Add', 'Customer Status Add', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(413, 'Customer Status', 'customer-status-edit', 'Edit', 'Edit Customer Status', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(414, 'Customer Status', 'customer-status-delete', 'Delete', 'Delete Customer Status', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(415, 'Customer Status', 'customer-status-active', 'Active', 'Active Customer Status', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(416, 'Customer Status', 'customer-status-in-active', 'In-Active', 'In-Active Customer Status', 0, '2021-08-08 09:19:27', '2021-08-08 09:19:27'),
(417, 'Customer Status', 'customer-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Status Bulk Action', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(418, 'Vendor', 'vendor-index', 'Index', 'Vendor Index', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(419, 'Vendor', 'vendor-registration', 'Registration', 'Vendor Registration', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(420, 'Vendor', 'vendor-view', 'View', 'View Vendor', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(421, 'Vendor', 'vendor-edit', 'Edit', 'Edit Vendor', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(422, 'Vendor', 'vendor-delete', 'Delete', 'Delete Vendor', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(423, 'Vendor', 'vendor-active', 'Active', 'Active Vendor', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(424, 'Vendor', 'vendor-in-active', 'In-Active', 'In-Active Vendor', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(425, 'Vendor', 'vendor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Bulk Action', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(426, 'Vendor', 'vendor-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(427, 'Vendor Document', 'vendor-document-index', 'Index', 'Vendor Document Index', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(428, 'Vendor Document', 'vendor-document-add', 'Add', 'Vendor Document Add', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(429, 'Vendor Document', 'vendor-document-edit', 'Edit', 'Edit Vendor Document', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(430, 'Vendor Document', 'vendor-document-delete', 'Delete', 'Delete Vendor Document', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(431, 'Vendor Document', 'vendor-document-active', 'Active', 'Active Vendor Document', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(432, 'Vendor Document', 'vendor-document-in-active', 'In-Active', 'In-Active Vendor Document', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(433, 'Vendor Document', 'vendor-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Document Bulk Action', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(434, 'Vendor Note', 'vendor-note-index', 'Index', 'Vendor Note Index', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(435, 'Vendor Note', 'vendor-note-add', 'Add', 'Vendor Note Add', 0, '2021-08-08 09:19:28', '2021-08-08 09:19:28'),
(436, 'Vendor Note', 'vendor-note-edit', 'Edit', 'Edit Vendor Note', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(437, 'Vendor Note', 'vendor-note-delete', 'Delete', 'Delete Vendor Note', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(438, 'Vendor Note', 'vendor-note-active', 'Active', 'Active Vendor Note', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(439, 'Vendor Note', 'vendor-note-in-active', 'In-Active', 'In-Active Vendor Note', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(440, 'Vendor Note', 'vendor-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Note Bulk Action', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(441, 'Library Management Permission', 'library-management-index', 'Library Management', 'Library Management', 1, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(442, 'Library', 'library-index', 'Index', 'Library Index', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(443, 'Library', 'library-book-issue', 'Book Issue', 'Book Issue', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(444, 'Library', 'library-book-return', 'Book Return', 'Return Book', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(445, 'Library', 'library-return-over', 'Return Period Over', 'Return Period Over', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(446, 'Library', 'library-issue-history', 'History', 'Issue History', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(447, 'Book', 'book-index', 'Index', 'Book Index', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(448, 'Book', 'book-add', 'Add', 'Book Add', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(449, 'Book', 'book-edit', 'Edit', 'Edit Book', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(450, 'Book', 'book-view', 'View', 'View Book', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(451, 'Book', 'book-delete', 'Delete', 'Delete Book', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(452, 'Book', 'book-active', 'Active', 'Active Book', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(453, 'Book', 'book-in-active', 'In-Active', 'In-Active Book', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(454, 'Book', 'book-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Bulk Action', 0, '2021-08-08 09:19:29', '2021-08-08 09:19:29'),
(455, 'Book', 'book-add-copies', 'Add Book Copies', 'Add Book Copies', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(456, 'Book', 'book-status', 'Status', 'Book Status', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(457, 'Book', 'book-bulk-copies-delete', 'Delete Bulk Copies', 'Delete Bulk Copes', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(458, 'Book Category', 'book-category-index', 'Index', 'Book Category Index', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(459, 'Book Category', 'book-category-add', 'Add', 'Book Category Add', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(460, 'Book Category', 'book-category-edit', 'Edit', 'Edit Book Category', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(461, 'Book Category', 'book-category-delete', 'Delete', 'Delete Book Category', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(462, 'Book Category', 'book-category-active', 'Active', 'Active Book Category', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(463, 'Book Category', 'book-category-in-active', 'In-Active', 'In-Active Book Category', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(464, 'Book Category', 'book-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Category Bulk Action', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(465, 'Library Circulation', 'library-circulation-index', 'Index', 'Library Circulation Index', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(466, 'Library Circulation', 'library-circulation-add', 'Add', 'Library Circulation Add', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(467, 'Library Circulation', 'library-circulation-edit', 'Edit', 'Edit Library Circulation', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(468, 'Library Circulation', 'library-circulation-delete', 'Delete', 'Delete Library Circulation', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(469, 'Library Circulation', 'library-circulation-active', 'Active', 'Active Library Circulation', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(470, 'Library Circulation', 'library-circulation-in-active', 'In-Active', 'In-Active Library Circulation', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(471, 'Library Circulation', 'library-circulation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Circulation Bulk Action', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(472, 'Library Member', 'library-member-index', 'Index', 'Library Member Index', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(473, 'Library Member', 'library-member-add', 'Add', 'Library Member Add', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(474, 'Library Member', 'library-member-edit', 'Edit', 'Edit Library Member', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(475, 'Library Member', 'library-member-delete', 'Delete', 'Delete Library Member', 0, '2021-08-08 09:19:30', '2021-08-08 09:19:30'),
(476, 'Library Member', 'library-member-active', 'Active', 'Active Library Member', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(477, 'Library Member', 'library-member-in-active', 'In-Active', 'In-Active Library Member', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(478, 'Library Member', 'library-member-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Member Bulk Action', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(479, 'Library Member', 'library-member-staff', 'Staff Index', 'Library Member Staff', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(480, 'Library Member', 'library-member-staff-view', 'Staff View', 'Library Member Staff', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(481, 'Library Member', 'library-member-student', 'Student Index', 'Library Member Student', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(482, 'Library Member', 'library-member-student-view', 'Student View', 'Library Member Student', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(483, 'Attendance Management Permission', 'attendance-management-index', 'Attendance Management', 'Attendance Management', 1, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(484, 'Attendance Master', 'attendance-master-index', 'Index', 'Attendance Master Index', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(485, 'Attendance Master', 'attendance-master-add', 'Add', 'Attendance Master Add', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(486, 'Attendance Master', 'attendance-master-edit', 'Edit', 'Edit Attendance Master', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(487, 'Attendance Master', 'attendance-master-delete', 'Delete', 'Delete Attendance Master', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(488, 'Attendance Master', 'attendance-master-active', 'Active', 'Active Attendance Master', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(489, 'Attendance Master', 'attendance-master-in-active', 'In-Active', 'In-Active Attendance Master', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(490, 'Attendance Master', 'attendance-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Attendance Master Bulk Action', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(491, 'Student Regular Attendance', 'student-attendance-index', 'Index', 'Student Regular Attendance Index', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(492, 'Student Regular Attendance', 'student-attendance-add', 'Add', 'Student Regular Attendance Add', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(493, 'Student Regular Attendance', 'student-attendance-delete', 'Delete', 'Delete Student Regular Attendance', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(494, 'Student Regular Attendance', 'student-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Regular Attendance Bulk Action', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(495, 'Student SubjectWise Attendance', 'subject-attendance-index', 'Index', 'Student SubjectWise Attendance Index', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(496, 'Student SubjectWise Attendance', 'subject-attendance-add', 'Add', 'Student SubjectWise Attendance Add', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(497, 'Student SubjectWise Attendance', 'subject-attendance-delete', 'Delete', 'Delete Student SubjectWise Attendance', 0, '2021-08-08 09:19:31', '2021-08-08 09:19:31'),
(498, 'Student SubjectWise Attendance', 'subject-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student SubjectWise Attendance Bulk Action', 0, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(499, 'Student SubjectWise Attendance', 'subject-attendance-alert', 'Alert', 'Student SubjectWise Attendance Alert', 0, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(500, 'Staff Attendance', 'staff-attendance-index', 'Index', 'Staff Attendance Index', 0, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(501, 'Staff Attendance', 'staff-attendance-add', 'Add', 'Staff Attendance Add', 0, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(502, 'Staff Attendance', 'staff-attendance-delete', 'Delete', 'Delete Staff Attendance', 0, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(503, 'Staff Attendance', 'staff-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Attendance Bulk Action', 0, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(504, 'Exam Management Permission', 'exam-management-index', 'Exam Management', 'Exam Management', 1, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(505, 'Exam', 'exam-index', 'Index', 'Exam Index', 0, '2021-08-08 09:19:32', '2021-08-08 09:19:32'),
(506, 'Exam', 'exam-add', 'Add', 'Exam Add', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(507, 'Exam', 'exam-edit', 'Edit', 'Edit Exam', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(508, 'Exam', 'exam-delete', 'Delete', 'Delete Exam', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(509, 'Exam', 'exam-active', 'Active', 'Active Exam', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(510, 'Exam', 'exam-in-active', 'In-Active', 'In-Active Exam', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(511, 'Exam', 'exam-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exam Bulk Action', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(512, 'Exam', 'exam-admit-card', 'Admit Card', 'Exam Admit Card', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(513, 'Exam', 'exam-exam-routine', 'Routin/Schedule', 'Exam Routine/Schedule', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(514, 'Exam', 'exam-mark-ledger', 'MarkLedger', 'Exam Mark Ledger', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(515, 'Exam', 'exam-result-publish', 'Result Publish', 'Exam Result Publish', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(516, 'Exam', 'exam-result-un-publish', 'Result UnPublish', 'Exam Result UnPublish', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(517, 'Exam Schedule', 'exam-schedule-index', 'Index', 'Exam Schedule Index', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(518, 'Exam Schedule', 'exam-schedule-add', 'Add', 'Exam Schedule Add', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(519, 'Exam Schedule', 'exam-schedule-edit', 'Edit', 'Edit Exam Schedule', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(520, 'Exam Schedule', 'exam-schedule-delete', 'Delete', 'Delete Exam Schedule', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(521, 'Exam Schedule', 'exam-schedule-active', 'Active', 'Active Exam Schedule', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(522, 'Exam Schedule', 'exam-schedule-in-active', 'In-Active', 'In-Active Exam Schedule', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(523, 'Exam Mark Ledger', 'exam-mark-ledger-index', 'Index', 'Exam Mark Ledger Index', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(524, 'Exam Mark Ledger', 'exam-mark-ledger-add', 'Add', 'Exam Mark Ledger Add', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(525, 'Exam Mark Ledger', 'exam-mark-ledger-edit', 'Edit', 'Edit Exam Mark Ledger', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(526, 'Exam Mark Ledger', 'exam-mark-ledger-delete', 'Delete', 'Delete Exam Mark Ledger', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(527, 'Exam Mark Ledger', 'exam-mark-ledger-active', 'Active', 'Active Exam Mark Ledger', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(528, 'Exam Mark Ledger', 'exam-mark-ledger-in-active', 'In-Active', 'In-Active Exam Mark Ledger', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(529, 'Exam Print', 'exam-print-admitcard', 'Admit Card', 'Exam Admit Card', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(530, 'Exam Print', 'exam-print-routine', 'Routine/Schedule', 'Exam Routine/Schedule', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(531, 'Exam Print', 'exam-print-mark-sheet', 'Mark/Grade Sheet', 'Exam Mark/Grade Sheet', 0, '2021-08-08 09:19:33', '2021-08-08 09:19:33'),
(532, 'Exam Print', 'exam-print-mark-ledger', 'Mark Ledger', 'Exam Mark Ledger Sheet', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(533, 'Certificate Management Permission', 'certificate-management-index', 'Certificate Management', 'Certificate Management', 1, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(534, 'Certificate', 'issue-certificate', 'Certificate Issue', 'Certificate Issue', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(535, 'Certificate', 'certificate-history', 'Certificate History', 'Certificate History', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(536, 'General Certificate', 'certificate-generate', 'General Certificate Generate', 'General Certificate Generate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(537, 'General Certificate', 'general-certificate-print', 'General Certificate Print', 'General Certificate Print', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(538, 'Certificate Template', 'certificate-template-index', 'Index', 'Certificate Template Index', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(539, 'Certificate Template', 'certificate-template-add', 'Add', 'Certificate Template Add', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(540, 'Certificate Template', 'certificate-template-edit', 'Edit', 'Edit Certificate Template', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(541, 'Certificate Template', 'certificate-template-view', 'View', 'View Certificate Template', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(542, 'Certificate Template', 'certificate-template-delete', 'Delete', 'Delete Certificate Template', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(543, 'Certificate Template', 'certificate-template-active', 'Active', 'Active Certificate Template', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(544, 'Certificate Template', 'certificate-template-in-active', 'In-Active', 'In-Active Certificate Template', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(545, 'Certificate Template', 'certificate-template-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Certificate Template', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(546, 'Attendance Certificate', 'attendance-certificate-index', 'Index', 'Attendance Certificate Index', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(547, 'Attendance Certificate', 'attendance-certificate-add', 'Add', 'Attendance Certificate Add', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(548, 'Attendance Certificate', 'attendance-certificate-edit', 'Edit', 'Edit Attendance Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(549, 'Attendance Certificate', 'attendance-certificate-view', 'View', 'View Attendance Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(550, 'Attendance Certificate', 'attendance-certificate-delete', 'Delete', 'Delete Attendance Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(551, 'Attendance Certificate', 'attendance-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Attendance Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(552, 'Attendance Certificate', 'attendance-certificate-print', 'Print', 'Print Attendance Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(553, 'Attendance Certificate', 'attendance-certificate-bulk-print', 'Bulk Print', 'Bulk Print Attendance Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(554, 'Transfer Certificate', 'transfer-certificate-index', 'Index', 'Transfer Certificate Index', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(555, 'Transfer Certificate', 'transfer-certificate-add', 'Add', 'Transfer Certificate Add', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(556, 'Transfer Certificate', 'transfer-certificate-edit', 'Edit', 'Edit Transfer Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(557, 'Transfer Certificate', 'transfer-certificate-view', 'View', 'View Transfer Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(558, 'Transfer Certificate', 'transfer-certificate-delete', 'Delete', 'Delete Transfer Certificate', 0, '2021-08-08 09:19:34', '2021-08-08 09:19:34'),
(559, 'Transfer Certificate', 'transfer-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Transfer Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(560, 'Transfer Certificate', 'transfer-certificate-print', 'Print', 'Print Transfer Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(561, 'Transfer Certificate', 'transfer-certificate-bulk-print', 'Bulk Print', 'Bulk Print Transfer Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(562, 'Bonafide Certificate', 'bonafide-certificate-index', 'Index', 'Bonafide Certificate Index', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(563, 'Bonafide Certificate', 'bonafide-certificate-add', 'Add', 'Bonafide Certificate Add', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(564, 'Bonafide Certificate', 'bonafide-certificate-edit', 'Edit', 'Edit Bonafide Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(565, 'Bonafide Certificate', 'bonafide-certificate-view', 'View', 'View Bonafide Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(566, 'Bonafide Certificate', 'bonafide-certificate-delete', 'Delete', 'Delete Bonafide Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(567, 'Bonafide Certificate', 'bonafide-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Bonafide Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(568, 'Bonafide Certificate', 'bonafide-certificate-print', 'Print', 'Print Bonafide Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(569, 'Bonafide Certificate', 'bonafide-certificate-bulk-print', 'Bulk Print', 'Bulk Print Bonafide Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(570, 'Course Completion Certificate', 'course-completion-certificate-index', 'Index', 'Course Completion Certificate Index', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(571, 'Course Completion Certificate', 'course-completion-certificate-add', 'Add', 'Course Completion Certificate Add', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(572, 'Course Completion Certificate', 'course-completion-certificate-edit', 'Edit', 'Edit Course Completion Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(573, 'Course Completion Certificate', 'course-completion-certificate-view', 'View', 'View Course Completion Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(574, 'Course Completion Certificate', 'course-completion-certificate-delete', 'Delete', 'Delete Course Completion Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(575, 'Course Completion Certificate', 'course-completion-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Course Completion Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(576, 'Course Completion Certificate', 'course-completion-certificate-print', 'Print', 'Print Course Completion Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(577, 'Course Completion Certificate', 'course-completion-certificate-bulk-print', 'Bulk Print', 'Bulk Print Course Completion Certificate', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(578, 'Hostel Management Permission', 'hostel-management-index', 'Hostel Management', 'Hostel Management', 1, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(579, 'Hostel', 'hostel-index', 'Index', 'Hostel Index', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(580, 'Hostel', 'hostel-add', 'Add', 'Hostel Add', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(581, 'Hostel', 'hostel-view', 'view', 'Hostel View', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(582, 'Hostel', 'hostel-edit', 'Edit', 'Edit Hostel', 0, '2021-08-08 09:19:35', '2021-08-08 09:19:35'),
(583, 'Hostel', 'hostel-delete', 'Delete', 'Delete Hostel', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(584, 'Hostel', 'hostel-active', 'Active', 'Active Hostel', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(585, 'Hostel', 'hostel-in-active', 'In-Active', 'In-Active Hostel', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(586, 'Hostel', 'hostel-bulk-action', 'Bulk(Active,InActive,Delete)', 'Hostel Bulk Action', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(587, 'Room', 'room-add', 'Add', 'Room Add', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(588, 'Room', 'room-view', 'View', 'Room View', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(589, 'Room', 'room-edit', 'Edit', 'Edit Room', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(590, 'Room', 'room-delete', 'Delete', 'Delete Room', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(591, 'Room', 'room-active', 'Active', 'Active Room', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(592, 'Room', 'room-in-active', 'In-Active', 'In-Active Room', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(593, 'Room', 'room-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Bulk Action', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(594, 'Bed', 'bed-add', 'Add', 'Bed Add', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(595, 'Bed', 'bed-status', 'Status', 'Bed Status', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(596, 'Bed', 'bed-delete', 'Delete', 'Delete Bed', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(597, 'Bed', 'bed-active', 'Active', 'Active Bed', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(598, 'Bed', 'bed-in-active', 'In-Active', 'In-Active Bed', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(599, 'Bed', 'bed-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Bulk Action', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(600, 'Room Type', 'room-type-index', 'Index', 'Room Type Index', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(601, 'Room Type', 'room-type-add', 'Add', 'Room Type Add', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(602, 'Room Type', 'room-type-edit', 'Edit', 'Edit Room Type', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(603, 'Room Type', 'room-type-delete', 'Delete', 'Delete Room Type', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(604, 'Room Type', 'room-type-active', 'Active', 'Active Room Type', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(605, 'Room Type', 'room-type-in-active', 'In-Active', 'In-Active Room Type', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(606, 'Room Type', 'room-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Type Bulk Action', 0, '2021-08-08 09:19:36', '2021-08-08 09:19:36'),
(607, 'Resident', 'resident-index', 'Index', 'Resident Index', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(608, 'Resident', 'resident-add', 'Add', 'Resident Add', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(609, 'Resident', 'resident-edit', 'Edit', 'Edit Resident', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(610, 'Resident', 'resident-delete', 'Delete', 'Delete Resident', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(611, 'Resident', 'resident-bulk-action', 'Bulk(Active,InActive,Delete)', 'Resident Bulk Action', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(612, 'Resident', 'resident-renew', 'Renew', 'Renew Resident', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(613, 'Resident', 'resident-leave', 'Leave', 'Leave Resident', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(614, 'Resident', 'resident-shift', 'Shift', 'Shift Resident', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(615, 'Resident', 'resident-history', 'History', 'Resident History', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(616, 'Food', 'food-index', 'Index', 'Food Index', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(617, 'Food', 'food-add', 'Add', 'Food Add', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(618, 'Food', 'food-edit', 'Edit', 'Edit Food', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(619, 'Food', 'food-delete', 'Delete', 'Delete Food', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(620, 'Food', 'food-active', 'Active', 'Active Food', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(621, 'Food', 'food-in-active', 'In-Active', 'In-Active Food', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(622, 'Food', 'food-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Bulk Action', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(623, 'Food Category', 'food-category-index', 'Index', 'Food Category Index', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(624, 'Food Category', 'food-category-add', 'Add', 'Food Category Add', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(625, 'Food Category', 'food-category-edit', 'Edit', 'Edit Food Category', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(626, 'Food Category', 'food-category-delete', 'Delete', 'Delete Food Category', 0, '2021-08-08 09:19:37', '2021-08-08 09:19:37'),
(627, 'Food Category', 'food-category-active', 'Active', 'Active Food Category', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(628, 'Food Category', 'food-category-in-active', 'In-Active', 'In-Active Food Category', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(629, 'Food Category', 'food-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Category Bulk Action', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(630, 'Food Item', 'food-item-index', 'Index', 'Food Item Index', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(631, 'Food Item', 'food-item-add', 'Add', 'Food Item Add', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(632, 'Food Item', 'food-item-edit', 'Edit', 'Edit Food Item', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(633, 'Food Item', 'food-item-delete', 'Delete', 'Delete Food Item', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(634, 'Food Item', 'food-item-active', 'Active', 'Active Food Item', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(635, 'Food Item', 'food-item-in-active', 'In-Active', 'In-Active Food Item', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(636, 'Food Item', 'food-item-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Item Bulk Action', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(637, 'Eating Time', 'eating-time-index', 'Index', 'Eating Time Index', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(638, 'Eating Time', 'eating-time-add', 'Add', 'Eating Time Add', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(639, 'Eating Time', 'eating-time-edit', 'Edit', 'Edit Eating Time', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(640, 'Eating Time', 'eating-time-delete', 'Delete', 'Delete Eating Time', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(641, 'Eating Time', 'eating-time-active', 'Active', 'Active Eating Time', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(642, 'Eating Time', 'eating-time-in-active', 'In-Active', 'In-Active Eating Time', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(643, 'Eating Time', 'eating-time-bulk-action', 'Bulk(Active,InActive,Delete)', 'Eating Time Bulk Action', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(644, 'Transport Management Permission', 'transport-management-index', 'Transport Management', 'Transport Management', 1, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(645, 'Transport Route', 'transport-route-index', 'Index', 'Transport Route Index', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(646, 'Transport Route', 'transport-route-add', 'Add', 'Transport Route Add', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(647, 'Transport Route', 'transport-route-edit', 'Edit', 'Edit Transport Route', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(648, 'Transport Route', 'transport-route-delete', 'Delete', 'Delete Transport Route', 0, '2021-08-08 09:19:38', '2021-08-08 09:19:38'),
(649, 'Transport Route', 'transport-route-active', 'Active', 'Active Transport Route', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(650, 'Transport Route', 'transport-route-in-active', 'In-Active', 'In-Active Transport Route', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(651, 'Transport Route', 'transport-route-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport Route Bulk Action', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(652, 'Vehicle', 'vehicle-index', 'Index', 'Vehicle Index', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(653, 'Vehicle', 'vehicle-add', 'Add', 'Vehicle Add', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(654, 'Vehicle', 'vehicle-edit', 'Edit', 'Edit Vehicle', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(655, 'Vehicle', 'vehicle-delete', 'Delete', 'Delete Vehicle', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(656, 'Vehicle', 'vehicle-active', 'Active', 'Active Vehicle', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(657, 'Vehicle', 'vehicle-in-active', 'In-Active', 'In-Active Vehicle', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(658, 'Vehicle', 'vehicle-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vehicle Bulk Action', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(659, 'Transport User/Traveller', 'transport-user-index', 'Index', 'Transport User/Traveller Index', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(660, 'Transport User/Traveller', 'transport-user-add', 'Add', 'Transport User/Traveller Add', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(661, 'Transport User/Traveller', 'transport-user-edit', 'Edit', 'Edit Transport User/Traveller', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(662, 'Transport User/Traveller', 'transport-user-delete', 'Delete', 'Delete Transport User/Traveller', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(663, 'Transport User/Traveller', 'transport-user-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport User/Traveller Bulk Action', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(664, 'Transport User/Traveller', 'transport-user-renew', 'Renew', 'Renew Transport User/Traveller', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(665, 'Transport User/Traveller', 'transport-user-leave', 'Leave', 'Leave Transport User/Traveller', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(666, 'Transport User/Traveller', 'transport-user-shift', 'Shift', 'Shift Transport User/Traveller', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(667, 'Transport User/Traveller', 'transport-user-history', 'History', 'Resident History', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(668, 'Notice & Alert Management Permission', 'notice-group-index', 'Notice & Alert Permission', 'Notice & Alert Permission', 1, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(669, 'Notice', 'notice-index', 'Index', 'Notice Index', 0, '2021-08-08 09:19:39', '2021-08-08 09:19:39'),
(670, 'Notice', 'notice-add', 'Add', 'Notice Add', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(671, 'Notice', 'notice-edit', 'Edit', 'Edit Notice', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(672, 'Notice', 'notice-delete', 'Delete', 'Delete Notice', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(673, 'SMS/E-Mail', 'sms-email-index', 'Index', 'SMS/E-Mail Index', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(674, 'SMS/E-Mail', 'sms-email-delete', 'Delete', 'SMS/E-Mail Delete', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(675, 'SMS/E-Mail', 'sms-email-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bulk SMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(676, 'SMS/E-Mail', 'sms-email-create', 'Create', 'Create SMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(677, 'SMS/E-Mail', 'sms-email-send', 'Send', 'Send SMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(678, 'SMS/E-Mail', 'sms-email-student-guardian-send', 'Student & Guardian', 'Student & Guardian SMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(679, 'SMS/E-Mail', 'sms-email-staff-send', 'Staff', 'Staff SMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(680, 'SMS/E-Mail', 'sms-email-individual-send', 'Individual', 'Individual SMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(681, 'SMS/E-Mail', 'sms-email-fee-receipt', 'Fee Receipt', 'Fee ReceiptSMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(682, 'SMS/E-Mail', 'sms-email-due-reminder', 'Due Reminder', 'Due Reminder SMS/E-Mail', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(683, 'SMS/E-Mail', 'sms-email-book-return-reminder', 'Book Return Reminder', 'Book Return Reminder', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(684, 'More(Assignment & Download) Management Permission', 'more-index', 'More(Assignment & Download) Permission', 'More(Assignment & Download) Permission', 1, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(685, 'Assignment', 'assignment-index', 'Index', 'Assignment Index', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(686, 'Assignment', 'assignment-add', 'Add', 'Assignment Add', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(687, 'Assignment', 'assignment-edit', 'Edit', 'Edit Assignment', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(688, 'Assignment', 'assignment-view', 'View', 'View Assignment', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(689, 'Assignment', 'assignment-delete', 'Delete', 'Delete Assignment', 0, '2021-08-08 09:19:40', '2021-08-08 09:19:40'),
(690, 'Assignment', 'assignment-active', 'Active', 'Active Assignment', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(691, 'Assignment', 'assignment-in-active', 'In-Active', 'In-Active Assignment', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(692, 'Assignment', 'assignment-bulk-action', 'Bulk(Active,InActive,Delete)', 'Assignment Bulk Action', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(693, 'Assignment Answer', 'assignment-answer-view', 'View', 'Assignment Answer View', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(694, 'Assignment Answer', 'assignment-answer-approve', 'Approve', 'Approve Assignment Answer', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(695, 'Assignment Answer', 'assignment-answer-reject', 'Reject', 'Reject Assignment Answer', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(696, 'Assignment Answer', 'assignment-answer-delete', 'Delete', 'Delete Assignment Answer', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(697, 'Assignment Answer', 'assignment-answer-bulk-action', 'Bulk(Approve, Reject,Delete)', 'Assignment Answer Bulk Action', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(698, 'Download', 'download-index', 'Index', 'Download Index', 0, '2021-08-08 09:19:41', '2021-08-08 09:19:41'),
(699, 'Download', 'download-add', 'Add', 'Download Add', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(700, 'Download', 'download-edit', 'Edit', 'Edit Download', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(701, 'Download', 'download-delete', 'Delete', 'Delete Download', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(702, 'Download', 'download-active', 'Active', 'Active Download', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(703, 'Download', 'download-in-active', 'In-Active', 'In-Active Download', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(704, 'Download', 'download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(705, 'Meeting', 'meeting-index', 'Index', 'Meeting Index', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(706, 'Meeting', 'meeting-add', 'Add', 'Meeting Add', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(707, 'Meeting', 'meeting-delete', 'Delete', 'Delete Meeting', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(708, 'Meeting', 'meeting-complete', 'Complete', 'Complete Meeting', 0, '2021-08-08 09:19:42', '2021-08-08 09:19:42'),
(709, 'Meeting', 'meeting-start', 'Start', 'Start Meeting', 0, '2021-08-08 09:19:43', '2021-08-08 09:19:43'),
(710, 'Meeting', 'meeting-pending', 'Pending', 'Pending Meeting', 0, '2021-08-08 09:19:43', '2021-08-08 09:19:43'),
(711, 'Meeting', 'meeting-bulk-action', 'Bulk(Active,InActive,Delete)', 'Meeting Bulk Action', 0, '2021-08-08 09:19:43', '2021-08-08 09:19:43'),
(712, 'Meeting', 'meeting-zoom-index', 'Zoom Server Index', 'Meeting Index', 0, '2021-08-08 09:19:43', '2021-08-08 09:19:43'),
(713, 'Meeting', 'sms-email-meeting', 'Send Meeting Alert', 'Meeting Alert Sending', 0, '2021-08-08 09:19:43', '2021-08-08 09:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 3),
(2, 6),
(3, 1),
(3, 3),
(3, 6),
(4, 1),
(4, 3),
(4, 6),
(5, 1),
(5, 3),
(5, 6),
(6, 1),
(6, 3),
(6, 6),
(7, 1),
(7, 3),
(7, 6),
(8, 1),
(8, 3),
(8, 6),
(9, 1),
(9, 3),
(9, 6),
(10, 1),
(10, 3),
(10, 6),
(11, 1),
(11, 3),
(11, 6),
(12, 1),
(12, 3),
(12, 6),
(13, 1),
(13, 3),
(13, 6),
(14, 1),
(14, 3),
(14, 6),
(15, 1),
(15, 3),
(15, 6),
(16, 1),
(16, 3),
(16, 6),
(17, 1),
(17, 3),
(17, 6),
(18, 1),
(18, 3),
(18, 6),
(19, 1),
(19, 3),
(19, 6),
(20, 1),
(20, 3),
(20, 6),
(21, 1),
(21, 3),
(21, 6),
(22, 1),
(22, 6),
(23, 1),
(23, 6),
(24, 1),
(24, 6),
(25, 1),
(25, 6),
(26, 1),
(26, 6),
(27, 1),
(27, 6),
(28, 1),
(28, 6),
(29, 1),
(29, 6),
(30, 1),
(30, 6),
(31, 1),
(31, 6),
(32, 1),
(32, 6),
(33, 1),
(33, 6),
(34, 1),
(34, 6),
(35, 1),
(35, 6),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(198, 6),
(199, 1),
(199, 6),
(200, 1),
(200, 6),
(201, 1),
(201, 6),
(202, 1),
(202, 6),
(203, 1),
(203, 6),
(204, 1),
(204, 6),
(205, 1),
(205, 6),
(206, 1),
(206, 6),
(207, 1),
(207, 6),
(208, 1),
(208, 6),
(209, 1),
(209, 6),
(210, 1),
(210, 6),
(211, 1),
(211, 6),
(212, 1),
(212, 6),
(213, 1),
(213, 6),
(214, 1),
(214, 6),
(215, 1),
(215, 6),
(216, 1),
(216, 6),
(217, 1),
(217, 6),
(218, 1),
(218, 6),
(219, 1),
(219, 6),
(220, 1),
(220, 6),
(221, 1),
(221, 6),
(222, 1),
(222, 6),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(264, 6),
(265, 1),
(266, 1),
(266, 3),
(266, 6),
(267, 1),
(267, 3),
(267, 6),
(268, 1),
(268, 3),
(269, 1),
(269, 3),
(270, 1),
(270, 3),
(271, 1),
(271, 3),
(272, 1),
(272, 3),
(273, 1),
(273, 3),
(274, 1),
(274, 3),
(275, 1),
(275, 3),
(276, 1),
(276, 3),
(277, 1),
(277, 3),
(278, 1),
(278, 3),
(279, 1),
(279, 3),
(280, 1),
(280, 3),
(281, 1),
(281, 3),
(282, 1),
(282, 3),
(283, 1),
(283, 3),
(284, 1),
(284, 3),
(285, 1),
(285, 3),
(286, 1),
(286, 3),
(287, 1),
(287, 3),
(288, 1),
(288, 3),
(289, 1),
(289, 3),
(290, 1),
(290, 3),
(291, 1),
(291, 3),
(292, 1),
(292, 3),
(293, 1),
(293, 3),
(294, 1),
(294, 3),
(295, 1),
(295, 3),
(296, 1),
(296, 3),
(297, 1),
(297, 3),
(298, 1),
(298, 3),
(299, 1),
(299, 3),
(300, 1),
(300, 3),
(301, 1),
(301, 3),
(302, 1),
(302, 3),
(303, 1),
(303, 3),
(304, 1),
(304, 3),
(305, 1),
(305, 3),
(306, 1),
(306, 3),
(307, 1),
(307, 3),
(308, 1),
(308, 3),
(309, 1),
(309, 3),
(310, 1),
(310, 3),
(311, 1),
(311, 3),
(312, 1),
(312, 3),
(313, 1),
(313, 3),
(314, 1),
(314, 3),
(315, 1),
(315, 3),
(316, 1),
(316, 3),
(317, 1),
(317, 3),
(318, 1),
(318, 3),
(319, 1),
(319, 3),
(320, 1),
(320, 3),
(321, 1),
(321, 3),
(322, 1),
(322, 3),
(323, 1),
(323, 3),
(324, 1),
(324, 3),
(325, 1),
(325, 3),
(326, 1),
(326, 3),
(327, 1),
(327, 3),
(328, 1),
(328, 3),
(329, 1),
(329, 3),
(330, 1),
(330, 3),
(331, 1),
(331, 3),
(332, 1),
(332, 3),
(333, 1),
(333, 3),
(334, 1),
(334, 3),
(335, 1),
(335, 3),
(336, 1),
(336, 3),
(337, 1),
(337, 3),
(338, 1),
(338, 3),
(339, 1),
(339, 3),
(340, 1),
(340, 3),
(341, 1),
(341, 3),
(342, 1),
(342, 3),
(343, 1),
(343, 3),
(344, 1),
(344, 3),
(345, 1),
(345, 3),
(346, 1),
(346, 3),
(347, 1),
(347, 3),
(348, 1),
(348, 3),
(349, 1),
(349, 3),
(350, 1),
(350, 3),
(351, 1),
(351, 3),
(352, 1),
(352, 3),
(353, 1),
(353, 3),
(354, 1),
(354, 3),
(355, 1),
(355, 3),
(356, 1),
(356, 3),
(357, 1),
(357, 3),
(358, 1),
(358, 3),
(359, 1),
(359, 3),
(360, 1),
(360, 3),
(361, 1),
(362, 1),
(362, 3),
(363, 1),
(363, 3),
(364, 1),
(364, 3),
(365, 1),
(365, 3),
(366, 1),
(366, 3),
(367, 1),
(367, 3),
(368, 1),
(368, 3),
(369, 1),
(369, 3),
(370, 1),
(370, 3),
(371, 1),
(371, 3),
(372, 1),
(372, 3),
(373, 1),
(373, 3),
(374, 1),
(374, 3),
(375, 1),
(375, 3),
(376, 1),
(376, 3),
(377, 1),
(377, 3),
(378, 1),
(378, 3),
(379, 1),
(379, 3),
(380, 1),
(380, 3),
(381, 1),
(381, 3),
(382, 1),
(382, 3),
(383, 1),
(383, 3),
(384, 1),
(384, 3),
(385, 1),
(385, 3),
(386, 1),
(386, 3),
(387, 1),
(387, 3),
(388, 1),
(388, 3),
(389, 1),
(389, 3),
(390, 1),
(390, 3),
(391, 1),
(391, 3),
(392, 1),
(392, 3),
(393, 1),
(393, 3),
(394, 1),
(394, 3),
(395, 1),
(395, 3),
(396, 1),
(396, 3),
(397, 1),
(397, 3),
(398, 1),
(398, 3),
(399, 1),
(399, 3),
(400, 1),
(400, 3),
(401, 1),
(401, 3),
(402, 1),
(402, 3),
(403, 1),
(403, 3),
(404, 1),
(404, 3),
(405, 1),
(405, 3),
(406, 1),
(406, 3),
(407, 1),
(407, 3),
(408, 1),
(408, 3),
(409, 1),
(409, 3),
(410, 1),
(410, 3),
(411, 1),
(411, 3),
(412, 1),
(412, 3),
(413, 1),
(413, 3),
(414, 1),
(414, 3),
(415, 1),
(415, 3),
(416, 1),
(416, 3),
(417, 1),
(417, 3),
(418, 1),
(418, 3),
(419, 1),
(419, 3),
(420, 1),
(420, 3),
(421, 1),
(421, 3),
(422, 1),
(422, 3),
(423, 1),
(423, 3),
(424, 1),
(424, 3),
(425, 1),
(425, 3),
(426, 1),
(426, 3),
(427, 1),
(427, 3),
(428, 1),
(428, 3),
(429, 1),
(429, 3),
(430, 1),
(430, 3),
(431, 1),
(431, 3),
(432, 1),
(432, 3),
(433, 1),
(433, 3),
(434, 1),
(434, 3),
(435, 1),
(435, 3),
(436, 1),
(436, 3),
(437, 1),
(437, 3),
(438, 1),
(438, 3),
(439, 1),
(439, 3),
(440, 1),
(440, 3),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(457, 1),
(458, 1),
(459, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(475, 1),
(476, 1),
(477, 1),
(478, 1),
(479, 1),
(480, 1),
(481, 1),
(482, 1),
(483, 1),
(484, 1),
(485, 1),
(486, 1),
(487, 1),
(488, 1),
(489, 1),
(490, 1),
(491, 1),
(492, 1),
(493, 1),
(494, 1),
(495, 1),
(496, 1),
(497, 1),
(498, 1),
(499, 1),
(500, 1),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(669, 3),
(670, 3),
(671, 3),
(672, 3),
(673, 3),
(674, 3),
(675, 3),
(676, 3),
(677, 3),
(678, 3),
(679, 3),
(680, 3),
(681, 3),
(682, 3),
(683, 3);

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchanges`
--

CREATE TABLE `postal_exchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ref_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchanges`
--

INSERT INTO `postal_exchanges` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `type`, `date`, `ref_no`, `subject`, `to`, `from`, `note`, `attachment`, `status`) VALUES
(1, '2021-08-17 19:13:27', '2021-08-17 19:13:27', 1, NULL, 'COURIER RECEIVE', '2021-08-17 00:00:00', 'DXY9090', 'To Meet with Manager', 'Kyamusonge Primary School', 'gieLab School of Innovations', 'gieLab School of Innovations', '9_.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchange_types`
--

CREATE TABLE `postal_exchange_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchange_types`
--

INSERT INTO `postal_exchange_types` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, NULL, 'LETTER DISPATCH', 1),
(2, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, NULL, 'LETTER RECEIVE', 1),
(3, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, NULL, 'COURIER RECEIVE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT 0,
  `sub_category_id` int(10) UNSIGNED DEFAULT 0,
  `warranty` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `code`, `name`, `category_id`, `sub_category_id`, `warranty`, `product_image`, `description`, `status`) VALUES
(1, '2021-08-08 10:53:00', '2021-08-08 10:53:00', 2, NULL, 'PRO493601', 'COMUTER', 3, 0, '1 YEAR', 'PRO493601.webp', 'GOOD IN ORDER', 1),
(2, '2021-08-08 10:55:38', '2021-08-08 10:55:38', 2, NULL, 'PRO138253', 'COMUTER', 3, 0, '1 YEAR', 'PRO138253.webp', 'GOOD IN ORDER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `cost_price` double(10,2) DEFAULT 0.00,
  `sale_price` double(10,2) DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `products_id`, `cost_price`, `sale_price`, `status`) VALUES
(1, '2021-08-08 10:55:38', '2021-08-08 10:55:38', 2, NULL, 2, 3000000.00, 1000000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_date` datetime NOT NULL,
  `grand_total_amount` int(11) NOT NULL,
  `total_discount` int(11) NOT NULL,
  `purchase_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_date` datetime NOT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_detail_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `register_date` datetime NOT NULL,
  `leave_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_histories`
--

CREATE TABLE `resident_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `residents_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin', '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(2, 'admin', 'Administrator', 'Administrator', '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(3, 'account', 'Accountant', 'Accountant', '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(4, 'library', 'Librarian', 'Librarian', '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(5, 'staff', 'Staff', 'Staff', '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(6, 'student', 'Student', 'Student', '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(7, 'guardian', 'Guardian', 'Guardian', '2021-08-08 09:19:07', '2021-08-08 09:19:07'),
(8, 'teacher', 'Teacher', 'Teacher', '2021-08-08 09:19:07', '2021-08-08 09:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 3),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `room_type` int(10) UNSIGNED NOT NULL,
  `room_number` int(11) NOT NULL,
  `rate_perbed` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `rent`, `description`, `status`) VALUES
(1, '2021-08-09 14:57:55', '2021-08-09 15:04:24', 1, 1, 'MBAGALA KUU VIA ZAKHEM', 100000, 'PAYABLE PER QUATER', 1),
(2, '2021-08-09 15:05:39', '2021-08-09 15:05:39', 1, NULL, 'MGENI NANI VIA KAMPILINGE', 150000, 'PAYABLE PER QUATER', 1),
(3, '2021-08-09 15:07:29', '2021-08-09 15:07:29', 1, NULL, 'MBAGALA KUU VIA AZIZ ALLY', 170000, 'PAYABLE PER QUATER', 1),
(4, '2021-08-09 15:08:25', '2021-08-09 15:08:25', 1, NULL, 'MGENI NANI VIA VIKINDU', 200000, 'PAYABLE PER QUATER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `route_vehicles`
--

CREATE TABLE `route_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `routes_id` int(10) UNSIGNED NOT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `route_vehicles`
--

INSERT INTO `route_vehicles` (`id`, `created_at`, `updated_at`, `routes_id`, `vehicles_id`, `status`) VALUES
(1, NULL, NULL, 1, 4, 1),
(2, NULL, NULL, 2, 3, 1),
(3, NULL, NULL, 3, 2, 1),
(4, NULL, NULL, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_pays`
--

CREATE TABLE `salary_pays` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `salary_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `allowance` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `semester`, `slug`, `staff_id`, `gradingType_id`, `status`) VALUES
(1, '2021-08-09 13:42:01', '2021-09-04 18:03:43', 1, 1, 'STREAM - A', 'STREAM---A', 6, 1, 1),
(2, '2021-08-09 14:02:47', '2021-09-04 16:40:37', 1, 1, 'STREAM - B', 'STREAM---B', 6, 1, 1),
(3, '2021-09-04 19:00:54', '2021-09-04 19:03:10', 1, 1, 'STREAM - A1', 'STREAM---A1', 11, 4, 1),
(4, '2021-09-04 19:14:39', '2021-09-04 19:14:39', 1, NULL, 'STREAM - A2', 'STREAM---A2', 12, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester_assets`
--

CREATE TABLE `semester_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `assets_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester_subject`
--

CREATE TABLE `semester_subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester_subject`
--

INSERT INTO `semester_subject` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `semester_id`, `subject_id`, `status`) VALUES
(3, NULL, NULL, 1, 1, 1, 2, 0),
(4, NULL, NULL, 1, 1, 1, 3, 0),
(7, NULL, NULL, 1, 1, 1, 4, 0),
(8, NULL, NULL, 1, 1, 1, 6, 0),
(9, NULL, NULL, 1, 1, 1, 7, 0),
(10, NULL, NULL, 1, 1, 1, 5, 0),
(15, NULL, NULL, 1, 1, 3, 1, 0),
(16, NULL, NULL, 1, 1, 3, 9, 0),
(17, NULL, NULL, 1, 1, 3, 10, 0),
(18, NULL, NULL, 1, 1, 3, 11, 0),
(19, NULL, NULL, 1, 1, 3, 12, 0),
(20, NULL, NULL, 1, 1, 3, 8, 0),
(21, NULL, NULL, 1, NULL, 4, 13, 0),
(22, NULL, NULL, 1, NULL, 4, 14, 0),
(23, NULL, NULL, 1, NULL, 4, 15, 0),
(24, NULL, NULL, 1, NULL, 4, 16, 0),
(25, NULL, NULL, 1, NULL, 4, 17, 0),
(26, NULL, NULL, 1, NULL, 4, 18, 0),
(27, NULL, NULL, 1, NULL, 4, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_emails`
--

CREATE TABLE `sms_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 0,
  `email` tinyint(1) NOT NULL DEFAULT 0,
  `group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Msg91', 'msg91', 'https://msg91.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0),
(2, NULL, NULL, 'Msg94', 'msg94', 'http://www.msg94.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0),
(3, NULL, NULL, 'KeswaTech', 'keswasms', 'http://ktsms.keswatech.com', '{\"Sender\":\"\",\"apiKey\":\"\"}', 0),
(4, NULL, NULL, 'Twilio', 'twilio', 'https://www.twilio.com', '{\"SID\":\"\",\"Token\":\"\",\"FromNumber\":\"\"}', 0),
(5, NULL, NULL, 'MessageBird', 'messagebird', 'https://www.messagebird.com', '{\"Originator\":\"\",\"AcccessKey\":\"\"}', 0),
(6, NULL, NULL, 'Clickatell', 'clickatell', 'http://clickatell.com', '{\"API_ID\":\"\",\"User\":\"\",\"Password\":\"\",\"Unicode\":\"0\"}', 0),
(7, NULL, NULL, 'BudgetSmsNet', 'budgetsms', 'https://www.budgetsms.net', '{\"Username\":\"\",\"UserID\":\"\",\"Handle\":\"\",\"From\":\"\"}', 0),
(8, NULL, NULL, 'Nexmo', 'nexmo', 'https://www.nexmo.com', '{\"From\":\"\",\"API_KEY\":\"\",\"API_SECRET\":\"\"}', 0),
(9, NULL, NULL, 'smsCountry', 'smscountry', 'https://www.smscountry.com', '{\"UserName\":\"\",\"Password\":\"\",\"SenderId\":\"\",\"Token\":\"\"}', 0),
(10, NULL, NULL, 'MsgClub', 'msgclub', 'http://msg.msgclub.net', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\"}', 0),
(11, NULL, NULL, 'Digimiles', 'digimiles', 'http://www.digimiles.in', '{\"UserName\":\"\",\"Password\":\"\",\"Type\":0,\"Sender_ID\":\"\"}', 0),
(12, NULL, NULL, 'Textlocal', 'textlocal', 'https://www.textlocal.in', '{\"apiKey\":\"\",\"sender\":\"\"}', 0),
(13, NULL, NULL, 'SmartSMS', 'smartsms', 'https://smartsmssolutions.com/', '{\"ACCESS_TOKEN\":\"\",\"Sender\":\"\",\"Routing\":\"2\",\"Type\":\"0\"}', 0),
(14, NULL, NULL, 'Sparrow', 'sparrow', 'http://sparrowsms.com', '{\"From\":\"\",\"Token\":\"\"}', 0),
(15, NULL, NULL, 'InitiativeNepal', 'aayosms', 'https://www.ininepal.com', '{\"Sender\":\"\",\"UserName\":\"\",\"Password\":\"\"}', 0),
(16, NULL, NULL, 'SendPK', 'sendpk', 'https://sendpk.com/api.php', '{\"UserName\":\"\",\"Password\":\"\",\"Sender\":\"\",\"Type\":\"\"}', 0),
(17, NULL, NULL, 'LifetimeSMS', 'lifetimesms', 'http://lifetimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0),
(18, NULL, NULL, 'SmsCluster', 'smscluster', 'http://www.smscluster.com', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\",\"smsContentType\":\"English\"}', 0),
(19, NULL, NULL, 'marketsmsPK', 'marketsms', 'http://www.marketsms.pk', '{\"UserName\":\"\",\"Password\":\"\",\"From\":\"\"}', 0),
(20, NULL, NULL, 'springEdge', 'springedge', 'http://springedge.com', '{\"API_KEY\":\"\",\"SenderID\":\"\"}', 0),
(21, NULL, NULL, 'africastalking', 'africastalking', 'https://africastalking.com', '{\"API_KEY\":\"\",\"UserName\":\"\"}', 0),
(22, NULL, NULL, 'TheSMSCentral', 'thesmscentral', 'https://thesmscentral.com', '{\"ApiToken\":\"\",\"Sender\":\"\"}', 0),
(23, NULL, NULL, 'AakashNepal', 'aakashsms', 'https://aakashsms.com', '{\"AuthToken\":\"\"}', 0),
(24, NULL, NULL, 'FullTimeBulk', 'fulltimesms', 'http://www.sms.fulltimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL,
  `designation` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `reg_no`, `join_date`, `designation`, `first_name`, `middle_name`, `last_name`, `father_name`, `mother_name`, `date_of_birth`, `gender`, `blood_group`, `nationality`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `mother_tongue`, `email`, `qualification`, `experience`, `experience_info`, `other_info`, `staff_image`, `status`) VALUES
(3, '2021-08-08 11:13:48', '2021-08-08 11:43:41', 1, 1, 'S001', '2018-06-01 00:00:00', 1, 'LOREM', 'KR', 'IPSUM', 'HARI BAHADUR', 'SARAFINA', '2001-05-08 00:00:00', 'FEMALE', 'B+', 'TANZANIAN', 'DAR ES SALAAM', '2 NO', 'TANZANIA', 'KILIMANJARO', '3 NO', 'TANZANIA', '977-31-23078', '977-98989898', '977-91239123', 'SWAHILI', 'staff@gmail.com', 'CLINER', '2 YEAR', NULL, NULL, NULL, 1),
(4, '2021-08-08 11:13:48', '2021-08-08 11:41:36', 1, 1, 'S002', '2018-06-02 00:00:00', 3, 'UTTAM', 'RAJAB', 'YAMASUKULUU', 'RAJAB', 'NOVER', '1988-05-31 00:00:00', 'FEMALE', 'A+', 'TANZANIAN', 'DAR ES SALAAM', 'BAGMATI8', 'TANZANIA', 'DAR ES SALAAM', '4 NO', 'TANZANIA', '977-31-23079', '977-98989898', '977-91239123', 'SWAHILI', 'staff1@gmail.com', 'BCA', '3 YEAR', NULL, NULL, NULL, 1),
(5, '2021-08-08 11:13:49', '2021-08-08 11:39:01', 1, 1, 'S003', '2018-06-03 00:00:00', 2, 'EZEKIEL', 'GIDEON', 'EGWAGA', 'HARI BAHADUR', 'SARAFINA', '1975-06-24 00:00:00', 'MALE', 'A-', 'TANZANIAN', 'DAR ES SALAAM', 'UP', 'TANZANIA', 'DAR ES SALAAM', '5 NO', 'TANZANIA', '977-31-23080', '977-98989898', '977-91239123', 'SWAHILI', 'staff2@gmail.com', 'BSC IT', '10 YEARS', NULL, NULL, NULL, 1),
(6, '2021-08-08 11:13:49', '2021-08-08 11:37:20', 1, 1, 'S004', '2018-06-04 00:00:00', 2, 'HARI', 'AMIGO', 'ADHI', 'AMIGO', 'DUMBA', '1962-07-17 00:00:00', 'MALE', 'O+', 'TANZANIAN', 'DAR ES SALAAM', 'UBUNGO', 'TANZANIA', 'KILIMANJARO', '6 NO', 'TANZANIA', '977-31-23081', '977-98989898', '977-91239123', 'SWAHILI', 'staff3@gmail.com', 'DIPLOMA IN EDUCATION', '4 YEAR', NULL, NULL, NULL, 1),
(7, '2021-08-08 11:13:49', '2021-08-08 11:34:56', 1, 1, 'S005', '2018-06-05 00:00:00', 2, 'NOV', 'AWADH', 'NDEE', 'AWADH', 'NOVER', '1949-08-09 00:00:00', 'FEMALE', 'B+', 'TANZANIAN', 'DAR ES SALAAM', '3 NO', 'TANZANIA', 'KILIMANJARO', '7 NO', 'TANZANIA', '977-31-23082', '977-98989898', '977-91239123', 'ENGLISH', 'staff4@gmail.com', 'BE', '5 YEAR', 'READY TO GO', 'READY TO GO', NULL, 1),
(8, '2021-08-08 11:13:49', '2021-08-08 11:32:23', 1, 1, 'S006', '2018-06-06 00:00:00', 2, 'GITA', 'MLATA', 'GOMEZ', 'MLATA', 'SARA', '1936-09-01 00:00:00', 'FEMALE', 'AB-', 'TANZANIAN', 'DAR ES SALAAM', 'UBUNGO', 'TANZANIA', 'DAR ES SALAAM', 'UBUNGO', 'TANZANIA', '977-31-23083', '977-98989898', '977-91239123', 'SWAHILI', 'staff5@gmail.com', 'CERTIFICATE IN EDUCATION', '11 YEARS', 'MLATA', 'MLATA', NULL, 1),
(9, '2021-08-08 11:13:49', '2021-08-08 11:29:22', 1, 1, 'S007', '2018-06-07 00:00:00', 4, 'SITA', 'JR', 'MADE', 'JR', 'ATANASI', '1923-09-25 00:00:00', 'FEMALE', 'O-', 'TANZANIAN', 'DAR ES SALAAM', 'TEMEKE', 'TANZANIA', 'DAR ES SALAAM', 'TEMEKE', 'TANZANIA', '977-31-23084', '977-98989898', '977-91239123', 'SWAHILI', 'staff6@gmail.com', 'JKT', '6 YEAR', 'CONCERN OF THIS WORK AM WELL COMPROMISE WITH OTHERS', 'CONCERN OF THIS WORK AM WELL COMPROMISE WITH OTHERS', NULL, 1),
(10, '2021-08-08 11:13:50', '2021-08-08 11:27:10', 1, 1, 'S008', '2018-06-08 00:00:00', 5, 'RITA', 'MLATA', 'GOSWAMI', 'MLATA', 'DUMBA', '1910-10-18 00:00:00', 'FEMALE', 'B+', 'TANZANIAN', 'DAR ES SALAAM', 'K/NDONI', 'TANZANIA', 'DAR ES SALAAM', 'K/NDONI', 'TANZANIA', '977-31-23085', '977-98989898', '977-91239123', 'SWAHILI', 'staff7@gmail.com', 'DIPLOMA IN SECRETARIAL', '7 YEAR', 'SEVEN YEARS WORKING AS RECEPTIONIST, I HAVE DEEPLY', 'CONCERN OF THIS WORK AM WELL COMPROMISE WITH OTHERS', NULL, 1),
(11, '2021-08-08 11:13:50', '2021-08-08 11:22:11', 1, 1, 'S009', '2018-06-09 00:00:00', 4, 'YUSUPH', 'ALMEDA', 'GOLANI', 'ALMEDA', 'ATANASI', '2001-05-08 00:00:00', 'MALE', 'B+', 'TANZANIAN', 'DAR ES SALAAM', 'TEMEKE', 'TANZANIA', 'DAR ES SALAAM', 'TEMEKE', 'TANZANIA', '977-31-23086', '977-98989898', '977-91239123', 'SWAHILI', 'staff8@gmail.com', 'JKT', '12 YEARS', NULL, NULL, NULL, 1),
(12, '2021-08-08 11:13:50', '2021-08-08 11:17:31', 1, 1, 'S010', '2018-06-10 00:00:00', 6, 'PREETI', NULL, 'SHRESTHA', 'HUSSEIN', 'SARAFINA', '1988-05-31 00:00:00', 'FEMALE', 'A+', 'TANZANIAN', 'DAR ES SALAAM', 'K/NDONI', 'TANZANIA', 'DAR ES SALAAM', 'K/NDONI', 'TANZANIA', '977-31-23087', '977-98989898', '977-91239123', 'SWAHILI', 'staff9@gmail.com', 'MACHENICS AND DRIVER', '8 YEAR', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_designations`
--

CREATE TABLE `staff_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_designations`
--

INSERT INTO `staff_designations` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-08 11:13:48', '2021-08-08 11:18:52', 1, 1, 'CLEANER', 1),
(2, '2021-08-08 11:13:48', '2021-08-08 11:13:48', 1, NULL, 'TEACHER', 1),
(3, '2021-08-08 11:13:49', '2021-08-08 11:13:49', 1, NULL, 'ACCOUNTANT', 1),
(4, '2021-08-08 11:13:49', '2021-08-08 11:13:49', 1, NULL, 'SECURITY GUARD', 1),
(5, '2021-08-08 11:13:50', '2021-08-08 11:18:16', 1, 1, 'RECEPTIONIST', 1),
(6, '2021-08-08 11:13:50', '2021-08-08 11:13:50', 1, NULL, 'DRIVER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `transaction_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `qty_in` int(11) DEFAULT 0,
  `qty_out` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `products_id`, `transaction_type`, `date`, `qty_in`, `qty_out`, `status`) VALUES
(1, '2021-08-08 10:55:38', '2021-08-08 10:55:38', 2, NULL, 2, 'Registration', '2021-08-08 13:55:38', 3, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `university_reg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `academic_status` int(10) UNSIGNED DEFAULT NULL,
  `batch` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `reg_no`, `reg_date`, `university_reg`, `faculty`, `semester`, `academic_status`, `batch`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `blood_group`, `religion`, `caste`, `nationality`, `mother_tongue`, `email`, `extra_info`, `student_image`, `student_signature`, `status`) VALUES
(1, '2021-08-09 14:27:15', '2021-08-09 14:27:15', 1, NULL, 'STUD-0001', '2021-08-09 00:00:00', NULL, 8, 1, 1, 1, 'EZEKIEL', 'GIDEON', 'EGWAGA', '2017-11-15 00:00:00', 'MALE', 'O+', 'CHRISTIAN', 'TEMEKE', 'TANZANIAN', 'SWAHILI', 'ezekiel@gielab.com', 'I LOVE THIS SCHOOL AS MUCH POSSIBLE', '', '', 1),
(2, '2021-08-09 14:37:09', '2021-08-09 15:22:39', 1, NULL, 'STUD-0002', '2021-08-08 00:00:00', NULL, 9, 1, 6, 1, 'YUSUPH', 'AMIGO', 'ADHI', '2017-03-25 00:00:00', 'MALE', 'AB+', 'ISLAMIC', 'TEMEKE', 'TANZANIAN', 'SWAHILI', 'YA@gielab.com', 'READY TO GO', '', '', 1),
(3, '2021-08-09 14:45:08', '2021-08-09 14:45:08', 1, NULL, 'STUD-0003', '2021-02-25 00:00:00', NULL, 8, 1, 1, 1, 'GRACE', 'ALMEDA', 'GOMEZ', '2016-11-19 00:00:00', 'FEMALE', 'O-', 'CHRISTIAN', 'TEMEKE', 'TANZANIAN', 'SWAHILI', 'grace@gielab.com', 'GOOD TO GOOO', '', '', 1),
(4, '2021-08-09 14:49:42', '2021-08-09 14:49:42', 1, NULL, 'STUD-0004', '2021-02-18 00:00:00', NULL, 8, 2, 1, 1, 'NDUKO', 'JR', 'GOMEZ', '2015-08-09 00:00:00', 'FEMALE', 'B+', 'ISLAMIC', 'TEMEKE', 'TANZANIAN', 'SWAHILI', 'JR@gielab.com', 'GOOD TO GOO', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_batches`
--

CREATE TABLE `student_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_batches`
--

INSERT INTO `student_batches` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-09 13:40:51', '2021-08-09 13:40:51', 1, NULL, '1', 1),
(2, '2021-08-09 14:19:44', '2021-08-09 14:19:44', 1, NULL, '2', 1),
(3, '2021-08-09 14:19:51', '2021-08-09 14:19:51', 1, NULL, '3', 1),
(4, '2021-08-09 14:19:57', '2021-08-09 14:19:57', 1, NULL, '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_guardians`
--

CREATE TABLE `student_guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `guardians_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_guardians`
--

INSERT INTO `student_guardians` (`id`, `created_at`, `updated_at`, `students_id`, `guardians_id`) VALUES
(1, '2021-08-09 14:27:15', '2021-08-09 14:27:15', 1, 1),
(2, '2021-08-09 14:37:10', '2021-08-09 14:37:10', 2, 2),
(3, '2021-08-09 14:45:08', '2021-08-09 14:45:08', 3, 3),
(4, '2021-08-09 14:49:43', '2021-08-09 14:49:43', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'New Admission', 1),
(2, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'Continue', 1),
(3, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'Pass Out', 1),
(4, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'Back Continue', 1),
(5, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'Drop Out', 1),
(6, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'Transfer in', 1),
(7, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'Transfer Out', 1),
(8, '2021-08-08 09:20:21', '2021-08-08 09:20:21', 1, 1, 'Online Registration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_mark_theory` int(11) DEFAULT NULL,
  `pass_mark_theory` int(11) DEFAULT NULL,
  `full_mark_practical` int(11) DEFAULT NULL,
  `pass_mark_practical` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `sub_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `code`, `full_mark_theory`, `pass_mark_theory`, `full_mark_practical`, `pass_mark_practical`, `credit_hour`, `sub_type`, `class_type`, `staff_id`, `description`, `status`) VALUES
(1, '2021-08-09 13:52:26', '2021-09-04 18:39:46', 1, 1, 'MATHS', 'M02', 100, 32, 0, 0, 5, 'Compulsory', 'Theory', 5, 'GOOD TO GO', 1),
(2, '2021-08-09 13:56:57', '2021-09-04 17:57:31', 1, 1, 'KISWAHILI', 'KL01', 100, 20, NULL, NULL, 4, 'Compulsory', 'Theory', 9, 'AM READY', 1),
(3, '2021-08-09 13:58:02', '2021-09-04 17:49:57', 1, 1, 'ENGLISH', 'E03', 100, 20, 0, 0, 4, 'Compulsory', 'Theory', 6, 'GOOD TO GO', 1),
(4, '2021-09-04 17:47:31', '2021-09-04 17:47:31', 1, NULL, 'ARITHMETIC', 'AC01', 100, 20, NULL, NULL, 5, 'Compulsory', 'Both', 10, 'THANKS', 1),
(5, '2021-09-04 17:52:21', '2021-09-04 17:52:21', 1, NULL, 'ENGLISH', 'EH01', NULL, NULL, 100, 20, NULL, 'Compulsory', 'Practical', 6, 'GOOD TO GO', 1),
(6, '2021-09-04 17:54:49', '2021-09-04 17:54:49', 1, NULL, 'HEALTH CARE', 'HR01', 100, 20, NULL, NULL, 3, 'Compulsory', 'Theory', 9, 'GOOD TO GO', 1),
(7, '2021-09-04 17:56:07', '2021-09-04 17:56:07', 1, NULL, 'SPORTS', 'ST01', NULL, NULL, 100, 20, 4, 'Compulsory', 'Practical', 7, 'GOOD TO GO', 1),
(8, '2021-09-04 18:27:44', '2021-09-04 18:27:44', 1, NULL, 'ENGLISH', 'EH02', 100, 32, NULL, NULL, 3, 'Compulsory', 'Theory', 5, 'GOOD TO GO', 1),
(9, '2021-09-04 18:29:16', '2021-09-04 18:29:16', 1, NULL, 'KISWAHILI', 'KL02', 100, 32, NULL, NULL, 3, 'Compulsory', 'Theory', 3, 'GOOD TO GO', 1),
(10, '2021-09-04 18:30:49', '2021-09-04 18:30:49', 1, NULL, 'SCIE TECH', 'ST02', 100, 32, NULL, NULL, 4, 'Compulsory', 'Theory', 5, 'GOOD TO GO', 1),
(11, '2021-09-04 18:32:09', '2021-09-04 18:32:09', 1, NULL, 'SST', 'SS02', 100, 32, NULL, NULL, 2, 'Compulsory', 'Theory', 3, 'GOOD TO GO', 1),
(12, '2021-09-04 18:35:04', '2021-09-04 18:35:04', 1, NULL, 'CIV & MORAL', 'CM02', 100, 32, NULL, NULL, 3, 'Compulsory', 'Theory', 3, 'GOOD TO GO', 1),
(13, '2021-09-04 18:40:46', '2021-09-04 18:40:46', 1, NULL, 'MATHS', 'M03', 100, 32, NULL, NULL, 4, 'Compulsory', 'Theory', 8, 'GOOD TO GO', 1),
(14, '2021-09-04 18:41:47', '2021-09-04 18:41:47', 1, NULL, 'ENGLISH', 'EH03', 100, 32, NULL, NULL, 3, 'Compulsory', 'Theory', 4, 'GOOD TO GO', 1),
(15, '2021-09-04 18:42:48', '2021-09-04 18:42:48', 1, NULL, 'KISWAHILI', 'KL03', 100, 32, NULL, NULL, 3, 'Compulsory', 'Theory', 7, 'GOOD TO GO', 1),
(16, '2021-09-04 18:44:21', '2021-09-04 18:44:21', 1, NULL, 'SCIE TECH', 'ST03', 100, 32, NULL, NULL, 2, 'Compulsory', 'Theory', 6, 'GOOD TO GO', 1),
(17, '2021-09-04 18:45:19', '2021-09-04 18:45:19', 1, NULL, 'SST', 'SS03', 100, 32, NULL, NULL, 2, 'Compulsory', 'Theory', 6, 'GOOD TO GO', 1),
(18, '2021-09-04 18:46:54', '2021-09-04 18:46:54', 1, NULL, 'CIV & MORAL', 'CM03', 100, 32, NULL, NULL, 2, 'Compulsory', 'Theory', 3, 'GOOD TO GO', 1),
(19, '2021-09-04 18:48:00', '2021-09-04 18:48:00', 1, NULL, 'VOCATIONAL SKILLS', 'VS03', 100, 32, NULL, NULL, 3, 'Compulsory', 'Theory', 7, 'GOOD TO GO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject_attendances`
--

CREATE TABLE `subject_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `attendance_type` int(11) NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT 0,
  `day_2` int(11) NOT NULL DEFAULT 0,
  `day_3` int(11) NOT NULL DEFAULT 0,
  `day_4` int(11) NOT NULL DEFAULT 0,
  `day_5` int(11) NOT NULL DEFAULT 0,
  `day_6` int(11) NOT NULL DEFAULT 0,
  `day_7` int(11) NOT NULL DEFAULT 0,
  `day_8` int(11) NOT NULL DEFAULT 0,
  `day_9` int(11) NOT NULL DEFAULT 0,
  `day_10` int(11) NOT NULL DEFAULT 0,
  `day_11` int(11) NOT NULL DEFAULT 0,
  `day_12` int(11) NOT NULL DEFAULT 0,
  `day_13` int(11) NOT NULL DEFAULT 0,
  `day_14` int(11) NOT NULL DEFAULT 0,
  `day_15` int(11) NOT NULL DEFAULT 0,
  `day_16` int(11) NOT NULL DEFAULT 0,
  `day_17` int(11) NOT NULL DEFAULT 0,
  `day_18` int(11) NOT NULL DEFAULT 0,
  `day_19` int(11) NOT NULL DEFAULT 0,
  `day_20` int(11) NOT NULL DEFAULT 0,
  `day_21` int(11) NOT NULL DEFAULT 0,
  `day_22` int(11) NOT NULL DEFAULT 0,
  `day_23` int(11) NOT NULL DEFAULT 0,
  `day_24` int(11) NOT NULL DEFAULT 0,
  `day_25` int(11) NOT NULL DEFAULT 0,
  `day_26` int(11) NOT NULL DEFAULT 0,
  `day_27` int(11) NOT NULL DEFAULT 0,
  `day_28` int(11) NOT NULL DEFAULT 0,
  `day_29` int(11) NOT NULL DEFAULT 0,
  `day_30` int(11) NOT NULL DEFAULT 0,
  `day_31` int(11) NOT NULL DEFAULT 0,
  `day_32` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_attendances`
--

INSERT INTO `subject_attendances` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `link_id`, `subjects_id`, `attendance_type`, `years_id`, `months_id`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `day_32`, `status`) VALUES
(1, '2021-09-01 01:30:47', '2021-09-01 01:30:47', 1, NULL, 1, 1, 1, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(2, '2021-09-01 01:30:47', '2021-09-01 01:30:47', 1, NULL, 3, 1, 1, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `created_at`, `updated_at`, `timezone`, `status`) VALUES
(1, NULL, '2021-09-01 21:57:08', 'Africa/Abidjan', 0),
(2, NULL, '2021-09-01 21:57:08', 'Africa/Accra', 0),
(3, NULL, '2021-09-01 21:57:08', 'Africa/Addis_Ababa', 0),
(4, NULL, '2021-09-01 21:57:08', 'Africa/Algiers', 0),
(5, NULL, '2021-09-01 21:57:08', 'Africa/Asmara', 0),
(6, NULL, '2021-09-01 21:57:08', 'Africa/Asmera', 0),
(7, NULL, '2021-09-01 21:57:08', 'Africa/Bamako', 0),
(8, NULL, '2021-09-01 21:57:08', 'Africa/Bangui', 0),
(9, NULL, '2021-09-01 21:57:08', 'Africa/Banjul', 0),
(10, NULL, '2021-09-01 21:57:08', 'Africa/Bissau', 0),
(11, NULL, '2021-09-01 21:57:08', 'Africa/Blantyre', 0),
(12, NULL, '2021-09-01 21:57:08', 'Africa/Brazzaville', 0),
(13, NULL, '2021-09-01 21:57:08', 'Africa/Bujumbura', 0),
(14, NULL, '2021-09-01 21:57:08', 'Africa/Cairo', 0),
(15, NULL, '2021-09-01 21:57:08', 'Africa/Casablanca', 0),
(16, NULL, '2021-09-01 21:57:08', 'Africa/Ceuta', 0),
(17, NULL, '2021-09-01 21:57:08', 'Africa/Conakry', 0),
(18, NULL, '2021-09-01 21:57:08', 'Africa/Dakar', 0),
(19, NULL, '2021-08-08 09:47:31', 'Africa/Dar_es_Salaam', 1),
(20, NULL, '2021-09-01 21:57:08', 'Africa/Djibouti', 0),
(21, NULL, '2021-09-01 21:57:08', 'Africa/Douala', 0),
(22, NULL, '2021-09-01 21:57:08', 'Africa/El_Aaiun', 0),
(23, NULL, '2021-09-01 21:57:08', 'Africa/Freetown', 0),
(24, NULL, '2021-09-01 21:57:08', 'Africa/Gaborone', 0),
(25, NULL, '2021-09-01 21:57:08', 'Africa/Harare', 0),
(26, NULL, '2021-09-01 21:57:08', 'Africa/Johannesburg', 0),
(27, NULL, '2021-09-01 21:57:08', 'Africa/Juba', 0),
(28, NULL, '2021-09-01 21:57:08', 'Africa/Kampala', 0),
(29, NULL, '2021-09-01 21:57:08', 'Africa/Khartoum', 0),
(30, NULL, '2021-09-01 21:57:08', 'Africa/Kigali', 0),
(31, NULL, '2021-09-01 21:57:08', 'Africa/Kinshasa', 0),
(32, NULL, '2021-09-01 21:57:08', 'Africa/Lagos', 0),
(33, NULL, '2021-09-01 21:57:08', 'Africa/Libreville', 0),
(34, NULL, '2021-09-01 21:57:08', 'Africa/Lome', 0),
(35, NULL, '2021-09-01 21:57:08', 'Africa/Luanda', 0),
(36, NULL, '2021-09-01 21:57:08', 'Africa/Lubumbashi', 0),
(37, NULL, '2021-09-01 21:57:08', 'Africa/Lusaka', 0),
(38, NULL, '2021-09-01 21:57:08', 'Africa/Malabo', 0),
(39, NULL, '2021-09-01 21:57:08', 'Africa/Maputo', 0),
(40, NULL, '2021-09-01 21:57:08', 'Africa/Maseru', 0),
(41, NULL, '2021-09-01 21:57:08', 'Africa/Mbabane', 0),
(42, NULL, '2021-09-01 21:57:08', 'Africa/Mogadishu', 0),
(43, NULL, '2021-09-01 21:57:08', 'Africa/Monrovia', 0),
(44, NULL, '2021-09-01 21:57:08', 'Africa/Nairobi', 0),
(45, NULL, '2021-09-01 21:57:08', 'Africa/Ndjamena', 0),
(46, NULL, '2021-09-01 21:57:08', 'Africa/Niamey', 0),
(47, NULL, '2021-09-01 21:57:08', 'Africa/Nouakchott', 0),
(48, NULL, '2021-09-01 21:57:08', 'Africa/Ouagadougou', 0),
(49, NULL, '2021-09-01 21:57:08', 'Africa/Porto-Novo', 0),
(50, NULL, '2021-09-01 21:57:08', 'Africa/Sao_Tome', 0),
(51, NULL, '2021-09-01 21:57:08', 'Africa/Timbuktu', 0),
(52, NULL, '2021-09-01 21:57:08', 'Africa/Tripoli', 0),
(53, NULL, '2021-09-01 21:57:08', 'Africa/Tunis', 0),
(54, NULL, '2021-09-01 21:57:08', 'Africa/Windhoek', 0),
(55, NULL, '2021-09-01 21:57:08', 'America/Adak', 0),
(56, NULL, '2021-09-01 21:57:08', 'America/Anchorage', 0),
(57, NULL, '2021-09-01 21:57:08', 'America/Anguilla', 0),
(58, NULL, '2021-09-01 21:57:08', 'America/Antigua', 0),
(59, NULL, '2021-09-01 21:57:08', 'America/Araguaina', 0),
(60, NULL, '2021-09-01 21:57:08', 'America/Argentina/Buenos_Aires', 0),
(61, NULL, '2021-09-01 21:57:08', 'America/Argentina/Catamarca', 0),
(62, NULL, '2021-09-01 21:57:08', 'America/Argentina/ComodRivadavia', 0),
(63, NULL, '2021-09-01 21:57:08', 'America/Argentina/Cordoba', 0),
(64, NULL, '2021-09-01 21:57:08', 'America/Argentina/Jujuy', 0),
(65, NULL, '2021-09-01 21:57:08', 'America/Argentina/La_Rioja', 0),
(66, NULL, '2021-09-01 21:57:08', 'America/Argentina/Mendoza', 0),
(67, NULL, '2021-09-01 21:57:08', 'America/Argentina/Rio_Gallegos', 0),
(68, NULL, '2021-09-01 21:57:08', 'America/Argentina/Salta', 0),
(69, NULL, '2021-09-01 21:57:08', 'America/Argentina/San_Juan', 0),
(70, NULL, '2021-09-01 21:57:08', 'America/Argentina/San_Luis', 0),
(71, NULL, '2021-09-01 21:57:08', 'America/Argentina/Tucuman', 0),
(72, NULL, '2021-09-01 21:57:08', 'America/Argentina/Ushuaia', 0),
(73, NULL, '2021-09-01 21:57:08', 'America/Aruba', 0),
(74, NULL, '2021-09-01 21:57:08', 'America/Asuncion', 0),
(75, NULL, '2021-09-01 21:57:08', 'America/Atikokan', 0),
(76, NULL, '2021-09-01 21:57:08', 'America/Atka', 0),
(77, NULL, '2021-09-01 21:57:08', 'America/Bahia', 0),
(78, NULL, '2021-09-01 21:57:08', 'America/Bahia_Banderas', 0),
(79, NULL, '2021-09-01 21:57:08', 'America/Barbados', 0),
(80, NULL, '2021-09-01 21:57:08', 'America/Belem', 0),
(81, NULL, '2021-09-01 21:57:08', 'America/Belize', 0),
(82, NULL, '2021-09-01 21:57:08', 'America/Blanc-Sablon', 0),
(83, NULL, '2021-09-01 21:57:08', 'America/Boa_Vista', 0),
(84, NULL, '2021-09-01 21:57:08', 'America/Bogota', 0),
(85, NULL, '2021-09-01 21:57:08', 'America/Boise', 0),
(86, NULL, '2021-09-01 21:57:08', 'America/Buenos_Aires', 0),
(87, NULL, '2021-09-01 21:57:08', 'America/Cambridge_Bay', 0),
(88, NULL, '2021-09-01 21:57:08', 'America/Campo_Grande', 0),
(89, NULL, '2021-09-01 21:57:08', 'America/Cancun', 0),
(90, NULL, '2021-09-01 21:57:08', 'America/Caracas', 0),
(91, NULL, '2021-09-01 21:57:08', 'America/Catamarca', 0),
(92, NULL, '2021-09-01 21:57:08', 'America/Cayenne', 0),
(93, NULL, '2021-09-01 21:57:08', 'America/Cayman', 0),
(94, NULL, '2021-09-01 21:57:08', 'America/Chicago', 0),
(95, NULL, '2021-09-01 21:57:08', 'America/Chihuahua', 0),
(96, NULL, '2021-09-01 21:57:08', 'America/Coral_Harbour', 0),
(97, NULL, '2021-09-01 21:57:08', 'America/Cordoba', 0),
(98, NULL, '2021-09-01 21:57:08', 'America/Costa_Rica', 0),
(99, NULL, '2021-09-01 21:57:08', 'America/Creston', 0),
(100, NULL, '2021-09-01 21:57:08', 'America/Cuiaba', 0),
(101, NULL, '2021-09-01 21:57:08', 'America/Curacao', 0),
(102, NULL, '2021-09-01 21:57:08', 'America/Danmarkshavn', 0),
(103, NULL, '2021-09-01 21:57:08', 'America/Dawson', 0),
(104, NULL, '2021-09-01 21:57:08', 'America/Dawson_Creek', 0),
(105, NULL, '2021-09-01 21:57:08', 'America/Denver', 0),
(106, NULL, '2021-09-01 21:57:08', 'America/Detroit', 0),
(107, NULL, '2021-09-01 21:57:08', 'America/Dominica', 0),
(108, NULL, '2021-09-01 21:57:08', 'America/Edmonton', 0),
(109, NULL, '2021-09-01 21:57:08', 'America/Eirunepe', 0),
(110, NULL, '2021-09-01 21:57:08', 'America/El_Salvador', 0),
(111, NULL, '2021-09-01 21:57:08', 'America/Ensenada', 0),
(112, NULL, '2021-09-01 21:57:08', 'America/Fort_Wayne', 0),
(113, NULL, '2021-09-01 21:57:08', 'America/Fortaleza', 0),
(114, NULL, '2021-09-01 21:57:08', 'America/Glace_Bay', 0),
(115, NULL, '2021-09-01 21:57:08', 'America/Godthab', 0),
(116, NULL, '2021-09-01 21:57:08', 'America/Goose_Bay', 0),
(117, NULL, '2021-09-01 21:57:08', 'America/Grand_Turk', 0),
(118, NULL, '2021-09-01 21:57:08', 'America/Grenada', 0),
(119, NULL, '2021-09-01 21:57:08', 'America/Guadeloupe', 0),
(120, NULL, '2021-09-01 21:57:08', 'America/Guatemala', 0),
(121, NULL, '2021-09-01 21:57:08', 'America/Guayaquil', 0),
(122, NULL, '2021-09-01 21:57:08', 'America/Guyana', 0),
(123, NULL, '2021-09-01 21:57:08', 'America/Halifax', 0),
(124, NULL, '2021-09-01 21:57:08', 'America/Havana', 0),
(125, NULL, '2021-09-01 21:57:08', 'America/Hermosillo', 0),
(126, NULL, '2021-09-01 21:57:08', 'America/Indiana/Indianapolis', 0),
(127, NULL, '2021-09-01 21:57:08', 'America/Indiana/Knox', 0),
(128, NULL, '2021-09-01 21:57:08', 'America/Indiana/Marengo', 0),
(129, NULL, '2021-09-01 21:57:08', 'America/Indiana/Petersburg', 0),
(130, NULL, '2021-09-01 21:57:08', 'America/Indiana/Tell_City', 0),
(131, NULL, '2021-09-01 21:57:08', 'America/Indiana/Vevay', 0),
(132, NULL, '2021-09-01 21:57:08', 'America/Indiana/Vincennes', 0),
(133, NULL, '2021-09-01 21:57:08', 'America/Indiana/Winamac', 0),
(134, NULL, '2021-09-01 21:57:08', 'America/Indianapolis', 0),
(135, NULL, '2021-09-01 21:57:08', 'America/Inuvik', 0),
(136, NULL, '2021-09-01 21:57:08', 'America/Iqaluit', 0),
(137, NULL, '2021-09-01 21:57:08', 'America/Jamaica', 0),
(138, NULL, '2021-09-01 21:57:08', 'America/Jujuy', 0),
(139, NULL, '2021-09-01 21:57:08', 'America/Juneau', 0),
(140, NULL, '2021-09-01 21:57:08', 'America/Kentucky/Louisville', 0),
(141, NULL, '2021-09-01 21:57:08', 'America/Kentucky/Monticello', 0),
(142, NULL, '2021-09-01 21:57:08', 'America/Knox_IN', 0),
(143, NULL, '2021-09-01 21:57:08', 'America/Kralendijk', 0),
(144, NULL, '2021-09-01 21:57:08', 'America/La_Paz', 0),
(145, NULL, '2021-09-01 21:57:08', 'America/Lima', 0),
(146, NULL, '2021-09-01 21:57:08', 'America/Los_Angeles', 0),
(147, NULL, '2021-09-01 21:57:08', 'America/Louisville', 0),
(148, NULL, '2021-09-01 21:57:08', 'America/Lower_Princes', 0),
(149, NULL, '2021-09-01 21:57:08', 'America/Maceio', 0),
(150, NULL, '2021-09-01 21:57:08', 'America/Managua', 0),
(151, NULL, '2021-09-01 21:57:08', 'America/Manaus', 0),
(152, NULL, '2021-09-01 21:57:08', 'America/Marigot', 0),
(153, NULL, '2021-09-01 21:57:08', 'America/Martinique', 0),
(154, NULL, '2021-09-01 21:57:08', 'America/Matamoros', 0),
(155, NULL, '2021-09-01 21:57:08', 'America/Mazatlan', 0),
(156, NULL, '2021-09-01 21:57:08', 'America/Mendoza', 0),
(157, NULL, '2021-09-01 21:57:08', 'America/Menominee', 0),
(158, NULL, '2021-09-01 21:57:08', 'America/Merida', 0),
(159, NULL, '2021-09-01 21:57:08', 'America/Metlakatla', 0),
(160, NULL, '2021-09-01 21:57:08', 'America/Mexico_City', 0),
(161, NULL, '2021-09-01 21:57:08', 'America/Miquelon', 0),
(162, NULL, '2021-09-01 21:57:08', 'America/Moncton', 0),
(163, NULL, '2021-09-01 21:57:08', 'America/Monterrey', 0),
(164, NULL, '2021-09-01 21:57:08', 'America/Montevideo', 0),
(165, NULL, '2021-09-01 21:57:08', 'America/Montreal', 0),
(166, NULL, '2021-09-01 21:57:08', 'America/Montserrat', 0),
(167, NULL, '2021-09-01 21:57:08', 'America/Nassau', 0),
(168, NULL, '2021-09-01 21:57:08', 'America/New_York', 0),
(169, NULL, '2021-09-01 21:57:08', 'America/Nipigon', 0),
(170, NULL, '2021-09-01 21:57:08', 'America/Nome', 0),
(171, NULL, '2021-09-01 21:57:08', 'America/Noronha', 0),
(172, NULL, '2021-09-01 21:57:08', 'America/North_Dakota/Beulah', 0),
(173, NULL, '2021-09-01 21:57:08', 'America/North_Dakota/Center', 0),
(174, NULL, '2021-09-01 21:57:08', 'America/North_Dakota/New_Salem', 0),
(175, NULL, '2021-09-01 21:57:08', 'America/Ojinaga', 0),
(176, NULL, '2021-09-01 21:57:08', 'America/Panama', 0),
(177, NULL, '2021-09-01 21:57:08', 'America/Pangnirtung', 0),
(178, NULL, '2021-09-01 21:57:08', 'America/Paramaribo', 0),
(179, NULL, '2021-09-01 21:57:08', 'America/Phoenix', 0),
(180, NULL, '2021-09-01 21:57:08', 'America/Port-au-Prince', 0),
(181, NULL, '2021-09-01 21:57:08', 'America/Port_of_Spain', 0),
(182, NULL, '2021-09-01 21:57:08', 'America/Porto_Acre', 0),
(183, NULL, '2021-09-01 21:57:08', 'America/Porto_Velho', 0),
(184, NULL, '2021-09-01 21:57:08', 'America/Puerto_Rico', 0),
(185, NULL, '2021-09-01 21:57:08', 'America/Rainy_River', 0),
(186, NULL, '2021-09-01 21:57:08', 'America/Rankin_Inlet', 0),
(187, NULL, '2021-09-01 21:57:08', 'America/Recife', 0),
(188, NULL, '2021-09-01 21:57:08', 'America/Regina', 0),
(189, NULL, '2021-09-01 21:57:08', 'America/Resolute', 0),
(190, NULL, '2021-09-01 21:57:08', 'America/Rio_Branco', 0),
(191, NULL, '2021-09-01 21:57:08', 'America/Rosario', 0),
(192, NULL, '2021-09-01 21:57:08', 'America/Santa_Isabel', 0),
(193, NULL, '2021-09-01 21:57:08', 'America/Santarem', 0),
(194, NULL, '2021-09-01 21:57:08', 'America/Santiago', 0),
(195, NULL, '2021-09-01 21:57:08', 'America/Santo_Domingo', 0),
(196, NULL, '2021-09-01 21:57:08', 'America/Sao_Paulo', 0),
(197, NULL, '2021-09-01 21:57:08', 'America/Scoresbysund', 0),
(198, NULL, '2021-09-01 21:57:08', 'America/Shiprock', 0),
(199, NULL, '2021-09-01 21:57:08', 'America/Sitka', 0),
(200, NULL, '2021-09-01 21:57:08', 'America/St_Barthelemy', 0),
(201, NULL, '2021-09-01 21:57:08', 'America/St_Johns', 0),
(202, NULL, '2021-09-01 21:57:08', 'America/St_Kitts', 0),
(203, NULL, '2021-09-01 21:57:08', 'America/St_Lucia', 0),
(204, NULL, '2021-09-01 21:57:08', 'America/St_Thomas', 0),
(205, NULL, '2021-09-01 21:57:08', 'America/St_Vincent', 0),
(206, NULL, '2021-09-01 21:57:08', 'America/Swift_Current', 0),
(207, NULL, '2021-09-01 21:57:08', 'America/Tegucigalpa', 0),
(208, NULL, '2021-09-01 21:57:08', 'America/Thule', 0),
(209, NULL, '2021-09-01 21:57:08', 'America/Thunder_Bay', 0),
(210, NULL, '2021-09-01 21:57:08', 'America/Tijuana', 0),
(211, NULL, '2021-09-01 21:57:08', 'America/Toronto', 0),
(212, NULL, '2021-09-01 21:57:08', 'America/Tortola', 0),
(213, NULL, '2021-09-01 21:57:08', 'America/Vancouver', 0),
(214, NULL, '2021-09-01 21:57:08', 'America/Virgin', 0),
(215, NULL, '2021-09-01 21:57:08', 'America/Whitehorse', 0),
(216, NULL, '2021-09-01 21:57:08', 'America/Winnipeg', 0),
(217, NULL, '2021-09-01 21:57:08', 'America/Yakutat', 0),
(218, NULL, '2021-09-01 21:57:08', 'America/Yellowknife', 0),
(219, NULL, '2021-09-01 21:57:08', 'Antarctica/Casey', 0),
(220, NULL, '2021-09-01 21:57:08', 'Antarctica/Davis', 0),
(221, NULL, '2021-09-01 21:57:08', 'Antarctica/DumontDUrville', 0),
(222, NULL, '2021-09-01 21:57:08', 'Antarctica/Macquarie', 0),
(223, NULL, '2021-09-01 21:57:08', 'Antarctica/Mawson', 0),
(224, NULL, '2021-09-01 21:57:08', 'Antarctica/McMurdo', 0),
(225, NULL, '2021-09-01 21:57:08', 'Antarctica/Palmer', 0),
(226, NULL, '2021-09-01 21:57:08', 'Antarctica/Rothera', 0),
(227, NULL, '2021-09-01 21:57:08', 'Antarctica/South_Pole', 0),
(228, NULL, '2021-09-01 21:57:08', 'Antarctica/Syowa', 0),
(229, NULL, '2021-09-01 21:57:08', 'Antarctica/Vostok', 0),
(230, NULL, '2021-09-01 21:57:08', 'Arctic/Longyearbyen', 0),
(231, NULL, '2021-09-01 21:57:08', 'Asia/Aden', 0),
(232, NULL, '2021-09-01 21:57:08', 'Asia/Almaty', 0),
(233, NULL, '2021-09-01 21:57:08', 'Asia/Amman', 0),
(234, NULL, '2021-09-01 21:57:08', 'Asia/Anadyr', 0),
(235, NULL, '2021-09-01 21:57:08', 'Asia/Aqtau', 0),
(236, NULL, '2021-09-01 21:57:08', 'Asia/Aqtobe', 0),
(237, NULL, '2021-09-01 21:57:08', 'Asia/Ashgabat', 0),
(238, NULL, '2021-09-01 21:57:08', 'Asia/Ashkhabad', 0),
(239, NULL, '2021-09-01 21:57:08', 'Asia/Baghdad', 0),
(240, NULL, '2021-09-01 21:57:08', 'Asia/Bahrain', 0),
(241, NULL, '2021-09-01 21:57:08', 'Asia/Baku', 0),
(242, NULL, '2021-09-01 21:57:08', 'Asia/Bangkok', 0),
(243, NULL, '2021-09-01 21:57:08', 'Asia/Beirut', 0),
(244, NULL, '2021-09-01 21:57:08', 'Asia/Bishkek', 0),
(245, NULL, '2021-09-01 21:57:08', 'Asia/Brunei', 0),
(246, NULL, '2021-09-01 21:57:08', 'Asia/Calcutta', 0),
(247, NULL, '2021-09-01 21:57:08', 'Asia/Choibalsan', 0),
(248, NULL, '2021-09-01 21:57:08', 'Asia/Chongqing', 0),
(249, NULL, '2021-09-01 21:57:08', 'Asia/Chungking', 0),
(250, NULL, '2021-09-01 21:57:08', 'Asia/Colombo', 0),
(251, NULL, '2021-09-01 21:57:08', 'Asia/Dacca', 0),
(252, NULL, '2021-09-01 21:57:08', 'Asia/Damascus', 0),
(253, NULL, '2021-09-01 21:57:08', 'Asia/Dhaka', 0),
(254, NULL, '2021-09-01 21:57:08', 'Asia/Dili', 0),
(255, NULL, '2021-09-01 21:57:08', 'Asia/Dubai', 0),
(256, NULL, '2021-09-01 21:57:08', 'Asia/Dushanbe', 0),
(257, NULL, '2021-09-01 21:57:08', 'Asia/Gaza', 0),
(258, NULL, '2021-09-01 21:57:08', 'Asia/Harbin', 0),
(259, NULL, '2021-09-01 21:57:08', 'Asia/Hebron', 0),
(260, NULL, '2021-09-01 21:57:08', 'Asia/Ho_Chi_Minh', 0),
(261, NULL, '2021-09-01 21:57:08', 'Asia/Hong_Kong', 0),
(262, NULL, '2021-09-01 21:57:08', 'Asia/Hovd', 0),
(263, NULL, '2021-09-01 21:57:08', 'Asia/Irkutsk', 0),
(264, NULL, '2021-09-01 21:57:08', 'Asia/Istanbul', 0),
(265, NULL, '2021-09-01 21:57:08', 'Asia/Jakarta', 0),
(266, NULL, '2021-09-01 21:57:08', 'Asia/Jayapura', 0),
(267, NULL, '2021-09-01 21:57:08', 'Asia/Jerusalem', 0),
(268, NULL, '2021-09-01 21:57:08', 'Asia/Kabul', 0),
(269, NULL, '2021-09-01 21:57:08', 'Asia/Kamchatka', 0),
(270, NULL, '2021-09-01 21:57:08', 'Asia/Karachi', 0),
(271, NULL, '2021-09-01 21:57:08', 'Asia/Kashgar', 0),
(272, NULL, '2021-09-01 21:57:08', 'Asia/Kathmandu', 0),
(273, NULL, '2021-09-01 21:57:08', 'Asia/Khandyga', 0),
(274, NULL, '2021-09-01 21:57:08', 'Asia/Kolkata', 0),
(275, NULL, '2021-09-01 21:57:08', 'Asia/Krasnoyarsk', 0),
(276, NULL, '2021-09-01 21:57:08', 'Asia/Kuala_Lumpur', 0),
(277, NULL, '2021-09-01 21:57:08', 'Asia/Kuching', 0),
(278, NULL, '2021-09-01 21:57:08', 'Asia/Kuwait', 0),
(279, NULL, '2021-09-01 21:57:08', 'Asia/Macao', 0),
(280, NULL, '2021-09-01 21:57:08', 'Asia/Macau', 0),
(281, NULL, '2021-09-01 21:57:08', 'Asia/Magadan', 0),
(282, NULL, '2021-09-01 21:57:08', 'Asia/Makassar', 0),
(283, NULL, '2021-09-01 21:57:08', 'Asia/Manila', 0),
(284, NULL, '2021-09-01 21:57:08', 'Asia/Muscat', 0),
(285, NULL, '2021-09-01 21:57:08', 'Asia/Nicosia', 0),
(286, NULL, '2021-09-01 21:57:08', 'Asia/Novokuznetsk', 0),
(287, NULL, '2021-09-01 21:57:08', 'Asia/Novosibirsk', 0),
(288, NULL, '2021-09-01 21:57:08', 'Asia/Omsk', 0),
(289, NULL, '2021-09-01 21:57:08', 'Asia/Oral', 0),
(290, NULL, '2021-09-01 21:57:08', 'Asia/Phnom_Penh', 0),
(291, NULL, '2021-09-01 21:57:08', 'Asia/Pontianak', 0),
(292, NULL, '2021-09-01 21:57:08', 'Asia/Pyongyang', 0),
(293, NULL, '2021-09-01 21:57:08', 'Asia/Qatar', 0),
(294, NULL, '2021-09-01 21:57:08', 'Asia/Qyzylorda', 0),
(295, NULL, '2021-09-01 21:57:08', 'Asia/Rangoon', 0),
(296, NULL, '2021-09-01 21:57:08', 'Asia/Riyadh', 0),
(297, NULL, '2021-09-01 21:57:08', 'Asia/Saigon', 0),
(298, NULL, '2021-09-01 21:57:08', 'Asia/Sakhalin', 0),
(299, NULL, '2021-09-01 21:57:08', 'Asia/Samarkand', 0),
(300, NULL, '2021-09-01 21:57:08', 'Asia/Seoul', 0),
(301, NULL, '2021-09-01 21:57:08', 'Asia/Shanghai', 0),
(302, NULL, '2021-09-01 21:57:08', 'Asia/Singapore', 0),
(303, NULL, '2021-09-01 21:57:08', 'Asia/Taipei', 0),
(304, NULL, '2021-09-01 21:57:08', 'Asia/Tashkent', 0),
(305, NULL, '2021-09-01 21:57:08', 'Asia/Tbilisi', 0),
(306, NULL, '2021-09-01 21:57:08', 'Asia/Tehran', 0),
(307, NULL, '2021-09-01 21:57:08', 'Asia/Tel_Aviv', 0),
(308, NULL, '2021-09-01 21:57:08', 'Asia/Thimbu', 0),
(309, NULL, '2021-09-01 21:57:08', 'Asia/Thimphu', 0),
(310, NULL, '2021-09-01 21:57:08', 'Asia/Tokyo', 0),
(311, NULL, '2021-09-01 21:57:08', 'Asia/Ujung_Pandang', 0),
(312, NULL, '2021-09-01 21:57:08', 'Asia/Ulaanbaatar', 0),
(313, NULL, '2021-09-01 21:57:08', 'Asia/Ulan_Bator', 0),
(314, NULL, '2021-09-01 21:57:08', 'Asia/Urumqi', 0),
(315, NULL, '2021-09-01 21:57:08', 'Asia/Ust-Nera', 0),
(316, NULL, '2021-09-01 21:57:08', 'Asia/Vientiane', 0),
(317, NULL, '2021-09-01 21:57:08', 'Asia/Vladivostok', 0),
(318, NULL, '2021-09-01 21:57:08', 'Asia/Yakutsk', 0),
(319, NULL, '2021-09-01 21:57:08', 'Asia/Yekaterinburg', 0),
(320, NULL, '2021-09-01 21:57:08', 'Asia/Yerevan', 0),
(321, NULL, '2021-09-01 21:57:08', 'Atlantic/Azores', 0),
(322, NULL, '2021-09-01 21:57:08', 'Atlantic/Bermuda', 0),
(323, NULL, '2021-09-01 21:57:08', 'Atlantic/Canary', 0),
(324, NULL, '2021-09-01 21:57:08', 'Atlantic/Cape_Verde', 0),
(325, NULL, '2021-09-01 21:57:08', 'Atlantic/Faeroe', 0),
(326, NULL, '2021-09-01 21:57:08', 'Atlantic/Faroe', 0),
(327, NULL, '2021-09-01 21:57:08', 'Atlantic/Jan_Mayen', 0),
(328, NULL, '2021-09-01 21:57:08', 'Atlantic/Madeira', 0),
(329, NULL, '2021-09-01 21:57:08', 'Atlantic/Reykjavik', 0),
(330, NULL, '2021-09-01 21:57:08', 'Atlantic/South_Georgia', 0),
(331, NULL, '2021-09-01 21:57:08', 'Atlantic/St_Helena', 0),
(332, NULL, '2021-09-01 21:57:08', 'Atlantic/Stanley', 0),
(333, NULL, '2021-09-01 21:57:08', 'Australia/ACT', 0),
(334, NULL, '2021-09-01 21:57:08', 'Australia/Adelaide', 0),
(335, NULL, '2021-09-01 21:57:08', 'Australia/Brisbane', 0),
(336, NULL, '2021-09-01 21:57:08', 'Australia/Broken_Hill', 0),
(337, NULL, '2021-09-01 21:57:08', 'Australia/Canberra', 0),
(338, NULL, '2021-09-01 21:57:08', 'Australia/Currie', 0),
(339, NULL, '2021-09-01 21:57:08', 'Australia/Darwin', 0),
(340, NULL, '2021-09-01 21:57:08', 'Australia/Eucla', 0),
(341, NULL, '2021-09-01 21:57:08', 'Australia/Hobart', 0),
(342, NULL, '2021-09-01 21:57:08', 'Australia/LHI', 0),
(343, NULL, '2021-09-01 21:57:08', 'Australia/Lindeman', 0),
(344, NULL, '2021-09-01 21:57:08', 'Australia/Lord_Howe', 0),
(345, NULL, '2021-09-01 21:57:08', 'Australia/Melbourne', 0),
(346, NULL, '2021-09-01 21:57:08', 'Australia/North', 0),
(347, NULL, '2021-09-01 21:57:08', 'Australia/NSW', 0),
(348, NULL, '2021-09-01 21:57:08', 'Australia/Perth', 0),
(349, NULL, '2021-09-01 21:57:08', 'Australia/Queensland', 0),
(350, NULL, '2021-09-01 21:57:08', 'Australia/South', 0),
(351, NULL, '2021-09-01 21:57:08', 'Australia/Sydney', 0),
(352, NULL, '2021-09-01 21:57:08', 'Australia/Tasmania', 0),
(353, NULL, '2021-09-01 21:57:08', 'Australia/Victoria', 0),
(354, NULL, '2021-09-01 21:57:08', 'Australia/West', 0),
(355, NULL, '2021-09-01 21:57:08', 'Australia/Yancowinna', 0),
(356, NULL, '2021-09-01 21:57:08', 'Europe/Amsterdam', 0),
(357, NULL, '2021-09-01 21:57:08', 'Europe/Andorra', 0),
(358, NULL, '2021-09-01 21:57:08', 'Europe/Athens', 0),
(359, NULL, '2021-09-01 21:57:08', 'Europe/Belfast', 0),
(360, NULL, '2021-09-01 21:57:08', 'Europe/Belgrade', 0),
(361, NULL, '2021-09-01 21:57:08', 'Europe/Berlin', 0),
(362, NULL, '2021-09-01 21:57:08', 'Europe/Bratislava', 0),
(363, NULL, '2021-09-01 21:57:08', 'Europe/Brussels', 0),
(364, NULL, '2021-09-01 21:57:08', 'Europe/Bucharest', 0),
(365, NULL, '2021-09-01 21:57:08', 'Europe/Budapest', 0),
(366, NULL, '2021-09-01 21:57:08', 'Europe/Busingen', 0),
(367, NULL, '2021-09-01 21:57:08', 'Europe/Chisinau', 0),
(368, NULL, '2021-09-01 21:57:08', 'Europe/Copenhagen', 0),
(369, NULL, '2021-09-01 21:57:08', 'Europe/Dublin', 0),
(370, NULL, '2021-09-01 21:57:08', 'Europe/Gibraltar', 0),
(371, NULL, '2021-09-01 21:57:08', 'Europe/Guernsey', 0),
(372, NULL, '2021-09-01 21:57:08', 'Europe/Helsinki', 0),
(373, NULL, '2021-09-01 21:57:08', 'Europe/Isle_of_Man', 0),
(374, NULL, '2021-09-01 21:57:08', 'Europe/Istanbul', 0),
(375, NULL, '2021-09-01 21:57:08', 'Europe/Jersey', 0),
(376, NULL, '2021-09-01 21:57:08', 'Europe/Kaliningrad', 0),
(377, NULL, '2021-09-01 21:57:08', 'Europe/Kiev', 0),
(378, NULL, '2021-09-01 21:57:08', 'Europe/Lisbon', 0),
(379, NULL, '2021-09-01 21:57:08', 'Europe/Ljubljana', 0),
(380, NULL, '2021-09-01 21:57:08', 'Europe/London', 0),
(381, NULL, '2021-09-01 21:57:08', 'Europe/Luxembourg', 0),
(382, NULL, '2021-09-01 21:57:08', 'Europe/Madrid', 0),
(383, NULL, '2021-09-01 21:57:08', 'Europe/Malta', 0),
(384, NULL, '2021-09-01 21:57:08', 'Europe/Mariehamn', 0),
(385, NULL, '2021-09-01 21:57:08', 'Europe/Minsk', 0),
(386, NULL, '2021-09-01 21:57:08', 'Europe/Monaco', 0),
(387, NULL, '2021-09-01 21:57:08', 'Europe/Moscow', 0),
(388, NULL, '2021-09-01 21:57:08', 'Europe/Nicosia', 0),
(389, NULL, '2021-09-01 21:57:08', 'Europe/Oslo', 0),
(390, NULL, '2021-09-01 21:57:08', 'Europe/Paris', 0),
(391, NULL, '2021-09-01 21:57:08', 'Europe/Podgorica', 0),
(392, NULL, '2021-09-01 21:57:08', 'Europe/Prague', 0),
(393, NULL, '2021-09-01 21:57:08', 'Europe/Riga', 0),
(394, NULL, '2021-09-01 21:57:08', 'Europe/Rome', 0),
(395, NULL, '2021-09-01 21:57:08', 'Europe/Samara', 0),
(396, NULL, '2021-09-01 21:57:08', 'Europe/San_Marino', 0),
(397, NULL, '2021-09-01 21:57:08', 'Europe/Sarajevo', 0),
(398, NULL, '2021-09-01 21:57:08', 'Europe/Simferopol', 0),
(399, NULL, '2021-09-01 21:57:08', 'Europe/Skopje', 0),
(400, NULL, '2021-09-01 21:57:08', 'Europe/Sofia', 0),
(401, NULL, '2021-09-01 21:57:08', 'Europe/Stockholm', 0),
(402, NULL, '2021-09-01 21:57:08', 'Europe/Tallinn', 0),
(403, NULL, '2021-09-01 21:57:08', 'Europe/Tirane', 0),
(404, NULL, '2021-09-01 21:57:08', 'Europe/Tiraspol', 0),
(405, NULL, '2021-09-01 21:57:08', 'Europe/Uzhgorod', 0),
(406, NULL, '2021-09-01 21:57:08', 'Europe/Vaduz', 0),
(407, NULL, '2021-09-01 21:57:08', 'Europe/Vatican', 0),
(408, NULL, '2021-09-01 21:57:08', 'Europe/Vienna', 0),
(409, NULL, '2021-09-01 21:57:08', 'Europe/Vilnius', 0),
(410, NULL, '2021-09-01 21:57:08', 'Europe/Volgograd', 0),
(411, NULL, '2021-09-01 21:57:08', 'Europe/Warsaw', 0),
(412, NULL, '2021-09-01 21:57:08', 'Europe/Zagreb', 0),
(413, NULL, '2021-09-01 21:57:08', 'Europe/Zaporozhye', 0),
(414, NULL, '2021-09-01 21:57:08', 'Europe/Zurich', 0),
(415, NULL, '2021-09-01 21:57:08', 'Indian/Antananarivo', 0),
(416, NULL, '2021-09-01 21:57:08', 'Indian/Chagos', 0),
(417, NULL, '2021-09-01 21:57:08', 'Indian/Christmas', 0),
(418, NULL, '2021-09-01 21:57:08', 'Indian/Cocos', 0),
(419, NULL, '2021-09-01 21:57:08', 'Indian/Comoro', 0),
(420, NULL, '2021-09-01 21:57:08', 'Indian/Kerguelen', 0),
(421, NULL, '2021-09-01 21:57:08', 'Indian/Mahe', 0),
(422, NULL, '2021-09-01 21:57:08', 'Indian/Maldives', 0),
(423, NULL, '2021-09-01 21:57:08', 'Indian/Mauritius', 0),
(424, NULL, '2021-09-01 21:57:08', 'Indian/Mayotte', 0),
(425, NULL, '2021-09-01 21:57:08', 'Indian/Reunion', 0),
(426, NULL, '2021-09-01 21:57:08', 'Pacific/Apia', 0),
(427, NULL, '2021-09-01 21:57:08', 'Pacific/Auckland', 0),
(428, NULL, '2021-09-01 21:57:08', 'Pacific/Chatham', 0),
(429, NULL, '2021-09-01 21:57:08', 'Pacific/Chuuk', 0),
(430, NULL, '2021-09-01 21:57:08', 'Pacific/Easter', 0),
(431, NULL, '2021-09-01 21:57:08', 'Pacific/Efate', 0),
(432, NULL, '2021-09-01 21:57:08', 'Pacific/Enderbury', 0),
(433, NULL, '2021-09-01 21:57:08', 'Pacific/Fakaofo', 0),
(434, NULL, '2021-09-01 21:57:08', 'Pacific/Fiji', 0),
(435, NULL, '2021-09-01 21:57:08', 'Pacific/Funafuti', 0),
(436, NULL, '2021-09-01 21:57:08', 'Pacific/Galapagos', 0),
(437, NULL, '2021-09-01 21:57:08', 'Pacific/Gambier', 0),
(438, NULL, '2021-09-01 21:57:08', 'Pacific/Guadalcanal', 0),
(439, NULL, '2021-09-01 21:57:08', 'Pacific/Guam', 0),
(440, NULL, '2021-09-01 21:57:08', 'Pacific/Honolulu', 0),
(441, NULL, '2021-09-01 21:57:08', 'Pacific/Johnston', 0),
(442, NULL, '2021-09-01 21:57:08', 'Pacific/Kiritimati', 0),
(443, NULL, '2021-09-01 21:57:08', 'Pacific/Kosrae', 0),
(444, NULL, '2021-09-01 21:57:08', 'Pacific/Kwajalein', 0),
(445, NULL, '2021-09-01 21:57:08', 'Pacific/Majuro', 0),
(446, NULL, '2021-09-01 21:57:08', 'Pacific/Marquesas', 0),
(447, NULL, '2021-09-01 21:57:08', 'Pacific/Midway', 0),
(448, NULL, '2021-09-01 21:57:08', 'Pacific/Nauru', 0),
(449, NULL, '2021-09-01 21:57:08', 'Pacific/Niue', 0),
(450, NULL, '2021-09-01 21:57:08', 'Pacific/Norfolk', 0),
(451, NULL, '2021-09-01 21:57:08', 'Pacific/Noumea', 0),
(452, NULL, '2021-09-01 21:57:08', 'Pacific/Pago_Pago', 0),
(453, NULL, '2021-09-01 21:57:08', 'Pacific/Palau', 0),
(454, NULL, '2021-09-01 21:57:08', 'Pacific/Pitcairn', 0),
(455, NULL, '2021-09-01 21:57:08', 'Pacific/Pohnpei', 0),
(456, NULL, '2021-09-01 21:57:08', 'Pacific/Ponape', 0),
(457, NULL, '2021-09-01 21:57:08', 'Pacific/Port_Moresby', 0),
(458, NULL, '2021-09-01 21:57:08', 'Pacific/Rarotonga', 0),
(459, NULL, '2021-09-01 21:57:08', 'Pacific/Saipan', 0),
(460, NULL, '2021-09-01 21:57:08', 'Pacific/Samoa', 0),
(461, NULL, '2021-09-01 21:57:08', 'Pacific/Tahiti', 0),
(462, NULL, '2021-09-01 21:57:08', 'Pacific/Tarawa', 0),
(463, NULL, '2021-09-01 21:57:08', 'Pacific/Tongatapu', 0),
(464, NULL, '2021-09-01 21:57:08', 'Pacific/Truk', 0),
(465, NULL, '2021-09-01 21:57:08', 'Pacific/Wake', 0),
(466, NULL, '2021-09-01 21:57:08', 'Pacific/Wallis', 0),
(467, NULL, '2021-09-01 21:57:08', 'Pacific/Yap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `dr_amount` int(11) DEFAULT NULL,
  `cr_amount` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `tr_head_id`, `date`, `dr_amount`, `cr_amount`, `description`, `status`) VALUES
(2, '2021-08-09 19:29:18', '2021-08-09 19:29:18', 1, NULL, 13, '2021-08-08 00:00:00', 90000, 7000, 'ERYERTRT', 1),
(3, '2021-08-09 19:32:27', '2021-08-09 19:32:27', 1, NULL, 5, '2021-08-09 00:00:00', 7090, NULL, 'KJHJTYGJHJKJLJK,JK', 1),
(4, '2021-08-09 19:32:27', '2021-08-09 19:32:27', 1, NULL, 4, '2021-08-09 00:00:00', NULL, 7090, 'KJHJTYGJHJKJLJK,JK', 1),
(5, '2021-08-18 16:30:08', '2021-08-18 16:30:08', 1, NULL, 14, '2021-08-18 00:00:00', 1100000, 0, 'Opening Balance', 1),
(6, '2021-09-01 18:44:55', '2021-09-01 18:44:55', 1, NULL, 14, '2021-08-31 00:00:00', 279000, 0, 'Salary', 1),
(7, '2021-09-01 18:49:39', '2021-09-01 18:49:39', 1, NULL, 11, '2021-09-01 00:00:00', 0, 23000, 'iij;j;k;k;l', 1),
(8, '2021-09-01 18:49:39', '2021-09-01 18:49:39', 1, NULL, 14, '2021-09-01 00:00:00', 23000, 0, 'Advance', 1),
(9, '2021-09-01 18:51:36', '2021-09-01 18:51:36', 1, NULL, 14, '2021-10-01 00:00:00', 78000, NULL, 'Advance', 1),
(10, '2021-09-01 18:51:36', '2021-09-01 18:51:36', 1, NULL, 4, '2021-10-01 00:00:00', NULL, 78000, 'Advance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_heads`
--

CREATE TABLE `transaction_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` int(10) UNSIGNED DEFAULT NULL,
  `acc_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_heads`
--

INSERT INTO `transaction_heads` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `tr_head`, `ref_id`, `acc_id`, `status`) VALUES
(1, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'Cash A/C', NULL, 13, 1),
(2, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'Purchase A/C', NULL, 68, 1),
(3, '2021-08-08 09:21:03', '2021-08-08 09:21:03', 1, NULL, 'Sales A/C', NULL, 77, 1),
(4, '2021-08-08 11:13:48', '2021-08-08 11:13:48', 1, NULL, 'LOREM KR IPSUM  [S001]', 3, 76, 1),
(5, '2021-08-08 11:13:48', '2021-08-08 11:13:48', 1, NULL, 'UTTAM RAJ YADU  [S002]', 4, 76, 1),
(6, '2021-08-08 11:13:49', '2021-08-08 11:13:49', 1, NULL, 'UMESH KUMAR YADAV  [S003]', 5, 76, 1),
(7, '2021-08-08 11:13:49', '2021-08-08 11:13:49', 1, NULL, 'HARI  ADHIKARI  [S004]', 6, 76, 1),
(8, '2021-08-08 11:13:49', '2021-08-08 11:13:49', 1, NULL, 'NOV  AANAND  [S005]', 7, 76, 1),
(9, '2021-08-08 11:13:49', '2021-08-08 11:13:49', 1, NULL, 'GITA  SHRESTHA  [S006]', 8, 76, 1),
(10, '2021-08-08 11:13:49', '2021-08-08 11:13:49', 1, NULL, 'SITA  MADE  [S007]', 9, 76, 1),
(11, '2021-08-08 11:13:50', '2021-08-08 11:13:50', 1, NULL, 'RITA  GOSWAMI  [S008]', 10, 76, 1),
(12, '2021-08-08 11:13:50', '2021-08-08 11:13:50', 1, NULL, 'AAYUSH  GHOSLA  [S009]', 11, 76, 1),
(13, '2021-08-08 11:13:50', '2021-08-08 11:13:50', 1, NULL, 'PREETI  SHRESTHA  [S010]', 12, 76, 1),
(14, '2021-08-18 16:30:08', '2021-08-18 16:30:08', 1, NULL, 'Nduko JR', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_certificates`
--

CREATE TABLE `transfer_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `tc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaving_time_class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualified_to_promote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_fee_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_histories`
--

CREATE TABLE `transport_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `travellers_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_histories`
--

INSERT INTO `transport_histories` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `years_id`, `routes_id`, `vehicles_id`, `travellers_id`, `history_type`, `status`) VALUES
(1, '2021-08-09 15:09:05', '2021-08-09 15:09:05', 1, NULL, 3, 1, 1, 1, 'Registration', 1),
(2, '2021-08-09 15:09:23', '2021-08-09 15:09:23', 1, NULL, 3, 4, 4, 2, 'Registration', 1),
(3, '2021-08-09 15:09:41', '2021-08-09 15:09:41', 1, NULL, 3, 3, 3, 3, 'Registration', 1),
(4, '2021-08-09 15:09:59', '2021-08-09 15:09:59', 1, NULL, 3, 2, 2, 4, 'Registration', 1),
(5, '2021-08-09 15:13:52', '2021-08-09 15:13:52', 1, NULL, 3, 1, 1, 1, 'Shift', 1),
(6, '2021-08-10 16:52:17', '2021-08-10 16:52:17', 1, NULL, 3, 1, 1, 1, 'Leave', 1),
(7, '2021-08-10 16:53:52', '2021-08-10 16:53:52', 1, NULL, 3, 2, 2, 5, 'Registration', 1),
(8, '2021-08-12 11:08:42', '2021-08-12 11:08:42', 1, NULL, 3, 4, 4, 1, 'Renew', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transport_users`
--

CREATE TABLE `transport_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_users`
--

INSERT INTO `transport_users` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `routes_id`, `vehicles_id`, `user_type`, `member_id`, `status`) VALUES
(1, '2021-08-09 15:09:05', '2021-08-12 11:08:42', 1, 1, 4, 4, 1, 1, 1),
(2, '2021-08-09 15:09:22', '2021-08-09 15:09:22', 1, NULL, 4, 4, 1, 2, 1),
(3, '2021-08-09 15:09:41', '2021-08-09 15:09:41', 1, NULL, 3, 3, 1, 3, 1),
(4, '2021-08-09 15:09:59', '2021-08-09 15:09:59', 1, NULL, 2, 2, 1, 4, 1),
(5, '2021-08-10 16:53:52', '2021-08-10 16:53:52', 1, NULL, 2, 2, 2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `hook_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`, `contact_number`, `address`, `profile_image`, `role_id`, `hook_id`, `status`) VALUES
(1, 'Super Admin', 'admin@gielab.com', '$2y$10$JnnMfmR0972ZKv9THbKyjOf1WaIo8yY5icCWl.7S0m2Bhjq9nlsia', NULL, '2021-09-18 17:43:20', '127.0.0.1', NULL, '2021-09-18 17:43:20', NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Grace Amelda', 'grace@gielab.com', '$2y$10$qbc6Nw1HCwzkND.mNkvpbeafgIIGEOgKdWuufpXZNMVLxbitnnaU2', NULL, '2021-08-11 06:28:33', '127.0.0.1', '2021-08-08 10:44:03', '2021-08-11 06:28:33', '909092', 'Dar es Salaam', '', NULL, NULL, 1),
(3, 'EZEKIEL GIDEON EGWAGA', 'ezekiel@gielab.com', '$2y$10$e3MQEBi0U/6E0bZX5gsSve094vKfuMfMoU15rpl53b0FBuiTtFzOu', NULL, '2021-08-10 15:58:14', '127.0.0.1', '2021-08-10 15:52:59', '2021-08-10 15:58:14', NULL, NULL, NULL, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `number`, `type`, `model`, `description`, `status`) VALUES
(1, '2021-08-09 15:00:21', '2021-08-09 15:00:21', 1, NULL, 'T 783 DDR', 'BUS', 'TATA Macopollo', 'TAKES 70 CAPACITY', 1),
(2, '2021-08-09 15:01:49', '2021-08-09 15:01:49', 1, NULL, 'T 782 DDR', 'BUS', 'TATA Macopollo', 'CAPACITY 70 SEATED', 1),
(3, '2021-08-09 15:03:08', '2021-08-09 15:03:08', 1, NULL, 'T 781 DDR', 'BUS', 'TATA Macopollo', 'CAPACITY 65 SEATED', 1),
(4, '2021-08-09 15:03:54', '2021-08-09 15:03:54', 1, NULL, 'T 780 DDR', 'BUS', 'TATA Macopollo', 'CAPACITY 70 SEATED', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_staffs`
--

CREATE TABLE `vehicle_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `staffs_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_staffs`
--

INSERT INTO `vehicle_staffs` (`id`, `created_at`, `updated_at`, `vehicles_id`, `staffs_id`, `status`) VALUES
(1, NULL, NULL, 1, 12, 1),
(2, NULL, NULL, 2, 9, 1),
(3, NULL, NULL, 3, 6, 1),
(4, NULL, NULL, 4, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `purpose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_time` time NOT NULL,
  `out_time` time DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_logs`
--

INSERT INTO `visitor_logs` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `date`, `purpose`, `name`, `phone`, `email`, `id_doc`, `id_num`, `in_time`, `out_time`, `token`, `note`, `attachment`, `status`) VALUES
(1, '2021-08-17 19:18:03', '2021-09-01 00:46:36', 1, NULL, '2021-08-17 00:00:00', 'See', 'Super Admin', '909090909', 'grace@gielab.com', '7890', '90909', '09:00:00', '11:00:00', '76tyfd', 'fsdgdfgdfgdfhdhgf', '0_.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_purposes`
--

CREATE TABLE `visitor_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_purposes`
--

INSERT INTO `visitor_purposes` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-08-17 19:16:41', '2021-09-18 17:51:43', 1, NULL, 'See', 0);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `active_status`, `status`) VALUES
(1, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, '2018', 0, 0),
(2, '2021-08-08 09:20:22', '2021-08-08 09:20:22', 1, NULL, '2019', 0, 0),
(3, '2021-08-08 09:20:22', '2021-08-10 14:28:32', 1, 1, '2021', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_infos_students_id_foreign` (`students_id`);

--
-- Indexes for table `account_categories`
--
ALTER TABLE `account_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_categories_ac_name_unique` (`ac_name`);

--
-- Indexes for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressinfos_students_id_foreign` (`students_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assets_title_unique` (`title`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_years_id_foreign` (`years_id`),
  ADD KEY `assignments_semesters_id_foreign` (`semesters_id`),
  ADD KEY `assignments_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_answers_assignments_id_foreign` (`assignments_id`),
  ADD KEY `assignment_answers_students_id_foreign` (`students_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_years_id_foreign` (`years_id`),
  ADD KEY `attendances_months_id_foreign` (`months_id`);

--
-- Indexes for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_masters_year_foreign` (`year`),
  ADD KEY `attendance_masters_month_foreign` (`month`);

--
-- Indexes for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_statuses_title_unique` (`title`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_transactions_banks_id_foreign` (`banks_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beds_hostels_id_foreign` (`hostels_id`),
  ADD KEY `beds_rooms_id_foreign` (`rooms_id`),
  ADD KEY `beds_bed_status_foreign` (`bed_status`);

--
-- Indexes for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bed_statuses_title_unique` (`title`);

--
-- Indexes for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bonafide_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`),
  ADD KEY `books_book_masters_id_foreign` (`book_masters_id`),
  ADD KEY `books_book_status_foreign` (`book_status`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_title_unique` (`title`),
  ADD UNIQUE KEY `book_categories_slug_unique` (`slug`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_issues_book_id_foreign` (`book_id`);

--
-- Indexes for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_masters_categories_foreign` (`categories`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_statuses`
--
ALTER TABLE `book_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_statuses_title_unique` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Indexes for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_histories_students_id_foreign` (`students_id`);

--
-- Indexes for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `character_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `character_certificates_cc_num_unique` (`cc_num`);

--
-- Indexes for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_completion_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_reg_no_unique` (`reg_no`);

--
-- Indexes for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_statuses_title_unique` (`title`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `days_title_unique` (`title`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eating_times`
--
ALTER TABLE `eating_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eating_times_title_unique` (`title`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_title_unique` (`title`);

--
-- Indexes for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_mark_ledgers_students_id_foreign` (`students_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedules_years_id_foreign` (`years_id`),
  ADD KEY `exam_schedules_months_id_foreign` (`months_id`),
  ADD KEY `exam_schedules_exams_id_foreign` (`exams_id`),
  ADD KEY `exam_schedules_faculty_id_foreign` (`faculty_id`),
  ADD KEY `exam_schedules_semesters_id_foreign` (`semesters_id`),
  ADD KEY `exam_schedules_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_faculty_unique` (`faculty`),
  ADD UNIQUE KEY `faculties_faculty_code_unique` (`faculty_code`);

--
-- Indexes for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_semester_faculty_id_foreign` (`faculty_id`),
  ADD KEY `faculty_semester_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_collections_students_id_foreign` (`students_id`),
  ADD KEY `fee_collections_fee_masters_id_foreign` (`fee_masters_id`);

--
-- Indexes for table `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_heads_fee_head_title_unique` (`fee_head_title`);

--
-- Indexes for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_masters_students_id_foreign` (`students_id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_categories_title_unique` (`title`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_items_title_unique` (`title`);

--
-- Indexes for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_schedules`
--
ALTER TABLE `food_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_settings_time_zones_id_foreign` (`time_zones_id`);

--
-- Indexes for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grading_scales_gradingtype_id_foreign` (`gradingType_id`);

--
-- Indexes for table `grading_types`
--
ALTER TABLE `grading_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grading_types_title_unique` (`title`),
  ADD UNIQUE KEY `grading_types_slug_unique` (`slug`);

--
-- Indexes for table `guardian_details`
--
ALTER TABLE `guardian_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostels_name_unique` (`name`);

--
-- Indexes for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `library_circulations`
--
ALTER TABLE `library_circulations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_circulations_user_type_unique` (`user_type`),
  ADD UNIQUE KEY `library_circulations_slug_unique` (`slug`),
  ADD UNIQUE KEY `library_circulations_code_prefix_unique` (`code_prefix`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_semesters_id_foreign` (`semesters_id`),
  ADD KEY `meetings_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `months_title_unique` (`title`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_details_students_id_foreign` (`students_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_title_unique` (`title`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_heads_title_unique` (`title`),
  ADD UNIQUE KEY `payroll_heads_slug_unique` (`slug`);

--
-- Indexes for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_masters_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchanges_ref_no_unique` (`ref_no`);

--
-- Indexes for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchange_types_title_unique` (`title`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_prices_products_id_unique` (`products_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_vendors_id_foreign` (`vendors_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_products_id_foreign` (`products_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_returns_vendors_id_foreign` (`vendors_id`),
  ADD KEY `purchase_returns_products_id_foreign` (`products_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `residents_hostels_id_foreign` (`hostels_id`),
  ADD KEY `residents_rooms_id_foreign` (`rooms_id`),
  ADD KEY `residents_beds_id_foreign` (`beds_id`);

--
-- Indexes for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_histories_years_id_foreign` (`years_id`),
  ADD KEY `resident_histories_hostels_id_foreign` (`hostels_id`),
  ADD KEY `resident_histories_rooms_id_foreign` (`rooms_id`),
  ADD KEY `resident_histories_beds_id_foreign` (`beds_id`),
  ADD KEY `resident_histories_residents_id_foreign` (`residents_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_hostels_id_foreign` (`hostels_id`),
  ADD KEY `rooms_room_type_foreign` (`room_type`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_title_unique` (`title`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routes_title_unique` (`title`);

--
-- Indexes for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_pays_staff_id_foreign` (`staff_id`),
  ADD KEY `salary_pays_salary_masters_id_foreign` (`salary_masters_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_semester_unique` (`semester`),
  ADD UNIQUE KEY `semesters_slug_unique` (`slug`);

--
-- Indexes for table `semester_assets`
--
ALTER TABLE `semester_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_subject_semester_id_foreign` (`semester_id`),
  ADD KEY `semester_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_emails`
--
ALTER TABLE `sms_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_reg_no_unique` (`reg_no`),
  ADD KEY `staff_designation_foreign` (`designation`);

--
-- Indexes for table `staff_designations`
--
ALTER TABLE `staff_designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_designations_title_unique` (`title`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_reg_no_unique` (`reg_no`),
  ADD KEY `students_faculty_foreign` (`faculty`),
  ADD KEY `students_semester_foreign` (`semester`),
  ADD KEY `students_academic_status_foreign` (`academic_status`),
  ADD KEY `students_batch_foreign` (`batch`);

--
-- Indexes for table `student_batches`
--
ALTER TABLE `student_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_batches_title_unique` (`title`);

--
-- Indexes for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_guardians_students_id_foreign` (`students_id`),
  ADD KEY `student_guardians_guardians_id_foreign` (`guardians_id`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_statuses_title_unique` (`title`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_attendances_years_id_foreign` (`years_id`),
  ADD KEY `subject_attendances_months_id_foreign` (`months_id`),
  ADD KEY `subject_attendances_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_head_id_foreign` (`tr_head_id`);

--
-- Indexes for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfer_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `transfer_certificates_tc_num_unique` (`tc_num`);

--
-- Indexes for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_histories_travellers_id_foreign` (`travellers_id`);

--
-- Indexes for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_users_routes_id_foreign` (`routes_id`),
  ADD KEY `transport_users_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_number_unique` (`number`);

--
-- Indexes for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_staffs_staffs_id_foreign` (`staffs_id`),
  ADD KEY `vehicle_staffs_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_reg_no_unique` (`reg_no`);

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_purposes_title_unique` (`title`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_infos`
--
ALTER TABLE `academic_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_categories`
--
ALTER TABLE `account_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `addressinfos`
--
ALTER TABLE `addressinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_masters`
--
ALTER TABLE `book_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_statuses`
--
ALTER TABLE `book_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `character_certificates`
--
ALTER TABLE `character_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eating_times`
--
ALTER TABLE `eating_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `fee_collections`
--
ALTER TABLE `fee_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `fee_heads`
--
ALTER TABLE `fee_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `fee_masters`
--
ALTER TABLE `fee_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_schedules`
--
ALTER TABLE `food_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grading_scales`
--
ALTER TABLE `grading_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `grading_types`
--
ALTER TABLE `grading_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guardian_details`
--
ALTER TABLE `guardian_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_circulations`
--
ALTER TABLE `library_circulations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_payments`
--
ALTER TABLE `online_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_details`
--
ALTER TABLE `parent_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=714;

--
-- AUTO_INCREMENT for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resident_histories`
--
ALTER TABLE `resident_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary_pays`
--
ALTER TABLE `salary_pays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semester_assets`
--
ALTER TABLE `semester_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester_subject`
--
ALTER TABLE `semester_subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_emails`
--
ALTER TABLE `sms_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `staff_designations`
--
ALTER TABLE `staff_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_batches`
--
ALTER TABLE `student_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_guardians`
--
ALTER TABLE `student_guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_histories`
--
ALTER TABLE `transport_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transport_users`
--
ALTER TABLE `transport_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD CONSTRAINT `academic_infos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD CONSTRAINT `addressinfos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `assignments_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `assignments_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD CONSTRAINT `assignment_answers_assignments_id_foreign` FOREIGN KEY (`assignments_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `assignment_answers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD CONSTRAINT `attendance_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD CONSTRAINT `attendance_masters_month_foreign` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `attendance_masters_year_foreign` FOREIGN KEY (`year`) REFERENCES `years` (`id`);

--
-- Constraints for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD CONSTRAINT `bank_transactions_banks_id_foreign` FOREIGN KEY (`banks_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_bed_status_foreign` FOREIGN KEY (`bed_status`) REFERENCES `bed_statuses` (`id`),
  ADD CONSTRAINT `beds_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `beds_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD CONSTRAINT `bonafide_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_book_masters_id_foreign` FOREIGN KEY (`book_masters_id`) REFERENCES `book_masters` (`id`),
  ADD CONSTRAINT `books_book_status_foreign` FOREIGN KEY (`book_status`) REFERENCES `book_statuses` (`id`);

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD CONSTRAINT `book_masters_categories_foreign` FOREIGN KEY (`categories`) REFERENCES `book_categories` (`id`);

--
-- Constraints for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD CONSTRAINT `certificate_histories_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD CONSTRAINT `character_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD CONSTRAINT `course_completion_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD CONSTRAINT `exam_mark_ledgers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_exams_id_foreign` FOREIGN KEY (`exams_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_schedules_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `exam_schedules_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `exam_schedules_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `exam_schedules_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_schedules_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD CONSTRAINT `faculty_semester_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `faculty_semester_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD CONSTRAINT `fee_collections_fee_masters_id_foreign` FOREIGN KEY (`fee_masters_id`) REFERENCES `fee_masters` (`id`),
  ADD CONSTRAINT `fee_collections_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD CONSTRAINT `fee_masters_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD CONSTRAINT `general_settings_time_zones_id_foreign` FOREIGN KEY (`time_zones_id`) REFERENCES `time_zones` (`id`);

--
-- Constraints for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD CONSTRAINT `grading_scales_gradingtype_id_foreign` FOREIGN KEY (`gradingType_id`) REFERENCES `grading_types` (`id`);

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `meetings_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD CONSTRAINT `parent_details_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD CONSTRAINT `payroll_masters_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `purchase_returns_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_returns_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`),
  ADD CONSTRAINT `residents_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `residents_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD CONSTRAINT `resident_histories_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`),
  ADD CONSTRAINT `resident_histories_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `resident_histories_residents_id_foreign` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`),
  ADD CONSTRAINT `resident_histories_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `resident_histories_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `rooms_room_type_foreign` FOREIGN KEY (`room_type`) REFERENCES `room_types` (`id`);

--
-- Constraints for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD CONSTRAINT `salary_pays_salary_masters_id_foreign` FOREIGN KEY (`salary_masters_id`) REFERENCES `payroll_masters` (`id`),
  ADD CONSTRAINT `salary_pays_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD CONSTRAINT `semester_subject_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `semester_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_designation_foreign` FOREIGN KEY (`designation`) REFERENCES `staff_designations` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_academic_status_foreign` FOREIGN KEY (`academic_status`) REFERENCES `student_statuses` (`id`),
  ADD CONSTRAINT `students_batch_foreign` FOREIGN KEY (`batch`) REFERENCES `student_batches` (`id`),
  ADD CONSTRAINT `students_faculty_foreign` FOREIGN KEY (`faculty`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `students_semester_foreign` FOREIGN KEY (`semester`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD CONSTRAINT `student_guardians_guardians_id_foreign` FOREIGN KEY (`guardians_id`) REFERENCES `guardian_details` (`id`),
  ADD CONSTRAINT `student_guardians_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD CONSTRAINT `subject_attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `subject_attendances_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subject_attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_tr_head_id_foreign` FOREIGN KEY (`tr_head_id`) REFERENCES `transaction_heads` (`id`);

--
-- Constraints for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD CONSTRAINT `transfer_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD CONSTRAINT `transport_histories_travellers_id_foreign` FOREIGN KEY (`travellers_id`) REFERENCES `transport_users` (`id`);

--
-- Constraints for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD CONSTRAINT `transport_users_routes_id_foreign` FOREIGN KEY (`routes_id`) REFERENCES `routes` (`id`),
  ADD CONSTRAINT `transport_users_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD CONSTRAINT `vehicle_staffs_staffs_id_foreign` FOREIGN KEY (`staffs_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `vehicle_staffs_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
