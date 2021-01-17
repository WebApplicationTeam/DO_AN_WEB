/*
 Navicat Premium Data Transfer

 Source Server         : udemy
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : udemy

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 18/01/2021 00:33:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '=username',
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `rating` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `course_id` int(11) NOT NULL,
  `chapter` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`session`, `chapter`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `course-tiny_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `course_full_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `course_price` int(50) NOT NULL,
  `course_cat_id` int(255) NULL DEFAULT NULL,
  `course_part` int(255) NULL DEFAULT NULL COMMENT 'participant',
  `teacher_id` int(255) NULL DEFAULT NULL,
  `complete` bit(1) NULL DEFAULT NULL COMMENT 'đánh dấu khóa học đã hoàn thành',
  `last_upt` date NULL DEFAULT NULL COMMENT 'ngày cập nhật khóa học cuối cùng',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for register_course
-- ----------------------------
DROP TABLE IF EXISTS `register_course`;
CREATE TABLE `register_course`  (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `permission` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'duchao111', '$2a$12$43Io6BqLuOx0YD07LJQXf.q8kIRyOJd7UBECRYUfNWvOg6Lh.vwme', 'Háº£o', 'duchao3003@gmail.com', '2021-06-17', 0);
INSERT INTO `users` VALUES (4, 'hoanglong', '$2a$12$zFyC7K6EvDm.AwPhqZwavOYtVxifx7EnRx0EdjtmCjazrbCzxnjRa', 'HoÃ ng Long', 'long@gmail.com', '2000-09-19', 0);
INSERT INTO `users` VALUES (5, 'phuctran', '$2a$12$7jRhxR149mR1L.ap6wrNPe8s5jPrlJsiQ9ln32o6E.qD6GgSDoo4u', 'Phúc', 'phuc@gmail.com', '2021-01-17', 0);

-- ----------------------------
-- Table structure for wish_list
-- ----------------------------
DROP TABLE IF EXISTS `wish_list`;
CREATE TABLE `wish_list`  (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`, `student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
