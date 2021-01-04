/*
Navicat MySQL Data Transfer

Source Server         : qiujing
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : fcshopping

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2020-12-31 12:56:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) DEFAULT NULL,
  `apassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '123456');
INSERT INTO `tb_admin` VALUES ('2', 'lsp', '123456');
INSERT INTO `tb_admin` VALUES ('3', '夜奏花', '123456');
INSERT INTO `tb_admin` VALUES ('4', 'qiqi', '123456');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(20) DEFAULT NULL,
  `gtid` int(11) DEFAULT NULL,
  `gfactor` varchar(20) DEFAULT NULL,
  `gimg` varchar(50) DEFAULT NULL,
  `ginfo` varchar(50) DEFAULT NULL,
  `gprice` double(8,2) DEFAULT NULL,
  `fprice` double(8,2) DEFAULT NULL,
  `gnum` int(11) DEFAULT NULL,
  `synum` int(11) DEFAULT NULL,
  `gtime` datetime DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `fk_gtid` (`gtid`),
  CONSTRAINT `fk_gtid` FOREIGN KEY (`gtid`) REFERENCES `tb_goods_type` (`gtid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('3', 'NOVELTEA乌龙茶', '12', 'NOVELTEA', '750c529c-3d95-4a20-ac4d-c6678697631a_4.jpg', '茶与酒的创新味感，来自欧洲，八小时冷萃茶酒。', '198.00', '98.00', '1352', '1195', '2020-12-28 16:17:30');
INSERT INTO `tb_goods` VALUES ('4', '百事发人参酒枸杞茶缸酒', '12', '百事发', 'c7baf37e-4266-4759-b5da-3fd652408e80_4.jpg', '真材实料看得见，官方认证品质保证，有故事有情怀，六种图案六中故事，杯子可以重复使用', '288.00', '98.00', '362', '191', '2020-12-28 16:19:38');
INSERT INTO `tb_goods` VALUES ('5', '台式电蒸烤一体机家用60L', '13', 'ROBNAM/老板生活', '7551689a-f02d-472b-a0cf-e3fa4ce8e9de_1.jpg', '用专业包办味蕾，轻松烤出大师级美味，健康蒸汽模式，60L超大容量，UI全智能触控。', '6900.00', '1680.00', '120', '28', '2020-12-28 16:24:17');
INSERT INTO `tb_goods` VALUES ('6', '山东去皮大葱', '8', '福瑞达旗舰店', '94d5c003-4b3f-45cb-b154-f9096a2251f0_1.jpg', '山东大葱，营养丰富，质地脆嫩爽口，很少辛辣，生吃也可。', '89.00', '50.00', '1000', '994', '2020-12-28 16:28:14');
INSERT INTO `tb_goods` VALUES ('7', '车载语音支架手机架', '13', 'BASEUS/倍思', '724c260f-ee87-4d28-9359-d48b7fa89ba0_1.jpg', '互动娱乐，尽享驾驶乐趣。清晰收音，语音控制更精准。语音开启导航， 路况实时播报。', '149.00', '129.00', '203', '100', '2020-12-28 16:29:01');
INSERT INTO `tb_goods` VALUES ('8', '铁棍山药', '8', '红高粱食品', 'c10b1939-d24d-4b65-b414-51fde4b148af_1.jpg', '定量采收发货，现挖现卖，采挖深70-80CM的沟，将山药小心挖出防止损伤，去净泥土。', '198.00', '29.00', '1000', '1000', '2020-12-28 16:30:15');
INSERT INTO `tb_goods` VALUES ('9', '无叶贡菜', '8', '安徽省豪州市民乐食品', '88faead7-093b-4e44-b2f8-1da801ba7cb8_3.jpg', '贡菜含有丰富而的营养素，并被称为\"天然的保健食品\"、\"人造海蜇\"、\"植物营养素\"', '36.00', '34.00', '1000', '1000', '2020-12-28 16:31:10');
INSERT INTO `tb_goods` VALUES ('10', '电器生活杀菌空调油烟机', '13', '美的', '9d8dcac9-8516-4f4a-bf12-fa5bafdf744f_1.jpg', '高效安全，高压蒸汽，高温消毒，物理杀菌，强力去油，消除异味，快速蒸汽，无需水箱', '2862.00', '2462.00', '326', '114', '2020-12-28 16:31:30');
INSERT INTO `tb_goods` VALUES ('11', '新鲜冬笋竹笋', '8', '等待自然', '009c03b7-df20-4153-ae44-341dea06634f_1.jpg', '源自中国笋竹城，建瓯的山中珍品，深埋于高山黄泥，无污染的黄土地，新鲜直达，精选发货，肉质脆嫩', '69.00', '32.00', '1000', '999', '2020-12-28 16:32:06');
INSERT INTO `tb_goods` VALUES ('13', '饭店插电烤炉家用烧烤炉', '13', '美的', '79adf0d7-ea90-4339-af97-bf036201db27_1.jpg', '采用石英管发热体，热效率高，稳定发热。高温过热保护，温度过高自动断电', '118.00', '98.00', '1230', '650', '2020-12-28 16:37:06');
INSERT INTO `tb_goods` VALUES ('14', '新鲜水果小番茄', '8', '岭南果', '28b42343-d8b0-407a-9d8e-34836882eae5_1.jpg', '各自更大，色泽讨喜，嫩滑多汁，酸甜爆汁。', '89.00', '29.00', '1000', '1000', '2020-12-28 16:37:40');
INSERT INTO `tb_goods` VALUES ('15', '新鲜苏子叶', '8', '松原鑫龙源食品有限公司', '38adf73e-d192-4f20-a125-491c3b8114a0_3.jpg', '色泽翠绿，新鲜美味，纹路清晰，现摘现卖', '68.00', '39.00', '1000', '1000', '2020-12-28 16:38:23');
INSERT INTO `tb_goods` VALUES ('16', '新鲜小黄瓜', '8', '甘福园旗舰店', 'e5659828-cd5e-4b26-b78e-2ccfdcaf2893_1.jpg', '新鲜小黄瓜，清香脆嫩，爽口多汁，果大肉厚', '75.00', '35.00', '1000', '1000', '2020-12-28 16:39:10');
INSERT INTO `tb_goods` VALUES ('17', '格力电暖器', '13', '格力', 'da3e6ec7-7594-4318-ac43-3e7468e65958_1.jpg', '八大性能，谱写热恋暖冬。独立加湿功能，自然加湿。巧用烘干，一体化折叠衣架。', '2185.00', '1985.00', '236', '102', '2020-12-28 16:39:40');
INSERT INTO `tb_goods` VALUES ('19', '新鲜芥菜疙瘩', '8', '炸街果', 'cf721233-730f-4d83-aca8-00b68cb1af3f_3.jpg', '户外生态种植，丰收时节，远离工业污染', '89.00', '26.00', '1000', '1000', '2020-12-28 16:45:58');
INSERT INTO `tb_goods` VALUES ('20', '红皮黄心大土豆', '8', '古城遗食旗舰店', 'a1972987-2d76-4e31-8df2-f9ba1765f39a_3.jpg', '新鲜土豆，纯天然，自然生长，高山种植', '18.00', '17.00', '1000', '1000', '2020-12-28 16:48:33');
INSERT INTO `tb_goods` VALUES ('21', '正宗东北油豆角', '8', '农乐食品', '9cb4a287-e73c-49a5-8d73-3d3c527ce4a8_1.jpg', '现摘现发,为了保证新鲜,豆角都是当天摘 当天发', '69.00', '35.00', '1000', '1000', '2020-12-28 16:49:38');
INSERT INTO `tb_goods` VALUES ('22', '阿迪达斯男装', '2', '阿迪达斯', 'd9d45bce-983f-4402-b2a1-af0354455e12_4.jpg', '这款风衣外套，融入彩色幅面，造型抢眼', '399.00', '329.00', '1000', '1000', '2020-12-28 16:53:17');
INSERT INTO `tb_goods` VALUES ('23', 'Q5蒸汽挂烫机', '13', '立挺Q5', 'ba2c6423-51cd-4cf1-aa6e-6ce9e0a6341b_1.jpg', '蒸汽大，质量好。立挺双核发热，性能是单核的四倍。', '539.00', '407.00', '203', '112', '2020-12-28 16:53:32');
INSERT INTO `tb_goods` VALUES ('24', 'Gap男装', '2', 'Gap', '52da9f4e-83f3-40e4-8113-5b7e74ebb2b9_5.jpg', '连帽领口，实用休闲感兼具，彰显活力风格', '249.00', '199.00', '1000', '1000', '2020-12-28 16:54:05');
INSERT INTO `tb_goods` VALUES ('25', '喷雾补水湿润香薰机雾化器', '13', '美的', 'b80897c9-d7d3-4ad4-a1c9-76362e11f5c0_2.jpg', '一步快捷上加水，无需关机。瞬间加湿，驱走干燥。银离子抑菌材料。4L大容量，满足一整天的滋润', '67.00', '45.00', '135', '34', '2020-12-28 16:56:08');
INSERT INTO `tb_goods` VALUES ('26', '潮牌卫衣', '2', 'wassup', '255dacdd-184f-4399-9a82-84d401a2f6c7_2.jpg', '定制抓绒面料，手感挺括柔软，穿着舒适亲肤', '299.00', '218.00', '1000', '1000', '2020-12-28 16:56:08');
INSERT INTO `tb_goods` VALUES ('27', '貂绒男士毛衣', '2', '外叁', '0ddb9283-bd58-47ed-8b32-02d46495dbe3_1.jpg', '暖冬新款针织毛衣，设计师精选的舒适版型', '144.00', '124.00', '1000', '1000', '2020-12-28 16:57:38');
INSERT INTO `tb_goods` VALUES ('28', '玫瑰桃花醉女士低度甜酒', '12', '苏州桥', '33e1479d-3b12-4739-9821-ec43b897a280_1.jpg', '三口之家的欢乐，记忆中的味道。一个人的世界，感受品质生活，四世同堂的记忆，团团圆圆。', '89.00', '32.00', '1453', '288', '2020-12-28 16:58:28');
INSERT INTO `tb_goods` VALUES ('29', '冬季加厚男士外套', '2', '马克风暴', 'f6222333-db5d-4738-af09-b2798a5121b5_2.jpg', '领口时尚前卫，印花撞色百搭装饰', '258.00', '158.00', '1000', '1000', '2020-12-28 16:58:30');
INSERT INTO `tb_goods` VALUES ('30', '仿羊羔绒运动长裤', '2', 'Uniqlo', '2b04d0ea-db9b-4431-8e3e-b4373badbd29_1.jpg', '内里起绒的设计，具有松软温暖的穿着感受', '198.00', '178.00', '1000', '1000', '2020-12-28 16:59:29');
INSERT INTO `tb_goods` VALUES ('31', '四月清果酒&茶酒 ', '12', '四月清', '45933912-12b0-4b02-9456-d5bb5b4a00b2_5.jpg', '开瓶即是天然的果香，充满活力与惊喜.', '159.00', '79.00', '668', '531', '2020-12-28 16:59:46');
INSERT INTO `tb_goods` VALUES ('32', '男士毛衣', '2', '罗努', 'bdc2d5a6-184e-4fb7-8cae-7294a22335f5_1.jpg', '时尚衣领设计，呈现男人魅力', '138.00', '108.00', '1000', '1000', '2020-12-28 17:00:08');
INSERT INTO `tb_goods` VALUES ('34', '韩版潮流短款棉袄', '2', '海霖酷亨', 'ff450e1b-7e0f-4e3e-996c-316669521d49_1.jpg', '防风立领，贴合脖颈，合体口袋，罗纹下摆，保暖面料', '198.00', '98.00', '1000', '1000', '2020-12-28 17:01:08');
INSERT INTO `tb_goods` VALUES ('35', '秋冬季男士羽绒服', '2', '空城计', '929216a2-7986-4718-b753-f640172c1140_3.jpg', '连帽设计，防风立体连帽，锁住颈部温暖不畏寒冬。', '698.00', '398.00', '1000', '979', '2020-12-28 17:02:09');
INSERT INTO `tb_goods` VALUES ('36', '秋冬季长袖t恤', '2', '潮男谷', 'e0e02e0a-f078-4fc0-a941-8b35f540ecd1_4.jpg', '柔软贴身，简单上档次，时尚衣领设计，呈现男人魅力', '98.00', '35.00', '1000', '999', '2020-12-28 17:03:54');
INSERT INTO `tb_goods` VALUES ('37', '桃子酒起泡酒茶酒', '12', '凯特轮堡', '0a69214f-e3ac-4542-ac24-5841af6fa7fc_2.jpg', '成分为新鲜果汁，水，红茶提取物etc，开瓶后请冷藏一周内喝完', '108.00', '99.00', '325', '143', '2020-12-28 17:04:13');
INSERT INTO `tb_goods` VALUES ('38', '狐狸毛短款派克服', '3', 'Danbaz', 'fbd2acb5-427b-4de6-846b-142939a2e688_1.jpg', '选用貉子毛毛皮，底绒厚实，毛针根根分明，灵动感十足', '1880.00', '1051.00', '1000', '1000', '2020-12-28 17:05:30');
INSERT INTO `tb_goods` VALUES ('39', '宇治茶酒丨日本进口 ', '12', 'CHOYA', '2b452edf-c4dc-4c1d-8b76-87a3c3fa5236_1.jpg', '采用日本纪州产的青梅酿造，青梅酒酸浓润，融入京都的宇治抹茶', '158.00', '148.00', '230', '100', '2020-12-28 17:05:36');
INSERT INTO `tb_goods` VALUES ('40', '雅鹿派克羽绒服', '3', 'yaloo', '787414e1-f381-40d4-9737-99610e10426f_5.jpg', '简单大方的加厚领口设计，牢牢锁住体温，时尚与温度同在', '896.00', '299.00', '1000', '1000', '2020-12-28 17:06:10');
INSERT INTO `tb_goods` VALUES ('41', '福建土楼养生茶', '7', '土楼怡翔', 'bf856e19-b5a4-40e8-948f-a3ba1c9aa369_1.jpg', '茶新鲜，品质好，回甘好，土楼直发，品质放心', '56.00', '38.00', '103', '103', '2020-12-28 17:06:36');
INSERT INTO `tb_goods` VALUES ('42', '双面织花羊绒衫毛衣', '3', '春天家', '007ece19-45d4-47b2-8461-8333e4ecec67_5.jpg', '客供纯羊绒材质，重磅双面织，蓬松柔糯', '1280.00', '800.00', '1000', '1000', '2020-12-28 17:07:09');
INSERT INTO `tb_goods` VALUES ('43', '羊绒羊羔毛卫衣', '3', 'CALLME DAISY', '058cb213-540d-4707-9742-ad1b1f2b33c7_3.jpg', '材质选用进口全羊毛，采用植绒工艺制作而成', '1000.00', '650.00', '1000', '1000', '2020-12-28 17:08:08');
INSERT INTO `tb_goods` VALUES ('44', '鹿皮绒旗袍', '3', '齐家', '5fdb334c-ee8d-4bc7-b452-3e7da69f5296_2.jpg', '盘扣立领端庄典雅，休闲气质宽松旗袍', '550.00', '160.00', '1000', '100', '2020-12-28 17:09:02');

-- ----------------------------
-- Table structure for `tb_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_type`;
CREATE TABLE `tb_goods_type` (
  `gtid` int(11) NOT NULL AUTO_INCREMENT,
  `gtname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gtid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_type
-- ----------------------------
INSERT INTO `tb_goods_type` VALUES ('1', '食品');
INSERT INTO `tb_goods_type` VALUES ('2', '男装');
INSERT INTO `tb_goods_type` VALUES ('3', '女装');
INSERT INTO `tb_goods_type` VALUES ('4', '手机');
INSERT INTO `tb_goods_type` VALUES ('5', '药品');
INSERT INTO `tb_goods_type` VALUES ('6', '水果');
INSERT INTO `tb_goods_type` VALUES ('7', '茶');
INSERT INTO `tb_goods_type` VALUES ('8', '新鲜蔬菜');
INSERT INTO `tb_goods_type` VALUES ('9', '生活用品');
INSERT INTO `tb_goods_type` VALUES ('10', '游戏CDK');
INSERT INTO `tb_goods_type` VALUES ('11', '电脑');
INSERT INTO `tb_goods_type` VALUES ('12', '茶酒');
INSERT INTO `tb_goods_type` VALUES ('13', '家电');

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `onum` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `dtime` datetime DEFAULT NULL,
  `sprice` double(10,2) DEFAULT NULL,
  `uinfo` varchar(50) DEFAULT NULL,
  `uaddress` varchar(20) DEFAULT NULL,
  `ispay` enum('否','是') DEFAULT NULL,
  `issend` enum('否','是') DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_uid` (`uid`),
  CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1', 'FC00120201229183313', '1', '2020-12-29 18:33:13', null, '4924.00', '速度', '曙光星城B区1201', '否', '否');
INSERT INTO `tb_order` VALUES ('2', 'FC00120201230110640', '2', '2020-12-30 11:06:40', null, '250.00', '搞快点', '曙光星城', '否', '否');
INSERT INTO `tb_order` VALUES ('5', 'FC00120201230145800', '3', '2020-12-30 14:58:00', '2020-12-30 15:49:51', '1680.00', 'cea', '黑龙江', '是', '是');
INSERT INTO `tb_order` VALUES ('9', 'FC00120201230150048', '3', '2020-12-30 15:00:48', '2020-12-30 15:49:38', '1680.00', 'dsa', '黑龙江', '是', '是');
INSERT INTO `tb_order` VALUES ('11', 'FC00120201230150501', '3', '2020-12-30 15:05:01', '2020-12-30 15:49:47', '1680.00', '', '黑龙江', '是', '是');
INSERT INTO `tb_order` VALUES ('14', 'FC00120201230160243', '3', '2020-12-30 16:02:43', null, '98.00', 'fds', '黑龙江', '否', '否');
INSERT INTO `tb_order` VALUES ('15', 'FC00120201230172320', '4', '2020-12-30 17:23:20', null, '98.00', '速度', '曙光星城', '是', '否');
INSERT INTO `tb_order` VALUES ('16', 'FC00120201231092152', '6', '2020-12-31 09:21:52', null, '294.00', '', '北京', '是', '否');
INSERT INTO `tb_order` VALUES ('17', 'FC00120201231092237', '6', '2020-12-31 09:22:37', null, '196.00', '.', '北京', '是', '否');
INSERT INTO `tb_order` VALUES ('18', 'FC00120201231092302', '6', '2020-12-31 09:23:02', null, '98.00', '', '北京', '是', '否');
INSERT INTO `tb_order` VALUES ('19', 'FC00120201231092331', '7', '2020-12-31 09:23:31', null, '90.00', '啊啊啊', '武汉洪山区', '是', '否');
INSERT INTO `tb_order` VALUES ('20', 'FC00120201231092420', '6', '2020-12-31 09:24:20', null, '35.00', '', '北京', '是', '否');
INSERT INTO `tb_order` VALUES ('21', 'FC00120201231092442', '6', '2020-12-31 09:24:42', null, '50.00', '', '北京', '是', '否');
INSERT INTO `tb_order` VALUES ('22', 'FC00120201231092543', '6', '2020-12-31 09:25:43', null, '32.00', '', '北京', '是', '否');
INSERT INTO `tb_order` VALUES ('23', 'FC00120201231102858', '4', '2020-12-31 10:28:58', null, '1680.00', '速度', '曙光星城', '是', '否');
INSERT INTO `tb_order` VALUES ('24', 'FC00120201231102908', '4', '2020-12-31 10:29:08', null, '129.00', '搞快点', '曙光星城', '是', '否');
INSERT INTO `tb_order` VALUES ('25', 'FC00120201231114728', '4', '2020-12-31 11:47:28', '2020-12-31 11:48:53', '129.00', '速度', '曙光星城', '是', '是');

-- ----------------------------
-- Table structure for `tb_orderlist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderlist`;
CREATE TABLE `tb_orderlist` (
  `olid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `olnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`olid`),
  KEY `fk_oid` (`oid`),
  KEY `fk_gid` (`gid`),
  CONSTRAINT `fk_gid` FOREIGN KEY (`gid`) REFERENCES `tb_goods` (`gid`),
  CONSTRAINT `fk_oid` FOREIGN KEY (`oid`) REFERENCES `tb_order` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orderlist
-- ----------------------------
INSERT INTO `tb_orderlist` VALUES ('1', '1', '10', '2');
INSERT INTO `tb_orderlist` VALUES ('2', '2', '6', '5');
INSERT INTO `tb_orderlist` VALUES ('5', '5', '5', '1');
INSERT INTO `tb_orderlist` VALUES ('9', '9', '5', '1');
INSERT INTO `tb_orderlist` VALUES ('11', '11', '5', '1');
INSERT INTO `tb_orderlist` VALUES ('14', '14', '3', '1');
INSERT INTO `tb_orderlist` VALUES ('15', '15', '3', '1');
INSERT INTO `tb_orderlist` VALUES ('16', '16', '13', '3');
INSERT INTO `tb_orderlist` VALUES ('17', '17', '4', '2');
INSERT INTO `tb_orderlist` VALUES ('18', '18', '4', '1');
INSERT INTO `tb_orderlist` VALUES ('19', '19', '25', '2');
INSERT INTO `tb_orderlist` VALUES ('20', '20', '36', '1');
INSERT INTO `tb_orderlist` VALUES ('21', '21', '6', '1');
INSERT INTO `tb_orderlist` VALUES ('22', '22', '11', '1');
INSERT INTO `tb_orderlist` VALUES ('23', '23', '5', '1');
INSERT INTO `tb_orderlist` VALUES ('24', '24', '7', '1');
INSERT INTO `tb_orderlist` VALUES ('25', '25', '7', '1');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `sex` enum('女','男') DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `uaddress` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `regtime` date DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'seny', '123456', '张大炮', '男', '曙光星城B区1201', '13562433351', '曙光星城B区1201', '32566412@qq.com', '2020-12-25');
INSERT INTO `tb_user` VALUES ('2', 'admin', '123456', '王五', '男', '曙光星城', '13652548741', '曙光星城B区5单元1201', '123456@qq.com', '2020-12-30');
INSERT INTO `tb_user` VALUES ('3', '闫', '123456', 'yan', '男', '黑龙江', '15846944801', '大庆', '2944209060@qq.com', '2020-12-30');
INSERT INTO `tb_user` VALUES ('4', 'qiqi', '123456', 'qiqi', '女', '曙光星城', '13400010001', '曙光星城B区5单元1201', '123456@qq.com', '2020-12-30');
INSERT INTO `tb_user` VALUES ('5', 'lllsp', '123456', '王麻子', '男', '湖北省武汉市洪山区', '13562433351', '曙光星城B区5单元1201', '1922334008@qq.com', '2020-12-30');
INSERT INTO `tb_user` VALUES ('6', 'lwj', 'lwj', 'lwj', '男', '北京', '13752938264', '上海', '123', '2020-12-31');
INSERT INTO `tb_user` VALUES ('7', '老赵', '111', '老赵', '男', '武汉洪山区', '13121111111', '光谷软件园', '123456789@请求.com', '2020-12-31');
INSERT INTO `tb_user` VALUES ('8', '王小明天', '128623', '小法', '男', '山东', '14335447635', '阿萨德', '2944209060@qq.com', '2020-12-31');
INSERT INTO `tb_user` VALUES ('9', 'xiaofa', '123456', 'xiaofa', '男', '火星', '13652548741', '曙光星城B区5单元1201', '123456@qq.com', '2020-12-31');
