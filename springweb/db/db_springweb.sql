/*
Navicat MySQL Data Transfer

Source Server         : cnx_local_mysql
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : db_springweb

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2015-09-16 22:49:28
*/

SET FOREIGN_KEY_CHECKS=0;


-- ----------------------------
-- Records of riesgos
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO ROLES VALUES ('1', 'ROLE_ADMIN');
INSERT INTO ROLES VALUES ('2', 'ROLE_USER');

-- ----------------------------
-- Records of usuariodetalle
-- ----------------------------

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  ID int(11)  NOT NULL AUTO_INCREMENT,
  NAME varchar(255) NOT NULL,
  PASSWORD varchar(255) NOT NULL,
  USERKEY varchar(15)  NULL,
  EMAIL varchar(255) NOT NULL,
  PRIMARY KEY (ID),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`) 
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO users VALUES ('1', 'angelricardo.uthh@gmail.com', '$2a$10$UTpjhhu3sdgTRamgPrcHoeO2zzPLDKhGqtYNdbV4J7YR7Xq/nABLG', NULL, 'angelricardo.uthh@gmail.com');
INSERT INTO users VALUES ('2', 'angelricardo.uthh2@gmail.com', '$2a$10$UTpjhhu3sdgTRamgPrcHoeO2zzPLDKhGqtYNdbV4J7YR7Xq/nABLG', NULL, 'hectorsaenz7@gmail.com');

-- ----------------------------
-- Table structure for usuariosroles
-- ----------------------------
DROP TABLE IF EXISTS `USERROLES`;
CREATE TABLE `USERROLES` (
  `IDROLE` int(11) NOT NULL,
  `IDUSER` int(11) NOT NULL,
  PRIMARY KEY (`IDROLE`,`IDUSER`),
  UNIQUE KEY `IDUSUARIO` (`IDUSER`),
  KEY `FK9D457698887593DB` (`IDROLE`),
  KEY `FK9D457698B5E7A019` (`IDUSER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuariosroles
-- ----------------------------
INSERT INTO USERROLES VALUES ('1', '1');
INSERT INTO USERROLES VALUES ('2', '2');
