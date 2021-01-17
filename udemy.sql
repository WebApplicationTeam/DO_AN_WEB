/*
 Navicat Premium Data Transfer

 Source Server         : Duc Hao
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : udemy

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 17/01/2021 15:40:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `permission` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'duchao111', '$2a$12$43Io6BqLuOx0YD07LJQXf.q8kIRyOJd7UBECRYUfNWvOg6Lh.vwme', 'Háº£o', 'duchao3003@gmail.com', '2021-06-17', 0);
INSERT INTO `users` VALUES (4, 'hoanglong', '$2a$12$zFyC7K6EvDm.AwPhqZwavOYtVxifx7EnRx0EdjtmCjazrbCzxnjRa', 'HoÃ ng Long', 'long@gmail.com', '2000-09-19', 0);
INSERT INTO `users` VALUES (5, 'phuctran', '$2a$12$7jRhxR149mR1L.ap6wrNPe8s5jPrlJsiQ9ln32o6E.qD6GgSDoo4u', 'Phúc', 'phuc@gmail.com', '2021-01-17', 0);

SET FOREIGN_KEY_CHECKS = 1;
