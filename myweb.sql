/*
MySQL Data Transfer
Source Host: localhost
Source Database: myweb
Target Host: localhost
Target Database: myweb
Date: 2020/6/26 13:33:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for donation
-- ----------------------------
DROP TABLE IF EXISTS `donation`;
CREATE TABLE `donation` (
  `donateid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `residue` int(11) DEFAULT NULL,
  PRIMARY KEY (`donateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for myupdate
-- ----------------------------
DROP TABLE IF EXISTS `myupdate`;
CREATE TABLE `myupdate` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `vedio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for postanimal
-- ----------------------------
DROP TABLE IF EXISTS `postanimal`;
CREATE TABLE `postanimal` (
  `postid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `time` datetime NOT NULL,
  `name` varchar(20) NOT NULL,
  `breed` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `character1` varchar(50) DEFAULT NULL,
  `health` varchar(20) DEFAULT NULL,
  `history` varchar(500) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin');
INSERT INTO `donation` VALUES ('1', '1', '500', '宠物医院做全身检查 ', '1000');
INSERT INTO `donation` VALUES ('2', '1', '700', '宠物医院做绝育', '800');
INSERT INTO `donation` VALUES ('3', '1', '1000', '买猫粮，生活用品', null);
INSERT INTO `donation` VALUES ('4', '1', '200', '买玩具', null);
INSERT INTO `message` VALUES ('1', '1', '用户1', '2020-06-24 14:59:10', '猫咪好可爱！');
INSERT INTO `message` VALUES ('2', '2', '爱猫人士', '2020-06-23 14:59:45', '哈哈哈ha');
INSERT INTO `message` VALUES ('3', '2', '哈哈', '2020-06-23 14:59:45', '哈哈哈ha');
INSERT INTO `message` VALUES ('4', '1', '123', '2020-06-23 14:59:45', '22222');
INSERT INTO `message` VALUES ('5', '1', '11', '2020-06-24 19:25:00', '22222');
INSERT INTO `message` VALUES ('6', '1', '123', '2020-06-24 19:50:00', '123');
INSERT INTO `message` VALUES ('7', '1', '123', '1899-12-28 05:00:00', '123');
INSERT INTO `message` VALUES ('8', '1', '哈哈', '2020-06-26 11:30:00', '123');
INSERT INTO `myupdate` VALUES ('1', '1', '2020-05-24 00:00:00', '在人民公园捡到一个小可爱，叫什么名字好呢', 'images/animalcat1.jpg', '');
INSERT INTO `myupdate` VALUES ('2', '1', '2020-06-25 10:25:01', '狸花猫', '', 'images/movie.mp4');
INSERT INTO `myupdate` VALUES ('3', '1', '2020-06-25 10:25:38', '花花是一只狸花猫，哈哈', '', '');
INSERT INTO `postanimal` VALUES ('1', 'animalcat', '2020-06-24 08:46:41', '喵喵', '狸花猫', '2', '男', '性格温和爱撒娇', '非常健康', '我们的工作人员在2020年5月1日在人民花园找到猫咪，我们工作人员领养前去宠物医院做了检查，无大病，现在在我们的流浪猫狗收养站生活。', 'images/animalcat1.jpg');
INSERT INTO `postanimal` VALUES ('2', 'animalcat', '2020-06-24 08:48:13', '白点儿', '橘猫', '1', '女', '调皮捣蛋', '健康', '11', 'images/cat1.jpg');
INSERT INTO `postanimal` VALUES ('3', 'animalcat', '2020-06-25 12:01:08', '鳌拜', '故宫猫', '3', '男', '凶狠有威力', '健康', '111111', 'images/cat2.jpg');
INSERT INTO `postanimal` VALUES ('4', 'animalcat', '2020-06-25 12:03:56', 'miaomiao', '三花猫', '2', '女', '可爱粘人', '健康', '1111111', 'images/cat4.jpg');
INSERT INTO `postanimal` VALUES ('5', 'animaldog', '2020-06-25 12:05:15', '小o', '柴犬', '2', '男', '乖巧可爱', '健康', '1111', 'images/animaldog1.jpg');
INSERT INTO `postanimal` VALUES ('6', 'animaldog', '2020-06-25 12:07:17', 'kk', '柯基', '1', '男', '调皮爱玩', '健康', '111111111', 'images/dog1.jpg');
INSERT INTO `postanimal` VALUES ('7', 'animaldog', '2020-06-25 12:08:23', '咕咕', '金毛', '4', '男', '温顺', '健康', '111111111111', 'images/dog3.jpg');
INSERT INTO `postanimal` VALUES ('8', 'animalcat', '2020-06-25 12:09:47', 'keke', '猫咪', '3', '男', '111', '111', '111', 'images/cat5.jpg');
INSERT INTO `postanimal` VALUES ('9', 'animaldog', '1899-12-31 00:00:00', 'zongzong', '11', '3', '男', '11', '非常健康', '123', 'images/dog2.jpg');
