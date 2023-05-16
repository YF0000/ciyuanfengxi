/*
 Navicat Premium Data Transfer

 Source Server         : ciyuanfengxi
 Source Server Type    : MySQL
 Source Server Version : 50739
 Source Host           : localhost:3306
 Source Schema         : ciyuan

 Target Server Type    : MySQL
 Target Server Version : 50739
 File Encoding         : 65001

 Date: 16/05/2023 10:37:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for huifu
-- ----------------------------
DROP TABLE IF EXISTS `huifu`;
CREATE TABLE `huifu`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `useId` int(255) NOT NULL COMMENT 'userId',
  `pingLunId` int(255) NOT NULL COMMENT '评论id',
  `huiFuId` int(255) NOT NULL COMMENT '回复评论的id',
  `huiFuZan` int(255) NOT NULL DEFAULT 0 COMMENT '回复赞数',
  `huiFu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '回复内容',
  `huiFuTime` date NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huifu
-- ----------------------------

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `postId` int(255) NULL DEFAULT NULL COMMENT '帖子id',
  `userId` int(255) NULL DEFAULT NULL COMMENT '用户id',
  `pingLunZan` int(255) NULL DEFAULT 0 COMMENT '评论点赞数',
  `pingLunContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `pingLunTime` date NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinglun
-- ----------------------------

-- ----------------------------
-- Table structure for postings
-- ----------------------------
DROP TABLE IF EXISTS `postings`;
CREATE TABLE `postings`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '帖子id',
  `post_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `post_content` varchar(9999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '帖子内容',
  `post_time` date NULL DEFAULT NULL COMMENT '帖子创建时间',
  `post_zan` int(255) NOT NULL DEFAULT 0 COMMENT '帖子赞数',
  `post_cover_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '帖子封面路径',
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of postings
-- ----------------------------
INSERT INTO `postings` VALUES (1, '这是一个测试', 'ceshi', NULL, 0, 'https://files.catbox.moe/w9otna.gif', NULL);
INSERT INTO `postings` VALUES (2, '测试2', '测试', NULL, 0, 'https://files.catbox.moe/s1b18j.jpg', NULL);
INSERT INTO `postings` VALUES (3, '测试3', 'ceshi', NULL, 0, NULL, NULL);
INSERT INTO `postings` VALUES (4, '测试4', '测试', NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uId` int(255) NOT NULL COMMENT '用户账号',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `passWord` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户密码',
  `userImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
