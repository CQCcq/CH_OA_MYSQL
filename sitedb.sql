/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : sitedb

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 24/12/2020 10:21:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contenttype
-- ----------------------------
DROP TABLE IF EXISTS `contenttype`;
CREATE TABLE `contenttype`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE,
  INDEX `FKdjuq32rhd48nkqqfv829nskss`(`pid`) USING BTREE,
  CONSTRAINT `FKdjuq32rhd48nkqqfv829nskss` FOREIGN KEY (`pid`) REFERENCES `contenttype` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contenttype
-- ----------------------------
INSERT INTO `contenttype` VALUES (1, NULL, NULL, NULL);
INSERT INTO `contenttype` VALUES (2, '测试', 1, 1);
INSERT INTO `contenttype` VALUES (3, NULL, NULL, NULL);
INSERT INTO `contenttype` VALUES (4, '测试二', 1, 3);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userMobile` int(11) DEFAULT NULL,
  `userEmail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'check(e_mail like \'%@%\')',
  `userAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userStartTime` datetime(6) DEFAULT NULL,
  `userDescribe` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userGender` int(10) DEFAULT NULL,
  `userStatus` int(10) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`, `userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, '张敏', 1678901235, '11@6.com', '北京人', '2020-12-09 13:46:50.000000', '管理人员', 0, 1, 123345);
INSERT INTO `users` VALUES (7, '陈强', 1567891236, '66@6.com', '北京人', '2020-12-09 13:48:01.000000', '管理人员', 1, 1, 127853);
INSERT INTO `users` VALUES (8, '樊哙', 1458907458, '11@8.com', '河北人', '2020-12-09 13:49:14.000000', '管理人员', 1, 1, 82312);
INSERT INTO `users` VALUES (9, '王红', 1567891236, '11@9.com', '北京人', '2020-12-09 13:50:02.000000', '管理人员', 0, 1, 123434);
INSERT INTO `users` VALUES (10, '李悦', 1567890345, '11@10.com', '深圳人', '2020-12-09 13:51:37.000000', '管理人员', 0, 1, 95323);
INSERT INTO `users` VALUES (11, '江红', 1345678091, '11@11.com', '河南人', '2020-12-09 13:52:28.000000', '管理人员', 0, 1, 123234);
INSERT INTO `users` VALUES (12, '王璐', 1256783245, '11@12.com', '河川人', '2020-12-09 13:53:50.000000', '管理人员', 0, 1, 2342554);
INSERT INTO `users` VALUES (13, '刷新三观', 1222, '12313213', '1232132', '2012-12-12 00:08:08.000000', '啊啊十大', 1, 1, 453232);
INSERT INTO `users` VALUES (14, '123', 1222, '123', '123', '2012-12-12 00:08:08.000000', '1231232', 1, 1, 2342323);
INSERT INTO `users` VALUES (15, '李名士', 1222, '123123', '12313', '2012-12-12 00:08:08.000000', '12321312321', 1, 1, 234232);
INSERT INTO `users` VALUES (16, '李大力', 1222, '3123123', '12313', '2012-12-12 00:08:08.000000', '123123', 1, 1, 2343244);
INSERT INTO `users` VALUES (17, '新增数据', 1222, '123213', '12312', '2012-12-12 04:03:01.000000', '1231321', 1, 1, 1123435);
INSERT INTO `users` VALUES (18, '三件套', 1222, '123213', '12312', '2020-02-21 04:00:00.000000', '1231321', 1, 1, 123423);
INSERT INTO `users` VALUES (19, '王阳明', 1222, '213213', '123123123', '2020-12-15 04:00:00.000000', '21312321312', 1, 1, 123334);
INSERT INTO `users` VALUES (20, '123', 1222, '13123', '12312', '2020-12-15 16:00:00.000000', '12312312', 1, 1, 8656454);
INSERT INTO `users` VALUES (21, '12323', 123123, '13123', '12312', '2020-12-15 16:00:00.000000', '12312312', 1, 1, 6575545);
INSERT INTO `users` VALUES (22, '不要出错', 1231312, '123123', '1231', '2020-12-19 16:00:00.000000', '1231232131', 1, 1, 79058314);

SET FOREIGN_KEY_CHECKS = 1;
