/*
 Navicat Premium Data Transfer

 Source Server         : Localhost PHP 7
 Source Server Type    : MySQL
 Source Server Version : 100137 (10.1.37-MariaDB)
 Source Host           : localhost:3307
 Source Schema         : db_moviecatalog

 Target Server Type    : MySQL
 Target Server Version : 100137 (10.1.37-MariaDB)
 File Encoding         : 65001

 Date: 12/01/2023 00:13:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alus_g
-- ----------------------------
DROP TABLE IF EXISTS `alus_g`;
CREATE TABLE `alus_g`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of alus_g
-- ----------------------------
INSERT INTO `alus_g` VALUES (1, 'admin', 'testaa');

-- ----------------------------
-- Table structure for alus_gd
-- ----------------------------
DROP TABLE IF EXISTS `alus_gd`;
CREATE TABLE `alus_gd`  (
  `agd_id` int NOT NULL AUTO_INCREMENT,
  `ag_id` int NULL DEFAULT NULL,
  `enabled` int NULL DEFAULT NULL,
  `table_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `table_is_filter` int NULL DEFAULT NULL,
  `table_where` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `table_filter` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`agd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of alus_gd
-- ----------------------------
INSERT INTO `alus_gd` VALUES (1, 1, 1, 'Test Maul', NULL, NULL, '+1++2++3++5++7+');
INSERT INTO `alus_gd` VALUES (2, 2, 1, 'tesst', NULL, NULL, '+24+');
INSERT INTO `alus_gd` VALUES (4, 14, 1, 'teest', NULL, NULL, '+1+');
INSERT INTO `alus_gd` VALUES (5, 15, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (6, 28, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (7, 17, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (8, 16, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (9, 27, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (10, 30, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (11, 29, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (12, 21, 1, 'Ma', NULL, NULL, '+2++10+');
INSERT INTO `alus_gd` VALUES (13, 20, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (14, 22, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (15, 31, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (17, 24, 1, 'teest', NULL, NULL, '+49++50++51+');
INSERT INTO `alus_gd` VALUES (18, 25, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (19, 26, 1, 'teest', NULL, NULL, '+5+');
INSERT INTO `alus_gd` VALUES (20, 18, 1, 'teest', NULL, NULL, '+3+');
INSERT INTO `alus_gd` VALUES (21, 23, 1, 'teest', NULL, NULL, '+234+');
INSERT INTO `alus_gd` VALUES (22, 33, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (23, 34, 1, 'teest', NULL, NULL, NULL);
INSERT INTO `alus_gd` VALUES (25, 88, 1, 'Tables', NULL, NULL, '+1++5++49++50+');
INSERT INTO `alus_gd` VALUES (26, 89, 1, 'Tables', NULL, NULL, '+5+');
INSERT INTO `alus_gd` VALUES (27, 86, 1, 'maulanaaaaa', NULL, NULL, '+1+');

-- ----------------------------
-- Table structure for alus_la
-- ----------------------------
DROP TABLE IF EXISTS `alus_la`;
CREATE TABLE `alus_la`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of alus_la
-- ----------------------------

-- ----------------------------
-- Table structure for alus_mg
-- ----------------------------
DROP TABLE IF EXISTS `alus_mg`;
CREATE TABLE `alus_mg`  (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_parent` int NOT NULL,
  `menu_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_icon` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of alus_mg
-- ----------------------------
INSERT INTO `alus_mg` VALUES (11, 30, 'Menus', 'menus', '', 'fa fa-bars fa-fw', 1);
INSERT INTO `alus_mg` VALUES (12, 30, 'Group', 'group', '', 'fa fa-book fa-fw', 2);
INSERT INTO `alus_mg` VALUES (13, 30, 'User', 'users', '', 'fa fa-book fa-fw', 3);
INSERT INTO `alus_mg` VALUES (30, 0, 'Master', '#', '', 'fa fa-bars fa-fw', 1);
INSERT INTO `alus_mg` VALUES (80, 0, 'Kategori Film', 'data_kategori_film', '', 'fa fa-bookmark fa-fw', 1);
INSERT INTO `alus_mg` VALUES (81, 0, 'Film', 'data_film', '', 'fa fa-database fa-fw', 2);
INSERT INTO `alus_mg` VALUES (82, 0, 'Komentar', 'data_comments', '', 'fa fa-comments fa-fw', 3);
INSERT INTO `alus_mg` VALUES (83, 0, 'Review', 'data_reviews', '', 'fa fa-star-half-empty fa-', 4);

-- ----------------------------
-- Table structure for alus_mga
-- ----------------------------
DROP TABLE IF EXISTS `alus_mga`;
CREATE TABLE `alus_mga`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_group` mediumint UNSIGNED NOT NULL,
  `id_menu` int NOT NULL,
  `can_view` int NULL DEFAULT NULL,
  `can_edit` int NOT NULL DEFAULT 0,
  `can_add` int NOT NULL DEFAULT 0,
  `can_delete` int NOT NULL DEFAULT 0,
  `psv` datetime NULL DEFAULT NULL,
  `pev` datetime NULL DEFAULT NULL,
  `psed` datetime NULL DEFAULT NULL,
  `peed` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_groups_deleted`(`id_group` ASC) USING BTREE,
  INDEX `fk_menu_deleted`(`id_menu` ASC) USING BTREE,
  CONSTRAINT `alus_mga_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `alus_g` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `alus_mga_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `alus_mg` (`menu_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3876 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of alus_mga
-- ----------------------------
INSERT INTO `alus_mga` VALUES (3357, 10, 11, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3358, 10, 12, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3359, 10, 13, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3366, 10, 30, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3685, 9, 11, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3686, 9, 30, 1, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3687, 9, 12, 1, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3688, 9, 13, 1, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `alus_mga` VALUES (3868, 1, 30, 1, 0, 0, 0, '2016-09-06 10:55:00', '2016-09-06 10:56:00', '2016-08-08 12:06:00', '2016-08-08 12:06:00');
INSERT INTO `alus_mga` VALUES (3869, 1, 11, 1, 1, 1, 1, '2016-09-06 10:55:00', '2016-09-06 10:55:00', '2016-08-08 12:06:00', '2016-08-09 13:50:00');
INSERT INTO `alus_mga` VALUES (3870, 1, 12, 1, 1, 1, 1, '2016-09-06 10:55:00', '2016-09-06 10:55:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00');
INSERT INTO `alus_mga` VALUES (3871, 1, 13, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00');
INSERT INTO `alus_mga` VALUES (3872, 1, 80, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00');
INSERT INTO `alus_mga` VALUES (3873, 1, 81, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00');
INSERT INTO `alus_mga` VALUES (3874, 1, 82, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00');
INSERT INTO `alus_mga` VALUES (3875, 1, 83, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00');

-- ----------------------------
-- Table structure for alus_u
-- ----------------------------
DROP TABLE IF EXISTS `alus_u`;
CREATE TABLE `alus_u`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `abc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ghi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `def` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mno` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jkl` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu` int UNSIGNED NULL DEFAULT NULL,
  `pqr` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_on` int UNSIGNED NOT NULL,
  `last_login` int UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ht` int NULL DEFAULT 0,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mdo_id` int NULL DEFAULT NULL,
  `mos_id` int NULL DEFAULT NULL,
  `grup_type` int NULL DEFAULT NULL,
  `bpd_id` int NULL DEFAULT NULL,
  `bpd_id_2` int NULL DEFAULT NULL,
  `staff_pmk_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_users_idx1`(`id` ASC) USING BTREE,
  INDEX `sys_users_idx2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of alus_u
-- ----------------------------
INSERT INTO `alus_u` VALUES (64, 'admins', 'admins', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+5Kixew57njDPeg==', '::1', '$2y$08$.sbsuXatbF/d4/RvUy77GeeX/Nw48XoXXS/3Xurj7O/ujoQu3KGzK', 'xEfWFClsAdO4BnNm', '', '', NULL, '', 1469523580, 1673449210, 1, 'User', '', '', '11', 0, '1496118042.jpg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (65, 'BAGIAN PERLENGKAPAN', 'BAGIAN PERLENGKAPAN', 'MTIzNDU2Nzg5MDEyMzQ1NsGuoJM/yqy8eAN68DTNdlID3W0pjA==', '::1', '$2y$08$JoKZ4fv6BkH5WTWLwW9IfulZAbwPRhawSu5/basXlOukNzemXJuqS', 'Ih49EoG2nF0Zt38O', NULL, NULL, NULL, NULL, 1542868077, 1550670091, 1, 'BAGIAN PERLENGKAPAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (66, 'DINAS PENDIDIKAN', 'DINAS PENDIDIKAN', 'MTIzNDU2Nzg5MDEyMzQ1Nv2quZ4/3a+0fSdy3TLJexUMnGM=', '::1', '$2y$08$VUKn/N/Oz3h/8IB7somj3ODzqJ3cGYVnLbUw/QESB9MVhCV.zeInG', 'Qoc9aAIiYkGjg9IZ', NULL, NULL, NULL, NULL, 1542868087, 1550991198, 1, 'DINAS PENDIDIKAN', '', NULL, '0', 0, 'avatar_default.png', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (67, 'KECAMATAN KAYAN HULU', 'KECAMATAN KAYAN HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nva5/Iwiy6i5IlBV1z7BfldBkGEr', '::1', '$2y$08$amSFXmE4w705SSYY562IM.wr5fvtERPp7sXIFyi04MgZVY2rEhMXS', 'rrptJbn3YVDGJGOF', NULL, NULL, NULL, NULL, 1542868107, 1549440969, 1, 'KECAMATAN KAYAN HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (68, 'KECAMATAN MALINAU SELATAN HULU', 'KECAMATAN MALINAU SELATAN HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqlppk5z7y8ckkjghPHeloGnyAljoA=', '::1', '$2y$08$54yXxiB4w4TpZrfS8E4k2.8h24NaIjW9txSJQJ5lTnpmT9b.Rbqpi', 'Ftr/Tmqyey/I30FI', NULL, NULL, NULL, NULL, 1542868115, 1551275597, 1, 'KECAMATAN MALINAU SELATAN HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (69, 'KECAMATAN MALINAU KOTA', 'KECAMATAN MALINAU KOTA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqlppk5z7y8cidy3TLJexUMnGM=', '::1', '$2y$08$El7EPObwt.3SXLXC/Ra/Pe038PDY5nrJWQJ0Ol8H9dwGC.rU45Ed6', '60TGEWENwJbU2E.t', NULL, NULL, NULL, NULL, 1542868123, 1549271960, 1, 'KECAMATAN MALINAU KOTA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (70, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH DAN LITBANG', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH DAN LITBANG', 'MTIzNDU2Nzg5MDEyMzQ1Nvqlppk5z7y8ckkn8DTNdlID3W0pjA==', '::1', '$2y$08$rxv1uLfYNkY6rsWG1FUF0eO5ai0o0b/yahX1H1cgxKRmRyCVGkKJ6', 'nZnOhCQn1ho5dbWZ', NULL, NULL, NULL, NULL, 1542868130, NULL, 1, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH DAN LITBANG', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (71, 'DINAS PERHUBUNGAN', 'DINAS PERHUBUNGAN', 'MTIzNDU2Nzg5MDEyMzQ1NuuqvJsjzb2wcRJn1T3gcFYOmmJogoKq', '::1', '$2y$08$/KMY9ZSiaLqSNvbQ60A.Gu.pNmuM.rQMm6y5Fa6pgGz2xTNi/6bUu', 'UHVMoXEIQ1Jdlkc/', NULL, NULL, NULL, NULL, 1542868139, NULL, 1, 'DINAS PERHUBUNGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 7, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (72, 'BAGIAN PEMBANGUNAN', 'BAGIAN PEMBANGUNAN', 'MTIzNDU2Nzg5MDEyMzQ1NsGuoJM/yqy8eAN68DTNdlID3W0pjA==', '::1', '$2y$08$Drr9MvhHhfK.mbZoJpmHgOGT2V358Y/XYbadXbqBiTBXKHGOgb68i', 'lMsDc82.X6.iY6ni', NULL, NULL, NULL, NULL, 1542868147, NULL, 1, 'BAGIAN PEMBANGUNAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 8, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (73, 'SEKRETARIAT DPRD', 'SEKRETARIAT DPRD', 'MTIzNDU2Nzg5MDEyMzQ1NvGut4oj0buwfVYhg33KdXsOl3wnjIyuxGBuHcI=', '::1', '$2y$08$1HRiU7/MXyYi4HGQtRlsReLbmyYbmRJVQ6WBPNp1ZCLRGmWVBp.c6', 'V.h09FO10yyZpodC', NULL, NULL, NULL, NULL, 1542868153, NULL, 1, 'SEKRETARIAT DPRD', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 9, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (74, 'BAGIAN ORGANISASI', 'BAGIAN ORGANISASI', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ZFbbTqozjtTDp0L4xJAPPen6cBfKf9F.0PSTjVLhM8a/.tNnpgX4q', 'SSH8uLPH3S1ocJ9x', NULL, NULL, NULL, NULL, 1542868160, 1549447873, 1, 'BAGIAN ORGANISASI', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 10, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (75, 'BAGIAN PENGADAAN BARANG DAN JASA', 'BAGIAN PENGADAAN BARANG DAN JASA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ROEnxItEW6Q/Qe4YAn6QuudF6PLNnTsAg5gjkgmQVNvaIs8cusRQG', 'E4/B7vlEUGSBt/9n', NULL, NULL, NULL, NULL, 1542868167, 1549440721, 1, 'BAGIAN PENGADAAN BARANG DAN JASA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 11, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (76, 'BAGIAN PENGELOLAAN PERBATASAN NEGARA', 'BAGIAN PENGELOLAAN PERBATASAN NEGARA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$gVBcpIGUsBXQXAop6ZbhnO0wkhm4grqUsikYbNzTubdRpsZsVml9i', 'ywaxdj2lO0vyjt5f', NULL, NULL, NULL, NULL, 1542868175, NULL, 1, 'BAGIAN PENGELOLAAN PERBATASAN NEGARA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (79, 'DINAS PERIKANAN', 'DINAS PERIKANAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$0IY0nl2KkJMVOxNBo.rpTeTDMWI.7oN6XOp2gKqyZ.PG4EzBUMun2', 'ump1Cg244ldPc4np', NULL, NULL, NULL, NULL, 1542868195, NULL, 1, 'DINAS PERIKANAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 15, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (80, 'DINAS PERTANIAN', 'DINAS PERTANIAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$DQHmsH7zE6xJtd29MauosunPBgqGN2fml8Kn0JMBxrUhSC9gODKSq', 'm/vUH.JoDbyuWmsX', NULL, NULL, NULL, NULL, 1542868201, NULL, 1, 'DINAS PERTANIAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 16, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (81, 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$AOnWtOtLE9C2kgvmIjZJJeAQPzsy6wUKYzZK14Vnvt7leqcuABjX2', 'KfwQDwpJFcsNEnHH', NULL, NULL, NULL, NULL, 1542868208, NULL, 1, 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 17, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (82, 'DINAS KEBUDAYAAN DAN PARIWISATA', 'DINAS KEBUDAYAAN DAN PARIWISATA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ivq3p0FOZP4/vi6kxtYc4ebkKmx3ZPzZa2qzcAXxCF51FPA6wlIz6', 'Hk6r0krOfpMlJQww', NULL, NULL, NULL, NULL, 1542868214, NULL, 1, 'DINAS KEBUDAYAAN DAN PARIWISATA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 18, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (83, 'DINAS KEPEMUDAAN DAN OLAHRAGA', 'DINAS KEPEMUDAAN DAN OLAHRAGA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkLyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$R/fA./V3uYPh2xLWLAC0Zedo3Fr/SRSZZNxfW1shSdYvBWOjX5xrK', 'DMIbULsgw0Cd71wb', NULL, NULL, NULL, NULL, 1542868221, NULL, 1, 'DINAS KEPEMUDAAN DAN OLAHRAGA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 19, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (84, 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$1sTxGiMpQ/0C1KkU3LHbl.frJhweq1zNzA4bRaEFNRRAWp0AVZ8FK', '00k2AC7bWZWFhzE6', NULL, NULL, NULL, NULL, 1542868234, NULL, 1, 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', '', NULL, '0', 0, 'avatar_default.png', NULL, 20, NULL, NULL, NULL, 11);
INSERT INTO `alus_u` VALUES (85, 'BAGIAN TATA PEMERINTAHAN', 'BAGIAN TATA PEMERINTAHAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$.BDVTDqvas.GZO.l2HLxY.qSUrLwqvYKhOsYdFxPN8fQx39TX2.a6', 'ul0s6PLnTxEx41E2', NULL, NULL, NULL, NULL, 1542868262, NULL, 1, 'BAGIAN TATA PEMERINTAHAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 21, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (86, 'DINAS PEKERJAAN UMUM, PENATAAN RUANG, PERUMAHAN DAN KAWASAN PEMUKIMAN', 'DINAS PEKERJAAN UMUM, PENATAAN RUANG, PERUMAHAN DA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$BKgKiiPmmLn.DO4P.TyOrObIK1W6dvSFiU5NQfbw.zQ5SysDqp1Fy', 'flkveMiVlkIYUuGJ', NULL, NULL, NULL, NULL, 1542868271, NULL, 1, 'DINAS PEKERJAAN UMUM, PENATAAN RUANG, PERUMAHAN DA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 22, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (87, 'BADAN SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAKARAN', 'BADAN SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAK', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$x.5JfLsBq1G/SBASCV4QROlZvvGJhCcRdJ9fZ4vAqov7eKln6iRk6', '9XDKlgf/4zdQTV1y', NULL, NULL, NULL, NULL, 1542868282, NULL, 1, 'BADAN SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAK', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 23, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (88, 'BADAN KESATUAN BANGSA DAN POLITIK', 'BADAN KESATUAN BANGSA DAN POLITIK', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$VvC4T1V4iZbnc6qPviK94OXUk9eFX9XYMWHsfEEqkQcgApC6dYs0a', 'umkKYV4x1afVmu.8', NULL, NULL, NULL, NULL, 1542868343, NULL, 1, 'BADAN KESATUAN BANGSA DAN POLITIK', '', NULL, '0', 0, 'avatar_default.png', NULL, 24, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (89, 'DINAS KETAHANAN PANGAN', 'DINAS KETAHANAN PANGAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$bSzkJcLMD8wcD9WvDwcnR.y3gtV.tmVf6QzPOld.zxDqC1NHQvNx.', 'yXGdAECGARwCxUer', NULL, NULL, NULL, NULL, 1542868359, NULL, 1, 'DINAS KETAHANAN PANGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 25, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (90, 'DINAS LINGKUNGAN HIDUP', 'DINAS LINGKUNGAN HIDUP', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$zfF8fYPmWJWXOgl7o4Ng3.m3iSLK7DCHKFbCNci0kbShDMYljrQ7S', 'CQvIrGTk/.1hhglm', NULL, NULL, NULL, NULL, 1542868370, NULL, 1, 'DINAS LINGKUNGAN HIDUP', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (91, 'DINAS KOMUNIKASI DAN INFORMATIKA', 'DINAS KOMUNIKASI DAN INFORMATIKA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$wj1DM4xogVCf/mPzU5054uUxwBhjF9sByjY.gLEIhYo8RhAMEgvY2', 'oUe.j.CXcGZtxfhX', NULL, NULL, NULL, NULL, 1542868381, NULL, 1, 'DINAS KOMUNIKASI DAN INFORMATIKA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 27, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (92, 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK DAN SOSIAL', 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK DA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$O.BepJnMjdf34wthDVp3X.GkVXkzyWwOt8L3ZKHuDHPqYd7jCjWkm', 'Sg0zS/LEL1CHLTzd', NULL, NULL, NULL, NULL, 1542868391, NULL, 1, 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK DA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 28, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (93, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnLyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$znw3goPM9pnMUmpxw/qP1OOgaKk4VC/yzFnBjYtIOY2WbNKmJud4y', '17N73VZ2I3Rn3.rd', NULL, NULL, NULL, NULL, 1542868409, NULL, 1, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 29, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (94, 'DINAS PENANAMAN MODAL, PELAYANAN TERPADU SATU PINTU DAN TENAGA KERJA', 'DINAS PENANAMAN MODAL, PELAYANAN TERPADU SATU PINT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$OythoUmfSuJtqq4wyQX6sOhTSgnz5xmIr9MMnwTyf8lA598MF.Exy', 'Wc01LUHcCerdrPyO', NULL, NULL, NULL, NULL, 1542868416, NULL, 1, 'DINAS PENANAMAN MODAL, PELAYANAN TERPADU SATU PINT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 30, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (95, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$NEM0qS9YsaVAKAkXhTQgfevwrXyNKndk08HZOOvCgd3orIaUXzNcW', 'h80dJ/KkQYQeH9CN', NULL, NULL, NULL, NULL, 1542868423, NULL, 1, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 31, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (96, 'BAGIAN EKONOMI', 'BAGIAN EKONOMI', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$2jWtOqgBvOkuX2/OgC9Eo..jiJIrAE9ZvNNDmDIgjgO73Up0blPYS', 'TN0NGU98MIG8wno/', NULL, NULL, NULL, NULL, 1542868432, NULL, 1, 'BAGIAN EKONOMI', '', NULL, '0', 0, 'avatar_default.png', NULL, 32, NULL, NULL, NULL, 11);
INSERT INTO `alus_u` VALUES (97, 'BAGIAN HUKUM', 'BAGIAN HUKUM', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$HJ.ljNJqV8BIxOkT3VylXO97.FOwzh6DWJ5ldDUR8ZZUX.fClZhf.', 'LCYj.c2Mya1PSnl5', NULL, NULL, NULL, NULL, 1542868440, NULL, 1, 'BAGIAN HUKUM', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 33, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (98, 'BAGIAN HUMAS DAN PROTOKOL', 'BAGIAN HUMAS DAN PROTOKOL', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$/1AvCTjQiRedBsTzc/aqBuVhIatGD2p13541Emx2CZoDXyP/r186u', 'AUWGK58J0Gjbr6KO', NULL, NULL, NULL, NULL, 1542868447, NULL, 1, 'BAGIAN HUMAS DAN PROTOKOL', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 34, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (99, 'INSPEKTORAT', 'INSPEKTORAT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$WlqpnJ6EwAHs.PJ0q9deoOQa88T3pLVyqHoFZnoxPEYKuNEc6Vmay', 'pIYTiZ3kZYZ8h8hf', NULL, NULL, NULL, NULL, 1542868455, NULL, 1, 'INSPEKTORAT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 35, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (100, 'SEKRETARIAT KORPRI', 'SEKRETARIAT KORPRI', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$Aotlhss7LXzzizLSL4MoPuaX5PkO7NfMb3h4fzYHAJZXcU.0BUjZS', 'swwMvJxq5GGKALBC', NULL, NULL, NULL, NULL, 1542868463, NULL, 1, 'SEKRETARIAT KORPRI', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 36, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (101, 'DINAS PERPUSTAKAAN DAN KEARSIPAN DAERAH', 'DINAS PERPUSTAKAAN DAN KEARSIPAN DAERAH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$Jy9lXjAxawk6aUrrVtXjQelD9LHDDMCfAfK9ac5Kera2d5FK9hiLS', 'WYp8BxWd5OaKaYDy', NULL, NULL, NULL, NULL, 1542868469, 1551275562, 1, 'DINAS PERPUSTAKAAN DAN KEARSIPAN DAERAH', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 37, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (102, 'BADAN PENGELOLA KEUANGAN DAERAH', 'BADAN PENGELOLA KEUANGAN DAERAH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ZS6h33lajAZAOkY.DO5.TupwYP.TzxylIA6plz1Tts5zd1aJhZ2tm', '74VeV4Lv8XixiIHJ', NULL, NULL, NULL, NULL, 1542868476, NULL, 1, 'BADAN PENGELOLA KEUANGAN DAERAH', '', NULL, '0', 0, 'avatar_default.png', NULL, 38, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (104, 'DINAS KESEHATAN, PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', 'DINAS KESEHATAN, PENGENDALIAN PENDUDUK DAN KELUARG', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$R/H2SKoGU.RC1DI5SjDvBOH82iWrv1yhuioerd1LmX39LhCQ2XlF6', '5K3KZUZQS.ym0VPj', NULL, NULL, NULL, NULL, 1542868525, NULL, 1, 'DINAS KESEHATAN, PENGENDALIAN PENDUDUK DAN KELUARG', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 39, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (105, 'BADAN PENANGGULANGAN BENCANA DAERAH', 'BADAN PENANGGULANGAN BENCANA DAERAH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$KtxQ9aH0ZcBayXqIuBJfxuc6cBtSmgQJx8R6vk6pdtl2Jy8n..csm', 'SXX0oB7pWW5UoneL', NULL, NULL, NULL, NULL, 1542868531, NULL, 1, 'BADAN PENANGGULANGAN BENCANA DAERAH', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 40, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (106, 'BAGIAN UMUM', 'BAGIAN UMUM', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$IB9xLxRK8sK4woRk1EU0Y.kZLPcUPoGag40tmp3Qd8kSR4NQvLyTC', 'PVIY9d4vxslZlxfG', NULL, NULL, NULL, NULL, 1542868538, NULL, 1, 'BAGIAN UMUM', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 41, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (107, 'KECAMATAN MENTARANG', 'KECAMATAN MENTARANG', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$iW5Ns.EpVPu2v5x5oSBi3e1s4rpwaLk1.SzrYGaqzXgl5Qu1Jdlgq', 'eWYHreUlwLuY/UQa', NULL, NULL, NULL, NULL, 1542868549, NULL, 1, 'KECAMATAN MENTARANG', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 42, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (108, 'KECAMATAN MALINAU UTARA', 'KECAMATAN MALINAU UTARA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$AWWhTSH7ooH2Iq07QkbJg.Q5SCCrcg/XwkpE7JYG9Gd65YTrWeLkW', 'dOHgt9xCDrpnnsyR', NULL, NULL, NULL, NULL, 1542868556, NULL, 1, 'KECAMATAN MALINAU UTARA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 43, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (109, 'KECAMATAN SUNGAI BOH', 'KECAMATAN SUNGAI BOH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$pfZT3o.nSaQt.9QwtuG8BuivORQ1FSz9zalR9abKgAejACm0B8TgK', 'kTlvINYpqur.6i5u', NULL, NULL, NULL, NULL, 1542868565, NULL, 1, 'KECAMATAN SUNGAI BOH', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 44, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (110, 'KECAMATAN BAHAU HULU', 'KECAMATAN BAHAU HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$IvXDeLYUz.LP5BB.OjmKk.IVoRZ6gD4deykrN0UoMsbPK6InGLk5C', 'sVkZXp038wloNSoU', NULL, NULL, NULL, NULL, 1542868583, NULL, 1, 'KECAMATAN BAHAU HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 45, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (111, 'KECAMATAN MALINAU BARAT', 'KECAMATAN MALINAU BARAT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ejeDvgtEHd9qhANiyaQQjuxdeM/iWr8xlbcS.7Yy52gV4OMGb/HTW', 'cSrBKWYww3v2iKFh', NULL, NULL, NULL, NULL, 1542868591, NULL, 1, 'KECAMATAN MALINAU BARAT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 46, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (112, 'KECAMATAN MALINAU SELATAN', 'KECAMATAN MALINAU SELATAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$B/8SFxgjdcxSuAMyFVcY5.TXW6Fo8He.ebV7UPH2pYzWRQNxo/3xq', 'Kf7Uy0PttuWeiJCt', NULL, NULL, NULL, NULL, 1542868599, NULL, 1, 'KECAMATAN MALINAU SELATAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 47, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (113, 'KECAMATAN MENTARANG HULU', 'KECAMATAN MENTARANG HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhLyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$RHAptJ3iHUpA2jZF42mMz.uE.8ESrJjm4U0osA90GreZCSyg//jVK', 'x9o48pPoBaYKvCfy', NULL, NULL, NULL, NULL, 1542868609, NULL, 1, 'KECAMATAN MENTARANG HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 48, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (114, 'KECAMATAN PUJUNGAN', 'KECAMATAN PUJUNGAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJid40T/JeVoa3Wkpz4Sj', ' ', '$2y$08$GZ5ZLGrz8hD14lHfI1FCZe8mjNMK62qzYxNDCbkU1b/JLk7JvSebi', 't4J7xSm.XOc3AAPZ', NULL, NULL, NULL, NULL, 1542868617, NULL, 1, 'KECAMATAN PUJUNGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 49, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (115, 'KECAMATAN KAYAN HILIR', 'KECAMATAN KAYAN HILIR', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$7a5zc37Kx0NWBi2FvfFMheQ8k1tquwmgtpLe8GjLZxBJ5EeF/Krme', 'jIHOJM2UcRmSEklK', NULL, NULL, NULL, NULL, 1542868625, NULL, 1, 'KECAMATAN KAYAN HILIR', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 50, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (116, 'KECAMATAN KAYAN SELATAN', 'KECAMATAN KAYAN SELATAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$yZk0.afzayg9f/p82OfdkOOV8pKXefAoQKKwstppRdLLUBg7ZK2Cm', 'A.rcO02QCognqnL3', NULL, NULL, NULL, NULL, 1542868633, NULL, 1, 'KECAMATAN KAYAN SELATAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 51, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (117, 'KECAMATAN SUNGAI TUBU', 'KECAMATAN SUNGAI TUBU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$xnnKZRlHPnMFktMj6bS1N.zMVpi.b.9CZLdjKMFxgbJVPy9xZC7na', 'GqQ/ZSi/6l3u.lJP', NULL, NULL, NULL, NULL, 1542868640, NULL, 1, 'KECAMATAN SUNGAI TUBU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 52, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (118, 'KECAMATAN MALINAU SELATAN HILIR', 'KECAMATAN MALINAU SELATAN HILIR', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$zfxrHhr9tfi0gULYJkdrIutoMjQ0FwBtiSXA7WzrcJOd6cvadkOs2', 'MnOjvwLzGdWzh8xU', NULL, NULL, NULL, NULL, 1542868647, NULL, 1, 'KECAMATAN MALINAU SELATAN HILIR', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 53, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (119, 'PERWAKILAN KECAMATAN LONG SULE', 'PERWAKILAN KECAMATAN LONG SULE', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$MBqguuIAnPi4o0QU.bQcruaRKwRNr7Y39P85ZeWGM6uVylz12rQTi', '.vziohki/5YWhznl', NULL, NULL, NULL, NULL, 1542868655, NULL, 1, 'PERWAKILAN KECAMATAN LONG SULE', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 54, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (120, 'KANTOR PERSIAPAN KECAMATAN MALINAU UTARA TIMUR', 'KANTOR PERSIAPAN KECAMATAN MALINAU UTARA TIMUR', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$mnbbvXqcDt5Dd0acGTpZrOmT3r5CvVGIhNCmNTNHwVLdl4Rs4v0zW', 'QHQ4H.vyodnM/WlS', NULL, NULL, NULL, NULL, 1542868663, NULL, 1, 'KANTOR PERSIAPAN KECAMATAN MALINAU UTARA TIMUR', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 55, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (177, 'BAGIAN KESEJAHTERAAN RAKYAT', 'BAGIAN KESEJAHTERAAN RAKYAT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$xkLqzB427A/DorRTNQkvMuRP9pph.RV4M9iXco4gUaRXZcRjKyTym', 'jcBmBV2Nlp0J7tSu', NULL, NULL, NULL, NULL, 1542868183, NULL, 1, 'BAGIAN KESEJAHTERAAN RAKYAT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 13, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (178, 'RSUD', 'RSUD', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$yL5qQDoWOVqva0R89cPeLeQStYmnzj7kTvtakYMmGdIWVtLdwOqZa', 'JThT5.B3NQRg7qqF', NULL, NULL, NULL, NULL, 1542868189, NULL, 1, 'RSUD', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 14, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (179, 'htu', 'htu', 'MTIzNDU2Nzg5MDEyMzQ1NvO/p7wxwKS8eEl23z4=', '::1', '$2y$08$hQYzRWoWHwh2UHQK68LcHuENpf3FG2htzkGGLKnAHEtVqgpjrZpjS', 'XMlDVWwcEeqsu1Kc', NULL, NULL, NULL, NULL, 1549439229, 1549439242, 1, 'HTU', '', NULL, '1', 0, 'avatar_default.png', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alus_u` VALUES (180, 'user', 'user', 'MTIzNDU2Nzg5MDEyMzQ1NvaksZcl1Im0cgp83n3DeFY=', '::1', '$2y$08$0E5bLiUXEQKs6Qygvhd.vuBPebbQ/Kw/7N8LcXxRqgNmSVjiLjWo2', 'EVgXZipBo2gr1mmO', NULL, NULL, NULL, NULL, 1565064724, 1565076816, 1, 'User', '', NULL, '1', 0, 'avatar_default.png', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for alus_ug
-- ----------------------------
DROP TABLE IF EXISTS `alus_ug`;
CREATE TABLE `alus_ug`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `group_id` mediumint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uc_users_groups`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `fk_users_groups_users1_idx`(`user_id` ASC) USING BTREE,
  INDEX `fk_users_groups_groups1_idx`(`group_id` ASC) USING BTREE,
  CONSTRAINT `alus_ug_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `alus_g` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `alus_ug_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `alus_u` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of alus_ug
-- ----------------------------
INSERT INTO `alus_ug` VALUES (1, 64, 1);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `picture` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by_user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Action/ Adventure', '', '167345125738.jpg', 1, NULL, '2023-01-11 22:35:14', '2023-01-11 22:34:17', NULL);
INSERT INTO `categories` VALUES (2, 'Animals', '', '167345671134.jpg', 1, NULL, NULL, '2023-01-12 00:05:11', NULL);
INSERT INTO `categories` VALUES (3, 'History', '', '167345672505.jpg', 1, NULL, NULL, '2023-01-12 00:05:25', NULL);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for movie_categories
-- ----------------------------
DROP TABLE IF EXISTS `movie_categories`;
CREATE TABLE `movie_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movie_categories
-- ----------------------------
INSERT INTO `movie_categories` VALUES (1, 5, 1);
INSERT INTO `movie_categories` VALUES (2, 6, 1);
INSERT INTO `movie_categories` VALUES (3, 6, 3);

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rating` float NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `file_movie` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `picture` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `link_trailer` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by_user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES (6, 'Astronot Galau', 5, 2022, '1 Jam 5 Menit', 15, 'Film astronot galau', '167345716842.mp4', '167345716842.png', 'https://youtube.com/x', NULL, '2023-01-12 00:12:48', NULL);

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `review` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int NULL DEFAULT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for sys_codes
-- ----------------------------
DROP TABLE IF EXISTS `sys_codes`;
CREATE TABLE `sys_codes`  (
  `srn_id` int NOT NULL AUTO_INCREMENT,
  `srn_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `srn_value` int NULL DEFAULT 0,
  `srn_length` int NULL DEFAULT 1,
  `srn_format` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `srn_year` int NULL DEFAULT NULL,
  `srn_month` int NULL DEFAULT NULL,
  `srn_reset_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'NONE',
  PRIMARY KEY (`srn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_codes
-- ----------------------------
INSERT INTO `sys_codes` VALUES (1, 'SN-KLASIFIKASI-SURAT', 5, 5, 'SNKS-{VALUE}', 2017, 1, 'YEAR');
INSERT INTO `sys_codes` VALUES (9, 'SN-KLASIFIKASI-FILE', 2, 5, 'SNKF-{MONTH}/{YEAR}-{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (10, 'SN-SARANA-MEDIA', 5, 5, 'SSN-{MONTH}/{YEAR}-{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (11, 'SN-TICKET', 76, 6, 'T{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (13, '071.25', 3, 1, '{VALUE}', 2019, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (14, '072', 3, 1, '{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (15, '073.6', 0, 1, '{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (16, '076.4', 1, 1, '{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (17, '077.1', 1, 1, '{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (18, '999.99', 38, 1, '{VALUE}', NULL, NULL, 'NONE');
INSERT INTO `sys_codes` VALUES (19, '999.99', 38, 1, '{VALUE}', 2019, NULL, 'NONE');

SET FOREIGN_KEY_CHECKS = 1;