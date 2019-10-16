-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019 年 10 月 16 日 04:21
-- 伺服器版本： 5.6.30-76.3
-- PHP 版本： 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `icons`
--

-- --------------------------------------------------------

--
-- 資料表結構 `errorlog`
--

CREATE TABLE `errorlog` (
  `log_id` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_code` text,
  `log_message` text,
  `log_previous` text,
  `log_file` text,
  `log_line` text,
  `log_trace` text,
  `log_traceasstring` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `errorlog`
--

INSERT INTO `errorlog` (`log_id`, `log_time`, `log_code`, `log_message`, `log_previous`, `log_file`, `log_line`, `log_trace`, `log_traceasstring`) VALUES
(1, '2018-12-26 09:49:07', NULL, '[]', NULL, NULL, NULL, NULL, NULL),
(2, '2018-12-26 09:51:08', NULL, '[]', NULL, NULL, NULL, NULL, NULL),
(3, '2018-12-26 09:52:06', NULL, '8', NULL, NULL, NULL, NULL, NULL),
(4, '2018-12-27 02:28:30', NULL, '{\"id\":\"228\",\"type\":\"FW\"}', NULL, NULL, NULL, NULL, NULL),
(5, '2018-12-27 02:31:41', NULL, '\"', NULL, NULL, NULL, NULL, NULL),
(6, '2018-12-27 02:32:35', NULL, '/files/1/IN體育uiKit/fw/冬季兩項.fw.png', NULL, NULL, NULL, NULL, NULL),
(7, '2018-12-27 02:37:45', NULL, '/files/1/IN體育uiKit/fw/冬季兩項.fw.png', NULL, NULL, NULL, NULL, NULL),
(8, '2018-12-27 02:49:22', NULL, '/files/1/IN體育uiKit/fw/冬季兩項.fw.png', NULL, NULL, NULL, NULL, NULL),
(9, '2018-12-27 02:49:35', NULL, '/files/1/IN體育uiKit/fw/冬季兩項.fw.png', NULL, NULL, NULL, NULL, NULL),
(10, '2018-12-27 02:49:35', NULL, '/files/1/IN體育uiKit/fw/冬季兩項.fw.png', NULL, NULL, NULL, NULL, NULL),
(11, '2018-12-27 02:49:41', NULL, '/files/1/IN體育uiKit/fw/冬季兩項.fw.png', NULL, NULL, NULL, NULL, NULL),
(12, '2018-12-27 02:49:48', NULL, '/files/1/彩票uiKit/fw/搜尋(查詢).fw.png', NULL, NULL, NULL, NULL, NULL),
(13, '2018-12-27 02:49:59', NULL, '/files/1/彩票uiKit/png/下注.png', NULL, NULL, NULL, NULL, NULL),
(14, '2018-12-27 02:51:21', NULL, '/files/1/彩票uiKit/png/投注入門.png', NULL, NULL, NULL, NULL, NULL),
(15, '2018-12-27 02:52:02', NULL, '/files/1/彩票uiKit/fw/主盤勢.fw.png', NULL, NULL, NULL, NULL, NULL),
(16, '2018-12-27 02:52:12', NULL, '/files/1/彩票uiKit/png/主盤勢.png', NULL, NULL, NULL, NULL, NULL),
(17, '2018-12-27 02:58:44', NULL, '/files/1/IN體育uiKit/psd/足球.psd', NULL, NULL, NULL, NULL, NULL),
(18, '2018-12-27 03:31:12', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG.png\"]', NULL, NULL, NULL, NULL, NULL),
(19, '2018-12-27 03:32:16', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(20, '2018-12-27 03:33:56', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(21, '2018-12-27 03:33:56', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51ac\\u5b63\\u5169\\u9805\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(22, '2018-12-27 03:33:56', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403\",\"psd\"]', NULL, NULL, NULL, NULL, NULL),
(23, '2018-12-27 03:33:56', NULL, '/files/1/IN體育uiKit/psd/足球.psd', NULL, NULL, NULL, NULL, NULL),
(24, '2018-12-27 03:34:10', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/Lacrosse\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(25, '2018-12-27 03:34:10', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/AG\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(26, '2018-12-27 03:34:10', NULL, '/files/1/機率uiKit/png/AG.png', NULL, NULL, NULL, NULL, NULL),
(27, '2018-12-27 03:34:16', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(28, '2018-12-27 03:34:16', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51ac\\u5b63\\u5169\\u9805\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(29, '2018-12-27 03:34:16', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403\",\"psd\"]', NULL, NULL, NULL, NULL, NULL),
(30, '2018-12-27 03:34:16', NULL, '/files/1/IN體育uiKit/fw/冬季兩項.fw.png', NULL, NULL, NULL, NULL, NULL),
(31, '2018-12-27 03:34:22', NULL, '[\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(32, '2018-12-27 03:34:22', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(33, '2018-12-27 03:34:22', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403\",\"psd\"]', NULL, NULL, NULL, NULL, NULL),
(34, '2018-12-27 03:34:22', NULL, '/files/1/機率uiKit/fw/JDB.fw.png', NULL, NULL, NULL, NULL, NULL),
(35, '2018-12-27 03:34:28', NULL, '[\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(36, '2018-12-27 03:34:28', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(37, '2018-12-27 03:34:28', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403\",\"psd\"]', NULL, NULL, NULL, NULL, NULL),
(38, '2018-12-27 03:34:28', NULL, '/files/1/機率uiKit/fw/JDB.fw.png', NULL, NULL, NULL, NULL, NULL),
(39, '2018-12-27 03:37:06', NULL, '[\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(40, '2018-12-27 03:37:06', NULL, 'row36', NULL, NULL, NULL, NULL, NULL),
(41, '2018-12-27 03:37:06', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(42, '2018-12-27 03:37:06', NULL, 'row32', NULL, NULL, NULL, NULL, NULL),
(43, '2018-12-27 03:37:06', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403\",\"psd\"]', NULL, NULL, NULL, NULL, NULL),
(44, '2018-12-27 03:37:06', NULL, 'row41', NULL, NULL, NULL, NULL, NULL),
(45, '2018-12-27 03:37:06', NULL, '/files/1/機率uiKit/fw/JDB.fw.png', NULL, NULL, NULL, NULL, NULL),
(46, '2018-12-27 03:38:29', NULL, '[\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(47, '2018-12-27 03:38:29', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(48, '2018-12-27 03:38:29', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403\",\"psd\"]', NULL, NULL, NULL, NULL, NULL),
(49, '2018-12-27 03:38:29', NULL, '/files/1/APP/png/JDB電子.png', NULL, NULL, NULL, NULL, NULL),
(50, '2018-12-27 03:38:47', NULL, '[\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(51, '2018-12-27 03:38:47', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB\",\"fw\",\"png\"]', NULL, NULL, NULL, NULL, NULL),
(52, '2018-12-27 03:38:47', NULL, '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403\",\"psd\"]', NULL, NULL, NULL, NULL, NULL),
(53, '2018-12-27 03:38:47', NULL, '/files/1/機率uiKit/fw/JDB.fw.png', NULL, NULL, NULL, NULL, NULL),
(54, '2018-12-27 03:39:24', NULL, '/files/1/APP/png/JDB電子.png', NULL, NULL, NULL, NULL, NULL),
(55, '2018-12-27 03:40:25', NULL, '/files/1/機率uiKit/png/SG.png', NULL, NULL, NULL, NULL, NULL),
(56, '2018-12-27 03:40:33', NULL, '/files/1/APP/png/JDB電子.png', NULL, NULL, NULL, NULL, NULL),
(57, '2018-12-27 03:41:03', NULL, '/files/1/APP/png/JDB電子.png', NULL, NULL, NULL, NULL, NULL),
(58, '2018-12-27 03:41:09', NULL, '/files/1/機率uiKit/png/四層彩金(minor).png', NULL, NULL, NULL, NULL, NULL),
(59, '2018-12-27 03:41:16', NULL, '/files/1/機率uiKit/fw/四層彩金(minor).fw.png', NULL, NULL, NULL, NULL, NULL),
(60, '2018-12-27 03:41:24', NULL, '/files/1/機率uiKit/png/SG.png', NULL, NULL, NULL, NULL, NULL),
(61, '2018-12-27 03:41:30', NULL, '/files/1/機率uiKit/fw/3D遊戲.fw.png', NULL, NULL, NULL, NULL, NULL),
(62, '2018-12-27 03:45:30', NULL, '/files/1/機率uiKit/fw/刮刮樂.fw.png', NULL, NULL, NULL, NULL, NULL),
(63, '2018-12-28 01:47:31', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(64, '2018-12-28 02:26:51', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(65, '2018-12-28 02:26:55', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(66, '2018-12-28 02:39:57', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(67, '2018-12-28 02:40:02', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(68, '2018-12-28 02:40:06', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(69, '2018-12-28 02:40:25', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(70, '2018-12-28 02:40:29', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(71, '2018-12-28 02:40:33', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(72, '2018-12-28 02:40:53', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(73, '2018-12-28 02:41:02', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(74, '2018-12-28 03:15:24', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(75, '2018-12-28 03:23:17', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(76, '2018-12-28 03:50:31', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(77, '2018-12-28 03:50:43', NULL, 'null', NULL, NULL, NULL, NULL, NULL),
(78, '2019-01-09 02:53:34', NULL, '[\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/H5\\u7248.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/AG.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51ac\\u5b63\\u5169\\u9805.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(minor).png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(major).png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/3D\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/H5\\u7248.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/flash\\u7248.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6436\\u5148\\u770b.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6211\\u7684\\u6700\\u611b.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6355\\u9b5a.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u7d2f\\u7a4d\\u5f69\\u6c60.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8996\\u8a0a\\u64b2\\u514b.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8001\\u864e\\u6a5f.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u522e\\u522e\\u6a02.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u5927\\u578b\\u6a5f\\u53f0.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u684c\\u4e0a\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u7279\\u8272.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u66f4\\u591a.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u5168\\u90e8.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u71b1\\u9580\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6700\\u65b0\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u63a8\\u85a6.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/JDB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/RT.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/MW.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/AG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/PP.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/PT.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/HB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/iSB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/GNS.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/MG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/BB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8a66\\u73a9.png\"]', NULL, NULL, NULL, NULL, NULL),
(79, '2019-01-09 02:54:38', NULL, '[\"\\/files\\/1\\/APP\\/png\\/BB\\u5f69\\u7968.png\",\"\\/files\\/2\\/limit.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u986f\\u793a\\u73fe\\u5834\\u96fb\\u8a71\\u865f\\u78bc.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u54aa_\\u7af6\\u9ab0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65c1\\u89c0\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u9032\\u5ea7\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7368\\u4eab.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u8d85\\u7d1a\\u591a\\u53f0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u591a\\u53f0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u772f\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5feb\\u901f\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65d7\\u8266\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u591a\\u53f0\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/OG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/Allbet.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/GD.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/AG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BB.png\"]', NULL, NULL, NULL, NULL, NULL),
(80, '2019-01-09 02:56:15', NULL, '[\"\\/files\\/1\\/APP\\/png\\/BB\\u5f69\\u7968.png\",\"\\/files\\/2\\/limit.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u986f\\u793a\\u73fe\\u5834\\u96fb\\u8a71\\u865f\\u78bc.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u54aa_\\u7af6\\u9ab0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65c1\\u89c0\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u9032\\u5ea7\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7368\\u4eab.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u8d85\\u7d1a\\u591a\\u53f0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u591a\\u53f0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u772f\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5feb\\u901f\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65d7\\u8266\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u591a\\u53f0\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/OG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/Allbet.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/GD.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/AG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BB.png\"]', NULL, NULL, NULL, NULL, NULL),
(81, '2019-01-09 02:56:15', NULL, '是喔', NULL, NULL, NULL, NULL, NULL),
(82, '2019-01-09 02:57:19', NULL, '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8\\u7d00\\u9304(\\u5e33\\u6236\\u6b77\\u53f2).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e3b\\u76e4\\u52e2.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5feb\\u9078\\u91d1\\u984d.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6295\\u6ce8\\u5165\\u9580.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u63db\\u684c.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5f69\\u7968\\u5927\\u5ef3.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5feb\\u9078(\\u5b98\\u65b9\\u7248).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u8a2d\\u5b9a(\\u5b98\\u65b9\\u7248).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u8a2d\\u5b9a(\\u50b3\\u7d71\\u7248).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6703\\u54e1\\u4e2d\\u5fc3.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u958b\\u734e\\u7d50\\u679c.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6703\\u54e1\\u8cc7\\u6599.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8\\u72c0\\u6cc1.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5168\\u95dc\\u9589\\u97f3\\u6a02\\u97f3\\u6548.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5168\\u958b\\u555f\\u97f3\\u6a02\\u97f3\\u6548.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u898f\\u5247\\u8aaa\\u660e2.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u898f\\u5247\\u8aaa\\u660e.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u66ab\\u505c\\u6295\\u6ce8.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u591a\\u53f0\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u641c\\u5c0b(\\u67e5\\u8a62).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6211\\u7684\\u6700\\u611b2.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6211\\u7684\\u6700\\u611b.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u71b1\\u9580\\u904a\\u62322.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u71b1\\u9580\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u7be9\\u9060.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u9078\\u55ae(\\u529f\\u80fd\\u5217\\u8868).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u9577\\u9f8d\\u6295\\u6ce8.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5f69\\u7968\\u904a\\u6232\\u9078\\u55ae.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u901a\\u77e5(\\u8a0a\\u606f)2.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u901a\\u77e5(\\u8a0a\\u606f).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6700\\u8fd1\\u4e0b\\u6ce82.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6700\\u8fd1\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae2.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae2.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8\\u7d00\\u9304(\\u5e33\\u6236\\u6b77\\u53f2)2.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8\\u7d00\\u9304(\\u5e33\\u6236\\u6b77\\u53f2).png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u64cd\\u4f5c\\u8aaa\\u660e.png\"]', NULL, NULL, NULL, NULL, NULL),
(83, '2019-01-09 02:57:19', NULL, '是喔', NULL, NULL, NULL, NULL, NULL),
(84, '2019-05-28 03:43:15', NULL, '[\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(85, '2019-05-28 03:48:49', NULL, '[\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(86, '2019-05-28 03:49:35', NULL, '[\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(87, '2019-05-28 03:50:36', NULL, '[\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(88, '2019-05-28 03:50:38', NULL, '[\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(89, '2019-05-28 03:50:39', NULL, '[\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(90, '2019-05-28 03:50:40', NULL, '[\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(91, '2019-05-28 03:50:41', NULL, '[\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"..\\/\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\"]', NULL, NULL, NULL, NULL, NULL),
(92, '2019-05-28 05:51:35', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/投注入門.fw.png', NULL, NULL, NULL, NULL, NULL),
(93, '2019-05-28 05:52:34', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/換桌.fw.png', NULL, NULL, NULL, NULL, NULL),
(94, '2019-05-28 05:55:37', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/換桌.fw.png', NULL, NULL, NULL, NULL, NULL),
(95, '2019-05-28 05:55:43', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/彩票大廳.fw.png', NULL, NULL, NULL, NULL, NULL),
(96, '2019-05-28 05:56:34', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/快選(官方版).fw.png', NULL, NULL, NULL, NULL, NULL),
(97, '2019-05-28 06:20:30', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/換桌.fw.png', NULL, NULL, NULL, NULL, NULL),
(98, '2019-05-28 06:22:09', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/換桌.fw.png', NULL, NULL, NULL, NULL, NULL),
(99, '2019-05-28 06:22:10', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/換桌.fw.png', NULL, NULL, NULL, NULL, NULL),
(100, '2019-05-28 07:46:22', NULL, '/home/artadmin/www/iconkit/Back/public//files/1/彩票uiKit/fw/投注入門.fw.png', NULL, NULL, NULL, NULL, NULL),
(101, '2019-05-28 08:12:00', NULL, 'base_path:/home/artadmin/www/iconkit/Back', NULL, NULL, NULL, NULL, NULL),
(102, '2019-05-28 08:12:00', NULL, 'config_path:/home/artadmin/www/iconkit/Back/config', NULL, NULL, NULL, NULL, NULL),
(103, '2019-05-28 08:12:00', NULL, 'database_path:/home/artadmin/www/iconkit/Back/database', NULL, NULL, NULL, NULL, NULL),
(104, '2019-05-28 08:12:00', NULL, 'storage_path:/home/artadmin/www/iconkit/Back/storage', NULL, NULL, NULL, NULL, NULL),
(105, '2019-05-28 08:12:00', NULL, 'app_path:/home/artadmin/www/iconkit/Back/app', NULL, NULL, NULL, NULL, NULL),
(106, '2019-05-28 08:14:43', NULL, 'base_path:/home/artadmin/www/iconkit/Back', NULL, NULL, NULL, NULL, NULL),
(107, '2019-05-28 08:14:43', NULL, 'config_path:/home/artadmin/www/iconkit/Back/config', NULL, NULL, NULL, NULL, NULL),
(108, '2019-05-28 08:14:43', NULL, 'database_path:/home/artadmin/www/iconkit/Back/database', NULL, NULL, NULL, NULL, NULL),
(109, '2019-05-28 08:14:43', NULL, 'storage_path:/home/artadmin/www/iconkit/Back/storage', NULL, NULL, NULL, NULL, NULL),
(110, '2019-05-28 08:14:43', NULL, 'app_path:/home/artadmin/www/iconkit/Back/app', NULL, NULL, NULL, NULL, NULL),
(111, '2019-06-11 01:22:56', NULL, 'base_path:/home/artadmin/www/iconkit/Back', NULL, NULL, NULL, NULL, NULL),
(112, '2019-06-11 01:22:56', NULL, 'config_path:/home/artadmin/www/iconkit/Back/config', NULL, NULL, NULL, NULL, NULL),
(113, '2019-06-11 01:22:56', NULL, 'database_path:/home/artadmin/www/iconkit/Back/database', NULL, NULL, NULL, NULL, NULL),
(114, '2019-06-11 01:22:56', NULL, 'storage_path:/home/artadmin/www/iconkit/Back/storage', NULL, NULL, NULL, NULL, NULL),
(115, '2019-06-11 01:22:56', NULL, 'app_path:/home/artadmin/www/iconkit/Back/app', NULL, NULL, NULL, NULL, NULL),
(116, '2019-06-11 02:02:51', NULL, 'base_path:/home/artadmin/www/iconkit/Back', NULL, NULL, NULL, NULL, NULL),
(117, '2019-06-11 02:02:51', NULL, 'config_path:/home/artadmin/www/iconkit/Back/config', NULL, NULL, NULL, NULL, NULL),
(118, '2019-06-11 02:02:51', NULL, 'database_path:/home/artadmin/www/iconkit/Back/database', NULL, NULL, NULL, NULL, NULL),
(119, '2019-06-11 02:02:51', NULL, 'storage_path:/home/artadmin/www/iconkit/Back/storage', NULL, NULL, NULL, NULL, NULL),
(120, '2019-06-11 02:02:51', NULL, 'app_path:/home/artadmin/www/iconkit/Back/app', NULL, NULL, NULL, NULL, NULL),
(121, '2019-06-11 02:45:35', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(122, '2019-06-11 02:45:35', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(123, '2019-06-11 02:46:24', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(124, '2019-06-11 02:46:24', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(125, '2019-06-11 02:46:24', NULL, '[\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).fw.png\",\"\\/home\\/artadmin\\/www\\/iconkit\\/Back\\/public\\/\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).png\"]', NULL, NULL, NULL, NULL, NULL),
(126, '2019-06-11 02:47:02', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(127, '2019-06-11 02:47:02', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(128, '2019-06-11 02:47:02', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).png\"]', NULL, NULL, NULL, NULL, NULL),
(129, '2019-06-11 02:49:58', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(130, '2019-06-11 02:49:58', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(131, '2019-06-11 02:49:58', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).png\"]', NULL, NULL, NULL, NULL, NULL),
(132, '2019-06-11 02:51:52', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(133, '2019-06-11 02:51:52', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(134, '2019-06-11 02:51:52', NULL, '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).png\"]', NULL, NULL, NULL, NULL, NULL),
(135, '2019-06-11 02:52:36', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(136, '2019-06-11 02:52:36', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(137, '2019-06-11 02:52:38', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(138, '2019-06-11 02:52:38', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(139, '2019-06-11 02:53:03', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(140, '2019-06-11 02:53:03', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(141, '2019-06-11 02:53:05', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(142, '2019-06-11 02:53:05', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(143, '2019-06-11 02:55:40', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(144, '2019-06-11 02:55:40', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(145, '2019-06-11 02:55:40', NULL, 'row-48', NULL, NULL, NULL, NULL, NULL),
(146, '2019-06-11 02:56:26', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(147, '2019-06-11 02:56:26', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(148, '2019-06-11 02:56:26', NULL, 'row-48', NULL, NULL, NULL, NULL, NULL),
(149, '2019-06-11 02:56:29', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(150, '2019-06-11 02:56:29', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(151, '2019-06-11 02:56:29', NULL, 'row-48', NULL, NULL, NULL, NULL, NULL),
(152, '2019-06-11 03:04:41', NULL, 'row-31', NULL, NULL, NULL, NULL, NULL),
(153, '2019-06-11 03:04:41', NULL, 'row-44', NULL, NULL, NULL, NULL, NULL),
(154, '2019-06-11 03:04:41', NULL, 'row-48', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `icons`
--

CREATE TABLE `icons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagsData` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `icons`
--

INSERT INTO `icons` (`id`, `name`, `tagsData`, `files`, `list`, `type`, `created_at`, `updated_at`) VALUES
(1, '足球', '[\"\\u8db3\\u7403\",\"soccer\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8db3\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8db3\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403.psd\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":true}', '2018-03-15 10:12:33', '2018-03-19 11:53:21'),
(2, '籃球', '[\"\\u7c43\\u7403\",\"basketball\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7c43\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7c43\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:27:18', '2018-03-15 10:27:18'),
(3, '美式足球', '[\"\\u7f8e\\u5f0f\\u8db3\\u7403\",\"football\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7f8e\\u5f0f\\u8db3\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7f8e\\u5f0f\\u8db3\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:28:18', '2018-03-15 10:28:18'),
(4, '網球', '[\"\\u7db2\\u7403\",\"tennis\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7db2\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7db2\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:31:51', '2018-03-15 10:31:51'),
(5, '棒球', '[\"\\u68d2\\u7403\",\"baseball\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u68d2\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u68d2\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:33:58', '2018-03-15 10:33:58'),
(6, '冰上曲棍球', '[\"\\u51b0\\u4e0a\\u66f2\\u68cd\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51b0\\u4e0a\\u66f2\\u68cd\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51b0\\u4e0a\\u66f2\\u68cd\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:36:29', '2018-03-15 10:36:29'),
(7, '排球', '[\"\\u6392\\u7403\",\"volleyball\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6392\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6392\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:38:51', '2018-03-15 10:38:51'),
(8, '電子競技', '[\"\\u96fb\\u5b50\\u7af6\\u6280\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u96fb\\u5b50\\u7af6\\u6280.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u96fb\\u5b50\\u7af6\\u6280.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:40:32', '2018-03-15 10:40:32'),
(9, '羽毛球', '[\"\\u7fbd\\u6bdb\\u7403\",\"badminton\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7fbd\\u6bdb\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7fbd\\u6bdb\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:42:42', '2018-03-15 10:42:42'),
(10, '司諾克(英式撞球)', '[\"\\u53f8\\u8afe\\u514b\",\"\\u82f1\\u5f0f\\u649e\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u53f8\\u8afe\\u514b(\\u82f1\\u5f0f\\u649e\\u7403).fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u53f8\\u8afe\\u514b(\\u82f1\\u5f0f\\u649e\\u7403).png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:43:39', '2018-03-15 10:43:39'),
(11, '拳擊', '[\"\\u62f3\\u64ca\",\"boxing\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u62f3\\u64ca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u62f3\\u64ca.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:44:44', '2018-03-15 10:44:44'),
(12, '乒乓球', '[\"\\u4e52\\u4e53\\u7403\",\"table tennis\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u4e52\\u4e53\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e52\\u4e53\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:47:35', '2018-03-15 10:47:35'),
(13, '手球', '[\"\\u624b\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u624b\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u624b\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:48:17', '2018-03-15 10:48:17'),
(14, '草地曲棍球', '[\"\\u8349\\u5730\\u66f2\\u68cd\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8349\\u5730\\u66f2\\u68cd\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8349\\u5730\\u66f2\\u68cd\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:50:14', '2018-03-15 10:50:14'),
(15, '賽車', '[\"\\u8cfd\\u8eca\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u8eca.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:51:21', '2018-03-15 10:51:21'),
(16, '高爾夫', '[\"\\u9ad8\\u723e\\u592b\",\"golf\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u9ad8\\u723e\\u592b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u9ad8\\u723e\\u592b.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:52:18', '2018-03-15 10:52:18'),
(17, '自行車', '[\"\\u81ea\\u884c\\u8eca\",\"bicycle\",\"bike\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u81ea\\u884c\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u81ea\\u884c\\u8eca.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:53:20', '2018-03-15 10:53:20'),
(18, '田徑', '[\"\\u7530\\u5f91\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7530\\u5f91.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7530\\u5f91.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:58:28', '2018-03-15 10:58:28'),
(19, '飛鏢', '[\"\\u98db\\u93e2\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u98db\\u93e2.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u98db\\u93e2.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:58:56', '2018-03-15 14:15:10'),
(20, '奧林匹克', '[\"\\u5967\\u6797\\u5339\\u514b\",\"Olympic\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5967\\u6797\\u5339\\u514b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5967\\u6797\\u5339\\u514b.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 10:59:42', '2018-03-15 10:59:42'),
(21, '水球', '[\"\\u6c34\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6c34\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6c34\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 11:01:38', '2018-03-15 11:01:38'),
(22, '冬季奧運', '[\"\\u51ac\\u5b63\\u5967\\u904b\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51ac\\u5b63\\u5967\\u904b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51ac\\u5b63\\u5967\\u904b.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 11:02:15', '2018-03-15 11:02:15'),
(23, '板棍球', '[\"\\u677f\\u68cd\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u677f\\u68cd\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u677f\\u68cd\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 11:02:59', '2018-03-15 11:02:59'),
(24, '板球', '[\"\\u677f\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u677f\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u677f\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 11:03:44', '2018-03-15 11:03:44'),
(25, '游泳', '[\"\\u6e38\\u6cf3\",\"swim\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6e38\\u6cf3.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6e38\\u6cf3.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 11:12:01', '2018-03-15 11:12:01'),
(26, '政治', '[\"\\u653f\\u6cbb\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u653f\\u6cbb.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u653f\\u6cbb.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 11:12:56', '2018-03-15 11:12:56'),
(27, '跳水', '[\"\\u8df3\\u6c34\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8df3\\u6c34.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8df3\\u6c34.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 11:14:23', '2018-03-15 11:14:23'),
(29, '射箭', '[\"\\u5c04\\u7bad\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5c04\\u7bad.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5c04\\u7bad.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 13:57:28', '2018-03-15 13:57:28'),
(30, '舉重', '[\"\\u8209\\u91cd\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8209\\u91cd.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8209\\u91cd.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:00:06', '2018-03-15 14:00:06'),
(31, '皮划艇', '[\"\\u76ae\\u5212\\u8247\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u76ae\\u5212\\u8247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u76ae\\u5212\\u8247.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:01:05', '2018-03-15 14:01:05'),
(32, '體操', '[\"\\u9ad4\\u64cd\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u9ad4\\u64cd.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u9ad4\\u64cd.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:02:06', '2018-03-15 14:02:06'),
(33, '馬術', '[\"\\u99ac\\u8853\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u99ac\\u8853.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u99ac\\u8853.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:06:15', '2018-03-15 14:06:15'),
(34, '壁球', '[\"\\u58c1\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u907f\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u907f\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:06:49', '2018-03-15 14:06:49'),
(35, '娛樂', '[\"\\u5a1b\\u6a02\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5a1b\\u6a02.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5a1b\\u6a02.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:07:19', '2018-03-15 14:07:19'),
(36, '擊劍', '[\"\\u64ca\\u528d\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u64ca\\u528d.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u64ca\\u528d.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:08:02', '2018-03-15 14:08:02'),
(37, '柔道', '[\"\\u67d4\\u9053\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u67d4\\u9053.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u67d4\\u9053.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:08:33', '2018-03-15 14:08:33'),
(38, '現代五項', '[\"\\u73fe\\u4ee3\\u4e94\\u9805\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u73fe\\u4ee3\\u4e94\\u9805.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u73fe\\u4ee3\\u4e94\\u9805.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:09:11', '2018-03-15 14:09:11'),
(39, '划船', '[\"\\u5212\\u8239\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5212\\u8239.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5212\\u8239.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:10:17', '2018-03-15 14:10:17'),
(40, '帆船', '[\"\\u5e06\\u8239\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5e06\\u8239.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5e06\\u8239.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:11:20', '2018-03-15 14:11:20'),
(41, '射擊', '[\"\\u5c04\\u64ca\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5c04\\u64ca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5c04\\u64ca.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:12:05', '2018-03-15 14:12:05'),
(42, '跆拳道', '[\"\\u8dc6\\u62f3\\u9053\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8dc6\\u62f3\\u9053.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8dc6\\u62f3\\u9053.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:17:33', '2018-03-15 14:17:33'),
(43, '鐵人三項', '[\"\\u9435\\u4eba\\u4e09\\u9805\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u9435\\u4eba\\u4e09\\u9805.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u9435\\u4eba\\u4e09\\u9805.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:19:00', '2018-03-15 14:19:00'),
(44, '泰拳', '[\"\\u6cf0\\u62f3\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6cf0\\u62f3.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6cf0\\u62f3.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:23:10', '2018-03-15 14:23:10'),
(45, '賽馬', '[\"\\u8cfd\\u99ac\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u99ac.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u99ac.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:23:45', '2018-03-15 14:23:45'),
(46, '賽狗', '[\"\\u8cfd\\u72d7\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u72d7.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u72d7.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:24:10', '2018-03-15 14:24:10'),
(47, '賽馬車', '[\"\\u8cfd\\u99ac\\u8eca\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u99ac\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u99ac\\u8eca.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:24:48', '2018-03-15 14:24:48'),
(48, '金融', '[\"\\u91d1\\u878d\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u91d1\\u878d.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u91d1\\u878d.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:25:36', '2018-03-15 14:25:36'),
(49, '冬季兩項', '[\"\\u51ac\\u5b63\\u5169\\u9805\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51ac\\u5b63\\u5169\\u9805.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51ac\\u5b63\\u5169\\u9805.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:26:01', '2018-03-15 14:26:01'),
(50, '草地滾球', '[\"\\u8349\\u5730\\u6efe\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8349\\u5730\\u6efe\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8349\\u5730\\u6efe\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:26:32', '2018-03-15 14:26:32'),
(51, '西洋棋', '[\"\\u897f\\u6d0b\\u68cb\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u897f\\u6d0b\\u68cb.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u897f\\u6d0b\\u68cb.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:27:04', '2018-03-15 14:27:04'),
(52, '冰壺', '[\"\\u51b0\\u58fa\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51b0\\u58fa.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51b0\\u58fa.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:27:31', '2018-03-15 14:27:31'),
(53, '福樂球', '[\"\\u798f\\u6a02\\u7403\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u798f\\u6a02\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u798f\\u6a02\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:28:01', '2018-03-15 14:28:01'),
(54, '摩托車', '[\"\\u6469\\u6258\\u8eca\",\"motocycle\",\"\\u9ad4\\u80b2\",\"sports\",\"motorcycle\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6469\\u6258\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6469\\u6258\\u8eca.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:28:48', '2018-03-15 14:30:59'),
(55, '拉力賽', '[\"\\u62c9\\u529b\\u8cfd\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u62c9\\u529b\\u8cfd.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u62c9\\u529b\\u8cfd.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:29:43', '2018-03-15 14:29:43'),
(56, '衝浪', '[\"\\u885d\\u6d6a\",\"surf\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u885d\\u6d6a.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u885d\\u6d6a.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:30:29', '2018-03-15 14:30:29'),
(57, 'Sumo 相撲', '[\"sumo\",\"\\u76f8\\u64b2\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u76f8\\u64b2.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u76f8\\u64b2.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:31:44', '2018-03-15 14:31:44'),
(58, '越野滑雪', '[\"\\u8d8a\\u91ce\\u6ed1\\u96ea\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8d8a\\u91ce\\u6ed1\\u96ea.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8d8a\\u91ce\\u6ed1\\u96ea.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:32:30', '2018-03-15 14:32:30'),
(59, '雪橇', '[\"\\u96ea\\u6a47\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u96ea\\u6a47.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u96ea\\u6a47.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:33:32', '2018-03-15 14:33:32'),
(60, '花式溜冰', '[\"\\u82b1\\u5f0f\\u6e9c\\u51b0\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u82b1\\u5f0f\\u6e9c\\u51b0.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u82b1\\u5f0f\\u6e9c\\u51b0.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:34:07', '2018-03-15 14:34:07'),
(61, '撲克', '[\"\\u64b2\\u514b\",\"poker\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u64b2\\u514b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u64b2\\u514b.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:34:34', '2018-03-15 14:34:34'),
(62, '長曲棍球', '[\"\\u9577\\u66f2\\u68cd\\u7403\",\"Lacrosse\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/Lacrosse.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/Lacrosse.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:35:39', '2018-03-15 14:35:39'),
(63, '水上芭蕾', '[\"\\u6c34\\u4e0a\\u82ad\\u857e\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6c34\\u4e0a\\u82ad\\u857e.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6c34\\u4e0a\\u82ad\\u857e.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:44:58', '2018-03-15 14:44:58'),
(64, '底圖', '[\"\\u5e95\\u5716\",\"\\u7403\",\"ball\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5e95\\u5716.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5e95\\u5716.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:45:58', '2018-03-15 14:45:58'),
(65, '壘球', '[\"\\u58d8\\u7403\",\"softball\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u58d8\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u58d8\\u7403.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:46:33', '2018-03-15 14:46:33'),
(66, '冠軍規則', '[\"\\u51a0\\u8ecd\\u898f\\u5247\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51a0\\u8ecd\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51a0\\u8ecd\\u898f\\u5247.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:47:07', '2018-03-15 14:47:07'),
(67, '派彩規則', '[\"\\u6d3e\\u5f69\\u898f\\u5247\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6d3e\\u5f69\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6d3e\\u5f69\\u898f\\u5247.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:48:09', '2018-03-15 14:48:09'),
(68, '混合過關規則', '[\"\\u6df7\\u5408\\u904e\\u95dc\\u898f\\u5247\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6df7\\u5408\\u904e\\u95dc\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6df7\\u5408\\u904e\\u95dc\\u898f\\u5247.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:48:49', '2018-03-15 14:48:49'),
(69, '一般體育規則', '[\"\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247\",\"\\u9ad4\\u80b2\",\"sports\",\"sport\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\"]', 'IN體育uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-15 14:49:24', '2018-03-15 14:49:24'),
(71, '操作說明', '[\"\\u64cd\\u4f5c\\u8aaa\\u660e\",\"\\u5f69\\u7968\",\"lottery\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u64cd\\u4f5c\\u8aaa\\u660e.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u64cd\\u4f5c\\u8aaa\\u660e.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-18 09:58:44', '2018-03-18 09:58:44'),
(72, 'BB', '[\"BB\",\"live\",\"\\u8996\\u8a0a\",\"BB\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/BB.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BB.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-18 10:02:45', '2018-03-18 10:03:27'),
(73, '試玩', '[\"\\u8a66\\u73a9\",\"\\u6a5f\\u7387\",\"casino\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u8a66\\u73a9.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8a66\\u73a9.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-18 10:13:58', '2018-03-18 10:13:58'),
(79, 'GD視訊', '[\"GD\\u8996\\u8a0a\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/GD\\u8996\\u8a0a.fw.png\",\"\\/files\\/1\\/APP\\/png\\/GD\\u8996\\u8a0a.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:03:23', '2018-03-26 15:03:23'),
(81, '歐博視訊', '[\"\\u6b50\\u535a\\u8996\\u8a0a\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/\\u6b50\\u535a\\u8996\\u8a0a.fw.png\",\"\\/files\\/1\\/APP\\/png\\/\\u6b50\\u535a\\u8996\\u8a0a.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:26:43', '2018-03-26 15:26:43'),
(82, 'OG視訊', '[\"OG\\u8996\\u8a0a\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/OG\\u8996\\u8a0a.fw.png\",\"\\/files\\/1\\/APP\\/png\\/OG\\u8996\\u8a0a.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:28:40', '2018-03-26 15:28:40'),
(83, 'BG視訊', '[\"BG\\u8996\\u8a0a\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/BG\\u8996\\u8a0a.fw.png\",\"\\/files\\/1\\/APP\\/png\\/BG\\u8996\\u8a0a.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:29:08', '2018-03-26 15:29:08'),
(84, 'BB電子', '[\"BB\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/BB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/BB\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:29:36', '2018-03-26 15:29:36'),
(85, 'HB電子', '[\"HB\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/HB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/HB\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:30:07', '2018-03-26 15:30:07'),
(86, 'PT電子', '[\"PT\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/PT\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/PT\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:30:37', '2018-03-26 15:30:37'),
(87, 'MG電子', '[\"MG\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/MG\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/MG\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:31:05', '2018-03-26 15:31:05'),
(88, 'GNS電子', '[\"GNS\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/GNS\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/GNS\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:31:30', '2018-03-26 15:31:30'),
(89, 'ISB電子', '[\"ISB\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/ISB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/ISB\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:31:57', '2018-03-26 15:31:57'),
(90, 'AG電子', '[\"AG\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/AG\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:32:22', '2018-03-26 15:32:22'),
(91, 'JDB電子', '[\"JDB\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/JDB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:32:45', '2018-03-26 15:32:45'),
(92, 'PP電子', '[\"PP\\u96fb\\u5b50\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/PP\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/png\\/PP\\u96fb\\u5b50.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:33:08', '2018-03-26 15:33:08'),
(93, '捕魚機', '[\"\\u6355\\u9b5a\\u6a5f\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/\\u6355\\u9b5a\\u6a5f.fw.png\",\"\\/files\\/1\\/APP\\/png\\/\\u6355\\u9b5a\\u6a5f.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:34:02', '2018-03-26 15:34:02'),
(94, 'BB彩票', '[\"BB\\u5f69\\u7968\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/BB\\u5f69\\u7968.fw.png\",\"\\/files\\/1\\/APP\\/png\\/BB\\u5f69\\u7968.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:34:25', '2018-03-26 15:34:25'),
(95, 'BB體育', '[\"BB\\u9ad4\\u80b2\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/BB\\u9ad4\\u80b2.fw.png\",\"\\/files\\/1\\/APP\\/png\\/BB\\u9ad4\\u80b2.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:34:48', '2018-03-26 15:34:48'),
(96, '體育投注', '[\"\\u9ad4\\u80b2\\u6295\\u6ce8\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/\\u9ad4\\u80b2\\u6295\\u6ce8.fw.png\",\"\\/files\\/1\\/APP\\/png\\/\\u9ad4\\u80b2\\u6295\\u6ce8.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-26 15:35:20', '2018-03-26 15:35:20'),
(102, '下注紀錄/帳戶歷史', '[\"\\u4e0b\\u6ce8\\u7d00\\u9304\",\"\\u5e33\\u6236\\u6b77\\u53f2\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u4e0b\\u6ce8\\u7d00\\u9304(\\u5e33\\u6236\\u6b77\\u53f2).fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8\\u7d00\\u9304(\\u5e33\\u6236\\u6b77\\u53f2).png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-26 18:04:52', '2018-03-27 10:13:20'),
(103, '下注紀錄/帳戶歷史', '[\"\\u4e0b\\u6ce8\\u7d00\\u9304\",\"\\u5e33\\u6236\\u6b77\\u53f2\",\"lottery\",\"\\u4e0b\\u6ce8\\u7d00\\u9304\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u4e0b\\u6ce8\\u7d00\\u9304(\\u5e33\\u6236\\u6b77\\u53f2)2.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8\\u7d00\\u9304(\\u5e33\\u6236\\u6b77\\u53f2)2.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-26 18:07:07', '2018-03-27 10:13:10'),
(104, '未結單注單', '[\"\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:06:55', '2018-03-27 10:06:55'),
(105, '未結單注單', '[\"\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae2.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae2.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:11:49', '2018-03-27 10:11:49'),
(106, '已結單注單', '[\"\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:12:39', '2018-03-27 10:12:39'),
(107, '已結單注單', '[\"\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae2.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5df2\\u7d50\\u55ae\\u6ce8\\u55ae2.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:15:09', '2018-03-27 10:15:09'),
(108, '最近下注', '[\"\\u6700\\u8fd1\\u4e0b\\u6ce8\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u6700\\u8fd1\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6700\\u8fd1\\u4e0b\\u6ce8.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:18:16', '2018-03-27 10:18:16'),
(109, '最近下注', '[\"\\u6700\\u8fd1\\u4e0b\\u6ce8\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u6700\\u8fd1\\u4e0b\\u6ce82.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6700\\u8fd1\\u4e0b\\u6ce82.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:18:36', '2018-03-27 10:18:36'),
(110, '通知/訊息', '[\"\\u8a0a\\u606f\",\"\\u901a\\u77e5\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u901a\\u77e5(\\u8a0a\\u606f).fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u901a\\u77e5(\\u8a0a\\u606f).png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:30:40', '2018-03-27 10:32:45'),
(111, '通知/訊息', '[\"\\u901a\\u77e5\",\"\\u8a0a\\u606f\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u901a\\u77e5(\\u8a0a\\u606f)2.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u901a\\u77e5(\\u8a0a\\u606f)2.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:32:10', '2018-03-27 10:33:05'),
(112, '彩票遊戲選單', '[\"\\u5f69\\u7968\\u904a\\u6232\\u9078\\u55ae\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5f69\\u7968\\u904a\\u6232\\u9078\\u55ae.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5f69\\u7968\\u904a\\u6232\\u9078\\u55ae.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:38:25', '2018-03-27 10:38:25'),
(113, '長龍投注', '[\"\\u9577\\u9f8d\\u6295\\u6ce8\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u9577\\u9f8d\\u6295\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u9577\\u9f8d\\u6295\\u6ce8.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:39:01', '2018-03-27 10:39:01'),
(114, '選單(功能列表)', '[\"\\u9078\\u55ae\",\"\\u529f\\u80fd\\u5217\\u8868\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u9078\\u55ae(\\u529f\\u80fd\\u5217\\u8868).fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u9078\\u55ae(\\u529f\\u80fd\\u5217\\u8868).png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:43:56', '2018-03-27 10:43:56'),
(115, '篩選', '[\"\\u7be9\\u9078\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u7be9\\u9078.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u7be9\\u9060.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:44:20', '2018-03-27 10:44:20'),
(116, '熱門遊戲', '[\"\\u71b1\\u9580\\u904a\\u6232\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u71b1\\u9580\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u71b1\\u9580\\u904a\\u6232.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:45:19', '2018-03-27 10:45:19'),
(117, '熱門遊戲', '[\"\\u71b1\\u9580\\u904a\\u6232\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u71b1\\u9580\\u904a\\u62322.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u71b1\\u9580\\u904a\\u62322.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:45:41', '2018-03-27 10:45:41'),
(118, '我的最愛', '[\"\\u6211\\u7684\\u6700\\u611b\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u6211\\u7684\\u6700\\u611b.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6211\\u7684\\u6700\\u611b.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:55:25', '2018-03-27 10:55:25'),
(119, '我的最愛', '[\"\\u6211\\u7684\\u6700\\u611b\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u6211\\u7684\\u6700\\u611b2.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6211\\u7684\\u6700\\u611b2.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:55:46', '2018-03-27 10:55:46'),
(120, '搜尋/收尋/查詢', '[\"\\u6536\\u5c0b\",\"\\u67e5\\u8a62\",\"lottery\",\"\\u5f69\\u7968\",\"\\u641c\\u5c0b\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u641c\\u5c0b(\\u67e5\\u8a62).fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u641c\\u5c0b(\\u67e5\\u8a62).png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:57:35', '2018-03-28 12:02:19'),
(121, '多台下注', '[\"\\u591a\\u53f0\\u4e0b\\u6ce8\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u591a\\u53f0\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u591a\\u53f0\\u4e0b\\u6ce8.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:58:10', '2018-03-27 10:58:10'),
(122, '暫停投注', '[\"\\u66ab\\u505c\\u6295\\u6ce8\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u66ab\\u505c\\u6295\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u66ab\\u505c\\u6295\\u6ce8.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:58:47', '2018-03-27 10:58:47'),
(123, '下注', '[\"\\u4e0b\\u6ce8\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u4e0b\\u6ce8.fw.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 10:59:05', '2018-03-27 11:21:13'),
(124, '規則說明', '[\"\\u898f\\u5247\\u8aaa\\u660e\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u898f\\u5247\\u8aaa\\u660e.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u898f\\u5247\\u8aaa\\u660e.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:30:00', '2018-03-27 11:30:00'),
(125, '規則說明', '[\"\\u898f\\u5247\\u8aaa\\u660e\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u898f\\u5247\\u8aaa\\u660e2.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u898f\\u5247\\u8aaa\\u660e2.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:30:20', '2018-03-27 11:30:20'),
(126, '全開啟音樂音效', '[\"\\u5168\\u958b\\u555f\\u97f3\\u6a02\\u97f3\\u6548\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5168\\u958b\\u555f\\u97f3\\u6a02\\u97f3\\u6548.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5168\\u958b\\u555f\\u97f3\\u6a02\\u97f3\\u6548.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:33:34', '2018-03-27 11:33:34'),
(127, '全關閉音樂音效', '[\"\\u5168\\u95dc\\u9589\\u97f3\\u6a02\\u97f3\\u6548\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5168\\u95dc\\u9589\\u97f3\\u6a02\\u97f3\\u6548.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5168\\u95dc\\u9589\\u97f3\\u6a02\\u97f3\\u6548.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:34:39', '2018-03-27 11:34:39'),
(128, '下注狀況', '[\"\\u4e0b\\u6ce8\\u72c0\\u6cc1\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u4e0b\\u6ce8\\u72c0\\u6cc1.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e0b\\u6ce8\\u72c0\\u6cc1.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:35:19', '2018-03-27 11:35:19'),
(129, '會員資料', '[\"\\u6703\\u54e1\\u8cc7\\u6599\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u6703\\u54e1\\u8cc7\\u6599.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6703\\u54e1\\u8cc7\\u6599.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:35:43', '2018-03-27 11:35:43'),
(130, '開獎結果', '[\"\\u958b\\u734e\\u7d50\\u679c\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u958b\\u734e\\u7d50\\u679c.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u958b\\u734e\\u7d50\\u679c.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:36:45', '2018-03-27 11:36:45'),
(131, '會員中心', '[\"\\u6703\\u54e1\\u4e2d\\u5fc3\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u6703\\u54e1\\u4e2d\\u5fc3.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6703\\u54e1\\u4e2d\\u5fc3.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:37:09', '2018-03-27 11:37:09'),
(132, '設定(傳統版)', '[\"\\u8a2d\\u5b9a\",\"\\u50b3\\u7d71\\u7248\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u8a2d\\u5b9a(\\u50b3\\u7d71\\u7248).fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u8a2d\\u5b9a(\\u50b3\\u7d71\\u7248).png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:39:29', '2018-03-27 11:44:30'),
(133, '設定(官方版)', '[\"\\u8a2d\\u5b9a\",\"\\u5b98\\u65b9\\u7248\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u8a2d\\u5b9a(\\u5b98\\u65b9\\u7248).fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u8a2d\\u5b9a(\\u5b98\\u65b9\\u7248).png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:40:12', '2018-03-27 11:44:20'),
(134, '快選(官方版)', '[\"\\u5feb\\u9078\",\"\\u5b98\\u65b9\\u7248\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5feb\\u9078(\\u5b98\\u65b9\\u7248).fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5feb\\u9078(\\u5b98\\u65b9\\u7248).png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:40:53', '2018-03-27 11:40:53'),
(137, '彩票大廳', '[\"\\u5f69\\u7968\\u5927\\u5ef3\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5f69\\u7968\\u5927\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5f69\\u7968\\u5927\\u5ef3.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:54:39', '2018-03-27 11:54:39'),
(138, '換桌', '[\"\\u63db\\u684c\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u63db\\u684c.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u63db\\u684c.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:55:01', '2018-03-27 11:55:01'),
(139, '投注入門', '[\"\\u6295\\u6ce8\\u5165\\u9580\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u6295\\u6ce8\\u5165\\u9580.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u6295\\u6ce8\\u5165\\u9580.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:55:33', '2018-03-27 11:55:33'),
(140, '快選金額', '[\"\\u5feb\\u9078\\u91d1\\u984d\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u5feb\\u9078\\u91d1\\u984d.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u5feb\\u9078\\u91d1\\u984d.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:55:56', '2018-03-27 11:55:56'),
(141, '主盤勢', '[\"\\u4e3b\\u76e4\\u52e2\",\"lottery\",\"\\u5f69\\u7968\"]', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/fw\\/\\u4e3b\\u76e4\\u52e2.fw.png\",\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u4e3b\\u76e4\\u52e2.png\"]', '彩票uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 11:57:34', '2018-03-27 11:57:34'),
(142, 'AG', '[\"AG\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/AG.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/AG.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:34:16', '2018-03-27 12:34:16'),
(143, 'GD', '[\"GD\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/GD.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/GD.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:35:02', '2018-03-27 12:35:02'),
(144, 'BG', '[\"BG\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/BG.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BG.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:35:46', '2018-03-27 12:35:46'),
(145, 'Allbet', '[\"Allbet\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/Allbet.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/Allbet.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:36:18', '2018-03-27 12:36:18'),
(146, 'OG', '[\"OG\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/OG.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/OG.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:37:03', '2018-03-27 12:37:03'),
(147, '多台下注', '[\"\\u591a\\u53f0\\u4e0b\\u6ce8\",\"live  casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u591a\\u53f0\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u591a\\u53f0\\u4e0b\\u6ce8.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:37:31', '2018-03-27 12:37:31'),
(148, '旗艦聽', '[\"\\u65d7\\u8266\\u5ef3\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u65d7\\u8266\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65d7\\u8266\\u5ef3.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:38:14', '2018-03-27 12:38:14'),
(149, '包桌廳', '[\"\\u5305\\u684c\\u5ef3\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u5305\\u684c\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c\\u5ef3.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:38:47', '2018-03-27 12:38:47'),
(150, '快速廳', '[\"\\u5feb\\u901f\\u5ef3\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u5feb\\u901f\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5feb\\u901f\\u5ef3.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:39:24', '2018-03-27 12:39:24'),
(151, '競眯廳', '[\"\\u7af6\\u772f\\u5ef3\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u7af6\\u772f\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u772f\\u5ef3.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 12:40:38', '2018-03-27 12:40:38'),
(152, '金臂廳', '[\"\\u91d1\\u81c2\\u5ef3\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u91d1\\u81c2\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u5ef3.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:48:58', '2018-03-27 13:48:58'),
(153, '金臂多台', '[\"\\u91d1\\u81c2\\u591a\\u53f0\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u91d1\\u81c2\\u591a\\u53f0.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u591a\\u53f0.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:49:29', '2018-03-27 13:49:29'),
(154, '超級多台', '[\"\\u8d85\\u7d1a\\u591a\\u53f0\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u8d85\\u7d1a\\u591a\\u53f0.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u8d85\\u7d1a\\u591a\\u53f0.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:49:53', '2018-03-27 13:49:53'),
(155, '獨享', '[\"\\u7368\\u4eab\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u7368\\u4eab.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7368\\u4eab.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:51:35', '2018-03-27 13:51:35'),
(156, '包桌', '[\"\\u5305\\u684c\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u5305\\u684c.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:52:05', '2018-03-27 13:52:05'),
(157, '進座下注', '[\"\\u9032\\u5ea7\\u4e0b\\u6ce8\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u9032\\u5ea7\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u9032\\u5ea7\\u4e0b\\u6ce8.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:52:49', '2018-03-27 13:52:49'),
(158, '旁觀下注', '[\"\\u65c1\\u89c0\\u4e0b\\u6ce8\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u65c1\\u89c0\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65c1\\u89c0\\u4e0b\\u6ce8.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:53:18', '2018-03-27 13:53:18'),
(159, '競眯/競骰', '[\"\\u7af6\\u772f\",\"\\u7af6\\u9ab0\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u7af6\\u54aa_\\u7af6\\u9ab0.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u54aa_\\u7af6\\u9ab0.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:55:11', '2018-03-27 13:55:11'),
(160, '顯示現場電話號碼', '[\"\\u986f\\u793a\\u73fe\\u5834\\u96fb\\u8a71\\u865f\\u78bc\",\"live casino\",\"\\u8996\\u8a0a\"]', '[\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u986f\\u793a\\u73fe\\u5834\\u96fb\\u8a71\\u865f\\u78bc.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u986f\\u793a\\u73fe\\u5834\\u96fb\\u8a71\\u865f\\u78bc.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 13:56:13', '2018-03-27 13:56:13'),
(161, 'BB', '[\"BB\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/BB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/BB.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:38:59', '2018-03-27 14:38:59'),
(162, 'MG', '[\"MG\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/MG.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/MG.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:39:34', '2018-03-27 14:39:34'),
(163, 'GNS', '[\"GNS\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/GNS.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/GNS.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:39:58', '2018-03-27 14:39:58'),
(164, 'iSB', '[\"iSB\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/iSB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/iSB.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:40:23', '2018-03-27 14:40:23'),
(165, 'HB', '[\"HB\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/HB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/HB.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:40:54', '2018-03-27 14:40:54'),
(166, 'PT', '[\"PT\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/PT.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/PT.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:41:24', '2018-03-27 14:41:24'),
(167, 'PP', '[\"PP\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/PP.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/PP.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:42:36', '2018-03-27 14:42:36'),
(168, 'AG', '[\"AG\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/AG.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/AG.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:42:57', '2018-03-27 14:42:57'),
(169, 'MW', '[\"MW\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/MW.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/MW.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:43:24', '2018-03-27 14:43:24'),
(170, 'SG', '[\"SG\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/SG.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:43:55', '2018-03-27 14:43:55'),
(171, 'RT', '[\"RT\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/RT.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/RT.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:44:22', '2018-03-27 14:44:22');
INSERT INTO `icons` (`id`, `name`, `tagsData`, `files`, `list`, `type`, `created_at`, `updated_at`) VALUES
(172, 'JDB', '[\"JDB\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/JDB.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:44:43', '2018-03-27 14:44:43'),
(173, '推薦', '[\"\\u63a8\\u85a6\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u63a8\\u85a6.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u63a8\\u85a6.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:45:13', '2018-03-27 14:45:13'),
(174, '最新遊戲', '[\"\\u6700\\u65b0\\u904a\\u6232\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6700\\u65b0\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6700\\u65b0\\u904a\\u6232.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:45:42', '2018-03-27 14:45:42'),
(175, '熱門遊戲', '[\"\\u71b1\\u9580\\u904a\\u6232\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u71b1\\u9580\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u71b1\\u9580\\u904a\\u6232.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:46:14', '2018-03-27 14:46:14'),
(176, '全部', '[\"\\u5168\\u90e8\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u5168\\u90e8.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u5168\\u90e8.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:46:37', '2018-03-27 14:46:37'),
(177, '更多', '[\"\\u66f4\\u591a\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u66f4\\u591a.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u66f4\\u591a.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:47:02', '2018-03-27 14:47:02'),
(178, '特色', '[\"\\u7279\\u8272\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u7279\\u8272.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u7279\\u8272.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:47:33', '2018-03-27 14:47:33'),
(179, '桌上遊戲', '[\"\\u684c\\u4e0a\\u904a\\u6232\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u684c\\u4e0a\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u684c\\u4e0a\\u904a\\u6232.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:47:57', '2018-03-27 14:47:57'),
(180, '大型機台', '[\"\\u5927\\u578b\\u6a5f\\u53f0\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u5927\\u578b\\u6a5f\\u53f0.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u5927\\u578b\\u6a5f\\u53f0.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:48:22', '2018-03-27 14:48:22'),
(181, '刮刮樂', '[\"\\u522e\\u522e\\u6a02\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u522e\\u522e\\u6a02.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u522e\\u522e\\u6a02.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:48:45', '2018-03-27 14:48:45'),
(182, '老虎機', '[\"\\u8001\\u864e\\u6a5f\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u8001\\u864e\\u6a5f.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8001\\u864e\\u6a5f.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:49:14', '2018-03-27 14:49:14'),
(183, '視訊撲克', '[\"\\u8996\\u8a0a\\u64b2\\u514b\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u8996\\u8a0a\\u64b2\\u514b.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8996\\u8a0a\\u64b2\\u514b.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:49:35', '2018-03-27 14:49:35'),
(184, '累積彩池', '[\"\\u7d2f\\u7a4d\\u5f69\\u6c60\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u7d2f\\u7a4d\\u5f69\\u6c60.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u7d2f\\u7a4d\\u5f69\\u6c60.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:50:05', '2018-03-27 14:50:05'),
(185, '捕魚', '[\"\\u6355\\u9b5a\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6355\\u9b5a.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6355\\u9b5a.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:50:26', '2018-03-27 14:50:26'),
(186, '我的最愛', '[\"\\u6211\\u7684\\u6700\\u611b\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6211\\u7684\\u6700\\u611b.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6211\\u7684\\u6700\\u611b.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:50:46', '2018-03-27 14:50:46'),
(187, '搶先看', '[\"\\u6436\\u5148\\u770b\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6436\\u5148\\u770b.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6436\\u5148\\u770b.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:51:45', '2018-03-27 14:51:45'),
(188, 'flash版', '[\"flash\\u7248\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/flash\\u7248.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/flash\\u7248.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:52:14', '2018-03-27 14:52:14'),
(189, 'H5版', '[\"H5\\u7248\",\"html5\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/H5\\u7248.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/H5\\u7248.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:52:42', '2018-03-27 14:52:42'),
(190, '3D遊戲', '[\"3D\\u904a\\u6232\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/3D\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/3D\\u904a\\u6232.png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:53:02', '2018-03-27 14:53:02'),
(191, '四層彩金', '[\"\\u56db\\u5c64\\u5f69\\u91d1\",\"grand\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:53:33', '2018-03-27 14:53:33'),
(192, '四層彩金', '[\"\\u56db\\u5c64\\u5f69\\u91d1\",\"major\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(major).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(major).png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:53:57', '2018-03-27 14:53:57'),
(193, '四層彩金', '[\"\\u56db\\u5c64\\u5f69\\u91d1\",\"minor\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(minor).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(minor).png\"]', '機率uiKit', '{\"fw\":true,\"psd\":false}', '2018-03-27 14:54:21', '2018-03-27 14:54:21'),
(194, '四層彩金', '[\"\\u56db\\u5c64\\u5f69\\u91d1\",\"mini\",\"casino\",\"\\u6a5f\\u7387\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(mini).png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(mini).fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403.psd\"]', 'APP', '{\"fw\":true,\"psd\":true,\"png\":true}', '2018-03-27 14:54:41', '2018-12-20 03:08:06'),
(204, 'CB足彩', '[\"CB\\u8db3\\u5f69\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/CB\\u8db3\\u5f69.fw.png\",\"\\/files\\/1\\/APP\\/png\\/CB\\u8db3\\u5f69.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-27 17:44:03', '2018-03-27 17:44:03'),
(205, 'New BB Sports', '[\"New BB Sports\",\"APP\"]', '[\"\\/files\\/1\\/APP\\/fw\\/New_BB_Sports.fw.png\",\"\\/files\\/1\\/APP\\/png\\/New_BB_Sports.png\"]', 'APP', '{\"fw\":true,\"psd\":false}', '2018-03-27 17:44:35', '2018-03-27 17:44:35'),
(210, '限額', '[\"\\u8996\\u8a0a\",\"\\u9650\\u984d\",\"limit\"]', '[\"\\/files\\/2\\/limit.png\",\"\\/files\\/2\\/limit.fw.png\"]', '視訊uiKit', '{\"fw\":true,\"psd\":false}', '2018-05-08 17:50:21', '2018-05-08 17:51:30'),
(240, 'btn_onlinepayment', '[\"onlinepayment\",\"btn\",\"2x\"]', '[\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_onlinepayment.png\",\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_onlinepayment_2x.fw.png\"]', 'aio3-銀行交易', '{\"png\":true,\"fw\":true,\"psd\":false}', '2019-06-14 04:13:51', '2019-06-14 04:13:51'),
(241, 'btn_net_silver_pay_1X', '[\"btn\",\"silver\",\"pay\",\"1x\"]', '[\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_net_silver_pay_1X.png\",\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_net_silver_pay_1X.fw.png\"]', 'aio3-銀行交易', '{\"png\":true,\"fw\":true,\"psd\":false}', '2019-06-14 04:14:37', '2019-06-14 04:14:37'),
(242, 'btn_2d_scan_code_pay_2x', '[\"btn\",\"code\",\"pay\",\"2x\"]', '[\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_2d_scan_code_pay.png\",\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_2d_scan_code_pay_2x.fw.png\"]', 'aio3-銀行交易', '{\"png\":true,\"fw\":true,\"psd\":false}', '2019-06-14 04:15:19', '2019-06-14 04:15:19'),
(243, 'btn_2d_scan_code_pay', '[\"btn\",\"code\",\"pay\",\"1x\"]', '[\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_2d_scan_code_pay_1X.png\",\"\\/files\\/1\\/aio3\\/\\u9280\\u884c\\u4ea4\\u6613\\/btn_2d_scan_code_pay_1X.fw.png\"]', 'aio3-銀行交易', '{\"png\":true,\"fw\":true,\"psd\":false}', '2019-06-14 04:15:52', '2019-06-14 04:15:52');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `transaction_record`
--

CREATE TABLE `transaction_record` (
  `tr_id` int(11) NOT NULL COMMENT '異動編號',
  `tr_user` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '異動部門',
  `tr_action` tinyint(4) NOT NULL COMMENT '異動動作 1.新增 2.修改 3.刪除',
  `tr_type` tinyint(4) NOT NULL COMMENT '異動項目類型 1.icon 2.資料夾',
  `tr_folder` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '異動目標所屬的資料夾',
  `tr_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '異動目標名稱',
  `isflag` tinyint(4) DEFAULT '1' COMMENT '該筆異動資料的狀態 0.刪除 1.存在',
  `create_user` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增此筆資料的部門',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '異動時間',
  `last_update_user` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '最後一次更新此筆資料的部門',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最後一次更新此筆資料的時間'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='異動資料表';

--
-- 傾印資料表的資料 `transaction_record`
--

INSERT INTO `transaction_record` (`tr_id`, `tr_user`, `tr_action`, `tr_type`, `tr_folder`, `tr_name`, `isflag`, `create_user`, `create_date`, `last_update_user`, `last_update_date`) VALUES
(1, 'web_toby', 2, 1, 'APP', '7753', 1, 'web_toby', '2018-05-14 10:03:55', 'web_toby', '2018-05-13 22:47:33'),
(2, 'web_toby', 3, 1, '機率uiKit', 'ㄉˇ', 1, 'web_toby', '2018-05-14 09:31:15', 'web_toby', '2018-05-13 22:47:35'),
(3, 'bbin_web', 1, 1, 'IN體育uiKit', '新增看看', 1, 'bbin_web', '2018-05-14 09:31:21', 'bbin_web', '2018-05-13 22:47:38'),
(4, 'bbin_web', 1, 1, '機率uiKit', 'newnewnew', 1, 'bbin_web', '2018-05-14 10:33:18', 'bbin_web', '2018-05-13 22:47:39'),
(5, 'bbin_web', 2, 2, '終於有異動紀錄了', NULL, 1, 'bbin_web', '2018-05-14 11:02:34', 'bbin_web', '2018-05-13 22:47:51'),
(6, 'bbin_web', 3, 2, '終於有異動紀錄了', NULL, 1, 'bbin_web', '2018-05-14 11:02:49', 'bbin_web', '2018-05-13 22:47:53'),
(7, 'bbin_web', 1, 2, '我覺得不行', NULL, 1, 'bbin_web', '2018-05-14 11:03:15', 'bbin_web', '2018-05-13 22:47:57'),
(8, 'bbin_web', 2, 1, '彩票uiKit', '靠', 1, 'bbin_web', '2018-05-14 14:55:52', 'bbin_web', '2018-05-13 22:55:52'),
(9, 'bbin_web', 3, 1, '彩票uiKit', '靠', 1, 'bbin_web', '2018-05-14 14:55:55', 'bbin_web', '2018-05-13 22:55:55'),
(10, 'bbin_web', 3, 1, '機率uiKit', '123123', 1, 'bbin_web', '2018-05-14 14:56:00', 'bbin_web', '2018-05-13 22:56:00'),
(11, 'bbin_web', 2, 1, 'APP', 'ggg', 1, 'bbin_web', '2018-05-14 14:56:10', 'bbin_web', '2018-05-13 22:56:10'),
(12, 'bbin_web', 3, 1, 'APP', 'ggg', 1, 'bbin_web', '2018-05-14 14:56:13', 'bbin_web', '2018-05-13 22:56:13'),
(13, 'bbin_web', 2, 1, 'APP', '7753', 1, 'bbin_web', '2018-05-14 14:56:25', 'bbin_web', '2018-05-13 22:56:25'),
(14, 'bbin_web', 3, 1, 'APP', '7753', 1, 'bbin_web', '2018-05-14 14:56:28', 'bbin_web', '2018-05-13 22:56:28'),
(15, 'bbin_web', 2, 1, 'IN體育uiKit', '新增看看', 1, 'bbin_web', '2018-05-14 14:56:42', 'bbin_web', '2018-05-13 22:56:42'),
(16, 'bbin_web', 3, 1, 'IN體育uiKit', '新增看看', 1, 'bbin_web', '2018-05-14 14:56:46', 'bbin_web', '2018-05-13 22:56:46'),
(17, 'bbin_web', 1, 1, '我覺得不行', 'nono', 1, 'bbin_web', '2018-05-15 09:11:56', 'bbin_web', '2018-05-14 17:11:56'),
(18, 'bbin_web', 2, 2, '我覺得不行', NULL, 1, 'bbin_web', '2018-05-15 09:11:58', 'bbin_web', '2018-05-14 17:11:58'),
(19, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-05-15 09:13:40', 'bbin_web', '2018-05-14 17:13:40'),
(20, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-05-15 09:13:43', 'bbin_web', '2018-05-14 17:13:43'),
(21, 'bbin_web', 1, 1, '機率uiKit', '增加增加', 1, 'bbin_web', '2018-05-16 10:26:52', 'bbin_web', '2018-05-15 18:26:52'),
(22, 'bbin_web', 1, 1, '視訊uiKit', '我覺得', 1, 'bbin_web', '2018-05-16 10:29:51', 'bbin_web', '2018-05-15 18:29:51'),
(23, 'bbin_web', 3, 1, '視訊uiKit', '我覺得', 1, 'bbin_web', '2018-05-16 10:33:29', 'bbin_web', '2018-05-15 18:33:29'),
(24, 'bbin_web', 3, 1, '機率uiKit', '增加增加', 1, 'bbin_web', '2018-05-16 10:34:33', 'bbin_web', '2018-05-15 18:34:33'),
(25, 'bbin_web', 2, 1, '機率uiKit', 'nono', 1, 'bbin_web', '2018-05-16 10:35:18', 'bbin_web', '2018-05-15 18:35:18'),
(26, 'bbin_web', 2, 1, '機率uiKit', 'nono', 1, 'bbin_web', '2018-05-16 10:41:05', 'bbin_web', '2018-05-15 18:41:05'),
(27, 'bbin_web', 3, 1, '機率uiKit', 'nono', 1, 'bbin_web', '2018-05-16 10:43:52', 'bbin_web', '2018-05-15 18:43:52'),
(28, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-05-16 10:43:54', 'bbin_web', '2018-05-15 18:43:54'),
(29, 'bbin_web', 1, 1, 'APP', '新增', 1, 'bbin_web', '2018-05-16 10:45:08', 'bbin_web', '2018-05-15 18:45:08'),
(30, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-05-16 10:45:09', 'bbin_web', '2018-05-15 18:45:09'),
(31, 'bbin_web', 1, 1, '視訊uiKit', '繼續嘗試', 1, 'bbin_web', '2018-05-16 10:46:16', 'bbin_web', '2018-05-15 18:46:16'),
(32, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-05-16 10:46:17', 'bbin_web', '2018-05-15 18:46:17'),
(33, 'bbin_web', 1, 1, '彩票uiKit', '我是誰', 1, 'bbin_web', '2018-05-16 10:47:38', 'bbin_web', '2018-05-15 18:47:38'),
(34, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-05-16 10:47:40', 'bbin_web', '2018-05-15 18:47:40'),
(35, 'bbin_web', 1, 1, 'IN體育uiKit', '去去去', 1, 'bbin_web', '2018-05-16 10:53:35', 'bbin_web', '2018-05-15 18:53:35'),
(36, 'bbin_web', 2, 2, 'IN體育uiKit', NULL, 1, 'bbin_web', '2018-05-16 10:53:37', 'bbin_web', '2018-05-15 18:53:37'),
(37, 'bbin_web', 1, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-05-16 10:55:31', 'bbin_web', '2018-05-15 18:55:31'),
(38, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-05-16 10:55:32', 'bbin_web', '2018-05-15 18:55:32'),
(39, 'bbin_web', 3, 1, '機率uiKit', '我看看', 1, 'bbin_web', '2018-05-16 10:56:05', 'bbin_web', '2018-05-15 18:56:05'),
(40, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-05-16 10:56:06', 'bbin_web', '2018-05-15 18:56:06'),
(41, 'bbin_web', 2, 1, 'APP', '四層彩金', 1, 'bbin_web', '2018-05-16 16:29:30', 'bbin_web', '2018-05-16 00:29:30'),
(42, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-05-16 16:29:31', 'bbin_web', '2018-05-16 00:29:31'),
(43, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-05-16 17:10:22', 'bbin_web', '2018-05-16 01:10:22'),
(44, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-05-16 17:10:23', 'bbin_web', '2018-05-16 01:10:23'),
(45, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-05-16 17:12:06', 'bbin_web', '2018-05-16 01:12:06'),
(46, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-05-16 17:12:07', 'bbin_web', '2018-05-16 01:12:07'),
(47, 'bbin_web', 3, 1, '視訊uiKit', '就一張就好', 1, 'bbin_web', '2018-12-12 10:37:23', 'bbin_web', '2018-12-12 02:37:23'),
(48, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-12 10:37:24', 'bbin_web', '2018-12-12 02:37:24'),
(49, 'bbin_web', 2, 1, '視訊uiKit', '繼續嘗試', 1, 'bbin_web', '2018-12-13 10:34:21', 'bbin_web', '2018-12-13 02:34:21'),
(50, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-13 10:34:23', 'bbin_web', '2018-12-13 02:34:23'),
(51, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-13 17:07:33', 'bbin_web', '2018-12-13 09:07:33'),
(52, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-13 17:07:34', 'bbin_web', '2018-12-13 09:07:34'),
(53, 'bbin_web', 2, 2, 'AGG', NULL, 1, 'bbin_web', '2018-12-14 09:54:37', 'bbin_web', '2018-12-14 01:54:37'),
(54, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-14 09:54:57', 'bbin_web', '2018-12-14 01:54:57'),
(55, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-14 09:56:53', 'bbin_web', '2018-12-14 01:56:53'),
(56, 'bbin_web', 1, 1, '視訊uiKit', '你是誰', 1, 'bbin_web', '2018-12-14 16:23:23', 'bbin_web', '2018-12-14 08:23:23'),
(57, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-14 16:23:25', 'bbin_web', '2018-12-14 08:23:25'),
(58, 'bbin_web', 2, 1, 'IN體育uiKit', '去去去', 1, 'bbin_web', '2018-12-14 16:39:19', 'bbin_web', '2018-12-14 08:39:19'),
(59, 'bbin_web', 2, 2, 'IN體育uiKit', NULL, 1, 'bbin_web', '2018-12-14 16:39:21', 'bbin_web', '2018-12-14 08:39:21'),
(60, 'bbin_web', 2, 2, '我覺得很可以', NULL, 1, 'bbin_web', '2018-12-18 15:20:42', 'bbin_web', '2018-12-18 07:20:42'),
(61, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-12-18 15:21:06', 'bbin_web', '2018-12-18 07:21:06'),
(62, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-18 15:21:18', 'bbin_web', '2018-12-18 07:21:18'),
(63, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-18 16:54:15', 'bbin_web', '2018-12-18 08:54:15'),
(64, 'bbin_web', 2, 2, '測試看看', NULL, 1, 'bbin_web', '2018-12-18 16:54:27', 'bbin_web', '2018-12-18 08:54:27'),
(65, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-12-18 16:54:31', 'bbin_web', '2018-12-18 08:54:31'),
(66, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-12-18 17:11:19', 'bbin_web', '2018-12-18 09:11:19'),
(67, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-18 17:11:47', 'bbin_web', '2018-12-18 09:11:47'),
(68, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-18 17:12:23', 'bbin_web', '2018-12-18 09:12:23'),
(69, 'bbin_web', 2, 2, '你好我好他好', NULL, 1, 'bbin_web', '2018-12-19 09:13:03', 'bbin_web', '2018-12-19 01:13:03'),
(70, 'bbin_web', 3, 1, 'APP', '優惠', 1, 'bbin_web', '2018-12-19 10:59:17', 'bbin_web', '2018-12-19 02:59:17'),
(71, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 10:59:18', 'bbin_web', '2018-12-19 02:59:18'),
(72, 'bbin_web', 3, 1, 'APP', '一元奪寶', 1, 'bbin_web', '2018-12-19 11:00:29', 'bbin_web', '2018-12-19 03:00:29'),
(73, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 11:00:30', 'bbin_web', '2018-12-19 03:00:30'),
(74, 'bbin_web', 3, 1, 'APP', 'AG視訊', 1, 'bbin_web', '2018-12-19 11:03:36', 'bbin_web', '2018-12-19 03:03:36'),
(75, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 11:03:37', 'bbin_web', '2018-12-19 03:03:37'),
(76, 'bbin_web', 3, 1, 'APP', 'BB視訊', 1, 'bbin_web', '2018-12-19 11:04:25', 'bbin_web', '2018-12-19 03:04:25'),
(77, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 11:04:26', 'bbin_web', '2018-12-19 03:04:26'),
(78, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 11:04:53', 'bbin_web', '2018-12-19 03:04:53'),
(79, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:04:54', 'bbin_web', '2018-12-19 03:04:54'),
(80, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 11:04:55', 'bbin_web', '2018-12-19 03:04:55'),
(81, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:04:57', 'bbin_web', '2018-12-19 03:04:57'),
(82, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 11:05:02', 'bbin_web', '2018-12-19 03:05:02'),
(83, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:05:03', 'bbin_web', '2018-12-19 03:05:03'),
(84, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 11:05:10', 'bbin_web', '2018-12-19 03:05:10'),
(85, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:05:11', 'bbin_web', '2018-12-19 03:05:11'),
(86, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 11:06:02', 'bbin_web', '2018-12-19 03:06:02'),
(87, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:06:03', 'bbin_web', '2018-12-19 03:06:03'),
(88, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 11:06:04', 'bbin_web', '2018-12-19 03:06:04'),
(89, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:06:05', 'bbin_web', '2018-12-19 03:06:05'),
(90, 'bbin_web', 2, 1, 'IN體育uiKit', '去去去', 1, 'bbin_web', '2018-12-19 11:07:07', 'bbin_web', '2018-12-19 03:07:07'),
(91, 'bbin_web', 2, 2, 'IN體育uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:07:08', 'bbin_web', '2018-12-19 03:07:08'),
(92, 'bbin_web', 2, 1, 'IN體育uiKit', '去', 1, 'bbin_web', '2018-12-19 11:07:14', 'bbin_web', '2018-12-19 03:07:14'),
(93, 'bbin_web', 2, 2, 'IN體育uiKit', NULL, 1, 'bbin_web', '2018-12-19 11:07:15', 'bbin_web', '2018-12-19 03:07:15'),
(94, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-19 11:09:21', 'bbin_web', '2018-12-19 03:09:21'),
(95, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 11:09:22', 'bbin_web', '2018-12-19 03:09:22'),
(96, 'bbin_web', 2, 1, '視訊uiKit', '你是誰', 1, 'bbin_web', '2018-12-19 15:16:27', 'bbin_web', '2018-12-19 07:16:27'),
(97, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-19 15:16:28', 'bbin_web', '2018-12-19 07:16:28'),
(98, 'bbin_web', 2, 1, 'IN體育uiKit', '去', 1, 'bbin_web', '2018-12-19 16:16:59', 'bbin_web', '2018-12-19 08:16:59'),
(99, 'bbin_web', 2, 2, 'IN體育uiKit', NULL, 1, 'bbin_web', '2018-12-19 16:17:00', 'bbin_web', '2018-12-19 08:17:00'),
(100, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-19 16:30:44', 'bbin_web', '2018-12-19 08:30:44'),
(101, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 16:30:45', 'bbin_web', '2018-12-19 08:30:45'),
(102, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-19 16:42:16', 'bbin_web', '2018-12-19 08:42:16'),
(103, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 16:42:17', 'bbin_web', '2018-12-19 08:42:17'),
(104, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-19 16:49:39', 'bbin_web', '2018-12-19 08:49:39'),
(105, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-19 16:49:40', 'bbin_web', '2018-12-19 08:49:40'),
(106, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 17:55:54', 'bbin_web', '2018-12-19 09:55:54'),
(107, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 17:55:55', 'bbin_web', '2018-12-19 09:55:55'),
(108, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 17:56:54', 'bbin_web', '2018-12-19 09:56:54'),
(109, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 17:56:55', 'bbin_web', '2018-12-19 09:56:55'),
(110, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-19 18:00:21', 'bbin_web', '2018-12-19 10:00:21'),
(111, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-19 18:00:22', 'bbin_web', '2018-12-19 10:00:22'),
(112, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-20 09:49:50', 'bbin_web', '2018-12-20 01:49:50'),
(113, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 09:49:51', 'bbin_web', '2018-12-20 01:49:51'),
(114, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-20 09:50:20', 'bbin_web', '2018-12-20 01:50:20'),
(115, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 09:50:22', 'bbin_web', '2018-12-20 01:50:22'),
(116, 'bbin_web', 2, 1, 'IN體育uiKit', '去', 1, 'bbin_web', '2018-12-20 10:43:12', 'bbin_web', '2018-12-20 02:43:12'),
(117, 'bbin_web', 2, 2, 'IN體育uiKit', NULL, 1, 'bbin_web', '2018-12-20 10:43:14', 'bbin_web', '2018-12-20 02:43:14'),
(118, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-20 10:46:22', 'bbin_web', '2018-12-20 02:46:22'),
(119, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 10:46:24', 'bbin_web', '2018-12-20 02:46:24'),
(120, 'bbin_web', 2, 1, '視訊uiKit', '繼續嘗試', 1, 'bbin_web', '2018-12-20 10:47:32', 'bbin_web', '2018-12-20 02:47:32'),
(121, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-20 10:47:33', 'bbin_web', '2018-12-20 02:47:33'),
(122, 'bbin_web', 2, 1, 'APP', '新增', 1, 'bbin_web', '2018-12-20 10:48:08', 'bbin_web', '2018-12-20 02:48:08'),
(123, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 10:48:09', 'bbin_web', '2018-12-20 02:48:09'),
(124, 'bbin_web', 2, 1, '視訊uiKit', '繼續嘗試', 1, 'bbin_web', '2018-12-20 10:54:15', 'bbin_web', '2018-12-20 02:54:15'),
(125, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-20 10:54:16', 'bbin_web', '2018-12-20 02:54:16'),
(126, 'bbin_web', 2, 1, '視訊uiKit', '繼續嘗試', 1, 'bbin_web', '2018-12-20 10:56:58', 'bbin_web', '2018-12-20 02:56:58'),
(127, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-20 10:56:59', 'bbin_web', '2018-12-20 02:56:59'),
(128, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-20 11:02:00', 'bbin_web', '2018-12-20 03:02:00'),
(129, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 11:02:01', 'bbin_web', '2018-12-20 03:02:01'),
(130, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-20 11:03:11', 'bbin_web', '2018-12-20 03:03:11'),
(131, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 11:03:12', 'bbin_web', '2018-12-20 03:03:12'),
(132, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-20 11:07:14', 'bbin_web', '2018-12-20 03:07:14'),
(133, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 11:07:15', 'bbin_web', '2018-12-20 03:07:15'),
(134, 'bbin_web', 2, 1, 'APP', '我是誰', 1, 'bbin_web', '2018-12-20 11:07:33', 'bbin_web', '2018-12-20 03:07:33'),
(135, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 11:07:34', 'bbin_web', '2018-12-20 03:07:34'),
(136, 'bbin_web', 2, 1, 'IN體育uiKit', '去', 1, 'bbin_web', '2018-12-20 11:07:39', 'bbin_web', '2018-12-20 03:07:39'),
(137, 'bbin_web', 2, 2, 'IN體育uiKit', NULL, 1, 'bbin_web', '2018-12-20 11:07:40', 'bbin_web', '2018-12-20 03:07:40'),
(138, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-20 11:07:52', 'bbin_web', '2018-12-20 03:07:52'),
(139, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-20 11:07:53', 'bbin_web', '2018-12-20 03:07:53'),
(140, 'bbin_web', 2, 1, 'APP', '四層彩金', 1, 'bbin_web', '2018-12-20 11:08:06', 'bbin_web', '2018-12-20 03:08:06'),
(141, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 11:08:07', 'bbin_web', '2018-12-20 03:08:07'),
(142, 'bbin_web', 2, 1, '視訊uiKit', '繼續嘗試', 1, 'bbin_web', '2018-12-20 11:15:45', 'bbin_web', '2018-12-20 03:15:45'),
(143, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-20 11:15:46', 'bbin_web', '2018-12-20 03:15:46'),
(144, 'bbin_web', 2, 1, 'APP', '新增', 1, 'bbin_web', '2018-12-20 11:26:42', 'bbin_web', '2018-12-20 03:26:42'),
(145, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 11:26:43', 'bbin_web', '2018-12-20 03:26:43'),
(146, 'bbin_web', 1, 1, '測試中', '我試試看新增喔', 1, 'bbin_web', '2018-12-20 11:48:42', 'bbin_web', '2018-12-20 03:48:42'),
(147, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 11:48:43', 'bbin_web', '2018-12-20 03:48:43'),
(148, 'bbin_web', 1, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2018-12-20 11:55:43', 'bbin_web', '2018-12-20 03:55:43'),
(149, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-20 11:55:44', 'bbin_web', '2018-12-20 03:55:44'),
(150, 'bbin_web', 1, 1, '測試中', '測試測試', 1, 'bbin_web', '2018-12-20 11:58:54', 'bbin_web', '2018-12-20 03:58:54'),
(151, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 11:58:55', 'bbin_web', '2018-12-20 03:58:55'),
(152, 'bbin_web', 3, 1, '視訊uiKit', '繼續嘗試', 1, 'bbin_web', '2018-12-20 11:59:12', 'bbin_web', '2018-12-20 03:59:12'),
(153, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-20 11:59:13', 'bbin_web', '2018-12-20 03:59:13'),
(154, 'bbin_web', 2, 1, '機率uiKit', '與神', 1, 'bbin_web', '2018-12-20 11:59:48', 'bbin_web', '2018-12-20 03:59:48'),
(155, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-20 11:59:49', 'bbin_web', '2018-12-20 03:59:49'),
(156, 'bbin_web', 2, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2018-12-20 14:12:08', 'bbin_web', '2018-12-20 06:12:08'),
(157, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-20 14:12:09', 'bbin_web', '2018-12-20 06:12:09'),
(158, 'bbin_web', 2, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2018-12-20 14:12:58', 'bbin_web', '2018-12-20 06:12:58'),
(159, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-20 14:12:59', 'bbin_web', '2018-12-20 06:12:59'),
(160, 'bbin_web', 2, 1, '測試中', '我試試看新增喔', 1, 'bbin_web', '2018-12-20 14:13:52', 'bbin_web', '2018-12-20 06:13:52'),
(161, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 14:13:53', 'bbin_web', '2018-12-20 06:13:53'),
(162, 'bbin_web', 2, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2018-12-20 14:16:49', 'bbin_web', '2018-12-20 06:16:49'),
(163, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-20 14:16:51', 'bbin_web', '2018-12-20 06:16:51'),
(164, 'bbin_web', 2, 1, '測試中', '我試試看新增喔', 1, 'bbin_web', '2018-12-20 15:16:33', 'bbin_web', '2018-12-20 07:16:33'),
(165, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 15:16:34', 'bbin_web', '2018-12-20 07:16:34'),
(166, 'bbin_web', 1, 1, '機率uiKit', '123', 1, 'bbin_web', '2018-12-20 16:27:00', 'bbin_web', '2018-12-20 08:27:00'),
(167, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-20 16:27:01', 'bbin_web', '2018-12-20 08:27:01'),
(168, 'bbin_web', 2, 1, '機率uiKit', '789', 1, 'bbin_web', '2018-12-20 16:27:27', 'bbin_web', '2018-12-20 08:27:27'),
(169, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-20 16:27:28', 'bbin_web', '2018-12-20 08:27:28'),
(170, 'bbin_web', 2, 1, '測試中', '我試試看新增喔', 1, 'bbin_web', '2018-12-20 16:43:04', 'bbin_web', '2018-12-20 08:43:04'),
(171, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 16:43:06', 'bbin_web', '2018-12-20 08:43:06'),
(172, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 16:43:06', 'bbin_web', '2018-12-20 08:43:06'),
(173, 'bbin_web', 2, 1, '測試中', '測試測試', 1, 'bbin_web', '2018-12-20 16:44:11', 'bbin_web', '2018-12-20 08:44:11'),
(174, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 16:44:12', 'bbin_web', '2018-12-20 08:44:12'),
(175, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 16:44:13', 'bbin_web', '2018-12-20 08:44:13'),
(176, 'bbin_web', 2, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2018-12-20 16:47:11', 'bbin_web', '2018-12-20 08:47:11'),
(177, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-20 16:47:12', 'bbin_web', '2018-12-20 08:47:12'),
(178, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-20 16:47:12', 'bbin_web', '2018-12-20 08:47:12'),
(179, 'bbin_web', 2, 1, 'APP', '新增', 1, 'bbin_web', '2018-12-20 16:47:29', 'bbin_web', '2018-12-20 08:47:29'),
(180, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 16:47:30', 'bbin_web', '2018-12-20 08:47:30'),
(181, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 16:47:30', 'bbin_web', '2018-12-20 08:47:30'),
(182, 'bbin_web', 2, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2018-12-20 16:49:20', 'bbin_web', '2018-12-20 08:49:20'),
(183, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-20 16:49:21', 'bbin_web', '2018-12-20 08:49:21'),
(184, 'bbin_web', 2, 1, 'APP', '新增', 1, 'bbin_web', '2018-12-20 16:49:28', 'bbin_web', '2018-12-20 08:49:28'),
(185, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2018-12-20 16:49:30', 'bbin_web', '2018-12-20 08:49:30'),
(186, 'bbin_web', 3, 1, '測試中', '測試測試', 1, 'bbin_web', '2018-12-20 17:04:27', 'bbin_web', '2018-12-20 09:04:27'),
(187, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2018-12-20 17:04:28', 'bbin_web', '2018-12-20 09:04:28'),
(188, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-12-20 17:25:44', 'bbin_web', '2018-12-20 09:25:44'),
(189, 'bbin_web', 2, 1, '視訊uiKit', '你是誰', 1, 'bbin_web', '2018-12-21 17:45:20', 'bbin_web', '2018-12-21 09:45:20'),
(190, 'bbin_web', 2, 2, '視訊uiKit', NULL, 1, 'bbin_web', '2018-12-21 17:45:22', 'bbin_web', '2018-12-21 09:45:22'),
(191, 'bbin_web', 2, 1, '機率uiKit', 'HB', 1, 'bbin_web', '2018-12-21 17:52:14', 'bbin_web', '2018-12-21 09:52:14'),
(192, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-21 17:52:15', 'bbin_web', '2018-12-21 09:52:15'),
(193, 'bbin_web', 2, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2018-12-26 10:47:07', 'bbin_web', '2018-12-26 02:47:07'),
(194, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2018-12-26 10:47:08', 'bbin_web', '2018-12-26 02:47:08'),
(195, 'bbin_web', 2, 2, '你好我', NULL, 1, 'bbin_web', '2018-12-26 10:47:15', 'bbin_web', '2018-12-26 02:47:15'),
(196, 'bbin_web', 1, 1, '機率uiKit', '這是一個測試用圖標', 1, 'bbin_web', '2018-12-27 10:56:59', 'bbin_web', '2018-12-27 02:56:59'),
(197, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-27 10:57:00', 'bbin_web', '2018-12-27 02:57:00'),
(198, 'bbin_web', 2, 1, '機率uiKit', '這是一個測試用圖標', 1, 'bbin_web', '2018-12-27 10:58:29', 'bbin_web', '2018-12-27 02:58:29'),
(199, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-27 10:58:30', 'bbin_web', '2018-12-27 02:58:30'),
(200, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 09:47:31', 'bbin_web', '2018-12-28 01:47:31'),
(201, 'bbin_web', 1, 1, '測試用喔', '你好喔', 1, 'bbin_web', '2018-12-28 09:55:25', 'bbin_web', '2018-12-28 01:55:25'),
(202, 'bbin_web', 2, 2, '測試用喔', NULL, 1, 'bbin_web', '2018-12-28 09:55:27', 'bbin_web', '2018-12-28 01:55:27'),
(203, 'bbin_web', 3, 1, '測試用喔', '你好喔', 1, 'bbin_web', '2018-12-28 09:55:43', 'bbin_web', '2018-12-28 01:55:43'),
(204, 'bbin_web', 2, 2, '測試用喔', NULL, 1, 'bbin_web', '2018-12-28 09:55:44', 'bbin_web', '2018-12-28 01:55:44'),
(205, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 09:56:06', 'bbin_web', '2018-12-28 01:56:06'),
(206, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:26:51', 'bbin_web', '2018-12-28 02:26:51'),
(207, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:26:55', 'bbin_web', '2018-12-28 02:26:55'),
(208, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:39:57', 'bbin_web', '2018-12-28 02:39:57'),
(209, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:40:02', 'bbin_web', '2018-12-28 02:40:02'),
(210, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:40:06', 'bbin_web', '2018-12-28 02:40:06'),
(211, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:40:25', 'bbin_web', '2018-12-28 02:40:25'),
(212, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:40:29', 'bbin_web', '2018-12-28 02:40:29'),
(213, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:40:33', 'bbin_web', '2018-12-28 02:40:33'),
(214, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:40:53', 'bbin_web', '2018-12-28 02:40:53'),
(215, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 10:41:02', 'bbin_web', '2018-12-28 02:41:02'),
(216, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 11:15:24', 'bbin_web', '2018-12-28 03:15:24'),
(217, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 11:17:41', 'bbin_web', '2018-12-28 03:17:41'),
(218, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 11:17:50', 'bbin_web', '2018-12-28 03:17:50'),
(219, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 11:23:17', 'bbin_web', '2018-12-28 03:23:17'),
(220, 'bbin_web', 2, 1, '機率uiKit', '這是一個測試用圖標', 1, 'bbin_web', '2018-12-28 11:37:45', 'bbin_web', '2018-12-28 03:37:45'),
(221, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2018-12-28 11:37:46', 'bbin_web', '2018-12-28 03:37:46'),
(222, 'bbin_web', 2, 1, '測試中', '我試試看新增喔', 1, 'bbin_web', '2018-12-28 11:40:22', 'bbin_web', '2018-12-28 03:40:22'),
(223, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 11:50:31', 'bbin_web', '2018-12-28 03:50:31'),
(224, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2018-12-28 11:50:43', 'bbin_web', '2018-12-28 03:50:43'),
(225, 'bbin_web', 1, 1, '1234', '123', 1, 'bbin_web', '2019-01-02 14:09:49', 'bbin_web', '2019-01-02 06:09:49'),
(226, 'bbin_web', 2, 2, '1234', NULL, 1, 'bbin_web', '2019-01-02 14:09:50', 'bbin_web', '2019-01-02 06:09:50'),
(227, 'bbin_web', 1, 1, '你好', '45553', 1, 'bbin_web', '2019-01-02 14:16:34', 'bbin_web', '2019-01-02 06:16:34'),
(228, 'bbin_web', 2, 2, '你好', NULL, 1, 'bbin_web', '2019-01-02 14:16:35', 'bbin_web', '2019-01-02 06:16:35'),
(229, 'bbin_web', 1, 1, '誰是你是我', 'wgrggh', 1, 'bbin_web', '2019-01-02 14:17:41', 'bbin_web', '2019-01-02 06:17:41'),
(230, 'bbin_web', 2, 2, '誰是你是我', NULL, 1, 'bbin_web', '2019-01-02 14:17:42', 'bbin_web', '2019-01-02 06:17:42'),
(231, 'bbin_web', 2, 2, '機率ui', NULL, 1, 'bbin_web', '2019-01-09 10:37:46', 'bbin_web', '2019-01-09 02:37:46'),
(232, 'bbin_web', 2, 2, '機率uiKit', NULL, 1, 'bbin_web', '2019-01-09 10:46:05', 'bbin_web', '2019-01-09 02:46:05'),
(233, 'bbin_web', 2, 2, '彩票ui', NULL, 1, 'bbin_web', '2019-01-09 10:57:19', 'bbin_web', '2019-01-09 02:57:19'),
(234, 'bbin_web', 3, 1, '視訊uiKit', '你是誰', 1, 'bbin_web', '2019-01-09 11:09:55', 'bbin_web', '2019-01-09 03:09:55'),
(235, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:23:33', 'bbin_web', '2019-01-09 03:23:33'),
(236, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:23:36', 'bbin_web', '2019-01-09 03:23:36'),
(237, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:23:48', 'bbin_web', '2019-01-09 03:23:48'),
(238, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:23:51', 'bbin_web', '2019-01-09 03:23:51'),
(239, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:23:53', 'bbin_web', '2019-01-09 03:23:53'),
(240, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:23:56', 'bbin_web', '2019-01-09 03:23:56'),
(241, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:23:58', 'bbin_web', '2019-01-09 03:23:58'),
(242, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:24:00', 'bbin_web', '2019-01-09 03:24:00'),
(243, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:24:03', 'bbin_web', '2019-01-09 03:24:03'),
(244, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:24:05', 'bbin_web', '2019-01-09 03:24:05'),
(245, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:24:08', 'bbin_web', '2019-01-09 03:24:08'),
(246, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-01-09 11:24:11', 'bbin_web', '2019-01-09 03:24:11'),
(247, 'bbin_web', 2, 2, '彩票uiKit', NULL, 1, 'bbin_web', '2019-01-09 11:24:26', 'bbin_web', '2019-01-09 03:24:26'),
(248, 'bbin_web', 1, 1, '測試用喔', '優惠', 1, 'bbin_web', '2019-01-09 11:25:45', 'bbin_web', '2019-01-09 03:25:45'),
(249, 'bbin_web', 2, 2, '測試用', NULL, 1, 'bbin_web', '2019-01-09 11:26:17', 'bbin_web', '2019-01-09 03:26:17'),
(250, 'bbin_web', 2, 2, '測試用der', NULL, 1, 'bbin_web', '2019-01-09 11:27:25', 'bbin_web', '2019-01-09 03:27:25'),
(251, 'bbin_web', 2, 2, '測試用de', NULL, 1, 'bbin_web', '2019-01-09 11:30:43', 'bbin_web', '2019-01-09 03:30:43'),
(252, 'bbin_web', 2, 2, '測試用', NULL, 1, 'bbin_web', '2019-01-09 11:31:22', 'bbin_web', '2019-01-09 03:31:22'),
(253, 'bbin_web', 3, 1, '測試用der', '優惠', 1, 'bbin_web', '2019-01-09 11:32:09', 'bbin_web', '2019-01-09 03:32:09'),
(254, 'bbin_web', 1, 1, '測試用', '優惠', 1, 'bbin_web', '2019-01-09 11:33:09', 'bbin_web', '2019-01-09 03:33:09'),
(255, 'bbin_web', 2, 2, 'APP11', NULL, 1, 'bbin_web', '2019-01-09 11:33:31', 'bbin_web', '2019-01-09 03:33:31'),
(256, 'bbin_web', 2, 2, 'APP', NULL, 1, 'bbin_web', '2019-01-09 11:33:37', 'bbin_web', '2019-01-09 03:33:37'),
(257, 'bbin_web', 2, 2, '測試用der', NULL, 1, 'bbin_web', '2019-01-09 11:33:40', 'bbin_web', '2019-01-09 03:33:40'),
(258, 'bbin_web', 1, 1, '測試用der', '一元奪寶', 1, 'bbin_web', '2019-01-09 11:40:28', 'bbin_web', '2019-01-09 03:40:28'),
(259, 'bbin_web', 2, 1, '測試用der', '一元奪寶', 1, 'bbin_web', '2019-01-09 11:41:15', 'bbin_web', '2019-01-09 03:41:15'),
(260, 'bbin_web', 2, 1, '測試用der', '一元奪', 1, 'bbin_web', '2019-01-09 11:41:43', 'bbin_web', '2019-01-09 03:41:43'),
(261, 'bbin_web', 2, 1, '測試用der', '一元奪寶', 1, 'bbin_web', '2019-01-09 11:41:59', 'bbin_web', '2019-01-09 03:41:59'),
(262, 'bbin_web', 1, 1, '測試用der', 'AG視訊', 1, 'bbin_web', '2019-01-09 11:44:41', 'bbin_web', '2019-01-09 03:44:41'),
(263, 'bbin_web', 1, 1, '測試用der', 'BB視訊', 1, 'bbin_web', '2019-01-09 11:45:08', 'bbin_web', '2019-01-09 03:45:08'),
(264, 'bbin_web', 1, 1, '測試用der', '體育投注', 1, 'bbin_web', '2019-01-09 11:45:54', 'bbin_web', '2019-01-09 03:45:54'),
(265, 'bbin_web', 1, 1, '測試用der', 'BB體育', 1, 'bbin_web', '2019-01-09 11:46:17', 'bbin_web', '2019-01-09 03:46:17'),
(266, 'bbin_web', 1, 1, '測試用der', 'BB彩票', 1, 'bbin_web', '2019-01-09 11:46:52', 'bbin_web', '2019-01-09 03:46:52'),
(267, 'bbin_web', 1, 1, '測試用der', '捕魚機', 1, 'bbin_web', '2019-01-09 11:47:18', 'bbin_web', '2019-01-09 03:47:18'),
(268, 'bbin_web', 1, 1, '測試用der', 'PP電子', 1, 'bbin_web', '2019-01-09 11:47:56', 'bbin_web', '2019-01-09 03:47:56'),
(269, 'bbin_web', 2, 1, '1234', '123', 1, 'bbin_web', '2019-05-28 11:15:18', 'bbin_web', '2019-05-28 03:15:18'),
(270, 'bbin_web', 1, 1, '測試用der', '新的icon', 1, 'bbin_web', '2019-05-28 11:24:45', 'bbin_web', '2019-05-28 03:24:45'),
(271, 'bbin_web', 2, 1, 'IN體育uiKit', '冠軍規則', 1, 'bbin_web', '2019-05-28 16:45:18', 'bbin_web', '2019-05-28 08:45:18'),
(272, 'bbin_web', 1, 1, '彩票uiKit', '測試', 1, 'bbin_web', '2019-06-13 09:42:30', 'bbin_web', '2019-06-13 01:42:30'),
(273, 'bbin_web', 2, 1, '彩票uiKit', '測試', 1, 'bbin_web', '2019-06-13 09:42:53', 'bbin_web', '2019-06-13 01:42:53'),
(274, 'bbin_web', 3, 1, '彩票uiKit', '測試', 1, 'bbin_web', '2019-06-14 12:02:55', 'bbin_web', '2019-06-14 04:02:55'),
(275, 'bbin_web', 3, 1, '測試用der', '新的icon', 1, 'bbin_web', '2019-06-14 12:02:58', 'bbin_web', '2019-06-14 04:02:58'),
(276, 'bbin_web', 2, 2, '測試用der', NULL, 1, 'bbin_web', '2019-06-14 12:02:59', 'bbin_web', '2019-06-14 04:02:59'),
(277, 'bbin_web', 3, 1, '誰是你是我', 'wgrggh', 1, 'bbin_web', '2019-06-14 12:03:02', 'bbin_web', '2019-06-14 04:03:02'),
(278, 'bbin_web', 3, 1, '你好', '45553', 1, 'bbin_web', '2019-06-14 12:03:05', 'bbin_web', '2019-06-14 04:03:05'),
(279, 'bbin_web', 3, 1, '1234', '123', 1, 'bbin_web', '2019-06-14 12:03:30', 'bbin_web', '2019-06-14 04:03:30'),
(280, 'bbin_web', 3, 1, '機率uiKit', '這是一個測試用圖標', 1, 'bbin_web', '2019-06-14 12:03:34', 'bbin_web', '2019-06-14 04:03:34'),
(281, 'bbin_web', 3, 1, '機率uiKit', '789', 1, 'bbin_web', '2019-06-14 12:03:38', 'bbin_web', '2019-06-14 04:03:38'),
(282, 'bbin_web', 3, 1, '彩票uiKit', '繼續測試看看', 1, 'bbin_web', '2019-06-14 12:03:41', 'bbin_web', '2019-06-14 04:03:41'),
(283, 'bbin_web', 3, 1, '測試中', '我試試看新增喔', 1, 'bbin_web', '2019-06-14 12:03:44', 'bbin_web', '2019-06-14 04:03:44'),
(284, 'bbin_web', 2, 2, '測試中', NULL, 1, 'bbin_web', '2019-06-14 12:03:45', 'bbin_web', '2019-06-14 04:03:45'),
(285, 'bbin_web', 3, 1, '機率uiKit', '與神', 1, 'bbin_web', '2019-06-14 12:03:47', 'bbin_web', '2019-06-14 04:03:47'),
(286, 'bbin_web', 3, 1, 'IN體育uiKit', '去', 1, 'bbin_web', '2019-06-14 12:03:50', 'bbin_web', '2019-06-14 04:03:50'),
(287, 'bbin_web', 3, 1, 'APP', '我是誰', 1, 'bbin_web', '2019-06-14 12:03:53', 'bbin_web', '2019-06-14 04:03:53'),
(288, 'bbin_web', 3, 1, 'APP', '新增', 1, 'bbin_web', '2019-06-14 12:03:56', 'bbin_web', '2019-06-14 04:03:56'),
(289, 'bbin_web', 3, 1, '機率uiKit', 'newnewnew', 1, 'bbin_web', '2019-06-14 12:03:59', 'bbin_web', '2019-06-14 04:03:59'),
(290, 'bbin_web', 3, 1, '機率uiKit', '我好猛', 1, 'bbin_web', '2019-06-14 12:04:02', 'bbin_web', '2019-06-14 04:04:02'),
(291, 'bbin_web', 2, 1, '視訊uiKit', '限額', 1, 'bbin_web', '2019-06-14 12:04:07', 'bbin_web', '2019-06-14 04:04:07'),
(292, 'bbin_web', 3, 2, NULL, NULL, 1, 'bbin_web', '2019-06-14 12:12:35', 'bbin_web', '2019-06-14 04:12:35'),
(293, 'bbin_web', 1, 2, NULL, NULL, 1, 'bbin_web', '2019-06-14 12:12:53', 'bbin_web', '2019-06-14 04:12:53'),
(294, 'bbin_web', 1, 1, 'aio3-銀行交易', 'btn_onlinepayment', 1, 'bbin_web', '2019-06-14 12:13:51', 'bbin_web', '2019-06-14 04:13:51'),
(295, 'bbin_web', 1, 1, 'aio3-銀行交易', 'btn_net_silver_pay_1X', 1, 'bbin_web', '2019-06-14 12:14:37', 'bbin_web', '2019-06-14 04:14:37'),
(296, 'bbin_web', 1, 1, 'aio3-銀行交易', 'btn_2d_scan_code_pay_2x', 1, 'bbin_web', '2019-06-14 12:15:19', 'bbin_web', '2019-06-14 04:15:19'),
(297, 'bbin_web', 1, 1, 'aio3-銀行交易', 'btn_2d_scan_code_pay', 1, 'bbin_web', '2019-06-14 12:15:52', 'bbin_web', '2019-06-14 04:15:52');

-- --------------------------------------------------------

--
-- 資料表結構 `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `png` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fw` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `psd` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`, `png`, `fw`, `psd`, `num`) VALUES
(1, 'IN體育uiKit', '2018-03-15 10:02:55', '2019-05-27 19:23:17', '[\"\\/files\\/1\\/\\u5f69\\u7968uiKit\\/png\\/\\u672a\\u7d50\\u55ae\\u6ce8\\u55ae2.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6df7\\u5408\\u904e\\u95dc\\u898f\\u5247.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6d3e\\u5f69\\u898f\\u5247.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51a0\\u8ecd\\u898f\\u5247.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u58d8\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5e95\\u5716.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6c34\\u4e0a\\u82ad\\u857e.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/Lacrosse.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u64b2\\u514b.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u82b1\\u5f0f\\u6e9c\\u51b0.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u96ea\\u6a47.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8d8a\\u91ce\\u6ed1\\u96ea.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u76f8\\u64b2.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u885d\\u6d6a.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u62c9\\u529b\\u8cfd.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6469\\u6258\\u8eca.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u798f\\u6a02\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51b0\\u58fa.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u897f\\u6d0b\\u68cb.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8349\\u5730\\u6efe\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51ac\\u5b63\\u5169\\u9805.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u91d1\\u878d.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u99ac\\u8eca.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u72d7.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u99ac.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6cf0\\u62f3.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u9435\\u4eba\\u4e09\\u9805.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8dc6\\u62f3\\u9053.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5c04\\u64ca.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5e06\\u8239.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5212\\u8239.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u73fe\\u4ee3\\u4e94\\u9805.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u67d4\\u9053.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u64ca\\u528d.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5a1b\\u6a02.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u907f\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u99ac\\u8853.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u9ad4\\u64cd.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u76ae\\u5212\\u8247.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8209\\u91cd.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5c04\\u7bad.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8df3\\u6c34.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u653f\\u6cbb.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6e38\\u6cf3.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u677f\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u677f\\u68cd\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51ac\\u5b63\\u5967\\u904b.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6c34\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u5967\\u6797\\u5339\\u514b.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u98db\\u93e2.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7530\\u5f91.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u81ea\\u884c\\u8eca.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u9ad8\\u723e\\u592b.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8cfd\\u8eca.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8349\\u5730\\u66f2\\u68cd\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u624b\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e52\\u4e53\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u62f3\\u64ca.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u53f8\\u8afe\\u514b(\\u82f1\\u5f0f\\u649e\\u7403).png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7fbd\\u6bdb\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u96fb\\u5b50\\u7af6\\u6280.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u6392\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51b0\\u4e0a\\u66f2\\u68cd\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u68d2\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7db2\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7f8e\\u5f0f\\u8db3\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u7c43\\u7403.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u8db3\\u7403.png\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6df7\\u5408\\u904e\\u95dc\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6d3e\\u5f69\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51a0\\u8ecd\\u898f\\u5247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u58d8\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5e95\\u5716.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6c34\\u4e0a\\u82ad\\u857e.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/Lacrosse.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u64b2\\u514b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u82b1\\u5f0f\\u6e9c\\u51b0.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u96ea\\u6a47.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8d8a\\u91ce\\u6ed1\\u96ea.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u76f8\\u64b2.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u885d\\u6d6a.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u62c9\\u529b\\u8cfd.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6469\\u6258\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u798f\\u6a02\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51b0\\u58fa.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u897f\\u6d0b\\u68cb.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8349\\u5730\\u6efe\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51ac\\u5b63\\u5169\\u9805.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u91d1\\u878d.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u99ac\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u72d7.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u99ac.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6cf0\\u62f3.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u9435\\u4eba\\u4e09\\u9805.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8dc6\\u62f3\\u9053.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5c04\\u64ca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5e06\\u8239.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5212\\u8239.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u73fe\\u4ee3\\u4e94\\u9805.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u67d4\\u9053.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u64ca\\u528d.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5a1b\\u6a02.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u907f\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u99ac\\u8853.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u9ad4\\u64cd.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u76ae\\u5212\\u8247.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8209\\u91cd.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5c04\\u7bad.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8df3\\u6c34.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u653f\\u6cbb.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6e38\\u6cf3.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u677f\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u677f\\u68cd\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51ac\\u5b63\\u5967\\u904b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6c34\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u5967\\u6797\\u5339\\u514b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u98db\\u93e2.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7530\\u5f91.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u81ea\\u884c\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u9ad8\\u723e\\u592b.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8cfd\\u8eca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8349\\u5730\\u66f2\\u68cd\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u624b\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u4e52\\u4e53\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u62f3\\u64ca.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u53f8\\u8afe\\u514b(\\u82f1\\u5f0f\\u649e\\u7403).fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7fbd\\u6bdb\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u96fb\\u5b50\\u7af6\\u6280.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u6392\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51b0\\u4e0a\\u66f2\\u68cd\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u68d2\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7db2\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7f8e\\u5f0f\\u8db3\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u7c43\\u7403.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u8db3\\u7403.fw.png\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403.psd\"]', 14),
(6, '測試中', '2018-03-15 16:14:00', '2019-06-14 04:03:45', NULL, NULL, NULL, 18),
(7, '視訊uiKit', '2018-03-15 16:14:15', '2018-12-21 09:45:22', '[\"\\/files\\/2\\/limit.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u986f\\u793a\\u73fe\\u5834\\u96fb\\u8a71\\u865f\\u78bc.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u54aa_\\u7af6\\u9ab0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65c1\\u89c0\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u9032\\u5ea7\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7368\\u4eab.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u8d85\\u7d1a\\u591a\\u53f0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u591a\\u53f0.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u91d1\\u81c2\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u7af6\\u772f\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5feb\\u901f\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u5305\\u684c\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u65d7\\u8266\\u5ef3.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/\\u591a\\u53f0\\u4e0b\\u6ce8.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/OG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/Allbet.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/GD.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/AG.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/png\\/BB.png\"]', '[\"\\/files\\/2\\/limit.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u986f\\u793a\\u73fe\\u5834\\u96fb\\u8a71\\u865f\\u78bc.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u7af6\\u54aa_\\u7af6\\u9ab0.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u65c1\\u89c0\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u9032\\u5ea7\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u5305\\u684c.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u7368\\u4eab.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u8d85\\u7d1a\\u591a\\u53f0.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u91d1\\u81c2\\u591a\\u53f0.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u91d1\\u81c2\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u7af6\\u772f\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u5feb\\u901f\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u5305\\u684c\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u65d7\\u8266\\u5ef3.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u591a\\u53f0\\u4e0b\\u6ce8.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/OG.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/Allbet.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/BG.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/GD.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/AG.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/BB.fw.png\"]', 'null', 5),
(8, '機率uiKit', '2018-03-15 16:14:29', '2019-06-13 18:21:14', '[\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/H5\\u7248.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/AG.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u51ac\\u5b63\\u5169\\u9805.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(minor).png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(major).png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/3D\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/H5\\u7248.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/flash\\u7248.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6436\\u5148\\u770b.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6211\\u7684\\u6700\\u611b.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6355\\u9b5a.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u7d2f\\u7a4d\\u5f69\\u6c60.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8996\\u8a0a\\u64b2\\u514b.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8001\\u864e\\u6a5f.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u522e\\u522e\\u6a02.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u5927\\u578b\\u6a5f\\u53f0.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u684c\\u4e0a\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u7279\\u8272.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u66f4\\u591a.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u5168\\u90e8.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u71b1\\u9580\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u6700\\u65b0\\u904a\\u6232.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u63a8\\u85a6.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/JDB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/RT.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/SG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/MW.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/AG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/PP.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/PT.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/HB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/iSB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/GNS.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/MG.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/BB.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u8a66\\u73a9.png\"]', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB.fw.png\",\"\\/files\\/1\\/\\u8996\\u8a0auiKit\\/fw\\/\\u8d85\\u7d1a\\u591a\\u53f0.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/\\u51ac\\u5b63\\u5169\\u9805.fw.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/fw\\/Lacrosse.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(minor).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(major).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(grand).fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/3D\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/H5\\u7248.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/flash\\u7248.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6436\\u5148\\u770b.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6211\\u7684\\u6700\\u611b.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6355\\u9b5a.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u7d2f\\u7a4d\\u5f69\\u6c60.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u8996\\u8a0a\\u64b2\\u514b.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u8001\\u864e\\u6a5f.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u522e\\u522e\\u6a02.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u5927\\u578b\\u6a5f\\u53f0.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u684c\\u4e0a\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u7279\\u8272.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u66f4\\u591a.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u5168\\u90e8.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u71b1\\u9580\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u6700\\u65b0\\u904a\\u6232.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u63a8\\u85a6.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/JDB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/RT.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/SG.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/MW.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/AG.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/PP.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/PT.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/HB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/iSB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/GNS.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/MG.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/BB.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u8a66\\u73a9.fw.png\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403.psd\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403.psd\"]', 17),
(12, 'APP', '2018-03-27 17:35:44', '2019-01-09 03:33:37', '[\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/RT.png\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/png\\/\\u4e00\\u822c\\u9ad4\\u80b2\\u898f\\u5247.png\",\"\\/files\\/1\\/APP\\/png\\/New_BB_Sports.png\",\"\\/files\\/1\\/APP\\/png\\/CB\\u8db3\\u5f69.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/png\\/\\u56db\\u5c64\\u5f69\\u91d1(mini).png\",\"\\/files\\/1\\/APP\\/png\\/\\u9ad4\\u80b2\\u6295\\u6ce8.png\",\"\\/files\\/1\\/APP\\/png\\/BB\\u9ad4\\u80b2.png\",\"\\/files\\/1\\/APP\\/png\\/BB\\u5f69\\u7968.png\",\"\\/files\\/1\\/APP\\/png\\/\\u6355\\u9b5a\\u6a5f.png\",\"\\/files\\/1\\/APP\\/png\\/PP\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/JDB\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/AG\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/ISB\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/GNS\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/MG\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/PT\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/HB\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/BB\\u96fb\\u5b50.png\",\"\\/files\\/1\\/APP\\/png\\/BG\\u8996\\u8a0a.png\",\"\\/files\\/1\\/APP\\/png\\/OG\\u8996\\u8a0a.png\",\"\\/files\\/1\\/APP\\/png\\/\\u6b50\\u535a\\u8996\\u8a0a.png\",\"\\/files\\/1\\/APP\\/png\\/GD\\u8996\\u8a0a.png\"]', '[\"\\/files\\/1\\/APP\\/fw\\/\\u4e00\\u5143\\u596a\\u5bf6.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/New_BB_Sports.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/CB\\u8db3\\u5f69.fw.png\",\"\\/files\\/1\\/\\u6a5f\\u7387uiKit\\/fw\\/\\u56db\\u5c64\\u5f69\\u91d1(mini).fw.png\",\"\\/files\\/1\\/APP\\/fw\\/\\u9ad4\\u80b2\\u6295\\u6ce8.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/BB\\u9ad4\\u80b2.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/BB\\u5f69\\u7968.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/\\u6355\\u9b5a\\u6a5f.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/PP\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/JDB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/AG\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/ISB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/GNS\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/MG\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/PT\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/HB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/BB\\u96fb\\u5b50.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/BG\\u8996\\u8a0a.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/OG\\u8996\\u8a0a.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/\\u6b50\\u535a\\u8996\\u8a0a.fw.png\",\"\\/files\\/1\\/APP\\/fw\\/GD\\u8996\\u8a0a.fw.png\"]', '[\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403.psd\",\"\\/files\\/1\\/IN\\u9ad4\\u80b2uiKit\\/psd\\/\\u8db3\\u7403.psd\"]', 3),
(19, 'aio3-銀行交易', '2019-06-14 04:12:53', '2019-06-14 04:12:53', 'null', 'null', 'null', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bbin_web', '$2y$10$H6cMwwpm81gkkyt3vu/3rewXbwOdQELpb/U9eOeeijLrNq7UNaJ4m', 'xkiATIg87NaoOblf3ZnYyP9ayGL2G5sbqAf9oZ7dsjYFGhRsYVaXq8XqEmRO', '2018-01-18 10:02:56', '2018-01-18 10:02:56'),
(2, 'bbin_2d', '$2y$10$ZnXiV9cb9LsukxaNnhSx2e5qk5cF/8GuwcSTO7HXiNzX7eCnia2OK', NULL, NULL, NULL),
(3, 'bbin_3d', '$2y$10$kY9kHj8gocRin5ojYeIN/uwc/CaMagbG8sjk6NQTfc.Upx4tkRW1G', NULL, NULL, NULL),
(4, 'web_toby', '$2y$10$wRVHTW38gii1AueAlV0mg.H2Bfr/9zU.sOpp9lT2BuFu4X683U6yq', 'ZCB5zmkfMqZnrZzJJrUvgeXoVoO9IV6h06XeR4MYcPcY3oAEPVisZ9xUwBPH', '2018-05-10 15:01:41', '2018-05-10 15:01:41');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `errorlog`
--
ALTER TABLE `errorlog`
  ADD PRIMARY KEY (`log_id`);

--
-- 資料表索引 `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `transaction_record`
--
ALTER TABLE `transaction_record`
  ADD PRIMARY KEY (`tr_id`);

--
-- 資料表索引 `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `errorlog`
--
ALTER TABLE `errorlog`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `transaction_record`
--
ALTER TABLE `transaction_record`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '異動編號', AUTO_INCREMENT=298;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
