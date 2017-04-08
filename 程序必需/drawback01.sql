/*
Navicat MySQL Data Transfer

Source Server         : 456
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : drawback01

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-07-11 18:40:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bitch`
-- ----------------------------
DROP TABLE IF EXISTS `bitch`;
CREATE TABLE `bitch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrDate` date DEFAULT NULL,
  `bitch` varchar(30) DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `lineId` varchar(255) DEFAULT NULL,
  `ordered` int(11) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `sdDate` date DEFAULT NULL,
  `actualSum` int(11) DEFAULT NULL,
  `advancedU` int(11) DEFAULT NULL,
  `advancedZ` int(11) DEFAULT NULL,
  `cod` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `indemnity` double DEFAULT NULL,
  `insurance` int(11) DEFAULT NULL,
  `noaccAdvance` int(11) DEFAULT NULL,
  `noaccPackfee` int(11) DEFAULT NULL,
  `outInsurance` double DEFAULT NULL,
  `outSum` double DEFAULT NULL,
  `outWorth` double DEFAULT NULL,
  `packfeeU` int(11) DEFAULT NULL,
  `packfeeZ` int(11) DEFAULT NULL,
  `pics` int(11) DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `sumbill` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `volumu` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `worth` int(11) DEFAULT NULL,
  `changeRate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(40) DEFAULT NULL,
  `companyCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `custId` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cid` (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------



-- ----------------------------
-- Table structure for `customerrelation`
-- ----------------------------
DROP TABLE IF EXISTS `customerrelation`;
CREATE TABLE `customerrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custId` int(11) DEFAULT NULL,
  `procuratorId` int(11) DEFAULT NULL,
  `raterId` int(11) DEFAULT NULL,
  `senderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8mcqudkyafkhog0y5trfpygx9` (`custId`),
  KEY `FK_8e8j39wqug325wohko4t8i4k8` (`procuratorId`),
  KEY `FK_2aas30927mkluvmkj2w8iynk6` (`raterId`),
  KEY `FK_6nxt3tai2olrj2xjrrj7y0vjp` (`senderId`),
  CONSTRAINT `FK_2aas30927mkluvmkj2w8iynk6` FOREIGN KEY (`raterId`) REFERENCES `rater` (`id`),
  CONSTRAINT `FK_6nxt3tai2olrj2xjrrj7y0vjp` FOREIGN KEY (`senderId`) REFERENCES `sender` (`id`),
  CONSTRAINT `FK_8e8j39wqug325wohko4t8i4k8` FOREIGN KEY (`procuratorId`) REFERENCES `procurator` (`id`),
  CONSTRAINT `FK_8mcqudkyafkhog0y5trfpygx9` FOREIGN KEY (`custId`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `delayrecord`
-- ----------------------------
DROP TABLE IF EXISTS `delayrecord`;
CREATE TABLE `delayrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bitch` varchar(255) DEFAULT NULL,
  `custId` varchar(255) DEFAULT NULL,
  `delayDate` int(11) DEFAULT NULL,
  `delayIndemnity` double DEFAULT NULL,
  `delayRate` double DEFAULT NULL,
  `goods` varchar(255) DEFAULT NULL,
  `pics` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `tDate` datetime DEFAULT NULL,
  `volumu` double DEFAULT NULL,
  `waybill` tinyblob,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delayrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `dest`
-- ----------------------------
DROP TABLE IF EXISTS `dest`;
CREATE TABLE `dest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destName` varchar(30) DEFAULT NULL,
  `destOperator` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dest
-- ----------------------------
INSERT INTO `dest` VALUES ('1', '柳布里诺', '于自由', '007 9251070319', '');
INSERT INTO `dest` VALUES ('2', '萨达沃', '于自由', '007 9251070319', '');
INSERT INTO `dest` VALUES ('3', '蓝楼', '于自由', '007-9251070319', '');
INSERT INTO `dest` VALUES ('4', '柳布里诺 转 圣彼', '于自由', '007-9251070319', '');
INSERT INTO `dest` VALUES ('5', '柳布里诺 转', '于自由', '007-9251070319', '');
INSERT INTO `dest` VALUES ('6', '叶卡', '于自由', '007-9251070319', '');
INSERT INTO `dest` VALUES ('7', '新西伯利亚', '于自由', '007-925-1070319', '');
INSERT INTO `dest` VALUES ('8', '柳布里诺 转 彼尔姆', '于自由', '007-9251070319', '');
INSERT INTO `dest` VALUES ('9', '柳布里诺 转 乌克兰', '于自由', '007-9251070319', '');
INSERT INTO `dest` VALUES ('10', '莫斯科 转 乌法', '于自由', '007-9251070319', '');

-- ----------------------------
-- Table structure for `goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) DEFAULT NULL,
  `remarks` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('1', '普货', null);
INSERT INTO `goodstype` VALUES ('2', '杂货', null);
INSERT INTO `goodstype` VALUES ('3', '羊反穿', null);
INSERT INTO `goodstype` VALUES ('4', '二类裘皮', null);
INSERT INTO `goodstype` VALUES ('5', '一类裘皮', null);
INSERT INTO `goodstype` VALUES ('6', '手机', null);

-- ----------------------------
-- Table structure for `indemnify`
-- ----------------------------
DROP TABLE IF EXISTS `indemnify`;
CREATE TABLE `indemnify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bitch` varchar(255) DEFAULT NULL,
  `custId` varchar(255) DEFAULT NULL,
  `custName` varchar(255) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `lineId` varchar(255) DEFAULT NULL,
  `payMethod` int(11) DEFAULT NULL,
  `rater` varchar(255) DEFAULT NULL,
  `reason` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `waybill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indemnify
-- ----------------------------

-- ----------------------------
-- Table structure for `indemnityrecord`
-- ----------------------------
DROP TABLE IF EXISTS `indemnityrecord`;
CREATE TABLE `indemnityrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custId` varchar(255) DEFAULT NULL,
  `iDate` datetime DEFAULT NULL,
  `iSum` double DEFAULT NULL,
  `payMethod` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indemnityrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `line`
-- ----------------------------
DROP TABLE IF EXISTS `line`;
CREATE TABLE `line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) DEFAULT NULL,
  `lineId` varchar(40) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `transType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line
-- ----------------------------

INSERT INTO `line` VALUES ('1', '010库空运', 'Air-010', '北京联系人：李中华(办公室)15810854689 库房李润春：18010126477。广州联系人：沈永奎18611967226', '空运（8-10天）');


-- ----------------------------
-- Table structure for `mark`
-- ----------------------------
DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `remarks` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mark
-- ----------------------------
INSERT INTO `mark` VALUES ('1', 'P', '普货');
INSERT INTO `mark` VALUES ('2', 'Z', '杂货');
INSERT INTO `mark` VALUES ('3', 'Y', '羊反穿');
INSERT INTO `mark` VALUES ('4', 'D', '电池货');
INSERT INTO `mark` VALUES ('5', 'S', '手机');
INSERT INTO `mark` VALUES ('6', 'Q', '裘皮');
INSERT INTO `mark` VALUES ('7', 'E', '二类');
INSERT INTO `mark` VALUES ('8', 'X', '鞋');
INSERT INTO `mark` VALUES ('9', 'B', '包');
INSERT INTO `mark` VALUES ('10', 'M', '帽子');
INSERT INTO `mark` VALUES ('11', 'YJ', '眼镜');
INSERT INTO `mark` VALUES ('13', 'PY', '皮衣');
INSERT INTO `mark` VALUES ('14', 'CP', '床上用品');
INSERT INTO `mark` VALUES ('15', 'TS', '头饰');

-- ----------------------------
-- Table structure for `phototest`
-- ----------------------------
DROP TABLE IF EXISTS `phototest`;
CREATE TABLE `phototest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phototest
-- ----------------------------

-- ----------------------------
-- Table structure for `procurator`
-- ----------------------------
DROP TABLE IF EXISTS `procurator`;
CREATE TABLE `procurator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `cardName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of procurator
-- ----------------------------
INSERT INTO `procurator` VALUES ('1', '', '', '', '无', '-', '');
INSERT INTO `procurator` VALUES ('2', '', '', '', '928库', '', '');
INSERT INTO `procurator` VALUES ('3', '', '', '', 'AG68库', '', '');
INSERT INTO `procurator` VALUES ('4', '', '', '', '9999', '', '');

-- ----------------------------
-- Table structure for `rater`
-- ----------------------------
DROP TABLE IF EXISTS `rater`;
CREATE TABLE `rater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(30) DEFAULT NULL,
  `card` varchar(30) DEFAULT NULL,
  `cardName` varchar(20) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `raterName` varchar(30) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `raterNm` (`raterName`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rater
-- ----------------------------
INSERT INTO `rater` VALUES ('1', null, null, null, null, '公司', null);


-- ----------------------------
-- Table structure for `rebate`
-- ----------------------------
DROP TABLE IF EXISTS `rebate`;
CREATE TABLE `rebate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bcdate` date DEFAULT NULL,
  `cashStatus` int(11) DEFAULT '0',
  `contract` varchar(20) DEFAULT '',
  `custId` varchar(20) DEFAULT NULL,
  `grossWeight` double DEFAULT NULL,
  `inFee` int(11) DEFAULT '0',
  `infeeDate` date DEFAULT NULL,
  `outFee` int(11) DEFAULT '0',
  `outfeeDate` date DEFAULT NULL,
  `packages` int(11) DEFAULT '0',
  `remarks` varchar(250) DEFAULT NULL,
  `sddate` date DEFAULT NULL,
  `source` varchar(20) DEFAULT '',
  `status` int(11) DEFAULT NULL,
  `telphone` varchar(100) DEFAULT NULL,
  `total` double DEFAULT '0',
  `tradeType` varchar(20) DEFAULT '一般贸易',
  `yldate` date DEFAULT NULL,
  `yuludan` varchar(30) DEFAULT NULL,
  `bitchId` int(11) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `companyCode` varchar(20) DEFAULT NULL,
  `companyId` int(11) NOT NULL,
  `bitch` varchar(255) DEFAULT NULL,
  `payMethod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `rebatecustomer`
-- ----------------------------
DROP TABLE IF EXISTS `rebatecustomer`;
CREATE TABLE `rebatecustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custId` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `telphone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rebatecustomer
-- ----------------------------

-- ----------------------------
-- Table structure for `rebategoods`
-- ----------------------------
DROP TABLE IF EXISTS `rebategoods`;
CREATE TABLE `rebategoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `goods` varchar(30) DEFAULT NULL,
  `hsCode` varchar(30) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `netWeight` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rebateId` int(11) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `receipt`
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bitch` varchar(255) DEFAULT NULL,
  `custId` varchar(255) DEFAULT NULL,
  `custName` varchar(255) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `lineId` varchar(255) DEFAULT NULL,
  `payMethod` int(11) DEFAULT NULL,
  `rater` varchar(255) DEFAULT NULL,
  `rdate` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `waybill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `sender`
-- ----------------------------
DROP TABLE IF EXISTS `sender`;
CREATE TABLE `sender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT '',
  `phone` varchar(60) DEFAULT NULL,
  `qq` varchar(30) DEFAULT '',
  `remarks` varchar(200) DEFAULT '',
  `sdName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `senderNm` (`sdName`)
) ENGINE=InnoDB AUTO_INCREMENT=1067 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('4', '已清关');
INSERT INTO `status` VALUES ('5', '已到达');
INSERT INTO `status` VALUES ('6', '已分货');
INSERT INTO `status` VALUES ('7', '清关问题处理中');
INSERT INTO `status` VALUES ('8', '存市场');
INSERT INTO `status` VALUES ('9', '灭失');

-- ----------------------------
-- Table structure for `track`
-- ----------------------------
DROP TABLE IF EXISTS `track`;
CREATE TABLE `track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arriveDate` datetime DEFAULT NULL,
  `bitch` varchar(255) DEFAULT NULL,
  `custId` varchar(255) DEFAULT NULL,
  `custName` varchar(255) DEFAULT NULL,
  `lineId` varchar(255) DEFAULT NULL,
  `pics` int(11) DEFAULT NULL,
  `rater` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `waybill` varchar(255) DEFAULT NULL,
  `wstatus` int(11) DEFAULT NULL,
  `goods` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tDate` datetime DEFAULT NULL,
  `tStatus` int(11) DEFAULT NULL,
  `volumu` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2996 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `transtype`
-- ----------------------------
DROP TABLE IF EXISTS `transtype`;
CREATE TABLE `transtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transType` varchar(20) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transtype
-- ----------------------------
INSERT INTO `transtype` VALUES ('1', '快空', 'AF');
INSERT INTO `transtype` VALUES ('2', '慢空', '');
INSERT INTO `transtype` VALUES ('3', '快陆', null);
INSERT INTO `transtype` VALUES ('4', '慢陆', null);
INSERT INTO `transtype` VALUES ('5', '海运', null);
INSERT INTO `transtype` VALUES ('6', '海铁', null);

-- ----------------------------
-- Table structure for `trstatus`
-- ----------------------------
DROP TABLE IF EXISTS `trstatus`;
CREATE TABLE `trstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remarks` varchar(255) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `waybill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trstatus
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `userName` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userGroup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergroup
-- ----------------------------

-- ----------------------------
-- Table structure for `waybill`
-- ----------------------------
DROP TABLE IF EXISTS `waybill`;
CREATE TABLE `waybill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waybill` varchar(50) DEFAULT NULL,
  `advanced_u` int(11) DEFAULT NULL,
  `advanced_z` int(11) DEFAULT NULL,
  `cod` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `descrip` varchar(255) DEFAULT '',
  `goods` varchar(255) DEFAULT NULL,
  `insurance` int(11) DEFAULT NULL,
  `orderNo` varchar(255) DEFAULT '' COMMENT '订仓号',
  `outInsurance` double DEFAULT '0',
  `outPrice` double DEFAULT '0',
  `outSum` double DEFAULT '0',
  `outWorth` double DEFAULT '0',
  `outWorthrate` double DEFAULT '0.01',
  `packfee_u` int(11) DEFAULT NULL,
  `packfee_z` int(11) DEFAULT NULL,
  `payMethod` varchar(10) DEFAULT NULL,
  `pics` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `raterRate` double DEFAULT '0',
  `remarks` varchar(250) DEFAULT NULL,
  `sddate` date DEFAULT NULL,
  `volumu` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `worth` int(11) DEFAULT NULL,
  `worthRate` double DEFAULT NULL,
  `bitch` varchar(50) DEFAULT NULL,
  `custId` varchar(20) DEFAULT NULL,
  `rebateId` int(11) DEFAULT NULL,
  `custName` varchar(200) DEFAULT NULL,
  `custTel` varchar(50) DEFAULT NULL,
  `destName` varchar(30) DEFAULT NULL,
  `destTel` varchar(50) DEFAULT NULL,
  `mark` varchar(20) DEFAULT '0',
  `raterName` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `lineId` varchar(30) DEFAULT '',
  `statusId` int(11) DEFAULT NULL,
  `actualSum` int(11) DEFAULT '0',
  `custAdd` varchar(255) DEFAULT NULL,
  `custEmail` varchar(255) DEFAULT NULL,
  `isRebate` int(11) DEFAULT NULL,
  `joinBill` varchar(255) DEFAULT NULL,
  `sdTel` varchar(255) DEFAULT NULL,
  `sumbill` double(11,0) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `exchangeRate` double DEFAULT NULL,
  `indemnity` int(11) DEFAULT NULL,
  `sdId` int(11) DEFAULT NULL,
  `transType` varchar(20) DEFAULT '',
  `procurator` varchar(50) DEFAULT '',
  `outmark` varchar(20) DEFAULT NULL,
  `noaccAdvance` int(11) DEFAULT '0',
  `noaccPackfee` int(11) DEFAULT '0',
  `cangId` varchar(20) DEFAULT '',
  `editable` int(2) DEFAULT '0',
  `arrPics` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wbill` (`waybill`)
) ENGINE=InnoDB AUTO_INCREMENT=5017 DEFAULT CHARSET=utf8;


