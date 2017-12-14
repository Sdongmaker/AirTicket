/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : airticket

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-12-14 16:14:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airplane
-- ----------------------------
DROP TABLE IF EXISTS `airplane`;
CREATE TABLE `airplane` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `arate` decimal(5,1) DEFAULT NULL,
  `f_class_cnt` int(11) NOT NULL,
  `b_class_cnt` int(11) NOT NULL,
  `e_class_cnt` int(11) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of airplane
-- ----------------------------
INSERT INTO `airplane` VALUES ('1', 'MH370', '1.5', '100', '150', '300');
INSERT INTO `airplane` VALUES ('2', 'GH415', '1.4', '90', '50', '250');
INSERT INTO `airplane` VALUES ('3', 'DH489', '1.3', '90', '60', '300');
INSERT INTO `airplane` VALUES ('4', 'GF674', '1.2', '100', '100', '400');
INSERT INTO `airplane` VALUES ('10', 'MH730', '1.9', '100', '200', '700');

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `start_point` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `end_point` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `end_time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `distance` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of flight
-- ----------------------------
INSERT INTO `flight` VALUES ('2', '2', '北京', '上海', '19:00', '23:23', '1300');
INSERT INTO `flight` VALUES ('3', '3', '北京', '广州', '12:12', '23:23', '1300');
INSERT INTO `flight` VALUES ('4', '3', '北京', '广州', '11:00', '12:00', '1300');
INSERT INTO `flight` VALUES ('5', '1', '11', '11', '18:00', '19:00', '20000');
INSERT INTO `flight` VALUES ('6', '1', '11', '11', '18:00', '19:00', '2000');
INSERT INTO `flight` VALUES ('7', '1', '长沙', '广州', '18:00', '19:00', '1000');
INSERT INTO `flight` VALUES ('11', '1', '广州', '北京', '11:23', '15:33', '1200');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', 'admin', 'admin');
INSERT INTO `manager` VALUES ('2', 'root', 'root', 'root');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `prices` mediumint(9) NOT NULL,
  `uid` int(11) NOT NULL,
  `days` date DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '2', '1', '3030', '1', '2017-06-12');
INSERT INTO `orders` VALUES ('2', '2', '4', '4', '2397', '1', '2017-06-18');
INSERT INTO `orders` VALUES ('3', '4', '3', '4', '2397', '1', '2017-06-18');

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `base` int(11) NOT NULL,
  `rate` decimal(5,1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES ('1', '头等舱', '300', '1.5');
INSERT INTO `price` VALUES ('4', '公务舱', '200', '1.3');
INSERT INTO `price` VALUES ('5', '经济舱', '150', '1.0');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ccid` char(18) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'Test', 'Test', 'Test', 'Test', '123456', 'HUNAN');
INSERT INTO `userinfo` VALUES ('2', 'Test2', 'Test', 'Test', 'Test', '123', 'admin');
INSERT INTO `userinfo` VALUES ('19', 'aa', 'aa', 'aaa', 'aa', 'aa', 'aa');
