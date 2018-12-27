/*
Navicat MySQL Data Transfer

Source Server         : loc-127.0.0.1
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : xing_bus

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-12-27 16:14:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bus_category
-- ----------------------------
DROP TABLE IF EXISTS `bus_category`;
CREATE TABLE `bus_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `category_name` varchar(32) NOT NULL COMMENT '分类名称',
  `parent_id` int(11) NOT NULL COMMENT '父类ID',
  `icon` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '1' COMMENT '排序值',
  `keep_alive` char(1) CHARACTER SET utf8 DEFAULT '0' COMMENT '0-开启，1- 关闭',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '逻辑删除标记(0--正常 1--删除)',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bus_category
-- ----------------------------
