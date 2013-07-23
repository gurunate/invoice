/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : invoice

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-07-22 19:17:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `state_cd` varchar(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `modify_by` int(10) NOT NULL,
  `modify_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `create_by` int(10) NOT NULL,
  `create_dt` datetime NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_contact`
-- ----------------------------
DROP TABLE IF EXISTS `customer_contact`;
CREATE TABLE `customer_contact` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `modify_by` int(10) NOT NULL,
  `modify_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `create_by` int(10) NOT NULL,
  `create_dt` datetime NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`contact_id`),
  KEY `cust_id2` (`customer_id`),
  CONSTRAINT `cust_id2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `invoice`
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `invoice_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_dt` date NOT NULL,
  `payment_due` date DEFAULT NULL,
  `status_cd` varchar(20) NOT NULL DEFAULT '''PEND''',
  `notes` text,
  `modify_by` int(10) NOT NULL,
  `modify_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `create_by` int(10) NOT NULL,
  `create_dt` datetime NOT NULL,
  `active` enum('No','Yes') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`invoice_id`),
  KEY `cust_id` (`customer_id`),
  CONSTRAINT `cust_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of invoice
-- ----------------------------
