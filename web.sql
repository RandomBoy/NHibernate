-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 06 月 14 日 13:43
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `web`
--

-- --------------------------------------------------------

--
-- 表的结构 `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `Id` int(11) NOT NULL auto_increment,
  `Name` varchar(20) character set utf8 collate utf8_bin default NULL,
  `Age` int(11) default NULL,
  `Contact` varchar(20) default NULL,
  `Isin` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `patient`
--

INSERT INTO `patient` (`Id`, `Name`, `Age`, `Contact`, `Isin`) VALUES
(1, '谢显栩', 21, '13750018824', 1),
(2, '劳壮', 22, '13750018822', 0),
(3, '病人1', 57, '13750011111', 1),
(4, '病人2', 45, '13750011112', 1),
(5, '病人3', 24, '13750011113', 1),
(6, '病人4', 42, '13750011114', 1),
(7, '病人5', 45, '13750011115', 1),
(8, '病人6', 36, '13750011116', 1),
(9, '病人7', 37, '13750011117', 1),
(10, '病人8', 38, '13750011118', 1),
(11, '病人9', 39, '13750011119', 1),
(12, '病人10', 40, '13750011120', 0),
(13, '闪闪', 22, '13750011156', 1),
(14, '豆豆', 23, '13750011156', 1),
(15, '帅哥', 22, '13750011125', 1),
(16, '新病人', 18, '13750018821', 0);

-- --------------------------------------------------------

--
-- 表的结构 `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `Id` int(11) NOT NULL auto_increment,
  `Doctor` varchar(10) character set utf8 collate utf8_bin default NULL,
  `Patient` varchar(10) character set utf8 collate utf8_bin default NULL,
  `Item` varchar(30) character set utf8 collate utf8_bin default NULL,
  `Content` varchar(200) character set utf8 collate utf8_bin default NULL,
  `Fee` float default NULL,
  `Time` varchar(20) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `record`
--

INSERT INTO `record` (`Id`, `Doctor`, `Patient`, `Item`, `Content`, `Fee`, `Time`) VALUES
(1, '谢显栩', '1', '检查', '你好', 100.7, '2012/6/12 0:36:37'),
(2, '谢显栩', '1', '打针', '没什么好说的', 13.8, '2012/6/12 1:23:43'),
(3, '谢显栩', '1', '暨南大学医院门诊系统测试病历项目1', '暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1', 13.7, '2012/6/12 19:35:12'),
(4, '谢显栩', '1', '暨南大学医院门诊系统测试病历项目2', '暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1', 13.7, '2012/6/12 19:35:18'),
(5, '谢显栩', '1', '暨南大学医院门诊系统测试病历项目3', '暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1', 454, '2012/6/12 19:35:27'),
(6, '谢显栩', '1', '暨南大学医院门诊系统测试病历项目4', '暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1', 653, '2012/6/12 19:35:41'),
(7, '谢显栩', '1', '暨南大学医院门诊系统测试病历项目5', '暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1暨南大学医院门诊系统测试病历项目1', 53.8, '2012/6/12 19:35:57');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL auto_increment,
  `Name` varchar(10) collate utf8_bin default NULL,
  `Pass` varchar(20) character set latin1 default NULL,
  `Role` varchar(10) collate utf8_bin default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `user`
--

INSERT INTO `user` (`Id`, `Name`, `Pass`, `Role`) VALUES
(1, '谢显栩', '20021044', '管理员'),
(2, '吴定沂', '111111', '职工'),
(3, '陈家沂', '111111', '医生');
