/*
Navicat MySQL Data Transfer

Source Server         : xing
Source Server Version : 50724
Source Host           : 132.232.190.138:3306
Source Database       : xing_xmall

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-03 14:49:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for xmall_category
-- ----------------------------
DROP TABLE IF EXISTS `xmall_category`;
CREATE TABLE `xmall_category` (
  `id_` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '父类id',
  `category_name` varchar(64) DEFAULT NULL COMMENT '分类名称',
  `parent_id` bigint(20) DEFAULT NULL,
  `level_` tinyint(1) DEFAULT '-1' COMMENT '分类等级',
  `sort_` tinyint(1) DEFAULT '-1' COMMENT '分类顺序',
  `remark_` varchar(1024) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除（0:否/1:是）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `tenant_id` int(11) NOT NULL COMMENT '所属租户',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='星云商城-分类表';

-- ----------------------------
-- Records of xmall_category
-- ----------------------------

-- ----------------------------
-- Table structure for xmall_order
-- ----------------------------
DROP TABLE IF EXISTS `xmall_order`;
CREATE TABLE `xmall_order` (
  `id_` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL COMMENT '会员ID',
  `order_no` varchar(20) NOT NULL COMMENT '产品编号 D0000120190103125800',
  `pay_price` int(11) NOT NULL DEFAULT '0' COMMENT '总金额(支付价) = 商品总价-优惠价+运费',
  `product_price` int(11) NOT NULL DEFAULT '0' COMMENT '商品总价',
  `favorable_prices` int(11) DEFAULT '0' COMMENT '优惠价',
  `freight_price` int(11) DEFAULT '0' COMMENT '运费',
  `order_status` tinyint(1) NOT NULL COMMENT '订单状态 0：待支付，1：已支付，2：支付失败',
  `order_type` tinyint(1) NOT NULL COMMENT '订单类型',
  `remark_` varchar(1024) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除（0:否/1:是）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `tenant_id` int(11) NOT NULL COMMENT '所属租户',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='星云商城-订单表';

-- ----------------------------
-- Records of xmall_order
-- ----------------------------

-- ----------------------------
-- Table structure for xmall_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `xmall_order_detail`;
CREATE TABLE `xmall_order_detail` (
  `id_` bigint(20) NOT NULL,
  `order_no` varchar(20) NOT NULL COMMENT '订单编号',
  `order_address` varchar(255) NOT NULL COMMENT '订单地址 json',
  `order_product` varchar(1024) NOT NULL COMMENT '订单商品 json',
  `order_other_attr` varchar(1024) DEFAULT NULL COMMENT '订单其它属性 json',
  `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除（0:否/1:是）',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xmall_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for xmall_product
-- ----------------------------
DROP TABLE IF EXISTS `xmall_product`;
CREATE TABLE `xmall_product` (
  `id_` bigint(20) NOT NULL,
  `product_no` varchar(20) NOT NULL COMMENT '产品编号 P0000120190103125800',
  `product_name` varchar(64) NOT NULL COMMENT '产品名称',
  `market_price` int(11) NOT NULL COMMENT '市场价',
  `remark_` varchar(1024) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除（0:否/1:是）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `tenant_id` int(11) NOT NULL COMMENT '所属租户',
  PRIMARY KEY (`id_`,`product_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='星云商城-产品表';

-- ----------------------------
-- Records of xmall_product
-- ----------------------------

-- ----------------------------
-- Table structure for xmall_shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `xmall_shopping_cart`;
CREATE TABLE `xmall_shopping_cart` (
  `id_` bigint(20) NOT NULL,
  `product_no` varchar(20) NOT NULL COMMENT '产品编号 P0000120190103125800',
  `member_id` bigint(20) NOT NULL COMMENT '会员ID',
  `cart_num` int(11) NOT NULL DEFAULT '0' COMMENT '购物车数量 > 1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tenant_id` int(11) NOT NULL COMMENT '所属租户',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='星云商城-购物车表';

-- ----------------------------
-- Records of xmall_shopping_cart
-- ----------------------------
