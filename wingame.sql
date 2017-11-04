/*
 Navicat Premium Data Transfer

 Source Server         : wingame
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : 139.162.21.161
 Source Database       : wingame

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : utf-8

 Date: 11/04/2017 12:40:08 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `mmall_cart`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_cart`;
CREATE TABLE `mmall_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `checked` int(11) DEFAULT NULL COMMENT '是否选择,1=已勾选,0=未勾选',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_cart`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_cart` VALUES ('126', '21', '26', '1', '1', '2017-04-13 21:27:06', '2017-04-13 21:27:06'), ('146', '1', '26', '10', '1', '2017-10-05 09:13:35', '2017-10-05 09:13:35');
COMMIT;

-- ----------------------------
--  Table structure for `mmall_category`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_category`;
CREATE TABLE `mmall_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '类别状态1-正常,2-已废弃',
  `sort_order` int(4) DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100031 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_category`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_category` VALUES ('100001', '0', '家用电器', '1', null, '2017-03-25 16:46:00', '2017-03-25 16:46:00'), ('100002', '0', '数码3C', '1', null, '2017-03-25 16:46:21', '2017-03-25 16:46:21'), ('100003', '0', '服装箱包', '1', null, '2017-03-25 16:49:53', '2017-03-25 16:49:53'), ('100004', '0', '食品生鲜', '1', null, '2017-03-25 16:50:19', '2017-03-25 16:50:19'), ('100005', '0', '酒水饮料', '1', null, '2017-03-25 16:50:29', '2017-03-25 16:50:29'), ('100006', '100001', '冰箱', '1', null, '2017-03-25 16:52:15', '2017-03-25 16:52:15'), ('100007', '100001', '电视', '1', null, '2017-03-25 16:52:26', '2017-03-25 16:52:26'), ('100008', '100001', '洗衣机', '1', null, '2017-03-25 16:52:39', '2017-03-25 16:52:39'), ('100009', '100001', '空调', '1', null, '2017-03-25 16:52:45', '2017-03-25 16:52:45'), ('100010', '100001', '电热水器', '1', null, '2017-03-25 16:52:54', '2017-03-25 16:52:54'), ('100011', '100002', '电脑', '1', null, '2017-03-25 16:53:18', '2017-03-25 16:53:18'), ('100012', '100002', '手机', '1', null, '2017-03-25 16:53:27', '2017-03-25 16:53:27'), ('100013', '100002', '平板电脑', '1', null, '2017-03-25 16:53:35', '2017-03-25 16:53:35'), ('100014', '100002', '数码相机', '1', null, '2017-03-25 16:53:56', '2017-03-25 16:53:56'), ('100015', '100002', '3C配件', '1', null, '2017-03-25 16:54:07', '2017-03-25 16:54:07'), ('100016', '100003', '女装', '1', null, '2017-03-25 16:54:44', '2017-03-25 16:54:44'), ('100017', '100003', '帽子', '1', null, '2017-03-25 16:54:51', '2017-03-25 16:54:51'), ('100018', '100003', '旅行箱', '1', null, '2017-03-25 16:55:02', '2017-03-25 16:55:02'), ('100019', '100003', '手提包', '1', null, '2017-03-25 16:55:09', '2017-03-25 16:55:09'), ('100020', '100003', '保暖内衣', '1', null, '2017-03-25 16:55:18', '2017-03-25 16:55:18'), ('100021', '100004', '零食', '1', null, '2017-03-25 16:55:30', '2017-03-25 16:55:30'), ('100022', '100004', '生鲜', '1', null, '2017-03-25 16:55:37', '2017-03-25 16:55:37'), ('100023', '100004', '半成品菜', '1', null, '2017-03-25 16:55:47', '2017-03-25 16:55:47'), ('100024', '100004', '速冻食品', '1', null, '2017-03-25 16:55:56', '2017-03-25 16:55:56'), ('100025', '100004', '进口食品', '1', null, '2017-03-25 16:56:06', '2017-03-25 16:56:06'), ('100026', '100005', '白酒', '1', null, '2017-03-25 16:56:22', '2017-03-25 16:56:22'), ('100027', '100005', '红酒', '1', null, '2017-03-25 16:56:30', '2017-03-25 16:56:30'), ('100028', '100005', '饮料', '1', null, '2017-03-25 16:56:37', '2017-03-25 16:56:37'), ('100029', '100005', '调制鸡尾酒', '1', null, '2017-03-25 16:56:45', '2017-03-25 16:56:45'), ('100030', '100005', '进口洋酒', '1', null, '2017-03-25 16:57:05', '2017-03-25 16:57:05');
COMMIT;

-- ----------------------------
--  Table structure for `mmall_order`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_order`;
CREATE TABLE `mmall_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` bigint(20) DEFAULT NULL COMMENT '订单号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `shipping_id` int(11) DEFAULT NULL,
  `payment` decimal(20,2) DEFAULT NULL COMMENT '实际付款金额,单位是元,保留两位小数',
  `payment_type` int(4) DEFAULT NULL COMMENT '支付类型,1-在线支付',
  `postage` int(10) DEFAULT NULL COMMENT '运费,单位是元',
  `status` int(10) DEFAULT NULL COMMENT '订单状态:0-已取消-10-未付款，20-已付款，40-已发货，50-交易成功，60-交易关闭',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no_index` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_order`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_order` VALUES ('103', '1491753014256', '1', '25', '13998.00', '1', '0', '10', null, null, null, null, '2017-04-09 23:50:14', '2017-04-09 23:50:14'), ('104', '1491830695216', '1', '26', '13998.00', '1', '0', '10', null, null, null, null, '2017-04-10 21:24:55', '2017-04-10 21:24:55'), ('105', '1492089528889', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:18:48', '2017-04-13 21:18:48'), ('106', '1492090946105', '1', '29', '27894.00', '1', '0', '20', '2017-04-13 21:42:40', null, null, null, '2017-04-13 21:42:26', '2017-04-13 21:42:41'), ('107', '1492091003128', '1', '29', '8597.00', '1', '0', '20', '2017-04-13 21:43:38', null, null, null, '2017-04-13 21:43:23', '2017-04-13 21:43:38'), ('108', '1492091051313', '1', '29', '1999.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:11', '2017-04-13 21:44:11'), ('109', '1492091061513', '1', '29', '6598.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:21', '2017-04-13 21:44:21'), ('110', '1492091069563', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:29', '2017-04-13 21:44:29'), ('111', '1492091076073', '1', '29', '4299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:36', '2017-04-13 21:44:36'), ('112', '1492091083720', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:43', '2017-04-13 21:44:43'), ('113', '1492091089794', '1', '29', '6999.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:49', '2017-04-13 21:44:49'), ('114', '1492091096400', '1', '29', '6598.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:56', '2017-04-13 21:44:56'), ('115', '1492091102371', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:45:02', '2017-04-13 21:45:02'), ('116', '1492091110004', '1', '29', '8598.00', '1', '0', '40', '2017-04-13 21:55:16', '2017-04-13 21:55:31', null, null, '2017-04-13 21:45:09', '2017-04-13 21:55:31'), ('117', '1492091141269', '1', '29', '22894.00', '1', '0', '20', '2017-04-13 21:46:06', null, null, null, '2017-04-13 21:45:41', '2017-04-13 21:46:07');
COMMIT;

-- ----------------------------
--  Table structure for `mmall_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_order_item`;
CREATE TABLE `mmall_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单子表id',
  `user_id` int(11) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `product_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `product_image` varchar(500) DEFAULT NULL COMMENT '商品图片地址',
  `current_unit_price` decimal(20,2) DEFAULT NULL COMMENT '生成订单时的商品单价，单位是元,保留两位小数',
  `quantity` int(10) DEFAULT NULL COMMENT '商品数量',
  `total_price` decimal(20,2) DEFAULT NULL COMMENT '商品总价,单位是元,保留两位小数',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_no_index` (`order_no`) USING BTREE,
  KEY `order_no_user_id_index` (`user_id`,`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_order_item`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_order_item` VALUES ('113', '1', '1491753014256', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-09 23:50:14', '2017-04-09 23:50:14'), ('114', '1', '1491830695216', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-10 21:24:55', '2017-04-10 21:24:55'), ('115', '1', '1492089528889', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:18:48', '2017-04-13 21:18:48'), ('116', '1', '1492090946105', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26'), ('117', '1', '1492090946105', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26'), ('118', '1', '1492090946105', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26'), ('119', '1', '1492090946105', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26'), ('120', '1', '1492091003128', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:43:23', '2017-04-13 21:43:23'), ('121', '1', '1492091003128', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:43:23', '2017-04-13 21:43:23'), ('122', '1', '1492091051313', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:44:11', '2017-04-13 21:44:11'), ('123', '1', '1492091061513', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:44:21', '2017-04-13 21:44:21'), ('124', '1', '1492091069563', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:44:29', '2017-04-13 21:44:29'), ('125', '1', '1492091076073', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '1', '4299.00', '2017-04-13 21:44:36', '2017-04-13 21:44:36'), ('126', '1', '1492091083720', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:44:43', '2017-04-13 21:44:43'), ('127', '1', '1492091089794', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-04-13 21:44:49', '2017-04-13 21:44:49'), ('128', '1', '1492091096400', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:44:56', '2017-04-13 21:44:56'), ('129', '1', '1492091102371', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:45:02', '2017-04-13 21:45:02'), ('130', '1', '1492091110004', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:45:09', '2017-04-13 21:45:09'), ('131', '1', '1492091141269', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41'), ('132', '1', '1492091141269', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41'), ('133', '1', '1492091141269', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41'), ('134', '1', '1492091141269', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '2', '3998.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
COMMIT;

-- ----------------------------
--  Table structure for `mmall_pay_info`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_pay_info`;
CREATE TABLE `mmall_pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_no` bigint(20) DEFAULT NULL COMMENT '订单号',
  `pay_platform` int(10) DEFAULT NULL COMMENT '支付平台:1-支付宝,2-微信',
  `platform_number` varchar(200) DEFAULT NULL COMMENT '支付宝支付流水号',
  `platform_status` varchar(20) DEFAULT NULL COMMENT '支付宝支付状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_pay_info`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_pay_info` VALUES ('53', '1', '1492090946105', '1', '2017041321001004300200116250', 'WAIT_BUYER_PAY', '2017-04-13 21:42:33', '2017-04-13 21:42:33'), ('54', '1', '1492090946105', '1', '2017041321001004300200116250', 'TRADE_SUCCESS', '2017-04-13 21:42:41', '2017-04-13 21:42:41'), ('55', '1', '1492091003128', '1', '2017041321001004300200116251', 'WAIT_BUYER_PAY', '2017-04-13 21:43:31', '2017-04-13 21:43:31'), ('56', '1', '1492091003128', '1', '2017041321001004300200116251', 'TRADE_SUCCESS', '2017-04-13 21:43:38', '2017-04-13 21:43:38'), ('57', '1', '1492091141269', '1', '2017041321001004300200116252', 'WAIT_BUYER_PAY', '2017-04-13 21:45:59', '2017-04-13 21:45:59'), ('58', '1', '1492091141269', '1', '2017041321001004300200116252', 'TRADE_SUCCESS', '2017-04-13 21:46:07', '2017-04-13 21:46:07'), ('59', '1', '1492091110004', '1', '2017041321001004300200116396', 'WAIT_BUYER_PAY', '2017-04-13 21:55:08', '2017-04-13 21:55:08'), ('60', '1', '1492091110004', '1', '2017041321001004300200116396', 'TRADE_SUCCESS', '2017-04-13 21:55:17', '2017-04-13 21:55:17');
COMMIT;

-- ----------------------------
--  Table structure for `mmall_product`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_product`;
CREATE TABLE `mmall_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` int(11) NOT NULL COMMENT '分类id,对应mmall_category表的主键',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '商品副标题',
  `main_image` varchar(500) DEFAULT NULL COMMENT '产品主图,url相对地址',
  `sub_images` text COMMENT '图片地址,json格式,扩展用',
  `detail` text COMMENT '商品详情',
  `price` decimal(20,2) NOT NULL COMMENT '价格,单位-元保留两位小数',
  `stock` int(11) NOT NULL COMMENT '库存数量',
  `status` int(6) DEFAULT '1' COMMENT '商品状态.1-在售 2-下架 3-删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_product`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_product` VALUES ('26', '100002', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', 'iPhone 7，现更以红色呈现。', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg,b6c56eb0-1748-49a9-98dc-bcc4b9788a54.jpeg,92f17532-1527-4563-aa1d-ed01baa0f7b2.jpeg,3adbe4f7-e374-4533-aa79-cc4a98c529bf.jpeg', '<p><img alt=\"&quot;10000.jpg&quot;\" src=\"./mmall_files/-\" width=\"&quot;790&quot;\" height=\"&quot;553&quot;\"><br></p><p><img alt=\"&quot;20000.jpg&quot;\" src=\"./mmall_files/-(1)\" width=\"&quot;790&quot;\" height=\"&quot;525&quot;\"><br></p><p><img alt=\"&quot;30000.jpg&quot;\" src=\"./mmall_files/-(2)\" width=\"&quot;790&quot;\" height=\"&quot;365&quot;\"><br></p><p><img alt=\"&quot;40000.jpg&quot;\" src=\"./mmall_files/-(3)\" width=\"&quot;790&quot;\" height=\"&quot;525&quot;\"><br></p><p><img alt=\"&quot;50000.jpg&quot;\" src=\"./mmall_files/-(4)\" width=\"&quot;790&quot;\" height=\"&quot;525&quot;\"><br></p><p><img alt=\"&quot;60000.jpg&quot;\" src=\"./mmall_files/-(5)\" width=\"&quot;790&quot;\" height=\"&quot;525&quot;\"><br></p><p><br></p><p><img alt=\"&quot;TB24p51hgFkpuFjSspnXXb4qFXa-1776456424.jpg&quot;\" src=\"./mmall_files/-(6)\" width=\"&quot;790&quot;\" height=\"&quot;375&quot;\"><br></p><p><br></p><p><img alt=\"&quot;shouhou.jpg&quot;\" src=\"./mmall_files/-(7)\" width=\"&quot;750&quot;\" height=\"&quot;150&quot;\"><br></p><p><img alt=\"&quot;999.jpg&quot;\" src=\"./mmall_files/-(8)\" width=\"&quot;790&quot;\" height=\"&quot;351&quot;\"><br></p>', '6999.00', '9991', '1', null, '2017-04-13 21:45:41'), ('27', '100006', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', '送品牌烤箱，五一大促', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg,4bb02f1c-62d5-48cc-b358-97b05af5740d.jpeg,36bdb49c-72ae-4185-9297-78829b54b566.jpeg', '<p><img alt=\"&quot;miaoshu.jpg&quot;\" src=\"./mmall_files/-(9)\" width=\"&quot;790&quot;\" height=\"&quot;444&quot;\"><br></p><p><img alt=\"&quot;miaoshu2.jpg&quot;\" src=\"./mmall_files/-(10)\" width=\"&quot;790&quot;\" height=\"&quot;1441&quot;\"><img alt=\"&quot;miaoshu3.jpg&quot;\" src=\"./mmall_files/-(11)\" width=\"&quot;790&quot;\" height=\"&quot;1442&quot;\"><img alt=\"&quot;miaoshu4.jpg&quot;\" src=\"./mmall_files/-(12)\" width=\"&quot;790&quot;\" height=\"&quot;1441&quot;\"><br></p>', '3299.00', '8876', '1', '2017-04-13 18:51:54', '2017-04-13 21:45:41'), ('28', '100012', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', 'NOVA青春版1999元', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg,13da2172-4445-4eb5-a13f-c5d4ede8458c.jpeg,58d5d4b7-58d4-4948-81b6-2bae4f79bf02.jpeg', '<p><img alt=\"&quot;11TB2fKK3cl0kpuFjSsziXXa.oVXa_!!1777180618.jpg&quot;\" src=\"./mmall_files/-(13)\" width=\"&quot;790&quot;\" height=\"&quot;966&quot;\"><img alt=\"&quot;22TB2YP3AkEhnpuFjSZFpXXcpuXXa_!!1777180618.jpg&quot;\" src=\"./mmall_files/-(14)\" width=\"&quot;790&quot;\" height=\"&quot;1344&quot;\"><img alt=\"&quot;33TB2Yyshk.hnpuFjSZFpXXcpuXXa_!!1777180618.jpg&quot;\" src=\"./mmall_files/-(15)\" width=\"&quot;790&quot;\" height=\"&quot;700&quot;\"><img alt=\"&quot;TB2diyziB8kpuFjSspeXXc7IpXa_!!1777180618.jpg&quot;\" src=\"./mmall_files/-(16)\" width=\"&quot;790&quot;\" height=\"&quot;393&quot;\"><br></p>', '1999.00', '9994', '1', '2017-04-13 18:57:18', '2017-04-13 21:45:41'), ('29', '100008', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '门店机型 德邦送货', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg,42b1b8bc-27c7-4ee1-80ab-753d216a1d49.jpeg,2f1b3de1-1eb1-4c18-8ca2-518934931bec.jpeg', '<p><img alt=\"&quot;1TB2WLZrcIaK.eBjSspjXXXL.XXa_!!2114960396.jpg&quot;\" src=\"./mmall_files/-(17)\" width=\"&quot;790&quot;\" height=\"&quot;920&quot;\"><img alt=\"&quot;2TB2zhOFbZCO.eBjSZFzXXaRiVXa_!!2114960396.jpg&quot;\" src=\"./mmall_files/-(18)\" width=\"&quot;790&quot;\" height=\"&quot;1052&quot;\"><img alt=\"&quot;3TB27mCtb7WM.eBjSZFhXXbdWpXa_!!2114960396.jpg&quot;\" src=\"./mmall_files/-(19)\" width=\"&quot;790&quot;\" height=\"&quot;820&quot;\"><br></p>', '4299.00', '9993', '1', '2017-04-13 19:07:47', '2017-04-13 21:45:41');
COMMIT;

-- ----------------------------
--  Table structure for `mmall_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_shipping`;
CREATE TABLE `mmall_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货姓名',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '收货固定电话',
  `receiver_mobile` varchar(20) DEFAULT NULL COMMENT '收货移动电话',
  `receiver_province` varchar(20) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(20) DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '邮编',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_shipping`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_shipping` VALUES ('4', '13', 'geely', '010', '18688888888', '北京', '北京市', '海淀区', '中关村', '100000', '2017-01-22 14:26:25', '2017-01-22 14:26:25'), ('7', '17', 'Rosen', '13800138000', '13800138000', '北京', '北京', null, '中关村', '100000', '2017-03-29 12:11:01', '2017-03-29 12:11:01'), ('29', '1', '吉利', '13800138000', '13800138000', '北京', '北京', '海淀区', '海淀区中关村', '100000', '2017-04-09 18:33:32', '2017-04-09 18:33:32');
COMMIT;

-- ----------------------------
--  Table structure for `mmall_user`
-- ----------------------------
DROP TABLE IF EXISTS `mmall_user`;
CREATE TABLE `mmall_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码，MD5加密',
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL COMMENT '找回密码问题',
  `answer` varchar(100) DEFAULT NULL COMMENT '找回密码答案',
  `role` int(4) NOT NULL COMMENT '角色0-管理员,1-普通用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mmall_user`
-- ----------------------------
BEGIN;
INSERT INTO `mmall_user` VALUES ('1', 'admin', '427338237BD929443EC5D48E24FD2B1A', 'email2@email.com', '13898888890', '密保问题', '密保答案', '1', '2016-11-06 16:56:45', '2017-11-01 17:15:40'), ('13', 'geely', '08E9A6EA287E70E7E3F7C982BF7923AC', 'geely@happymmall.com', '13800138000', '问题', '答案', '0', '2016-11-19 22:19:25', '2016-11-19 22:19:25'), ('17', 'rosen', '095AC193FE2212EEC7A93E8FEFF11902', 'rosen1@happymmall.com', '13800138000', '问题', '答案', '0', '2017-03-17 10:51:33', '2017-04-09 23:13:26'), ('21', 'soonerbetter', 'DE6D76FE7C40D5A1A8F04213F2BEFBEE', 'test06@happymmall.com', '13800138000', '105204', '105204', '0', '2017-04-13 21:26:22', '2017-04-13 21:26:22'), ('22', 'username1', '4198CFE7F017560584A52EA4EA74F5CB', 'email@email.com', '13898888890', '密保问题', '密保答案', '0', '2017-11-01 16:45:59', '2017-11-01 16:45:59');
COMMIT;

-- ----------------------------
--  Table structure for `wingame_category`
-- ----------------------------
DROP TABLE IF EXISTS `wingame_category`;
CREATE TABLE `wingame_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '类别状态1-正常,2-已废弃',
  `sort_order` int(4) DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130008 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `wingame_category`
-- ----------------------------
BEGIN;
INSERT INTO `wingame_category` VALUES ('100001', '0', '体育', '1', null, '2017-10-24 14:46:51', '2017-10-24 14:46:54'), ('100002', '0', '电竞', '1', null, '2017-10-24 14:47:22', '2017-10-24 14:47:23'), ('100003', '0', '彩票', '1', null, '2017-10-24 14:48:34', '2017-10-24 14:48:36'), ('100004', '0', '真人娱乐', '1', null, '2017-10-24 14:48:39', '2017-10-24 14:48:40'), ('100005', '0', '电子游戏', '1', null, '2017-10-24 14:48:43', '2017-10-24 14:48:44'), ('110001', '100001', '足球', '1', null, '2017-10-24 14:53:40', '2017-10-24 14:53:43'), ('110002', '100001', '篮球', '1', null, '2017-10-24 14:49:25', '2017-10-24 14:49:31'), ('120001', '100002', '英雄联盟', '1', null, '2017-10-24 14:54:47', '2017-10-24 14:54:49'), ('120002', '100002', '王者荣耀', '1', null, '2017-10-24 14:55:24', '2017-10-24 14:55:26'), ('130001', '100003', '经典彩', '1', null, '2017-10-24 15:04:48', '2017-10-24 15:04:50'), ('130002', '100003', '赔率彩', '1', null, '2017-10-24 15:04:53', '2017-10-24 15:04:55'), ('130003', '110001', '世界杯', '1', null, '2017-11-01 17:53:15', '2017-11-01 17:53:17'), ('130004', '110001', '欧洲杯', '1', null, '2017-10-26 13:43:30', '2017-10-26 13:43:30'), ('130005', '110001', '日职甲', '1', null, '2017-11-01 17:53:23', '2017-11-01 17:53:26'), ('130007', '100002', '小组赛', '1', null, '2017-10-26 17:21:29', '2017-10-26 17:21:32');
COMMIT;

-- ----------------------------
--  Table structure for `wingame_match`
-- ----------------------------
DROP TABLE IF EXISTS `wingame_match`;
CREATE TABLE `wingame_match` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `match_name` varchar(100) NOT NULL,
  `match_detail` varchar(200) DEFAULT NULL,
  `match_sort` int(6) DEFAULT NULL,
  `players_num` int(10) DEFAULT NULL,
  `basic_way_id` int(11) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `host_team_id` int(11) NOT NULL,
  `host_team_name` varchar(20) DEFAULT NULL,
  `host_team_logo` varchar(500) DEFAULT NULL,
  `host_team_subtitle` varchar(100) DEFAULT NULL,
  `host_team_score` int(6) DEFAULT NULL,
  `visitor_team_id` int(11) NOT NULL,
  `visitor_team_name` varchar(20) DEFAULT NULL,
  `visitor_team_logo` varchar(500) DEFAULT NULL,
  `visitor_team_subtitle` varchar(100) DEFAULT NULL,
  `visitor_team_score` int(6) DEFAULT NULL,
  `extra_time_score` varchar(20) DEFAULT NULL,
  `extra_time_home_score` int(6) DEFAULT NULL,
  `extra_time_visitor_score` int(6) DEFAULT NULL,
  `host_red_counts` int(6) DEFAULT NULL,
  `host_half_score` int(6) DEFAULT NULL,
  `visitor_half_score` int(6) DEFAULT NULL,
  `basic_way_name` varchar(100) DEFAULT NULL,
  `basic_way_rate` varchar(100) DEFAULT NULL,
  `basic_way_code` varchar(100) DEFAULT NULL,
  `basic_way_status` varchar(100) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `wingame_match`
-- ----------------------------
BEGIN;
INSERT INTO `wingame_match` VALUES ('10001', '130004', '欧冠 贝西克塔斯-摩纳哥', '欧冠 贝西克塔斯-摩纳哥第一场', '1', '10', '100001', '1', '6080', '贝西克塔斯', null, null, null, '6088', '摩纳哥', null, null, null, null, null, null, null, null, null, '赛果', '1.01,1.99,2.01', 'win,draw,loss', '1,1,1', '2017-11-08 18:00:00', null, '2017-10-31 21:08:52', '2017-10-31 21:08:55'), ('10002', '130004', '欧冠 赛维利亚-莫斯科斯巴', '欧冠 赛维利亚-莫斯科斯巴', '0', '10', '100001', '1', '6088', '赛维利亚', null, null, null, '6000', '莫斯科斯巴', null, null, null, null, null, null, null, null, null, '赛果', '1.01,1.99,2.01', 'win,draw,loss', '1,1,1', '2017-11-06 18:00:00', null, '2017-11-01 13:29:54', '2017-11-01 13:29:56'), ('10003', '130004', '欧冠 利物浦-马里博尔', '欧冠 利物浦-马里博尔', '1', '11', '100001', '1', '6099', '利物浦', null, null, null, '9001', '马里博尔', null, null, null, null, null, null, null, null, null, '赛果', '1.01,1.99,2.01', 'win,draw,loss', '1,1,1', '2017-11-06 11:00:00', null, '2017-11-01 13:30:03', '2017-11-01 13:30:05'), ('10004', '130004', '欧冠 顿涅茨克矿工-费耶诺德', '欧冠 顿涅茨克矿工-费耶诺德', '1', '10', '100001', '1', '7000', '顿涅茨克矿工', null, null, null, '7001', '费耶诺德', null, null, null, null, null, null, null, null, null, '赛果', '1.01,1.99,2.01', 'win,draw,loss', '1,1,1', '2017-11-06 11:00:00', null, '2017-11-01 13:30:08', '2017-11-01 13:30:11'), ('10005', '130004', '欧冠 波尔图-莱比锡红牛', '欧冠 波尔图-莱比锡红牛', '1', '1', '100001', '1', '7002', '波尔图', null, null, null, '7003', '莱比锡红牛', null, null, null, null, null, null, null, null, null, '赛果', '1.01,1.99,2.01', 'win,draw,loss', '1,1,1', '2017-11-02 18:00:00', null, '2017-11-01 13:30:13', '2017-11-01 13:30:16'), ('10006', '130004', '欧冠 热刺-皇家马德里', '欧冠 热刺-皇家马德里', '1', '1', '100001', '1', '7004', '热刺', null, null, null, '7005', '皇家马德里', null, null, null, null, null, null, null, null, null, '赛果', '1.01,1.99,2.01', 'win,draw,loss', '1,1,1', '2017-11-02 15:00:00', null, '2017-11-01 13:30:19', '2017-11-01 13:30:21'), ('115059', '130005', '日职 山口vs长崎', '日职 山口vs长崎', '0', '11', '100001', '0', '6070', '山口', null, null, null, '6072', '长崎', null, null, null, null, null, null, null, null, null, '赛果', '1.01,1.99,2.01', 'win,draw,loss', '1,1,1', '2017-11-08 12:00:00', null, '2017-10-31 21:10:53', '2017-10-31 21:10:55');
COMMIT;

-- ----------------------------
--  Table structure for `wingame_team`
-- ----------------------------
DROP TABLE IF EXISTS `wingame_team`;
CREATE TABLE `wingame_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '队伍id',
  `category_id` int(11) NOT NULL COMMENT '分类id,对应mmall_category表的主键',
  `name` varchar(100) NOT NULL COMMENT '队伍名称',
  `name_en` varchar(100) DEFAULT NULL,
  `subtitle` varchar(200) DEFAULT NULL COMMENT '队伍副标题',
  `logo_image` varchar(500) DEFAULT NULL COMMENT '队伍logo,url相对地址',
  `detail` text COMMENT '队伍详情详情',
  `status` int(6) DEFAULT '1' COMMENT '队伍状态.1-存在 0-解散 2-删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wingame_user`
-- ----------------------------
DROP TABLE IF EXISTS `wingame_user`;
CREATE TABLE `wingame_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `parent_id` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码，MD5加密',
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL COMMENT '找回密码问题',
  `answer` varchar(100) DEFAULT NULL COMMENT '找回密码答案',
  `role` int(4) NOT NULL COMMENT '角色0-管理员,1-普通用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `wingame_user`
-- ----------------------------
BEGIN;
INSERT INTO `wingame_user` VALUES ('1', null, 'admin', '427338237BD929443EC5D48E24FD2B1A', 'admin@happymmall.com', '13800138000', '问题', '答案', '0', '2016-11-06 16:56:45', '2017-04-04 19:27:36'), ('13', null, 'geely', '08E9A6EA287E70E7E3F7C982BF7923AC', 'geely@happymmall.com', '13800138000', '问题', '答案', '1', '2016-11-19 22:19:25', '2016-11-19 22:19:25'), ('17', null, 'rosen', '095AC193FE2212EEC7A93E8FEFF11902', 'rosen1@happymmall.com', '13800138000', '问题', '答案', '1', '2017-03-17 10:51:33', '2017-04-09 23:13:26'), ('21', null, 'soonerbetter', 'DE6D76FE7C40D5A1A8F04213F2BEFBEE', 'test06@happymmall.com', '13800138000', '105204', '105204', '1', '2017-04-13 21:26:22', '2017-04-13 21:26:22');
COMMIT;

-- ----------------------------
--  Table structure for `wingame_way`
-- ----------------------------
DROP TABLE IF EXISTS `wingame_way`;
CREATE TABLE `wingame_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '队伍id',
  `category_id` int(11) NOT NULL,
  `match_id` int(11) DEFAULT NULL COMMENT '??id,??mmall_category????',
  `group_name` varchar(100) NOT NULL COMMENT '????',
  `group_code` varchar(100) NOT NULL,
  `group_desc` varchar(200) DEFAULT NULL,
  `way_name` varchar(500) DEFAULT NULL,
  `way_code` varchar(500) NOT NULL,
  `way_rate` varchar(500) DEFAULT NULL,
  `way_status` varchar(500) DEFAULT NULL COMMENT '?????',
  `status` int(6) DEFAULT '1' COMMENT '????.1-?? 0-?? 2-??',
  `create_time` datetime DEFAULT NULL COMMENT '????',
  `update_time` datetime DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `wingame_way`
-- ----------------------------
BEGIN;
INSERT INTO `wingame_way` VALUES ('100001', '1001', '115059', '赛果', 'sg', '90分钟内胜负平', '胜,平,负', 'win,draw,loss', '1.01,2.02,2.11', '1,1,1', '1', '2017-10-31 17:45:37', '2017-10-31 17:45:39'), ('100002', '1001', '115059', '进球', 'scoreSum', '全场总进球', '0,1,2,3,4,5,6,7+', '0,1,2,3,4,5,6,7+', '1.25,1.21,1.89,2.00,3.00,1.25,1.21,1.89', '1,1,1,1,1,1,1,1', '1', '2017-10-31 17:47:23', '2017-10-31 17:47:25'), ('100003', '1001', '115059', '单双', 'soccerDanShuang', '90分钟内比赛总进球单双', '单,双', 'dan,shuang', '1.81,1.75', '1,1', '1', '2017-10-31 20:16:35', '2017-10-31 20:16:37'), ('100004', '1001', '115059', '比分', 'soccerScore', '90分钟内比分结果', '1:0,2:0,2:1,3:1,3:2,4:1,4:2,4:3,5:1,5:2,5:3,5:4,6:0,6:1,6:2,6:3,6:4,6:5,胜其他,0:0,1:1,2:2,3:3,4:4,5:5,6:6,平其他,0:1,0:2,1:2,0:3,1:3,2:3,0:4,1:4,2:4,3:4,0:5,1:52:5,3:5,4:5,0:6,1:6,2:6,3:6,4:6,5:6,负其他', '1-0,2-0,2-1,3-1,3-2,4-1,4-2,4-3,5-1,5-2,5-3,5-4,6-0,6-1,6-2,6-3,6-4,6-5,7++,0-0,1-1,2-2,3-3,4-4,5-5,6-6,7+-,0-1,0-2,1-2,0-3,1-3,2-3,0-4,1-4,2-4,3-4,0-5,1-5,2-5,3-5,4-5,0-6,1-6,2-6,3-6,4-6,5-6,7--', '8.55,13.4,8.6,30.5,19.6,24.5,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,8.55,13.4,8.6,30.5,19.6,24.5,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0,33.0', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '1', '2017-10-31 20:41:23', '2017-10-31 20:41:26'), ('100005', '1001', '115059', '下一个进球', 'nextShot', '下一个进球球队', '主队,无,客队', 'host,non,visitor', '9.7,1.01,8.2', '1,1,1', '1', '2017-10-31 20:44:04', '2017-10-31 20:44:08');
COMMIT;

-- ----------------------------
--  Table structure for `wingame_way_log`
-- ----------------------------
DROP TABLE IF EXISTS `wingame_way_log`;
CREATE TABLE `wingame_way_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '队伍id',
  `category_id` int(11) NOT NULL,
  `match_id` int(11) DEFAULT NULL COMMENT '??id,??mmall_category????',
  `group_name` varchar(100) NOT NULL COMMENT '????',
  `group_code` varchar(255) NOT NULL,
  `way_name` varchar(100) DEFAULT NULL,
  `way_code` varchar(100) NOT NULL,
  `way_rate` varchar(100) DEFAULT NULL,
  `way_desc` varchar(200) DEFAULT NULL COMMENT '?????',
  `status` int(6) DEFAULT '1' COMMENT '????.1-?? 0-?? 2-??',
  `create_time` datetime DEFAULT NULL COMMENT '????',
  `update_time` datetime DEFAULT NULL COMMENT '????',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
