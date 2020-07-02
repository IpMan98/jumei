/*
Navicat MySQL Data Transfer

Source Server         : 444
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : goodslist

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2020-07-02 19:56:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goodslist`
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(10) NOT NULL,
  `deal_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deal_tit` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price_dis` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price_org` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `details` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `show_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', 'http://p1.jmstatic.com/product/004/879/4879066_std/4879066_dx_1000_400.jpg', '【聚美直发包邮】官方授权美国•确美同水宝宝纯净防晒乳237ML', '69', '118', null, null, null);
INSERT INTO `goodslist` VALUES ('2', 'http://p3.jmstatic.com/product/005/089/5089708_std/5089708_dx_1000_400.jpg', 'Lancome/兰蔻粉水清滢柔肤水保湿大粉水400ml', '285', '420', null, null, null);
INSERT INTO `goodslist` VALUES ('3', 'http://p4.jmstatic.com/product/005/061/5061834_std/5061834_dx_1000_400.jpg', '【聚美24小时直发】 雅诗兰黛新多效智妍眼霜5ml*3黄金特润眼霜', '169', '209', null, null, null);
INSERT INTO `goodslist` VALUES ('4', 'http://p2.jmstatic.com/product/004/969/4969702_std/4969702_dx_1000_400.jpg', 'SWISSE麦卢卡蜂蜜排毒面膜70g送玫瑰爽肤水喷雾125ml', '78', '248', null, null, null);
INSERT INTO `goodslist` VALUES ('5', 'http://p1.jmstatic.com/product/005/061/5061836_std/5061836_dx_1000_400.jpg', '【聚美24小时直发】雅诗兰黛肌初原生液30ml*3微精华原生液', '169', '200', null, null, null);
INSERT INTO `goodslist` VALUES ('6', 'http://p4.jmstatic.com/product/004/987/4987754_std/4987754_dx_1000_400.jpg', '【赠礼盒】魅可MAC经典子弹头口红唇膏3g', '89', '169', null, null, null);
INSERT INTO `goodslist` VALUES ('7', 'http://p3.jmstatic.com/product/004/966/4966848_std/4966848_dx_1000_400.jpg', '【干燥敏感肌福音】珂润(Curel)润浸保湿面霜40g', '128', '188', null, null, null);
INSERT INTO `goodslist` VALUES ('8', 'http://p0.jmstatic.com/product/005/057/5057600_std/5057600_dx_1000_400.jpg', '【现货秒发】 希思黎全能乳液（升级版）125ml', '1149', '1800', null, null, null);
INSERT INTO `goodslist` VALUES ('9', 'http://p2.jmstatic.com/product/005/061/5061842_std/5061842_dx_1000_400.jpg', '【聚美24小时直发】雅诗兰黛多效智妍精华霜15ml*3 特润面霜', '239', '249', null, null, null);
INSERT INTO `goodslist` VALUES ('10', 'http://p0.jmstatic.com/product/004/876/4876270_std/4876270_dx_1000_400.jpg', '【李佳琦推荐】UNNY悠宜卸妆水500ml拥有护肤般卸妆体验', '52', '89', null, null, null);
INSERT INTO `goodslist` VALUES ('11', 'http://p3.jmstatic.com/product/005/086/5086808_std/5086808_dx_1000_400.jpg', '【聚美24小时直发】雅诗兰黛特润修护肌透精华露15ml*3小棕瓶', '350', '385', null, null, null);
INSERT INTO `goodslist` VALUES ('12', 'http://p2.jmstatic.com/product/005/019/5019452_std/5019452_dx_1000_400.jpg', '【聚美直发】奥尔滨奥碧虹爽肤精萃液（健康水）110ml包邮', '169', '360', null, null, null);
INSERT INTO `goodslist` VALUES ('13', 'http://p1.jmstatic.com/product/005/053/5053206_std/5053206_dx_1000_400.jpg', '聚美直发包邮 海蓝之谜提升紧致精华面膜7ml', '159', '189', null, null, null);
INSERT INTO `goodslist` VALUES ('14', 'http://p2.jmstatic.com/product/005/092/5092072_std/5092072_dx_1000_400.jpg', '【聚美24小时直发】雅诗兰黛持妆dw粉底液1W1-17号象牙白 7ml小样', '68', '198', null, null, null);
INSERT INTO `goodslist` VALUES ('15', 'http://p3.jmstatic.com/product/004/938/4938758_std/4938758_dx_1000_400.jpg', 'AGE20\'S爱敬新款三色拉花精华气垫粉底膏 多色可选', '118', '229', null, null, null);
INSERT INTO `goodslist` VALUES ('16', 'http://p1.jmstatic.com/product/004/970/4970446_std/4970446_dx_1000_400.jpg', '蒂佳婷 蓝色药丸面膜+绿色药丸面膜+黑色清洁面膜 3盒组合装', '119', '435', null, null, null);

-- ----------------------------
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_tit` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_det` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `list_opic` int(4) NOT NULL,
  `list_npic` int(4) NOT NULL,
  `list_time` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', 'http://p1.global.jmstatic.com/product/004/937/4937888_std/4937888_dx_640_400.jpg', 'The Ordinary  五胜肽抗衰老精华', 'The Ordinary （10%五胜肽+透明质酸）抗衰老精华 30ml，当红炸子鸡The Ordinary可谓风头无两,清一色的快速急救型猛药路线让它一夜之间红遍油管&amp;ins用过的妹子都化身移动的人形种草机,自然界中的尖子生。使其逐渐升级为护肤成分党心中的大佬。', '149', '398', '4');
INSERT INTO `list` VALUES ('2', 'http://p1.global.jmstatic.com/product/004/937/4937890_std/4937890_dx_640_400.jpg', 'The Ordinary 30%果酸+2%水杨酸', 'The Ordinary 30%果酸+2%水杨酸焕肤面膜 30ml，在这个精华动辄上千的时代，被称为欧美护肤界的“原料桶”的The Ordinary。凭借真材实料+良心价格 获得一票好评，性价比高出天际，无论多贵的护肤，在这里都能找到效果相同平价代替。', '119', '214', '3');
INSERT INTO `list` VALUES ('3', 'http://p1.global.jmstatic.com/product/004/962/4962954_std/4962954_dx_640_400.jpg', 'This works睡眠喷雾-加强版', '除了安眠药与裸睡，你还有第三种快速入眠的选择~thisworks英国名门品牌，女人皮肤全靠养，只要轻轻一喷，轻松拥有香甜的好睡眠。', '179', '368', '5');
INSERT INTO `list` VALUES ('4', 'http://p1.global.jmstatic.com/product/004/963/4963026_std/4963026_dx_640_400.jpg', 'Hairfinity护发素355ml', '【卡戴珊家族挚爱，名流享受】 HAIRFINITY防脱修复护发素，无硅油护发素，头皮可用，富含大量植物精华，深层护理头皮和毛囊，柔顺丝滑轻盈', '109', '199', '6');
INSERT INTO `list` VALUES ('5', 'http://p1.global.jmstatic.com/product/005/012/5012740_std/5012740_dx_640_400.jpg', 'Hairfinity护发发膜', 'Hairfinity护发发膜', '209', '355', '7');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yewen', '123456');
INSERT INTO `user` VALUES ('2', 'yangwen', '123456');
INSERT INTO `user` VALUES ('3', 'dsfsdfs', '362528');
INSERT INTO `user` VALUES ('4', '15646', '147258');
