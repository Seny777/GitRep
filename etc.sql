/*
Navicat MySQL Data Transfer

Source Server         : qiujing
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : etc

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2021-01-14 18:14:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `website_num` int(11) NOT NULL DEFAULT '0',
  `website_access_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '马思纯', '1', '0');
INSERT INTO `t_user` VALUES ('2', '李现', '3', '0');
INSERT INTO `t_user` VALUES ('3', '霍建华', '1', '0');

-- ----------------------------
-- Table structure for `t_website`
-- ----------------------------
DROP TABLE IF EXISTS `t_website`;
CREATE TABLE `t_website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wname` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `access_num` int(11) NOT NULL DEFAULT '0',
  `last_access_date` datetime DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tyid` (`type_id`),
  KEY `fk_uid` (`create_user_id`),
  CONSTRAINT `fk_tyid` FOREIGN KEY (`type_id`) REFERENCES `t_website_type` (`id`),
  CONSTRAINT `fk_uid` FOREIGN KEY (`create_user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_website
-- ----------------------------
INSERT INTO `t_website` VALUES ('1', '爱奇艺高清', 'http://www.iqiyi.com', '1', '230', '2020-12-31 16:33:45', '2020-12-31 14:22:05', '1');
INSERT INTO `t_website` VALUES ('2', 'bilibili弹幕网', 'http://www.bilibili.com', '1', '120', '2020-12-31 14:23:16', '2020-12-31 14:23:19', '2');
INSERT INTO `t_website` VALUES ('3', '腾讯新闻', 'http://www.qq.com', '2', '563', '2020-12-31 14:23:57', '2020-12-31 14:24:01', '3');
INSERT INTO `t_website` VALUES ('4', '37网游', 'http://www.37.com', '3', '452', '2020-12-31 14:24:40', '2020-12-31 14:24:43', '2');
INSERT INTO `t_website` VALUES ('5', '虎牙直播', 'http://www.huya.com', '1', '0', '2021-01-12 00:00:00', '2021-01-14 00:00:00', '2');

-- ----------------------------
-- Table structure for `t_website_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_website_type`;
CREATE TABLE `t_website_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) NOT NULL,
  `website_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_website_type
-- ----------------------------
INSERT INTO `t_website_type` VALUES ('1', '视频', '3');
INSERT INTO `t_website_type` VALUES ('2', '新闻', '1');
INSERT INTO `t_website_type` VALUES ('3', '游戏', '1');
