/*
Navicat MySQL Data Transfer

Source Server         : new-one
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : img

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2017-11-14 15:33:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL auto_increment,
  `src` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES ('1', 'imgaes/BRANDS/24.jpg', 'C/MEO COLLECTIVE');
INSERT INTO `brands` VALUES ('2', 'imgaes/BRANDS/1.jpg', 'FINDERS');
INSERT INTO `brands` VALUES ('3', 'imgaes/BRANDS/11.jpg', 'THE FIFTH LABEL');
INSERT INTO `brands` VALUES ('4', 'imgaes/BRANDS/7.jpg', 'KEEPSAKE');
INSERT INTO `brands` VALUES ('5', 'imgaes/BRANDS/5.jpg', 'USE UNUSED');
INSERT INTO `brands` VALUES ('6', 'imgaes/BRANDS/15.jpg', 'DISAYA');
INSERT INTO `brands` VALUES ('7', 'imgaes/BRANDS/23.jpg', 'FEW MODA');
INSERT INTO `brands` VALUES ('8', 'imgaes/BRANDS/18.jpg', 'GLAMOROUS');

-- ----------------------------
-- Table structure for brans
-- ----------------------------
DROP TABLE IF EXISTS `brans`;
CREATE TABLE `brans` (
  `id` int(11) NOT NULL auto_increment,
  `img` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brans
-- ----------------------------
INSERT INTO `brans` VALUES ('1', 'imgaes/BRANDS/14.jpg', 'KEEPSAKE', 'SIGNALS MIDI DRESS', 'black');
INSERT INTO `brans` VALUES ('2', 'imgaes/BRANDS/16.jpg', 'KEEPSAKE', 'SIGNALS MIDI DRESS', 'ivory');
INSERT INTO `brans` VALUES ('3', 'imgaes/BRANDS/26.jpg', 'KEEPSAKE', 'SIGNALS MIDI DRESS', 'black');
INSERT INTO `brans` VALUES ('4', 'imgaes/BRANDS/6.jpg', 'KEEPSAKE', 'SIGNALS MIDI DRESS', 'black');
INSERT INTO `brans` VALUES ('5', 'imgaes/BRANDS/8.jpg', 'KEEPSAKE', 'SIGNALS MIDI DRESS', 'NAVY');
INSERT INTO `brans` VALUES ('6', 'imgaes/BRANDS/13.jpg', 'KEEPSAKE', 'SIGNALS MIDI DRESS', 'IVORY');
INSERT INTO `brans` VALUES ('7', 'imgaes/BRANDS/20.jpg', 'KEEPSAKE', 'COME AROUND LONG SLEEVE MINI DRESS', 'dark ivy print');
INSERT INTO `brans` VALUES ('8', 'imgaes/BRANDS/22.jpg', 'KEEPSAKE', 'COME AROUND LONG SLEEVE MINI DRESS', 'shell');
INSERT INTO `brans` VALUES ('9', 'imgaes/BRANDS/17.jpg', 'KEEPSAKE', 'EASY LOVE LONG SLEEVE MINI DRESS', ' AND FLARED MIDI DRESS');
INSERT INTO `brans` VALUES ('10', 'imgaes/BRANDS/25.jpg', 'DISAYA', 'CATANLAN RICCO BURNOUT PRINTED FIT ', 'AND FLARED MIDI DRESS');
INSERT INTO `brans` VALUES ('11', 'imgaes/BRANDS/21.jpg', 'DISAYA', 'CELESTIAL ROMANCE RUFFLES SKIRT', ' ');
INSERT INTO `brans` VALUES ('12', 'imgaes/BRANDS/4.jpg', 'DISAYA', 'ETHEREAL REPRISE BRUSH DRESS', '    ');
INSERT INTO `brans` VALUES ('13', 'imgaes/BRANDS/9.jpg', 'DISAYA', 'FAMILIA REBELACE SLEEVELESS TOP ', '  ');
INSERT INTO `brans` VALUES ('14', 'imgaes/BRANDS/2.jpg', 'DISAYA', 'NAUTICAL NOUVEAU SEQUINS JACKET', '  ');
INSERT INTO `brans` VALUES ('15', 'imgaes/BRANDS/3.jpg', 'DISAYA', 'RASCHEL REFINE MID-CALF DRESS', '  ');
INSERT INTO `brans` VALUES ('16', 'imgaes/BRANDS/12.jpg', 'DISAYA', 'ROMANCE NOIR LONG SLEEVE DRESS', '  ');
INSERT INTO `brans` VALUES ('17', 'imgaes/BRANDS/19.jpg', 'DISAYA', 'TAILORED SAILOR CROPPED GUIPURE ', 'JACKET');
INSERT INTO `brans` VALUES ('18', 'imgaes/BRANDS/10.jpg', 'DISAYA', 'VOYAGE D’AMOUR CHIFFON JUMPSUIT', '  ');

-- ----------------------------
-- Table structure for styli
-- ----------------------------
DROP TABLE IF EXISTS `styli`;
CREATE TABLE `styli` (
  `id` int(11) NOT NULL auto_increment,
  `imggg` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of styli
-- ----------------------------
INSERT INTO `styli` VALUES ('1', 'imgaes/STYLISH/12.jpg');
INSERT INTO `styli` VALUES ('2', 'imgaes/STYLISH/4.jpg');
INSERT INTO `styli` VALUES ('3', 'imgaes/STYLISH/21.jpg');
INSERT INTO `styli` VALUES ('4', 'imgaes/STYLISH/15.jpg');
INSERT INTO `styli` VALUES ('5', 'imgaes/STYLISH/10.jpg');
INSERT INTO `styli` VALUES ('6', 'imgaes/STYLISH/6.jpg');
INSERT INTO `styli` VALUES ('7', 'imgaes/STYLISH/19.jpg');

-- ----------------------------
-- Table structure for stylis
-- ----------------------------
DROP TABLE IF EXISTS `stylis`;
CREATE TABLE `stylis` (
  `id` int(11) NOT NULL auto_increment,
  `imgg` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stylis
-- ----------------------------
INSERT INTO `stylis` VALUES ('1', 'imgaes/STYLISH/11.jpg');
INSERT INTO `stylis` VALUES ('2', 'imgaes/STYLISH/7.jpg');
INSERT INTO `stylis` VALUES ('3', 'imgaes/STYLISH/1.jpg');
INSERT INTO `stylis` VALUES ('4', 'imgaes/STYLISH/20.jpg');
INSERT INTO `stylis` VALUES ('5', 'imgaes/STYLISH/8.jpg');
INSERT INTO `stylis` VALUES ('6', 'imgaes/STYLISH/18.jpg');
INSERT INTO `stylis` VALUES ('7', 'imgaes/STYLISH/2.jpg');

-- ----------------------------
-- Table structure for stylish
-- ----------------------------
DROP TABLE IF EXISTS `stylish`;
CREATE TABLE `stylish` (
  `id` int(11) NOT NULL auto_increment,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stylish
-- ----------------------------
INSERT INTO `stylish` VALUES ('1', 'imgaes/STYLISH/13.jpg');
INSERT INTO `stylish` VALUES ('2', 'imgaes/STYLISH/16.jpg');
INSERT INTO `stylish` VALUES ('3', 'imgaes/STYLISH/9.jpg');
INSERT INTO `stylish` VALUES ('4', 'imgaes/STYLISH/3.jpg');
INSERT INTO `stylish` VALUES ('5', 'imgaes/STYLISH/14.jpg');
INSERT INTO `stylish` VALUES ('6', 'imgaes/STYLISH/17.jpg');
INSERT INTO `stylish` VALUES ('7', 'imgaes/STYLISH/5.jpg');

-- ----------------------------
-- Table structure for text
-- ----------------------------
DROP TABLE IF EXISTS `text`;
CREATE TABLE `text` (
  `id` int(11) NOT NULL auto_increment,
  `src` varchar(255) NOT NULL,
  `tiele` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of text
-- ----------------------------
INSERT INTO `text` VALUES ('1', 'MEO_COLLECTIVE', 'C/MEO COLLECTIVE');
INSERT INTO `text` VALUES ('2', 'KEEPSAKE', 'KEEPSAKE');
INSERT INTO `text` VALUES ('3', 'The_Fifth_Label', 'The Fifth Label');
INSERT INTO `text` VALUES ('4', 'FINDERS', 'FINDERS');
INSERT INTO `text` VALUES ('5', 'DISAVA', 'DISAVA');
INSERT INTO `text` VALUES ('6', 'FEW_MODA', 'FEW MODA');
INSERT INTO `text` VALUES ('7', 'GLAMOROUS', 'GLAMOROUS');
