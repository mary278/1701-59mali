/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : shanhei_ssh

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2018-11-11 22:03:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL auto_increment,
  `userName` varchar(255) default NULL,
  `goodsId` int(11) default NULL,
  `cartGoodsAmount` int(11) default NULL,
  PRIMARY KEY  (`cartId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', 'zsso', '7', '1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` int(11) NOT NULL auto_increment,
  `goodsName` varchar(255) default NULL,
  `goodsPrice` double default NULL,
  `goodsIntroduce` varchar(255) default NULL,
  `goodsPic` varchar(255) default NULL,
  `goodsColor` varchar(255) default NULL,
  `goodsVersion` varchar(255) default NULL,
  `goodsSetMeal` varchar(255) default NULL,
  `goodsType` varchar(255) default NULL,
  PRIMARY KEY  (`goodsId`),
  UNIQUE KEY `UK_4mk4m9ffabhiq5j0cvhx6h6jg` (`goodsName`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'vivoX6s', '2400', '让 我 来 照 亮 你 的 美 ！ ', 'vivo.jpg', '黑色', '2.1', '全部', '手机');
INSERT INTO `goods` VALUES ('2', 'P20', '4998', '海思 Kirin 970 6.1英寸 2240x1080像素', 'P20.jpg', '红色', '2.2', '裸机', '手机');
INSERT INTO `goods` VALUES ('3', 'nova3e', '1999', '海思 Kirin 659 5.84英寸 2280x1080像素 ', 'nova3e.jpg', '蓝色', '2.1', '裸机', '手机');
INSERT INTO `goods` VALUES ('4', 'Mate10', '3599', '海思 Kirin 970 5.9英寸 2560x1440像素', 'Mate10.jpg', '暗金', '3.1', '全套', '手机');
INSERT INTO `goods` VALUES ('5', 'P10', '3488', '海思 Kirin 960 5.1英寸 1920x1080像素', 'P10.jpg', '蓝色', '3.1', '裸机', '手机');
INSERT INTO `goods` VALUES ('6', 'nova2s', '2399', '海思 Kirin 9606 英寸 2160x1080像素 ', 'nova2s.jpg', '银色', '2.1', '裸机', '手机');
INSERT INTO `goods` VALUES ('7', 'MateRS', '9999', '海思 Kirin 970 6英寸 2880x1440像素', 'MateRS.jpg', '红色', '3.1', '全套', '手机');
INSERT INTO `goods` VALUES ('8', '畅享8', '1299', '高通 骁龙430（MSM8937）5.99英寸 1440x720像素 ', '畅享8.jpg', '蓝色', '3.2', '裸机', '手机');
INSERT INTO `goods` VALUES ('9', '麦芒6', '2166', '海思 Kirin 659 5.9英寸 2160x1080像素 ', '1.22.jpg', '粉色', '2.1', '裸机', '手机');
INSERT INTO `goods` VALUES ('10', '麦芒5', '1290', '高通 骁龙625（MSM8953） 5.5英寸 1920x1080像素 ', '麦芒5.jpg', '蓝色', '3.1', '全套', '手机');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordersId` int(11) NOT NULL auto_increment,
  `userName` varchar(255) default NULL,
  `goodsId` int(11) default NULL,
  `goodsAmount` int(11) default NULL,
  `ordersSum` double default NULL,
  PRIMARY KEY  (`ordersId`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('37', 'ss', '5', '1', '3488');
INSERT INTO `orders` VALUES ('1', 'ss', '3', '1', '1999');
INSERT INTO `orders` VALUES ('16', 'zsso', '7', '1', '9999');
INSERT INTO `orders` VALUES ('17', 'zsso', '7', '1', '9999');
INSERT INTO `orders` VALUES ('38', 'ss', '3', '1', '1999');
INSERT INTO `orders` VALUES ('39', 'ss', '3', '1', '1999');
INSERT INTO `orders` VALUES ('46', 'ss', '8', '1', '1299');
INSERT INTO `orders` VALUES ('47', 'ss', '1', '1', '2400');
INSERT INTO `orders` VALUES ('48', 'ss', '9', '1', '2166');
INSERT INTO `orders` VALUES ('49', 'ss', '2', '1', '4998');
INSERT INTO `orders` VALUES ('2', 'ss', '3', '1', '1999');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(255) default NULL,
  `userPassword` varchar(255) default NULL,
  `userPhone` varchar(255) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10', '闪黑账号', '123321', '17779911413');
INSERT INTO `user` VALUES ('105', 'zsso', '123321', '18370767781');
