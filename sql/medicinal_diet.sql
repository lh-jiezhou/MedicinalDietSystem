/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : medicinal_diet

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 26/03/2021 10:46:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_med_table
-- ----------------------------
DROP TABLE IF EXISTS `admin_med_table`;
CREATE TABLE `admin_med_table`  (
  `admin_med_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_med_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_med_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_med_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_med_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_med_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_med_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_med_table
-- ----------------------------
INSERT INTO `admin_med_table` VALUES (1, 'admin', '123', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for admin_sys_table
-- ----------------------------
DROP TABLE IF EXISTS `admin_sys_table`;
CREATE TABLE `admin_sys_table`  (
  `admin_sys_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_sys_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_sys_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_sys_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_sys_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_sys_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for application_cate_table
-- ----------------------------
DROP TABLE IF EXISTS `application_cate_table`;
CREATE TABLE `application_cate_table`  (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`application_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of application_cate_table
-- ----------------------------
INSERT INTO `application_cate_table` VALUES (1, '头痛');
INSERT INTO `application_cate_table` VALUES (2, '鼻塞');
INSERT INTO `application_cate_table` VALUES (3, '牙齦肿痛');
INSERT INTO `application_cate_table` VALUES (4, '呕吐');
INSERT INTO `application_cate_table` VALUES (5, '胃痛腹胀');
INSERT INTO `application_cate_table` VALUES (6, '咳嗽');
INSERT INTO `application_cate_table` VALUES (7, '口舌生疮');
INSERT INTO `application_cate_table` VALUES (8, '口渴');
INSERT INTO `application_cate_table` VALUES (9, '乳腺炎');
INSERT INTO `application_cate_table` VALUES (10, '结肠炎');
INSERT INTO `application_cate_table` VALUES (11, '便秘');
INSERT INTO `application_cate_table` VALUES (12, '糖尿病');
INSERT INTO `application_cate_table` VALUES (13, '牙痛');
INSERT INTO `application_cate_table` VALUES (14, '盗汗');
INSERT INTO `application_cate_table` VALUES (15, '高血脂');
INSERT INTO `application_cate_table` VALUES (16, '高血压');
INSERT INTO `application_cate_table` VALUES (17, '口臭');
INSERT INTO `application_cate_table` VALUES (18, '厌食');
INSERT INTO `application_cate_table` VALUES (19, '痛经');
INSERT INTO `application_cate_table` VALUES (20, '脾胃虚弱');
INSERT INTO `application_cate_table` VALUES (21, '阳痿');
INSERT INTO `application_cate_table` VALUES (22, '腹泻');
INSERT INTO `application_cate_table` VALUES (23, '遗精');
INSERT INTO `application_cate_table` VALUES (24, '腰膝酸痛');
INSERT INTO `application_cate_table` VALUES (25, '月经不调  ');
INSERT INTO `application_cate_table` VALUES (26, '风湿');
INSERT INTO `application_cate_table` VALUES (27, '中风');
INSERT INTO `application_cate_table` VALUES (28, '失眠');
INSERT INTO `application_cate_table` VALUES (29, '小便不利');
INSERT INTO `application_cate_table` VALUES (30, '支气管炎');
INSERT INTO `application_cate_table` VALUES (31, '食积');
INSERT INTO `application_cate_table` VALUES (32, '瘀血');
INSERT INTO `application_cate_table` VALUES (33, '出血');
INSERT INTO `application_cate_table` VALUES (34, '更年期');
INSERT INTO `application_cate_table` VALUES (35, '脱发');
INSERT INTO `application_cate_table` VALUES (36, '咽痛');

-- ----------------------------
-- Table structure for application_conn_table
-- ----------------------------
DROP TABLE IF EXISTS `application_conn_table`;
CREATE TABLE `application_conn_table`  (
  `application_conn_id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_category` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`application_conn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 488 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of application_conn_table
-- ----------------------------
INSERT INTO `application_conn_table` VALUES (1, 1, 1, 1);
INSERT INTO `application_conn_table` VALUES (2, 2, 1, 1);
INSERT INTO `application_conn_table` VALUES (3, 1, 2, 1);
INSERT INTO `application_conn_table` VALUES (4, 3, 3, 1);
INSERT INTO `application_conn_table` VALUES (5, 1, 3, 1);
INSERT INTO `application_conn_table` VALUES (6, 4, 4, 1);
INSERT INTO `application_conn_table` VALUES (7, 5, 4, 1);
INSERT INTO `application_conn_table` VALUES (8, 6, 7, 1);
INSERT INTO `application_conn_table` VALUES (9, 1, 8, 1);
INSERT INTO `application_conn_table` VALUES (10, 2, 8, 1);
INSERT INTO `application_conn_table` VALUES (11, 6, 8, 1);
INSERT INTO `application_conn_table` VALUES (12, 1, 9, 1);
INSERT INTO `application_conn_table` VALUES (13, 7, 10, 1);
INSERT INTO `application_conn_table` VALUES (14, 6, 13, 1);
INSERT INTO `application_conn_table` VALUES (15, 8, 14, 1);
INSERT INTO `application_conn_table` VALUES (16, 8, 15, 1);
INSERT INTO `application_conn_table` VALUES (17, 8, 16, 1);
INSERT INTO `application_conn_table` VALUES (18, 9, 18, 1);
INSERT INTO `application_conn_table` VALUES (19, 10, 19, 1);
INSERT INTO `application_conn_table` VALUES (20, 11, 21, 1);
INSERT INTO `application_conn_table` VALUES (21, 12, 22, 1);
INSERT INTO `application_conn_table` VALUES (22, 4, 23, 1);
INSERT INTO `application_conn_table` VALUES (23, 8, 23, 1);
INSERT INTO `application_conn_table` VALUES (24, 13, 24, 1);
INSERT INTO `application_conn_table` VALUES (25, 8, 26, 1);
INSERT INTO `application_conn_table` VALUES (26, 14, 27, 1);
INSERT INTO `application_conn_table` VALUES (27, 6, 28, 1);
INSERT INTO `application_conn_table` VALUES (28, 14, 28, 1);
INSERT INTO `application_conn_table` VALUES (29, 6, 29, 1);
INSERT INTO `application_conn_table` VALUES (30, 11, 30, 1);
INSERT INTO `application_conn_table` VALUES (31, 11, 31, 1);
INSERT INTO `application_conn_table` VALUES (32, 15, 32, 1);
INSERT INTO `application_conn_table` VALUES (33, 16, 32, 1);
INSERT INTO `application_conn_table` VALUES (34, 11, 33, 1);
INSERT INTO `application_conn_table` VALUES (35, 11, 34, 1);
INSERT INTO `application_conn_table` VALUES (36, 5, 35, 1);
INSERT INTO `application_conn_table` VALUES (37, 11, 35, 1);
INSERT INTO `application_conn_table` VALUES (38, 11, 36, 1);
INSERT INTO `application_conn_table` VALUES (39, 17, 36, 1);
INSERT INTO `application_conn_table` VALUES (40, 4, 37, 1);
INSERT INTO `application_conn_table` VALUES (41, 4, 38, 1);
INSERT INTO `application_conn_table` VALUES (42, 1, 38, 1);
INSERT INTO `application_conn_table` VALUES (43, 4, 39, 1);
INSERT INTO `application_conn_table` VALUES (44, 18, 39, 1);
INSERT INTO `application_conn_table` VALUES (45, 19, 39, 1);
INSERT INTO `application_conn_table` VALUES (46, 18, 40, 1);
INSERT INTO `application_conn_table` VALUES (47, 20, 40, 1);
INSERT INTO `application_conn_table` VALUES (48, 4, 41, 1);
INSERT INTO `application_conn_table` VALUES (49, 20, 41, 1);
INSERT INTO `application_conn_table` VALUES (50, 4, 42, 1);
INSERT INTO `application_conn_table` VALUES (51, 20, 42, 1);
INSERT INTO `application_conn_table` VALUES (52, 21, 42, 1);
INSERT INTO `application_conn_table` VALUES (53, 22, 42, 1);
INSERT INTO `application_conn_table` VALUES (54, 23, 42, 1);
INSERT INTO `application_conn_table` VALUES (55, 24, 43, 1);
INSERT INTO `application_conn_table` VALUES (56, 4, 44, 1);
INSERT INTO `application_conn_table` VALUES (57, 19, 44, 1);
INSERT INTO `application_conn_table` VALUES (58, 25, 44, 1);
INSERT INTO `application_conn_table` VALUES (59, 19, 45, 1);
INSERT INTO `application_conn_table` VALUES (60, 20, 46, 1);
INSERT INTO `application_conn_table` VALUES (61, 21, 46, 1);
INSERT INTO `application_conn_table` VALUES (62, 4, 47, 1);
INSERT INTO `application_conn_table` VALUES (63, 19, 47, 1);
INSERT INTO `application_conn_table` VALUES (64, 21, 47, 1);
INSERT INTO `application_conn_table` VALUES (65, 24, 47, 1);
INSERT INTO `application_conn_table` VALUES (66, 21, 48, 1);
INSERT INTO `application_conn_table` VALUES (67, 24, 48, 1);
INSERT INTO `application_conn_table` VALUES (68, 24, 49, 1);
INSERT INTO `application_conn_table` VALUES (69, 26, 49, 1);
INSERT INTO `application_conn_table` VALUES (70, 24, 50, 1);
INSERT INTO `application_conn_table` VALUES (71, 26, 50, 1);
INSERT INTO `application_conn_table` VALUES (72, 27, 50, 1);
INSERT INTO `application_conn_table` VALUES (73, 24, 51, 1);
INSERT INTO `application_conn_table` VALUES (74, 26, 51, 1);
INSERT INTO `application_conn_table` VALUES (75, 24, 52, 1);
INSERT INTO `application_conn_table` VALUES (76, 26, 52, 1);
INSERT INTO `application_conn_table` VALUES (77, 24, 53, 1);
INSERT INTO `application_conn_table` VALUES (78, 26, 53, 1);
INSERT INTO `application_conn_table` VALUES (79, 21, 54, 1);
INSERT INTO `application_conn_table` VALUES (80, 23, 54, 1);
INSERT INTO `application_conn_table` VALUES (81, 24, 54, 1);
INSERT INTO `application_conn_table` VALUES (82, 26, 54, 1);
INSERT INTO `application_conn_table` VALUES (83, 28, 54, 1);
INSERT INTO `application_conn_table` VALUES (84, 24, 55, 1);
INSERT INTO `application_conn_table` VALUES (85, 26, 55, 1);
INSERT INTO `application_conn_table` VALUES (86, 22, 56, 1);
INSERT INTO `application_conn_table` VALUES (87, 29, 56, 1);
INSERT INTO `application_conn_table` VALUES (88, 8, 57, 1);
INSERT INTO `application_conn_table` VALUES (89, 29, 57, 1);
INSERT INTO `application_conn_table` VALUES (90, 6, 58, 1);
INSERT INTO `application_conn_table` VALUES (91, 22, 58, 1);
INSERT INTO `application_conn_table` VALUES (92, 29, 58, 1);
INSERT INTO `application_conn_table` VALUES (93, 29, 59, 1);
INSERT INTO `application_conn_table` VALUES (94, 8, 60, 1);
INSERT INTO `application_conn_table` VALUES (95, 18, 60, 1);
INSERT INTO `application_conn_table` VALUES (96, 29, 60, 1);
INSERT INTO `application_conn_table` VALUES (97, 29, 61, 1);
INSERT INTO `application_conn_table` VALUES (98, 8, 62, 1);
INSERT INTO `application_conn_table` VALUES (99, 29, 62, 1);
INSERT INTO `application_conn_table` VALUES (100, 6, 63, 1);
INSERT INTO `application_conn_table` VALUES (101, 8, 63, 1);
INSERT INTO `application_conn_table` VALUES (102, 11, 63, 1);
INSERT INTO `application_conn_table` VALUES (103, 29, 63, 1);
INSERT INTO `application_conn_table` VALUES (104, 17, 64, 1);
INSERT INTO `application_conn_table` VALUES (105, 29, 64, 1);
INSERT INTO `application_conn_table` VALUES (106, 13, 65, 1);
INSERT INTO `application_conn_table` VALUES (107, 18, 66, 1);
INSERT INTO `application_conn_table` VALUES (108, 29, 66, 1);
INSERT INTO `application_conn_table` VALUES (109, 8, 67, 1);
INSERT INTO `application_conn_table` VALUES (110, 29, 67, 1);
INSERT INTO `application_conn_table` VALUES (111, 18, 68, 1);
INSERT INTO `application_conn_table` VALUES (112, 29, 68, 1);
INSERT INTO `application_conn_table` VALUES (113, 8, 69, 1);
INSERT INTO `application_conn_table` VALUES (114, 18, 69, 1);
INSERT INTO `application_conn_table` VALUES (115, 29, 69, 1);
INSERT INTO `application_conn_table` VALUES (116, 29, 70, 1);
INSERT INTO `application_conn_table` VALUES (117, 6, 71, 1);
INSERT INTO `application_conn_table` VALUES (118, 18, 71, 1);
INSERT INTO `application_conn_table` VALUES (119, 30, 71, 1);
INSERT INTO `application_conn_table` VALUES (120, 6, 72, 1);
INSERT INTO `application_conn_table` VALUES (121, 8, 72, 1);
INSERT INTO `application_conn_table` VALUES (122, 6, 73, 1);
INSERT INTO `application_conn_table` VALUES (123, 4, 74, 1);
INSERT INTO `application_conn_table` VALUES (124, 6, 74, 1);
INSERT INTO `application_conn_table` VALUES (125, 1, 75, 1);
INSERT INTO `application_conn_table` VALUES (126, 4, 75, 1);
INSERT INTO `application_conn_table` VALUES (127, 28, 75, 1);
INSERT INTO `application_conn_table` VALUES (128, 6, 76, 1);
INSERT INTO `application_conn_table` VALUES (129, 6, 77, 1);
INSERT INTO `application_conn_table` VALUES (130, 6, 78, 1);
INSERT INTO `application_conn_table` VALUES (131, 8, 78, 1);
INSERT INTO `application_conn_table` VALUES (132, 6, 79, 1);
INSERT INTO `application_conn_table` VALUES (133, 30, 79, 1);
INSERT INTO `application_conn_table` VALUES (134, 6, 80, 1);
INSERT INTO `application_conn_table` VALUES (135, 18, 80, 1);
INSERT INTO `application_conn_table` VALUES (136, 28, 80, 1);
INSERT INTO `application_conn_table` VALUES (137, 30, 80, 1);
INSERT INTO `application_conn_table` VALUES (138, 6, 81, 1);
INSERT INTO `application_conn_table` VALUES (139, 6, 82, 1);
INSERT INTO `application_conn_table` VALUES (140, 11, 82, 1);
INSERT INTO `application_conn_table` VALUES (141, 22, 83, 1);
INSERT INTO `application_conn_table` VALUES (142, 24, 83, 1);
INSERT INTO `application_conn_table` VALUES (143, 6, 84, 1);
INSERT INTO `application_conn_table` VALUES (144, 18, 84, 1);
INSERT INTO `application_conn_table` VALUES (145, 30, 84, 1);
INSERT INTO `application_conn_table` VALUES (146, 31, 85, 1);
INSERT INTO `application_conn_table` VALUES (147, 31, 86, 1);
INSERT INTO `application_conn_table` VALUES (148, 31, 87, 1);
INSERT INTO `application_conn_table` VALUES (149, 18, 88, 1);
INSERT INTO `application_conn_table` VALUES (150, 31, 88, 1);
INSERT INTO `application_conn_table` VALUES (151, 31, 89, 1);
INSERT INTO `application_conn_table` VALUES (152, 4, 89, 1);
INSERT INTO `application_conn_table` VALUES (153, 18, 90, 1);
INSERT INTO `application_conn_table` VALUES (154, 5, 91, 1);
INSERT INTO `application_conn_table` VALUES (155, 18, 91, 1);
INSERT INTO `application_conn_table` VALUES (156, 4, 92, 1);
INSERT INTO `application_conn_table` VALUES (157, 31, 92, 1);
INSERT INTO `application_conn_table` VALUES (158, 4, 93, 1);
INSERT INTO `application_conn_table` VALUES (159, 31, 93, 1);
INSERT INTO `application_conn_table` VALUES (160, 4, 94, 1);
INSERT INTO `application_conn_table` VALUES (161, 18, 94, 1);
INSERT INTO `application_conn_table` VALUES (162, 31, 94, 1);
INSERT INTO `application_conn_table` VALUES (163, 1, 95, 1);
INSERT INTO `application_conn_table` VALUES (164, 8, 95, 1);
INSERT INTO `application_conn_table` VALUES (165, 1, 96, 1);
INSERT INTO `application_conn_table` VALUES (166, 29, 96, 1);
INSERT INTO `application_conn_table` VALUES (167, 4, 97, 1);
INSERT INTO `application_conn_table` VALUES (168, 18, 97, 1);
INSERT INTO `application_conn_table` VALUES (169, 4, 98, 1);
INSERT INTO `application_conn_table` VALUES (170, 5, 98, 1);
INSERT INTO `application_conn_table` VALUES (171, 4, 99, 1);
INSERT INTO `application_conn_table` VALUES (172, 5, 99, 1);
INSERT INTO `application_conn_table` VALUES (173, 5, 100, 1);
INSERT INTO `application_conn_table` VALUES (174, 18, 100, 1);
INSERT INTO `application_conn_table` VALUES (175, 1, 101, 1);
INSERT INTO `application_conn_table` VALUES (176, 4, 101, 1);
INSERT INTO `application_conn_table` VALUES (177, 5, 101, 1);
INSERT INTO `application_conn_table` VALUES (178, 18, 101, 1);
INSERT INTO `application_conn_table` VALUES (179, 19, 102, 1);
INSERT INTO `application_conn_table` VALUES (180, 25, 102, 1);
INSERT INTO `application_conn_table` VALUES (181, 4, 103, 1);
INSERT INTO `application_conn_table` VALUES (182, 4, 104, 1);
INSERT INTO `application_conn_table` VALUES (183, 25, 105, 1);
INSERT INTO `application_conn_table` VALUES (184, 19, 106, 1);
INSERT INTO `application_conn_table` VALUES (185, 25, 106, 1);
INSERT INTO `application_conn_table` VALUES (186, 19, 107, 1);
INSERT INTO `application_conn_table` VALUES (187, 1, 108, 1);
INSERT INTO `application_conn_table` VALUES (188, 15, 109, 1);
INSERT INTO `application_conn_table` VALUES (189, 25, 109, 1);
INSERT INTO `application_conn_table` VALUES (190, 27, 109, 1);
INSERT INTO `application_conn_table` VALUES (191, 28, 109, 1);
INSERT INTO `application_conn_table` VALUES (192, 19, 110, 1);
INSERT INTO `application_conn_table` VALUES (193, 19, 111, 1);
INSERT INTO `application_conn_table` VALUES (194, 32, 111, 1);
INSERT INTO `application_conn_table` VALUES (195, 32, 106, 1);
INSERT INTO `application_conn_table` VALUES (196, 32, 107, 1);
INSERT INTO `application_conn_table` VALUES (197, 32, 108, 1);
INSERT INTO `application_conn_table` VALUES (198, 32, 109, 1);
INSERT INTO `application_conn_table` VALUES (199, 32, 110, 1);
INSERT INTO `application_conn_table` VALUES (200, 32, 112, 1);
INSERT INTO `application_conn_table` VALUES (201, 25, 112, 1);
INSERT INTO `application_conn_table` VALUES (202, 19, 113, 1);
INSERT INTO `application_conn_table` VALUES (203, 25, 113, 1);
INSERT INTO `application_conn_table` VALUES (204, 32, 113, 1);
INSERT INTO `application_conn_table` VALUES (205, 24, 114, 1);
INSERT INTO `application_conn_table` VALUES (206, 32, 114, 1);
INSERT INTO `application_conn_table` VALUES (207, 32, 115, 1);
INSERT INTO `application_conn_table` VALUES (208, 25, 115, 1);
INSERT INTO `application_conn_table` VALUES (209, 27, 116, 1);
INSERT INTO `application_conn_table` VALUES (210, 32, 116, 1);
INSERT INTO `application_conn_table` VALUES (211, 33, 117, 1);
INSERT INTO `application_conn_table` VALUES (212, 16, 117, 1);
INSERT INTO `application_conn_table` VALUES (213, 16, 118, 1);
INSERT INTO `application_conn_table` VALUES (214, 29, 118, 1);
INSERT INTO `application_conn_table` VALUES (215, 33, 118, 1);
INSERT INTO `application_conn_table` VALUES (216, 6, 119, 1);
INSERT INTO `application_conn_table` VALUES (217, 33, 119, 1);
INSERT INTO `application_conn_table` VALUES (218, 33, 120, 1);
INSERT INTO `application_conn_table` VALUES (219, 33, 121, 1);
INSERT INTO `application_conn_table` VALUES (220, 33, 122, 1);
INSERT INTO `application_conn_table` VALUES (221, 29, 122, 1);
INSERT INTO `application_conn_table` VALUES (222, 6, 123, 1);
INSERT INTO `application_conn_table` VALUES (223, 25, 123, 1);
INSERT INTO `application_conn_table` VALUES (224, 33, 123, 1);
INSERT INTO `application_conn_table` VALUES (225, 29, 124, 1);
INSERT INTO `application_conn_table` VALUES (226, 33, 124, 1);
INSERT INTO `application_conn_table` VALUES (227, 33, 125, 1);
INSERT INTO `application_conn_table` VALUES (228, 24, 126, 1);
INSERT INTO `application_conn_table` VALUES (229, 33, 126, 1);
INSERT INTO `application_conn_table` VALUES (230, 29, 127, 1);
INSERT INTO `application_conn_table` VALUES (231, 33, 127, 1);
INSERT INTO `application_conn_table` VALUES (232, 34, 128, 1);
INSERT INTO `application_conn_table` VALUES (233, 6, 128, 1);
INSERT INTO `application_conn_table` VALUES (234, 28, 129, 1);
INSERT INTO `application_conn_table` VALUES (235, 11, 130, 1);
INSERT INTO `application_conn_table` VALUES (236, 35, 130, 1);
INSERT INTO `application_conn_table` VALUES (237, 28, 130, 1);
INSERT INTO `application_conn_table` VALUES (238, 28, 131, 1);
INSERT INTO `application_conn_table` VALUES (239, 28, 132, 1);
INSERT INTO `application_conn_table` VALUES (240, 28, 133, 1);
INSERT INTO `application_conn_table` VALUES (241, 28, 134, 1);
INSERT INTO `application_conn_table` VALUES (242, 28, 135, 1);
INSERT INTO `application_conn_table` VALUES (243, 1, 136, 1);
INSERT INTO `application_conn_table` VALUES (244, 28, 136, 1);
INSERT INTO `application_conn_table` VALUES (245, 1, 137, 1);
INSERT INTO `application_conn_table` VALUES (246, 28, 137, 1);
INSERT INTO `application_conn_table` VALUES (247, 27, 137, 1);
INSERT INTO `application_conn_table` VALUES (248, 29, 137, 1);
INSERT INTO `application_conn_table` VALUES (249, 1, 138, 1);
INSERT INTO `application_conn_table` VALUES (250, 29, 138, 1);
INSERT INTO `application_conn_table` VALUES (251, 1, 139, 1);
INSERT INTO `application_conn_table` VALUES (252, 28, 139, 1);
INSERT INTO `application_conn_table` VALUES (253, 29, 139, 1);
INSERT INTO `application_conn_table` VALUES (254, 1, 140, 1);
INSERT INTO `application_conn_table` VALUES (255, 11, 140, 1);
INSERT INTO `application_conn_table` VALUES (256, 29, 140, 1);
INSERT INTO `application_conn_table` VALUES (257, 1, 141, 1);
INSERT INTO `application_conn_table` VALUES (258, 18, 141, 1);
INSERT INTO `application_conn_table` VALUES (259, 28, 141, 1);
INSERT INTO `application_conn_table` VALUES (260, 29, 141, 1);
INSERT INTO `application_conn_table` VALUES (261, 1, 142, 1);
INSERT INTO `application_conn_table` VALUES (262, 18, 142, 1);
INSERT INTO `application_conn_table` VALUES (263, 28, 142, 1);
INSERT INTO `application_conn_table` VALUES (264, 14, 143, 1);
INSERT INTO `application_conn_table` VALUES (265, 14, 144, 1);
INSERT INTO `application_conn_table` VALUES (266, 6, 145, 1);
INSERT INTO `application_conn_table` VALUES (267, 14, 145, 1);
INSERT INTO `application_conn_table` VALUES (268, 23, 145, 1);
INSERT INTO `application_conn_table` VALUES (269, 22, 145, 1);
INSERT INTO `application_conn_table` VALUES (270, 6, 146, 1);
INSERT INTO `application_conn_table` VALUES (271, 8, 146, 1);
INSERT INTO `application_conn_table` VALUES (272, 22, 146, 1);
INSERT INTO `application_conn_table` VALUES (273, 33, 146, 1);
INSERT INTO `application_conn_table` VALUES (274, 18, 147, 1);
INSERT INTO `application_conn_table` VALUES (275, 22, 147, 1);
INSERT INTO `application_conn_table` VALUES (276, 18, 148, 1);
INSERT INTO `application_conn_table` VALUES (277, 22, 148, 1);
INSERT INTO `application_conn_table` VALUES (278, 23, 149, 1);
INSERT INTO `application_conn_table` VALUES (279, 24, 149, 1);
INSERT INTO `application_conn_table` VALUES (280, 23, 150, 1);
INSERT INTO `application_conn_table` VALUES (281, 24, 150, 1);
INSERT INTO `application_conn_table` VALUES (282, 22, 151, 1);
INSERT INTO `application_conn_table` VALUES (283, 23, 151, 1);
INSERT INTO `application_conn_table` VALUES (284, 24, 151, 1);
INSERT INTO `application_conn_table` VALUES (285, 1, 152, 1);
INSERT INTO `application_conn_table` VALUES (286, 21, 152, 1);
INSERT INTO `application_conn_table` VALUES (287, 23, 152, 1);
INSERT INTO `application_conn_table` VALUES (288, 24, 152, 1);
INSERT INTO `application_conn_table` VALUES (289, 21, 153, 1);
INSERT INTO `application_conn_table` VALUES (290, 22, 153, 1);
INSERT INTO `application_conn_table` VALUES (291, 23, 153, 1);
INSERT INTO `application_conn_table` VALUES (292, 24, 153, 1);
INSERT INTO `application_conn_table` VALUES (293, 23, 154, 1);
INSERT INTO `application_conn_table` VALUES (294, 24, 154, 1);
INSERT INTO `application_conn_table` VALUES (295, 6, 154, 1);
INSERT INTO `application_conn_table` VALUES (296, 23, 155, 1);
INSERT INTO `application_conn_table` VALUES (297, 28, 155, 1);
INSERT INTO `application_conn_table` VALUES (298, 22, 156, 1);
INSERT INTO `application_conn_table` VALUES (299, 18, 157, 1);
INSERT INTO `application_conn_table` VALUES (300, 4, 158, 1);
INSERT INTO `application_conn_table` VALUES (301, 5, 158, 1);
INSERT INTO `application_conn_table` VALUES (302, 8, 158, 1);
INSERT INTO `application_conn_table` VALUES (303, 22, 158, 1);
INSERT INTO `application_conn_table` VALUES (304, 15, 159, 1);
INSERT INTO `application_conn_table` VALUES (305, 18, 159, 1);
INSERT INTO `application_conn_table` VALUES (306, 12, 160, 1);
INSERT INTO `application_conn_table` VALUES (307, 18, 160, 1);
INSERT INTO `application_conn_table` VALUES (308, 10, 160, 1);
INSERT INTO `application_conn_table` VALUES (309, 18, 161, 1);
INSERT INTO `application_conn_table` VALUES (310, 4, 162, 1);
INSERT INTO `application_conn_table` VALUES (311, 5, 162, 1);
INSERT INTO `application_conn_table` VALUES (312, 22, 162, 1);
INSERT INTO `application_conn_table` VALUES (313, 31, 162, 1);
INSERT INTO `application_conn_table` VALUES (314, 18, 163, 1);
INSERT INTO `application_conn_table` VALUES (315, 23, 163, 1);
INSERT INTO `application_conn_table` VALUES (316, 28, 163, 1);
INSERT INTO `application_conn_table` VALUES (317, 6, 164, 1);
INSERT INTO `application_conn_table` VALUES (318, 8, 164, 1);
INSERT INTO `application_conn_table` VALUES (319, 8, 165, 1);
INSERT INTO `application_conn_table` VALUES (320, 18, 165, 1);
INSERT INTO `application_conn_table` VALUES (321, 28, 165, 1);
INSERT INTO `application_conn_table` VALUES (322, 6, 166, 1);
INSERT INTO `application_conn_table` VALUES (323, 18, 167, 1);
INSERT INTO `application_conn_table` VALUES (324, 22, 167, 1);
INSERT INTO `application_conn_table` VALUES (325, 5, 168, 1);
INSERT INTO `application_conn_table` VALUES (326, 22, 168, 1);
INSERT INTO `application_conn_table` VALUES (327, 1, 169, 1);
INSERT INTO `application_conn_table` VALUES (328, 19, 169, 1);
INSERT INTO `application_conn_table` VALUES (329, 25, 169, 1);
INSERT INTO `application_conn_table` VALUES (330, 32, 169, 1);
INSERT INTO `application_conn_table` VALUES (331, 18, 170, 1);
INSERT INTO `application_conn_table` VALUES (332, 24, 171, 1);
INSERT INTO `application_conn_table` VALUES (333, 18, 172, 1);
INSERT INTO `application_conn_table` VALUES (334, 24, 172, 1);
INSERT INTO `application_conn_table` VALUES (335, 28, 172, 1);
INSERT INTO `application_conn_table` VALUES (336, 25, 173, 1);
INSERT INTO `application_conn_table` VALUES (337, 33, 173, 1);
INSERT INTO `application_conn_table` VALUES (338, 11, 174, 1);
INSERT INTO `application_conn_table` VALUES (339, 12, 174, 1);
INSERT INTO `application_conn_table` VALUES (340, 11, 175, 1);
INSERT INTO `application_conn_table` VALUES (341, 14, 176, 1);
INSERT INTO `application_conn_table` VALUES (342, 28, 176, 1);
INSERT INTO `application_conn_table` VALUES (343, 28, 177, 1);
INSERT INTO `application_conn_table` VALUES (344, 18, 178, 1);
INSERT INTO `application_conn_table` VALUES (345, 28, 178, 1);
INSERT INTO `application_conn_table` VALUES (346, 18, 179, 1);
INSERT INTO `application_conn_table` VALUES (347, 24, 179, 1);
INSERT INTO `application_conn_table` VALUES (348, 33, 179, 1);
INSERT INTO `application_conn_table` VALUES (349, 6, 179, 1);
INSERT INTO `application_conn_table` VALUES (350, 23, 179, 1);
INSERT INTO `application_conn_table` VALUES (351, 25, 179, 1);
INSERT INTO `application_conn_table` VALUES (352, 35, 179, 1);
INSERT INTO `application_conn_table` VALUES (353, 33, 180, 1);
INSERT INTO `application_conn_table` VALUES (354, 14, 181, 1);
INSERT INTO `application_conn_table` VALUES (355, 24, 181, 1);
INSERT INTO `application_conn_table` VALUES (356, 25, 181, 1);
INSERT INTO `application_conn_table` VALUES (357, 19, 181, 1);
INSERT INTO `application_conn_table` VALUES (358, 33, 181, 1);
INSERT INTO `application_conn_table` VALUES (359, 18, 182, 1);
INSERT INTO `application_conn_table` VALUES (360, 28, 182, 1);
INSERT INTO `application_conn_table` VALUES (361, 21, 183, 1);
INSERT INTO `application_conn_table` VALUES (362, 23, 183, 1);
INSERT INTO `application_conn_table` VALUES (363, 24, 183, 1);
INSERT INTO `application_conn_table` VALUES (364, 21, 184, 1);
INSERT INTO `application_conn_table` VALUES (365, 24, 184, 1);
INSERT INTO `application_conn_table` VALUES (366, 20, 184, 1);
INSERT INTO `application_conn_table` VALUES (367, 21, 185, 1);
INSERT INTO `application_conn_table` VALUES (368, 24, 185, 1);
INSERT INTO `application_conn_table` VALUES (369, 26, 185, 1);
INSERT INTO `application_conn_table` VALUES (370, 5, 185, 1);
INSERT INTO `application_conn_table` VALUES (371, 18, 185, 1);
INSERT INTO `application_conn_table` VALUES (372, 24, 186, 1);
INSERT INTO `application_conn_table` VALUES (373, 21, 187, 1);
INSERT INTO `application_conn_table` VALUES (374, 24, 187, 1);
INSERT INTO `application_conn_table` VALUES (375, 26, 187, 1);
INSERT INTO `application_conn_table` VALUES (376, 21, 188, 1);
INSERT INTO `application_conn_table` VALUES (377, 23, 188, 1);
INSERT INTO `application_conn_table` VALUES (378, 24, 188, 1);
INSERT INTO `application_conn_table` VALUES (379, 6, 188, 1);
INSERT INTO `application_conn_table` VALUES (380, 21, 189, 1);
INSERT INTO `application_conn_table` VALUES (381, 23, 189, 1);
INSERT INTO `application_conn_table` VALUES (382, 24, 189, 1);
INSERT INTO `application_conn_table` VALUES (383, 21, 190, 1);
INSERT INTO `application_conn_table` VALUES (384, 23, 190, 1);
INSERT INTO `application_conn_table` VALUES (385, 24, 190, 1);
INSERT INTO `application_conn_table` VALUES (386, 23, 191, 1);
INSERT INTO `application_conn_table` VALUES (387, 21, 192, 1);
INSERT INTO `application_conn_table` VALUES (388, 23, 192, 1);
INSERT INTO `application_conn_table` VALUES (389, 24, 192, 1);
INSERT INTO `application_conn_table` VALUES (390, 16, 192, 1);
INSERT INTO `application_conn_table` VALUES (391, 21, 193, 1);
INSERT INTO `application_conn_table` VALUES (392, 23, 193, 1);
INSERT INTO `application_conn_table` VALUES (393, 24, 193, 1);
INSERT INTO `application_conn_table` VALUES (394, 6, 193, 1);
INSERT INTO `application_conn_table` VALUES (395, 6, 194, 1);
INSERT INTO `application_conn_table` VALUES (396, 24, 194, 1);
INSERT INTO `application_conn_table` VALUES (397, 6, 195, 1);
INSERT INTO `application_conn_table` VALUES (398, 21, 195, 1);
INSERT INTO `application_conn_table` VALUES (399, 8, 196, 1);
INSERT INTO `application_conn_table` VALUES (400, 18, 196, 1);
INSERT INTO `application_conn_table` VALUES (401, 14, 196, 1);
INSERT INTO `application_conn_table` VALUES (402, 24, 196, 1);
INSERT INTO `application_conn_table` VALUES (403, 6, 197, 1);
INSERT INTO `application_conn_table` VALUES (404, 24, 197, 1);
INSERT INTO `application_conn_table` VALUES (405, 14, 198, 1);
INSERT INTO `application_conn_table` VALUES (406, 28, 198, 1);
INSERT INTO `application_conn_table` VALUES (407, 6, 199, 1);
INSERT INTO `application_conn_table` VALUES (408, 8, 199, 1);
INSERT INTO `application_conn_table` VALUES (409, 6, 200, 1);
INSERT INTO `application_conn_table` VALUES (410, 35, 200, 1);
INSERT INTO `application_conn_table` VALUES (411, 14, 201, 1);
INSERT INTO `application_conn_table` VALUES (412, 23, 201, 1);
INSERT INTO `application_conn_table` VALUES (413, 24, 201, 1);
INSERT INTO `application_conn_table` VALUES (414, 33, 201, 1);
INSERT INTO `application_conn_table` VALUES (415, 6, 201, 1);
INSERT INTO `application_conn_table` VALUES (416, 14, 202, 1);
INSERT INTO `application_conn_table` VALUES (417, 24, 202, 1);
INSERT INTO `application_conn_table` VALUES (418, 23, 203, 1);
INSERT INTO `application_conn_table` VALUES (419, 24, 203, 1);
INSERT INTO `application_conn_table` VALUES (420, 6, 205, 1);
INSERT INTO `application_conn_table` VALUES (421, 8, 205, 1);
INSERT INTO `application_conn_table` VALUES (422, 12, 206, 1);
INSERT INTO `application_conn_table` VALUES (423, 15, 206, 1);
INSERT INTO `application_conn_table` VALUES (424, 31, 206, 1);
INSERT INTO `application_conn_table` VALUES (425, 32, 206, 1);
INSERT INTO `application_conn_table` VALUES (426, 12, 207, 1);
INSERT INTO `application_conn_table` VALUES (427, 18, 207, 1);
INSERT INTO `application_conn_table` VALUES (428, 18, 208, 1);
INSERT INTO `application_conn_table` VALUES (429, 20, 208, 1);
INSERT INTO `application_conn_table` VALUES (430, 4, 209, 1);
INSERT INTO `application_conn_table` VALUES (431, 6, 210, 1);
INSERT INTO `application_conn_table` VALUES (432, 8, 210, 1);
INSERT INTO `application_conn_table` VALUES (433, 29, 210, 1);
INSERT INTO `application_conn_table` VALUES (434, 20, 211, 1);
INSERT INTO `application_conn_table` VALUES (435, 20, 212, 1);
INSERT INTO `application_conn_table` VALUES (436, 29, 212, 1);
INSERT INTO `application_conn_table` VALUES (437, 29, 213, 1);
INSERT INTO `application_conn_table` VALUES (438, 23, 214, 1);
INSERT INTO `application_conn_table` VALUES (439, 24, 214, 1);
INSERT INTO `application_conn_table` VALUES (440, 35, 214, 1);
INSERT INTO `application_conn_table` VALUES (441, 35, 215, 1);
INSERT INTO `application_conn_table` VALUES (442, 11, 215, 1);
INSERT INTO `application_conn_table` VALUES (443, 35, 216, 1);
INSERT INTO `application_conn_table` VALUES (444, 20, 217, 1);
INSERT INTO `application_conn_table` VALUES (445, 35, 217, 1);
INSERT INTO `application_conn_table` VALUES (446, 35, 218, 1);
INSERT INTO `application_conn_table` VALUES (447, 35, 219, 1);
INSERT INTO `application_conn_table` VALUES (448, 20, 219, 1);
INSERT INTO `application_conn_table` VALUES (449, 32, 219, 1);
INSERT INTO `application_conn_table` VALUES (450, 32, 220, 1);
INSERT INTO `application_conn_table` VALUES (451, 20, 222, 1);
INSERT INTO `application_conn_table` VALUES (452, 6, 229, 1);
INSERT INTO `application_conn_table` VALUES (453, 33, 229, 1);
INSERT INTO `application_conn_table` VALUES (454, 20, 231, 1);
INSERT INTO `application_conn_table` VALUES (455, 22, 231, 1);
INSERT INTO `application_conn_table` VALUES (456, 24, 232, 1);
INSERT INTO `application_conn_table` VALUES (457, 28, 232, 1);
INSERT INTO `application_conn_table` VALUES (458, 35, 232, 1);
INSERT INTO `application_conn_table` VALUES (459, 24, 234, 1);
INSERT INTO `application_conn_table` VALUES (460, 18, 235, 1);
INSERT INTO `application_conn_table` VALUES (461, 4, 236, 1);
INSERT INTO `application_conn_table` VALUES (462, 20, 236, 1);
INSERT INTO `application_conn_table` VALUES (463, 22, 236, 1);
INSERT INTO `application_conn_table` VALUES (464, 5, 236, 1);
INSERT INTO `application_conn_table` VALUES (465, 18, 236, 1);
INSERT INTO `application_conn_table` VALUES (466, 5, 237, 1);
INSERT INTO `application_conn_table` VALUES (467, 20, 237, 1);
INSERT INTO `application_conn_table` VALUES (468, 22, 237, 1);
INSERT INTO `application_conn_table` VALUES (469, 11, 238, 1);
INSERT INTO `application_conn_table` VALUES (470, 16, 238, 1);
INSERT INTO `application_conn_table` VALUES (471, 11, 241, 1);
INSERT INTO `application_conn_table` VALUES (472, 24, 241, 1);
INSERT INTO `application_conn_table` VALUES (473, 35, 241, 1);
INSERT INTO `application_conn_table` VALUES (474, 1, 242, 1);
INSERT INTO `application_conn_table` VALUES (475, 24, 242, 1);
INSERT INTO `application_conn_table` VALUES (476, 28, 242, 1);
INSERT INTO `application_conn_table` VALUES (477, 24, 243, 1);
INSERT INTO `application_conn_table` VALUES (478, 15, 243, 1);
INSERT INTO `application_conn_table` VALUES (479, 16, 243, 1);
INSERT INTO `application_conn_table` VALUES (480, 24, 246, 1);
INSERT INTO `application_conn_table` VALUES (481, 21, 246, 1);
INSERT INTO `application_conn_table` VALUES (482, 21, 248, 1);
INSERT INTO `application_conn_table` VALUES (483, 24, 249, 1);
INSERT INTO `application_conn_table` VALUES (484, 24, 250, 1);
INSERT INTO `application_conn_table` VALUES (485, 21, 250, 1);
INSERT INTO `application_conn_table` VALUES (486, 29, 250, 1);
INSERT INTO `application_conn_table` VALUES (487, 5, 253, 1);
INSERT INTO `application_conn_table` VALUES (488, 24, 256, 1);

-- ----------------------------
-- Table structure for collection_table
-- ----------------------------
DROP TABLE IF EXISTS `collection_table`;
CREATE TABLE `collection_table`  (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `medicinal_diet_id` int(11) NULL DEFAULT NULL,
  `collection_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`collection_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection_table
-- ----------------------------
INSERT INTO `collection_table` VALUES (1, 1, 1, '2019-04-24 21:11:48');
INSERT INTO `collection_table` VALUES (2, 1, 5, '2019-04-24 21:12:06');
INSERT INTO `collection_table` VALUES (3, 1, 10, '2019-04-24 22:04:10');
INSERT INTO `collection_table` VALUES (7, 1, 3, '2019-05-27 18:07:02');
INSERT INTO `collection_table` VALUES (13, 1, 156, '2019-05-27 18:23:00');

-- ----------------------------
-- Table structure for comment_table
-- ----------------------------
DROP TABLE IF EXISTS `comment_table`;
CREATE TABLE `comment_table`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `medicinal_id` int(11) NULL DEFAULT NULL,
  `comment_date` datetime(0) NULL DEFAULT NULL,
  `comment_cont` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_star` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for disease_cate_table
-- ----------------------------
DROP TABLE IF EXISTS `disease_cate_table`;
CREATE TABLE `disease_cate_table`  (
  `disease_id` int(11) NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disease_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disease_suitable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disease_taboo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`disease_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease_cate_table
-- ----------------------------
INSERT INTO `disease_cate_table` VALUES (1, '高血压', '高血压是心血管系统疾病中的一种常见病、多发病, 以动脉血压升高为其特征，其危害性表现在它有严重的并发症，最常见的并发症就是高血压能促进动脉硬化及动脉粥样硬化的发展。', '1、多摄入富含钾、镁、钙的食物，高血压患者的日常饮食要保障适量的豆类、奶制品、新鲜蔬菜及水果的摄入，如芋头、茄子、莴笋、海带及西瓜等；  2、适量摄入蛋白质，如大豆蛋白、鱼类蛋白质，需要强调的是，高血压合并肾功能不全的患者，应限制蛋白质的摄入；  3、多摄入绿色蔬菜和新鲜水果，如芹菜、韭菜及荠菜等蔬菜类和西红柿、香蕉及山楂等水果类，都是有益降低血压的食物。', '1、限制盐的摄入，限盐是控制血压的重要措施之一，如调味品、腌制食品、熟肉制品及各类零食等；  2、限制脂肪的摄入，高血压患者饮食中应限制脂肪的过量摄入；  3、限制糖的摄入； 4、戒烟戒酒。');
INSERT INTO `disease_cate_table` VALUES (2, '高血脂', '高血脂症是人体内脂肪代谢失调，血脂增高的一种病症，常见于高血压、冠心病、 糖尿病、肾病综合征及单纯性肥胖等疾病。治疗高血脂症,要重视调理脾胃，调节饮食。', '1、多吃新鲜蔬菜与水果；  2、多吃大豆食品；  3、多饮水；  4、多食含钙食物；  5、多食具有降脂作用的食物如山楂、苹果、梨、猕猴桃、柑橘、洋葱、大蒜、香菇、木耳、大豆及制品等。 高血脂应吃五种食物：鱼类、大蒜、茄子、海带、植物油（芝麻油、玉米油、花生油等为佳）。', '1、少吃甜食点心、糖类及含糖量较高的水果；  2、少吃肥肉蛋类及油炸食物；3、控制饮酒及大量饮啤酒； 4、适当节食，晚饭不可吃得过饱，平时少吃零食。');
INSERT INTO `disease_cate_table` VALUES (3, '消渴症(上消型)', '糖尿病中医称为消渴病，是常见的内分泌代谢疾病，由人体内胰岛素缺乏而引起的糖代谢紊乱所致。以烦渴多饮、易饥易食、多尿，以及疲乏、消瘦为主要特征。中医一般将糖尿病分为上消、中消、下消三种类型，采用药膳辨治，有助于降低血糖及尿糖，减轻或消除症状。 上消以多饮为主，口渴喜饮，随饮随渴，小便较多，色黄，咽干灼热，口干唇燥，食量如常，舌红少津，苔黄而干。', '1、控制每日膳食所摄入热量的总值，日常饮食中可以以如荞麦、玉米、紫山药等富含多种微量元素及膳食纤维的低糖、低淀粉的粗粮食物或者蔬菜作为主食食用。平时可以多吃豆类或豆制类产品，另外包括南瓜、桑叶、苦瓜、柚子、洋葱在内的瓜果蔬菜类。2、低脂肪、低盐的烹饪方式。饮食低盐、低 油类食物，尽量食用水煮、蒸、微波烹煮的食物，减少煎炸类高油食品的摄取，多食用富含维生素的新鲜食物。3 多饮水，适量摄取高纤维食物。', '1、不能摄入包括动物内脏、脂油的一些会使血脂升高，导致动脉粥样硬化的食物。2、炒菜时要尽量少用豆酱、耗油、辣椒等调味品。3、少饮酒。4、尽量少吃或不吃零食，尤其是糕点类和坚果类零食。6、无糖食物不可多吃。');
INSERT INTO `disease_cate_table` VALUES (4, '风湿病', '风湿病病因复杂、缠绵难愈，临床多表现为风湿寒性关节痛、风湿性关节炎、类风湿性关节炎、强直 性脊椎炎、坐骨神经痛。', '主要宜选用高蛋白、高维生素及容易消化的食物，合理的营养搭配，满足患者机体营养及能量的需要，有利于疾病的康复。适宜食材有薏苡仁、木瓜、豆、百合、白芥子、山药、栗子、胡桃、鲈鱼、桑葚、淡菜等。', '风湿病的饮食是没有太多禁忌的，一般来说，行(风)痹患者宜用葱、姜等辛温发散之品；寒(痛)痹患者宜用胡椒、干姜等温热之品，忌食雪糕冰棍等冰冻生冷的食物；湿(着)痹患者宜用茯苓、冬瓜、苡米等健脾祛湿之品；热痹患者宜用绿豆、冬瓜等，不宜饮酒及吃辛辣刺激性食物。');
INSERT INTO `disease_cate_table` VALUES (5, '便秘(热秘)', '中医认为，便秘主要为肠胃积热、气机郁滞、阴亏血少、阴寒凝滞所致。因而，便秘一症，中医辨证主要分为热秘、阴虚秘、虚秘和冷秘四个分类。其中热秘通常表现为大便干结，口臭口干、肚 子疼、胀气，舌红苔黄。', '多吃含渣滓较多的食物，特别是含纤维素多的新鲜蔬菜，如芹菜、韭菜等。因为这类食物促使肠蠕动加快, 使粪便易于排出体外。必要时还可用些能产生气体的食物, 如洋葱、黄豆、萝卜等来刺激肠道蠕动。', '饮食上应避免过度煎炒、酒类、辛辣之品，亦不可过食寒凉食物。辣椒、浓茶、酒类等刺激性食品不利于大便的通畅, 不宜食用。');
INSERT INTO `disease_cate_table` VALUES (6, '小儿咳嗽(风热)', '孩子患呼吸道感染、麻疹、流感、百日咳等病时，常伴有咳嗽症状。因致病因素不同，咳嗽在临床上常分为风寒咳嗽、风热咳嗽等型。其中风热咳嗽，痰色黄而粘稠 ，流鼻涕，舌苔薄黄，脉象浮数等。孩子患咳嗽后，除对症用药治疗外，采用相应的药膳作为辅助治疗，疗效更为显著。', '由于风热咳嗽，咳嗽痰多，痰黄稠黏，伴有发热出汗，咽干疼痛，口渴，大便干，小便黄，咽充血。食宜辛凉清淡的食品，如菊花、白萝卜、白菜、黄瓜以及生梨、甜橙、藕等。', '食忌酸、涩食品，如食醋、酸葡萄、李子、柠檬、山楂等；忌辛热食品, 如大葱、大蒜、姜、辣椒、茴香、桂圆肉等；忌肥腻食品，如炸鸡、猪排、肥肉等。');

-- ----------------------------
-- Table structure for disease_conn_table
-- ----------------------------
DROP TABLE IF EXISTS `disease_conn_table`;
CREATE TABLE `disease_conn_table`  (
  `disease_conn_id` int(11) NOT NULL AUTO_INCREMENT,
  `disease_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_category` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`disease_conn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease_conn_table
-- ----------------------------
INSERT INTO `disease_conn_table` VALUES (1, 1, 21, 1);
INSERT INTO `disease_conn_table` VALUES (2, 1, 32, 1);
INSERT INTO `disease_conn_table` VALUES (3, 1, 117, 1);
INSERT INTO `disease_conn_table` VALUES (4, 1, 118, 1);
INSERT INTO `disease_conn_table` VALUES (5, 1, 125, 1);
INSERT INTO `disease_conn_table` VALUES (6, 1, 192, 1);
INSERT INTO `disease_conn_table` VALUES (7, 1, 238, 1);
INSERT INTO `disease_conn_table` VALUES (8, 1, 243, 1);
INSERT INTO `disease_conn_table` VALUES (9, 1, 110, 1);
INSERT INTO `disease_conn_table` VALUES (10, 2, 206, 1);
INSERT INTO `disease_conn_table` VALUES (11, 2, 243, 1);
INSERT INTO `disease_conn_table` VALUES (12, 3, 22, 1);
INSERT INTO `disease_conn_table` VALUES (13, 3, 159, 1);
INSERT INTO `disease_conn_table` VALUES (14, 3, 160, 1);
INSERT INTO `disease_conn_table` VALUES (15, 3, 174, 1);
INSERT INTO `disease_conn_table` VALUES (16, 3, 206, 1);
INSERT INTO `disease_conn_table` VALUES (17, 3, 207, 1);
INSERT INTO `disease_conn_table` VALUES (18, 4, 3, 1);
INSERT INTO `disease_conn_table` VALUES (19, 4, 43, 1);
INSERT INTO `disease_conn_table` VALUES (20, 4, 47, 1);
INSERT INTO `disease_conn_table` VALUES (21, 4, 49, 1);
INSERT INTO `disease_conn_table` VALUES (22, 4, 50, 1);
INSERT INTO `disease_conn_table` VALUES (23, 4, 51, 1);
INSERT INTO `disease_conn_table` VALUES (24, 4, 52, 1);
INSERT INTO `disease_conn_table` VALUES (25, 4, 53, 1);
INSERT INTO `disease_conn_table` VALUES (26, 4, 54, 1);
INSERT INTO `disease_conn_table` VALUES (27, 4, 55, 1);
INSERT INTO `disease_conn_table` VALUES (28, 4, 185, 1);
INSERT INTO `disease_conn_table` VALUES (29, 4, 187, 1);
INSERT INTO `disease_conn_table` VALUES (30, 5, 21, 1);
INSERT INTO `disease_conn_table` VALUES (31, 5, 30, 1);
INSERT INTO `disease_conn_table` VALUES (32, 5, 31, 1);
INSERT INTO `disease_conn_table` VALUES (33, 5, 32, 1);
INSERT INTO `disease_conn_table` VALUES (34, 5, 36, 1);
INSERT INTO `disease_conn_table` VALUES (35, 5, 63, 1);
INSERT INTO `disease_conn_table` VALUES (36, 5, 82, 1);
INSERT INTO `disease_conn_table` VALUES (37, 5, 130, 1);
INSERT INTO `disease_conn_table` VALUES (38, 6, 257, 1);

-- ----------------------------
-- Table structure for efficacy_cate_table
-- ----------------------------
DROP TABLE IF EXISTS `efficacy_cate_table`;
CREATE TABLE `efficacy_cate_table`  (
  `efficacy_id` int(11) NOT NULL AUTO_INCREMENT,
  `efficacy_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `efficacy_crowd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `efficacy_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `efficacy_suitable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `efficacy_taboo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`efficacy_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of efficacy_cate_table
-- ----------------------------
INSERT INTO `efficacy_cate_table` VALUES (1, '止呕', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (2, '止痛', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (4, '健胃开胃', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (5, '清热', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (7, '生津止渴', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (8, '防暑', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (9, '减肥', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (11, '消肿', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (12, '杀虫', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (13, '润肠通便', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (14, '补气', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (15, '散寒', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (16, '补阳壮阳', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (17, '补血', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (18, '补虚', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (19, '补肝肾', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (20, '防癌', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (21, '明目', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (22, '化痰', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (23, '安神', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (24, '止咳', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (25, '解酒', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (26, '活血', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (27, '美容', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (28, '止血', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (29, '乌发', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (30, '延年益寿', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (31, '聪耳', 'null', '暂无', '暂无', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (32, '补肝', 'null', '肝位于腹腔，膈膜之下，右胁之内。肝为魂之处，血之藏，筋之宗，在五行属木，主动主升，被称为“将军之官”。肝的生理功能为主疏泄，又主藏血，与人的情志活动有关，并促进人体的消化和气、血、水的正常运行。故其生理特性可概括为：肝为刚脏，体阴而用阳；肝喜条达而恶抑郁。主要生理特性是肝为刚脏，体阴而用阳；肝喜条达而恶抑郁；肝与春气相应。', '绿色养肝。常见养肝绿色食物包括西兰花、绿豆、菠菜、黄瓜、丝瓜、芹菜、韭菜、青辣椒、苘蒿、莴笋、白菜、荠菜、油菜、四季豆、豆角、空心菜、木耳菜、绿苋莱、萝卜缨、青菜、苦瓜。', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (33, '养心', 'null', '心在中医文献中有血肉之心和神明之心之别。血肉之心，即指实质性的心脏；神明之心是指脑接受和反映外界事物，进行意识、思维、情志等精神活动的功能。中医学把精神意识思维活动归属于心，故有神明之心的说法。主要生理特性为心为阳脏而主阳气；心气与夏气相通应。', '红色补心。常见补心红色食物包括红豆、红薯、胡萝卜、红辣椒、红枣、番茄、山楂、香椿、草莓等。', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (34, '健脾', 'null', '脾的主要生理特性为喜燥而恶湿。脾之所以喜燥恶湿，是与其主运化水湿的生理功能有密切关系。脾胃在五行中属土，但按阴阳来分类，脾为阴土，胃为阳土。脾的阳气易衰，阴气易盛，脾又主运化水液，然湿邪侵犯人体，最易伤害脾阳。脾阳虚衰，不仅可引起湿浊内困，还易引起外湿侵袭。', '黄色益脾胃。常见药食两用黄色食物包括黄豆、牛蒡、脚板薯、薏米、韭黄、南瓜、苹果、蛋黄、粟米、玉米等。', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (35, '润肺', 'null', '肺居胸中，在诸脏腑中，肺的解剖位置最高，故称“华盖”。肺的位置最高，居于诸脏腑之首。肺叶娇嫩，不耐寒热。易被邪侵，故又称“娇脏”。肺在五行属金，专司呼吸，主宣发肃降，通调水道，朝百脉，主治节，协助心君调节气血运行，故称“相傅之官”。主要生理特性为肺为华盖，与外界直接相通；肺为娇脏，不耐寒热；肺与秋气相互通应。', '白色润肺。常见润肺白色食物包括冬瓜、白豆、梨、白萝卜、银耳、百合、茭白、莲藕、米面、豆腐、花菜、竹笋、淮山、凉薯等。', '暂无');
INSERT INTO `efficacy_cate_table` VALUES (36, '补肾', 'null', '肾位于腰部脊柱两侧，左右各一，右微下，左微上，外形椭圆弯曲，状如豇豆。主要生理特性为肾主闭藏；肾气与冬气相应。肾为先天之本，生命之源，有藏精主水、主骨生髓之功能。所以，肾气充盈，则精力充沛，筋骨强健，步履轻快，神思敏捷，肾气亏损则阳气虚弱，腰膝酸软，易感风寒，易生疾病等。', '黑色补肾。常见黑色食物包括黑米、黑豆、黑芝麻、黑木耳、紫菜等。补肾药膳是选用补肾气、温肾阳、滋肾阴的中药，配合一定食物，经烹调而成的药膳食品。', '暂无');

-- ----------------------------
-- Table structure for efficacy_conn_table
-- ----------------------------
DROP TABLE IF EXISTS `efficacy_conn_table`;
CREATE TABLE `efficacy_conn_table`  (
  `efficacy_conn_id` int(11) NOT NULL AUTO_INCREMENT,
  `efficacy_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_category` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`efficacy_conn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 913 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of efficacy_conn_table
-- ----------------------------
INSERT INTO `efficacy_conn_table` VALUES (1, 1, 1, 1);
INSERT INTO `efficacy_conn_table` VALUES (2, 2, 2, 1);
INSERT INTO `efficacy_conn_table` VALUES (3, 26, 3, 1);
INSERT INTO `efficacy_conn_table` VALUES (4, 4, 4, 1);
INSERT INTO `efficacy_conn_table` VALUES (5, 5, 6, 1);
INSERT INTO `efficacy_conn_table` VALUES (7, 7, 8, 1);
INSERT INTO `efficacy_conn_table` VALUES (8, 5, 9, 1);
INSERT INTO `efficacy_conn_table` VALUES (10, 5, 10, 1);
INSERT INTO `efficacy_conn_table` VALUES (12, 5, 11, 1);
INSERT INTO `efficacy_conn_table` VALUES (13, 7, 11, 1);
INSERT INTO `efficacy_conn_table` VALUES (14, 5, 12, 1);
INSERT INTO `efficacy_conn_table` VALUES (15, 28, 12, 1);
INSERT INTO `efficacy_conn_table` VALUES (16, 4, 13, 1);
INSERT INTO `efficacy_conn_table` VALUES (17, 7, 13, 1);
INSERT INTO `efficacy_conn_table` VALUES (19, 8, 14, 1);
INSERT INTO `efficacy_conn_table` VALUES (20, 5, 15, 1);
INSERT INTO `efficacy_conn_table` VALUES (21, 8, 15, 1);
INSERT INTO `efficacy_conn_table` VALUES (23, 8, 16, 1);
INSERT INTO `efficacy_conn_table` VALUES (24, 5, 17, 1);
INSERT INTO `efficacy_conn_table` VALUES (26, 5, 18, 1);
INSERT INTO `efficacy_conn_table` VALUES (27, 11, 18, 1);
INSERT INTO `efficacy_conn_table` VALUES (28, 5, 19, 1);
INSERT INTO `efficacy_conn_table` VALUES (29, 5, 20, 1);
INSERT INTO `efficacy_conn_table` VALUES (30, 5, 21, 1);
INSERT INTO `efficacy_conn_table` VALUES (31, 5, 22, 1);
INSERT INTO `efficacy_conn_table` VALUES (32, 7, 22, 1);
INSERT INTO `efficacy_conn_table` VALUES (33, 1, 23, 1);
INSERT INTO `efficacy_conn_table` VALUES (34, 7, 23, 1);
INSERT INTO `efficacy_conn_table` VALUES (35, 2, 24, 1);
INSERT INTO `efficacy_conn_table` VALUES (36, 5, 24, 1);
INSERT INTO `efficacy_conn_table` VALUES (37, 5, 25, 1);
INSERT INTO `efficacy_conn_table` VALUES (38, 5, 26, 1);
INSERT INTO `efficacy_conn_table` VALUES (39, 5, 27, 1);
INSERT INTO `efficacy_conn_table` VALUES (40, 5, 28, 1);
INSERT INTO `efficacy_conn_table` VALUES (41, 12, 28, 1);
INSERT INTO `efficacy_conn_table` VALUES (42, 5, 29, 1);
INSERT INTO `efficacy_conn_table` VALUES (43, 13, 30, 1);
INSERT INTO `efficacy_conn_table` VALUES (44, 11, 31, 1);
INSERT INTO `efficacy_conn_table` VALUES (45, 13, 31, 1);
INSERT INTO `efficacy_conn_table` VALUES (46, 13, 32, 1);
INSERT INTO `efficacy_conn_table` VALUES (47, 13, 33, 1);
INSERT INTO `efficacy_conn_table` VALUES (49, 13, 34, 1);
INSERT INTO `efficacy_conn_table` VALUES (50, 18, 34, 1);
INSERT INTO `efficacy_conn_table` VALUES (51, 5, 35, 1);
INSERT INTO `efficacy_conn_table` VALUES (54, 2, 37, 1);
INSERT INTO `efficacy_conn_table` VALUES (56, 1, 38, 1);
INSERT INTO `efficacy_conn_table` VALUES (57, 2, 38, 1);
INSERT INTO `efficacy_conn_table` VALUES (59, 18, 39, 1);
INSERT INTO `efficacy_conn_table` VALUES (60, 15, 39, 1);
INSERT INTO `efficacy_conn_table` VALUES (63, 18, 41, 1);
INSERT INTO `efficacy_conn_table` VALUES (64, 34, 41, 1);
INSERT INTO `efficacy_conn_table` VALUES (65, 16, 42, 1);
INSERT INTO `efficacy_conn_table` VALUES (66, 2, 43, 1);
INSERT INTO `efficacy_conn_table` VALUES (67, 15, 43, 1);
INSERT INTO `efficacy_conn_table` VALUES (69, 2, 44, 1);
INSERT INTO `efficacy_conn_table` VALUES (70, 15, 44, 1);
INSERT INTO `efficacy_conn_table` VALUES (72, 2, 45, 1);
INSERT INTO `efficacy_conn_table` VALUES (75, 18, 45, 1);
INSERT INTO `efficacy_conn_table` VALUES (76, 2, 46, 1);
INSERT INTO `efficacy_conn_table` VALUES (77, 15, 46, 1);
INSERT INTO `efficacy_conn_table` VALUES (79, 2, 47, 1);
INSERT INTO `efficacy_conn_table` VALUES (81, 15, 47, 1);
INSERT INTO `efficacy_conn_table` VALUES (83, 2, 48, 1);
INSERT INTO `efficacy_conn_table` VALUES (85, 15, 48, 1);
INSERT INTO `efficacy_conn_table` VALUES (86, 16, 48, 1);
INSERT INTO `efficacy_conn_table` VALUES (88, 19, 49, 1);
INSERT INTO `efficacy_conn_table` VALUES (89, 2, 50, 1);
INSERT INTO `efficacy_conn_table` VALUES (92, 2, 51, 1);
INSERT INTO `efficacy_conn_table` VALUES (94, 2, 52, 1);
INSERT INTO `efficacy_conn_table` VALUES (97, 2, 53, 1);
INSERT INTO `efficacy_conn_table` VALUES (99, 19, 53, 1);
INSERT INTO `efficacy_conn_table` VALUES (100, 2, 54, 1);
INSERT INTO `efficacy_conn_table` VALUES (101, 15, 54, 1);
INSERT INTO `efficacy_conn_table` VALUES (103, 34, 56, 1);
INSERT INTO `efficacy_conn_table` VALUES (105, 11, 56, 1);
INSERT INTO `efficacy_conn_table` VALUES (109, 5, 57, 1);
INSERT INTO `efficacy_conn_table` VALUES (110, 11, 57, 1);
INSERT INTO `efficacy_conn_table` VALUES (111, 5, 58, 1);
INSERT INTO `efficacy_conn_table` VALUES (113, 11, 59, 1);
INSERT INTO `efficacy_conn_table` VALUES (114, 34, 60, 1);
INSERT INTO `efficacy_conn_table` VALUES (115, 11, 60, 1);
INSERT INTO `efficacy_conn_table` VALUES (116, 5, 61, 1);
INSERT INTO `efficacy_conn_table` VALUES (117, 5, 62, 1);
INSERT INTO `efficacy_conn_table` VALUES (119, 5, 63, 1);
INSERT INTO `efficacy_conn_table` VALUES (120, 5, 64, 1);
INSERT INTO `efficacy_conn_table` VALUES (121, 5, 65, 1);
INSERT INTO `efficacy_conn_table` VALUES (124, 5, 66, 1);
INSERT INTO `efficacy_conn_table` VALUES (125, 5, 67, 1);
INSERT INTO `efficacy_conn_table` VALUES (127, 5, 68, 1);
INSERT INTO `efficacy_conn_table` VALUES (132, 34, 71, 1);
INSERT INTO `efficacy_conn_table` VALUES (133, 22, 71, 1);
INSERT INTO `efficacy_conn_table` VALUES (137, 22, 73, 1);
INSERT INTO `efficacy_conn_table` VALUES (139, 22, 74, 1);
INSERT INTO `efficacy_conn_table` VALUES (140, 22, 75, 1);
INSERT INTO `efficacy_conn_table` VALUES (141, 23, 75, 1);
INSERT INTO `efficacy_conn_table` VALUES (142, 5, 76, 1);
INSERT INTO `efficacy_conn_table` VALUES (143, 22, 76, 1);
INSERT INTO `efficacy_conn_table` VALUES (144, 22, 77, 1);
INSERT INTO `efficacy_conn_table` VALUES (145, 24, 77, 1);
INSERT INTO `efficacy_conn_table` VALUES (147, 24, 78, 1);
INSERT INTO `efficacy_conn_table` VALUES (151, 24, 79, 1);
INSERT INTO `efficacy_conn_table` VALUES (152, 15, 80, 1);
INSERT INTO `efficacy_conn_table` VALUES (153, 24, 80, 1);
INSERT INTO `efficacy_conn_table` VALUES (154, 22, 81, 1);
INSERT INTO `efficacy_conn_table` VALUES (155, 24, 82, 1);
INSERT INTO `efficacy_conn_table` VALUES (162, 4, 86, 1);
INSERT INTO `efficacy_conn_table` VALUES (163, 4, 87, 1);
INSERT INTO `efficacy_conn_table` VALUES (165, 4, 88, 1);
INSERT INTO `efficacy_conn_table` VALUES (166, 5, 88, 1);
INSERT INTO `efficacy_conn_table` VALUES (169, 4, 89, 1);
INSERT INTO `efficacy_conn_table` VALUES (173, 34, 90, 1);
INSERT INTO `efficacy_conn_table` VALUES (177, 34, 91, 1);
INSERT INTO `efficacy_conn_table` VALUES (179, 34, 92, 1);
INSERT INTO `efficacy_conn_table` VALUES (180, 23, 92, 1);
INSERT INTO `efficacy_conn_table` VALUES (181, 4, 93, 1);
INSERT INTO `efficacy_conn_table` VALUES (182, 34, 93, 1);
INSERT INTO `efficacy_conn_table` VALUES (183, 15, 93, 1);
INSERT INTO `efficacy_conn_table` VALUES (186, 34, 94, 1);
INSERT INTO `efficacy_conn_table` VALUES (187, 22, 94, 1);
INSERT INTO `efficacy_conn_table` VALUES (188, 5, 95, 1);
INSERT INTO `efficacy_conn_table` VALUES (189, 25, 95, 1);
INSERT INTO `efficacy_conn_table` VALUES (190, 25, 96, 1);
INSERT INTO `efficacy_conn_table` VALUES (191, 5, 97, 1);
INSERT INTO `efficacy_conn_table` VALUES (192, 7, 97, 1);
INSERT INTO `efficacy_conn_table` VALUES (193, 25, 97, 1);
INSERT INTO `efficacy_conn_table` VALUES (196, 2, 99, 1);
INSERT INTO `efficacy_conn_table` VALUES (198, 15, 99, 1);
INSERT INTO `efficacy_conn_table` VALUES (199, 2, 100, 1);
INSERT INTO `efficacy_conn_table` VALUES (201, 2, 101, 1);
INSERT INTO `efficacy_conn_table` VALUES (202, 4, 101, 1);
INSERT INTO `efficacy_conn_table` VALUES (205, 15, 101, 1);
INSERT INTO `efficacy_conn_table` VALUES (206, 2, 102, 1);
INSERT INTO `efficacy_conn_table` VALUES (207, 1, 103, 1);
INSERT INTO `efficacy_conn_table` VALUES (209, 34, 103, 1);
INSERT INTO `efficacy_conn_table` VALUES (210, 22, 103, 1);
INSERT INTO `efficacy_conn_table` VALUES (213, 5, 104, 1);
INSERT INTO `efficacy_conn_table` VALUES (215, 22, 105, 1);
INSERT INTO `efficacy_conn_table` VALUES (216, 11, 106, 1);
INSERT INTO `efficacy_conn_table` VALUES (217, 26, 106, 1);
INSERT INTO `efficacy_conn_table` VALUES (218, 26, 107, 1);
INSERT INTO `efficacy_conn_table` VALUES (220, 26, 108, 1);
INSERT INTO `efficacy_conn_table` VALUES (224, 23, 109, 1);
INSERT INTO `efficacy_conn_table` VALUES (225, 26, 109, 1);
INSERT INTO `efficacy_conn_table` VALUES (226, 2, 110, 1);
INSERT INTO `efficacy_conn_table` VALUES (230, 28, 111, 1);
INSERT INTO `efficacy_conn_table` VALUES (233, 26, 112, 1);
INSERT INTO `efficacy_conn_table` VALUES (235, 2, 113, 1);
INSERT INTO `efficacy_conn_table` VALUES (236, 26, 113, 1);
INSERT INTO `efficacy_conn_table` VALUES (238, 26, 114, 1);
INSERT INTO `efficacy_conn_table` VALUES (241, 26, 115, 1);
INSERT INTO `efficacy_conn_table` VALUES (243, 26, 116, 1);
INSERT INTO `efficacy_conn_table` VALUES (244, 5, 117, 1);
INSERT INTO `efficacy_conn_table` VALUES (245, 28, 117, 1);
INSERT INTO `efficacy_conn_table` VALUES (247, 28, 118, 1);
INSERT INTO `efficacy_conn_table` VALUES (248, 28, 119, 1);
INSERT INTO `efficacy_conn_table` VALUES (250, 28, 120, 1);
INSERT INTO `efficacy_conn_table` VALUES (251, 14, 121, 1);
INSERT INTO `efficacy_conn_table` VALUES (252, 28, 121, 1);
INSERT INTO `efficacy_conn_table` VALUES (253, 5, 122, 1);
INSERT INTO `efficacy_conn_table` VALUES (255, 28, 122, 1);
INSERT INTO `efficacy_conn_table` VALUES (258, 17, 123, 1);
INSERT INTO `efficacy_conn_table` VALUES (259, 28, 123, 1);
INSERT INTO `efficacy_conn_table` VALUES (262, 26, 124, 1);
INSERT INTO `efficacy_conn_table` VALUES (264, 28, 124, 1);
INSERT INTO `efficacy_conn_table` VALUES (265, 5, 125, 1);
INSERT INTO `efficacy_conn_table` VALUES (267, 21, 125, 1);
INSERT INTO `efficacy_conn_table` VALUES (268, 28, 125, 1);
INSERT INTO `efficacy_conn_table` VALUES (269, 15, 126, 1);
INSERT INTO `efficacy_conn_table` VALUES (270, 28, 126, 1);
INSERT INTO `efficacy_conn_table` VALUES (272, 28, 127, 1);
INSERT INTO `efficacy_conn_table` VALUES (273, 23, 128, 1);
INSERT INTO `efficacy_conn_table` VALUES (274, 24, 128, 1);
INSERT INTO `efficacy_conn_table` VALUES (276, 23, 129, 1);
INSERT INTO `efficacy_conn_table` VALUES (278, 13, 130, 1);
INSERT INTO `efficacy_conn_table` VALUES (279, 23, 130, 1);
INSERT INTO `efficacy_conn_table` VALUES (281, 23, 131, 1);
INSERT INTO `efficacy_conn_table` VALUES (282, 7, 132, 1);
INSERT INTO `efficacy_conn_table` VALUES (284, 23, 132, 1);
INSERT INTO `efficacy_conn_table` VALUES (285, 34, 133, 1);
INSERT INTO `efficacy_conn_table` VALUES (286, 23, 133, 1);
INSERT INTO `efficacy_conn_table` VALUES (287, 5, 134, 1);
INSERT INTO `efficacy_conn_table` VALUES (289, 23, 134, 1);
INSERT INTO `efficacy_conn_table` VALUES (291, 23, 135, 1);
INSERT INTO `efficacy_conn_table` VALUES (292, 23, 136, 1);
INSERT INTO `efficacy_conn_table` VALUES (293, 2, 137, 1);
INSERT INTO `efficacy_conn_table` VALUES (294, 26, 137, 1);
INSERT INTO `efficacy_conn_table` VALUES (296, 23, 137, 1);
INSERT INTO `efficacy_conn_table` VALUES (297, 5, 138, 1);
INSERT INTO `efficacy_conn_table` VALUES (300, 5, 139, 1);
INSERT INTO `efficacy_conn_table` VALUES (301, 23, 139, 1);
INSERT INTO `efficacy_conn_table` VALUES (302, 2, 140, 1);
INSERT INTO `efficacy_conn_table` VALUES (303, 5, 140, 1);
INSERT INTO `efficacy_conn_table` VALUES (304, 21, 140, 1);
INSERT INTO `efficacy_conn_table` VALUES (305, 5, 141, 1);
INSERT INTO `efficacy_conn_table` VALUES (306, 4, 141, 1);
INSERT INTO `efficacy_conn_table` VALUES (314, 23, 143, 1);
INSERT INTO `efficacy_conn_table` VALUES (316, 14, 144, 1);
INSERT INTO `efficacy_conn_table` VALUES (319, 7, 145, 1);
INSERT INTO `efficacy_conn_table` VALUES (321, 7, 146, 1);
INSERT INTO `efficacy_conn_table` VALUES (322, 28, 146, 1);
INSERT INTO `efficacy_conn_table` VALUES (323, 24, 146, 1);
INSERT INTO `efficacy_conn_table` VALUES (328, 23, 147, 1);
INSERT INTO `efficacy_conn_table` VALUES (331, 23, 148, 1);
INSERT INTO `efficacy_conn_table` VALUES (341, 34, 153, 1);
INSERT INTO `efficacy_conn_table` VALUES (342, 21, 153, 1);
INSERT INTO `efficacy_conn_table` VALUES (343, 34, 154, 1);
INSERT INTO `efficacy_conn_table` VALUES (345, 24, 154, 1);
INSERT INTO `efficacy_conn_table` VALUES (346, 34, 155, 1);
INSERT INTO `efficacy_conn_table` VALUES (348, 18, 156, 1);
INSERT INTO `efficacy_conn_table` VALUES (354, 14, 157, 1);
INSERT INTO `efficacy_conn_table` VALUES (355, 34, 158, 1);
INSERT INTO `efficacy_conn_table` VALUES (356, 18, 158, 1);
INSERT INTO `efficacy_conn_table` VALUES (357, 14, 158, 1);
INSERT INTO `efficacy_conn_table` VALUES (360, 34, 159, 1);
INSERT INTO `efficacy_conn_table` VALUES (364, 14, 160, 1);
INSERT INTO `efficacy_conn_table` VALUES (367, 18, 160, 1);
INSERT INTO `efficacy_conn_table` VALUES (369, 18, 161, 1);
INSERT INTO `efficacy_conn_table` VALUES (370, 14, 161, 1);
INSERT INTO `efficacy_conn_table` VALUES (373, 34, 162, 1);
INSERT INTO `efficacy_conn_table` VALUES (374, 14, 162, 1);
INSERT INTO `efficacy_conn_table` VALUES (376, 14, 163, 1);
INSERT INTO `efficacy_conn_table` VALUES (381, 14, 164, 1);
INSERT INTO `efficacy_conn_table` VALUES (383, 7, 165, 1);
INSERT INTO `efficacy_conn_table` VALUES (384, 14, 165, 1);
INSERT INTO `efficacy_conn_table` VALUES (387, 34, 166, 1);
INSERT INTO `efficacy_conn_table` VALUES (388, 18, 166, 1);
INSERT INTO `efficacy_conn_table` VALUES (395, 14, 168, 1);
INSERT INTO `efficacy_conn_table` VALUES (396, 34, 169, 1);
INSERT INTO `efficacy_conn_table` VALUES (397, 17, 169, 1);
INSERT INTO `efficacy_conn_table` VALUES (399, 14, 170, 1);
INSERT INTO `efficacy_conn_table` VALUES (400, 17, 170, 1);
INSERT INTO `efficacy_conn_table` VALUES (401, 17, 171, 1);
INSERT INTO `efficacy_conn_table` VALUES (402, 19, 171, 1);
INSERT INTO `efficacy_conn_table` VALUES (408, 17, 172, 1);
INSERT INTO `efficacy_conn_table` VALUES (409, 19, 172, 1);
INSERT INTO `efficacy_conn_table` VALUES (412, 17, 173, 1);
INSERT INTO `efficacy_conn_table` VALUES (415, 17, 174, 1);
INSERT INTO `efficacy_conn_table` VALUES (417, 13, 175, 1);
INSERT INTO `efficacy_conn_table` VALUES (418, 17, 175, 1);
INSERT INTO `efficacy_conn_table` VALUES (419, 26, 175, 1);
INSERT INTO `efficacy_conn_table` VALUES (423, 17, 176, 1);
INSERT INTO `efficacy_conn_table` VALUES (427, 17, 177, 1);
INSERT INTO `efficacy_conn_table` VALUES (428, 23, 177, 1);
INSERT INTO `efficacy_conn_table` VALUES (430, 17, 178, 1);
INSERT INTO `efficacy_conn_table` VALUES (434, 34, 178, 1);
INSERT INTO `efficacy_conn_table` VALUES (438, 17, 179, 1);
INSERT INTO `efficacy_conn_table` VALUES (441, 14, 179, 1);
INSERT INTO `efficacy_conn_table` VALUES (445, 14, 180, 1);
INSERT INTO `efficacy_conn_table` VALUES (449, 14, 181, 1);
INSERT INTO `efficacy_conn_table` VALUES (450, 17, 181, 1);
INSERT INTO `efficacy_conn_table` VALUES (453, 14, 182, 1);
INSERT INTO `efficacy_conn_table` VALUES (454, 17, 182, 1);
INSERT INTO `efficacy_conn_table` VALUES (455, 23, 182, 1);
INSERT INTO `efficacy_conn_table` VALUES (458, 16, 183, 1);
INSERT INTO `efficacy_conn_table` VALUES (460, 14, 184, 1);
INSERT INTO `efficacy_conn_table` VALUES (461, 16, 184, 1);
INSERT INTO `efficacy_conn_table` VALUES (462, 17, 184, 1);
INSERT INTO `efficacy_conn_table` VALUES (465, 16, 185, 1);
INSERT INTO `efficacy_conn_table` VALUES (471, 16, 186, 1);
INSERT INTO `efficacy_conn_table` VALUES (474, 16, 187, 1);
INSERT INTO `efficacy_conn_table` VALUES (476, 16, 188, 1);
INSERT INTO `efficacy_conn_table` VALUES (479, 16, 189, 1);
INSERT INTO `efficacy_conn_table` VALUES (480, 19, 189, 1);
INSERT INTO `efficacy_conn_table` VALUES (481, 16, 190, 1);
INSERT INTO `efficacy_conn_table` VALUES (482, 17, 190, 1);
INSERT INTO `efficacy_conn_table` VALUES (487, 16, 191, 1);
INSERT INTO `efficacy_conn_table` VALUES (490, 16, 192, 1);
INSERT INTO `efficacy_conn_table` VALUES (492, 16, 193, 1);
INSERT INTO `efficacy_conn_table` VALUES (493, 18, 193, 1);
INSERT INTO `efficacy_conn_table` VALUES (494, 24, 193, 1);
INSERT INTO `efficacy_conn_table` VALUES (497, 15, 194, 1);
INSERT INTO `efficacy_conn_table` VALUES (498, 22, 194, 1);
INSERT INTO `efficacy_conn_table` VALUES (500, 14, 195, 1);
INSERT INTO `efficacy_conn_table` VALUES (501, 24, 195, 1);
INSERT INTO `efficacy_conn_table` VALUES (504, 18, 196, 1);
INSERT INTO `efficacy_conn_table` VALUES (512, 7, 197, 1);
INSERT INTO `efficacy_conn_table` VALUES (513, 19, 198, 1);
INSERT INTO `efficacy_conn_table` VALUES (516, 7, 199, 1);
INSERT INTO `efficacy_conn_table` VALUES (518, 19, 200, 1);
INSERT INTO `efficacy_conn_table` VALUES (528, 23, 202, 1);
INSERT INTO `efficacy_conn_table` VALUES (530, 19, 203, 1);
INSERT INTO `efficacy_conn_table` VALUES (531, 19, 204, 1);
INSERT INTO `efficacy_conn_table` VALUES (532, 5, 204, 1);
INSERT INTO `efficacy_conn_table` VALUES (533, 21, 204, 1);
INSERT INTO `efficacy_conn_table` VALUES (536, 14, 205, 1);
INSERT INTO `efficacy_conn_table` VALUES (538, 9, 206, 1);
INSERT INTO `efficacy_conn_table` VALUES (540, 34, 207, 1);
INSERT INTO `efficacy_conn_table` VALUES (541, 9, 207, 1);
INSERT INTO `efficacy_conn_table` VALUES (545, 34, 208, 1);
INSERT INTO `efficacy_conn_table` VALUES (546, 9, 208, 1);
INSERT INTO `efficacy_conn_table` VALUES (547, 14, 208, 1);
INSERT INTO `efficacy_conn_table` VALUES (552, 9, 209, 1);
INSERT INTO `efficacy_conn_table` VALUES (556, 9, 210, 1);
INSERT INTO `efficacy_conn_table` VALUES (558, 5, 210, 1);
INSERT INTO `efficacy_conn_table` VALUES (559, 11, 210, 1);
INSERT INTO `efficacy_conn_table` VALUES (561, 7, 210, 1);
INSERT INTO `efficacy_conn_table` VALUES (562, 34, 211, 1);
INSERT INTO `efficacy_conn_table` VALUES (563, 9, 211, 1);
INSERT INTO `efficacy_conn_table` VALUES (564, 14, 211, 1);
INSERT INTO `efficacy_conn_table` VALUES (566, 34, 212, 1);
INSERT INTO `efficacy_conn_table` VALUES (567, 9, 212, 1);
INSERT INTO `efficacy_conn_table` VALUES (570, 9, 213, 1);
INSERT INTO `efficacy_conn_table` VALUES (571, 27, 213, 1);
INSERT INTO `efficacy_conn_table` VALUES (576, 27, 214, 1);
INSERT INTO `efficacy_conn_table` VALUES (577, 29, 214, 1);
INSERT INTO `efficacy_conn_table` VALUES (580, 29, 215, 1);
INSERT INTO `efficacy_conn_table` VALUES (583, 19, 216, 1);
INSERT INTO `efficacy_conn_table` VALUES (584, 29, 216, 1);
INSERT INTO `efficacy_conn_table` VALUES (585, 14, 217, 1);
INSERT INTO `efficacy_conn_table` VALUES (586, 17, 217, 1);
INSERT INTO `efficacy_conn_table` VALUES (591, 21, 218, 1);
INSERT INTO `efficacy_conn_table` VALUES (592, 29, 218, 1);
INSERT INTO `efficacy_conn_table` VALUES (596, 17, 219, 1);
INSERT INTO `efficacy_conn_table` VALUES (597, 26, 219, 1);
INSERT INTO `efficacy_conn_table` VALUES (598, 27, 219, 1);
INSERT INTO `efficacy_conn_table` VALUES (599, 29, 219, 1);
INSERT INTO `efficacy_conn_table` VALUES (601, 26, 220, 1);
INSERT INTO `efficacy_conn_table` VALUES (602, 27, 220, 1);
INSERT INTO `efficacy_conn_table` VALUES (605, 19, 221, 1);
INSERT INTO `efficacy_conn_table` VALUES (606, 27, 221, 1);
INSERT INTO `efficacy_conn_table` VALUES (609, 19, 222, 1);
INSERT INTO `efficacy_conn_table` VALUES (610, 27, 222, 1);
INSERT INTO `efficacy_conn_table` VALUES (612, 19, 223, 1);
INSERT INTO `efficacy_conn_table` VALUES (613, 27, 223, 1);
INSERT INTO `efficacy_conn_table` VALUES (617, 17, 223, 1);
INSERT INTO `efficacy_conn_table` VALUES (618, 27, 224, 1);
INSERT INTO `efficacy_conn_table` VALUES (620, 26, 224, 1);
INSERT INTO `efficacy_conn_table` VALUES (622, 34, 225, 1);
INSERT INTO `efficacy_conn_table` VALUES (623, 27, 225, 1);
INSERT INTO `efficacy_conn_table` VALUES (627, 27, 226, 1);
INSERT INTO `efficacy_conn_table` VALUES (629, 19, 226, 1);
INSERT INTO `efficacy_conn_table` VALUES (631, 27, 227, 1);
INSERT INTO `efficacy_conn_table` VALUES (633, 27, 228, 1);
INSERT INTO `efficacy_conn_table` VALUES (634, 34, 229, 1);
INSERT INTO `efficacy_conn_table` VALUES (635, 27, 229, 1);
INSERT INTO `efficacy_conn_table` VALUES (636, 17, 230, 1);
INSERT INTO `efficacy_conn_table` VALUES (637, 27, 230, 1);
INSERT INTO `efficacy_conn_table` VALUES (640, 34, 231, 1);
INSERT INTO `efficacy_conn_table` VALUES (641, 14, 231, 1);
INSERT INTO `efficacy_conn_table` VALUES (643, 23, 232, 1);
INSERT INTO `efficacy_conn_table` VALUES (644, 29, 232, 1);
INSERT INTO `efficacy_conn_table` VALUES (645, 30, 232, 1);
INSERT INTO `efficacy_conn_table` VALUES (647, 29, 233, 1);
INSERT INTO `efficacy_conn_table` VALUES (648, 30, 233, 1);
INSERT INTO `efficacy_conn_table` VALUES (651, 14, 234, 1);
INSERT INTO `efficacy_conn_table` VALUES (653, 30, 234, 1);
INSERT INTO `efficacy_conn_table` VALUES (659, 30, 235, 1);
INSERT INTO `efficacy_conn_table` VALUES (661, 34, 236, 1);
INSERT INTO `efficacy_conn_table` VALUES (663, 30, 236, 1);
INSERT INTO `efficacy_conn_table` VALUES (665, 34, 237, 1);
INSERT INTO `efficacy_conn_table` VALUES (666, 18, 237, 1);
INSERT INTO `efficacy_conn_table` VALUES (669, 30, 237, 1);
INSERT INTO `efficacy_conn_table` VALUES (670, 34, 238, 1);
INSERT INTO `efficacy_conn_table` VALUES (672, 21, 238, 1);
INSERT INTO `efficacy_conn_table` VALUES (674, 17, 239, 1);
INSERT INTO `efficacy_conn_table` VALUES (675, 21, 239, 1);
INSERT INTO `efficacy_conn_table` VALUES (677, 21, 240, 1);
INSERT INTO `efficacy_conn_table` VALUES (678, 30, 240, 1);
INSERT INTO `efficacy_conn_table` VALUES (683, 19, 241, 1);
INSERT INTO `efficacy_conn_table` VALUES (684, 21, 241, 1);
INSERT INTO `efficacy_conn_table` VALUES (688, 17, 242, 1);
INSERT INTO `efficacy_conn_table` VALUES (691, 21, 242, 1);
INSERT INTO `efficacy_conn_table` VALUES (692, 23, 242, 1);
INSERT INTO `efficacy_conn_table` VALUES (695, 19, 243, 1);
INSERT INTO `efficacy_conn_table` VALUES (696, 21, 243, 1);
INSERT INTO `efficacy_conn_table` VALUES (697, 29, 243, 1);
INSERT INTO `efficacy_conn_table` VALUES (700, 17, 244, 1);
INSERT INTO `efficacy_conn_table` VALUES (701, 21, 244, 1);
INSERT INTO `efficacy_conn_table` VALUES (702, 29, 244, 1);
INSERT INTO `efficacy_conn_table` VALUES (704, 19, 245, 1);
INSERT INTO `efficacy_conn_table` VALUES (705, 31, 245, 1);
INSERT INTO `efficacy_conn_table` VALUES (707, 17, 246, 1);
INSERT INTO `efficacy_conn_table` VALUES (708, 31, 246, 1);
INSERT INTO `efficacy_conn_table` VALUES (711, 5, 247, 1);
INSERT INTO `efficacy_conn_table` VALUES (714, 14, 248, 1);
INSERT INTO `efficacy_conn_table` VALUES (715, 16, 248, 1);
INSERT INTO `efficacy_conn_table` VALUES (721, 17, 249, 1);
INSERT INTO `efficacy_conn_table` VALUES (722, 31, 249, 1);
INSERT INTO `efficacy_conn_table` VALUES (725, 31, 250, 1);
INSERT INTO `efficacy_conn_table` VALUES (727, 14, 251, 1);
INSERT INTO `efficacy_conn_table` VALUES (728, 14, 252, 1);
INSERT INTO `efficacy_conn_table` VALUES (729, 18, 252, 1);
INSERT INTO `efficacy_conn_table` VALUES (730, 34, 253, 1);
INSERT INTO `efficacy_conn_table` VALUES (732, 22, 253, 1);
INSERT INTO `efficacy_conn_table` VALUES (735, 34, 254, 1);
INSERT INTO `efficacy_conn_table` VALUES (739, 19, 255, 1);
INSERT INTO `efficacy_conn_table` VALUES (741, 19, 256, 1);
INSERT INTO `efficacy_conn_table` VALUES (742, 2, 3, 1);
INSERT INTO `efficacy_conn_table` VALUES (743, 15, 1, 1);
INSERT INTO `efficacy_conn_table` VALUES (744, 15, 38, 1);
INSERT INTO `efficacy_conn_table` VALUES (745, 15, 2, 1);
INSERT INTO `efficacy_conn_table` VALUES (746, 15, 3, 1);
INSERT INTO `efficacy_conn_table` VALUES (747, 5, 8, 1);
INSERT INTO `efficacy_conn_table` VALUES (748, 15, 45, 1);
INSERT INTO `efficacy_conn_table` VALUES (749, 24, 73, 1);
INSERT INTO `efficacy_conn_table` VALUES (750, 24, 74, 1);
INSERT INTO `efficacy_conn_table` VALUES (751, 26, 102, 1);
INSERT INTO `efficacy_conn_table` VALUES (752, 14, 167, 1);
INSERT INTO `efficacy_conn_table` VALUES (753, 24, 257, 1);
INSERT INTO `efficacy_conn_table` VALUES (754, 32, 49, 1);
INSERT INTO `efficacy_conn_table` VALUES (755, 32, 50, 1);
INSERT INTO `efficacy_conn_table` VALUES (756, 32, 52, 1);
INSERT INTO `efficacy_conn_table` VALUES (757, 32, 53, 1);
INSERT INTO `efficacy_conn_table` VALUES (758, 32, 54, 1);
INSERT INTO `efficacy_conn_table` VALUES (759, 32, 114, 1);
INSERT INTO `efficacy_conn_table` VALUES (760, 32, 115, 1);
INSERT INTO `efficacy_conn_table` VALUES (761, 32, 134, 1);
INSERT INTO `efficacy_conn_table` VALUES (762, 32, 141, 1);
INSERT INTO `efficacy_conn_table` VALUES (763, 32, 152, 1);
INSERT INTO `efficacy_conn_table` VALUES (764, 32, 153, 1);
INSERT INTO `efficacy_conn_table` VALUES (765, 32, 171, 1);
INSERT INTO `efficacy_conn_table` VALUES (766, 32, 172, 1);
INSERT INTO `efficacy_conn_table` VALUES (767, 32, 173, 1);
INSERT INTO `efficacy_conn_table` VALUES (768, 32, 174, 1);
INSERT INTO `efficacy_conn_table` VALUES (769, 32, 177, 1);
INSERT INTO `efficacy_conn_table` VALUES (770, 32, 186, 1);
INSERT INTO `efficacy_conn_table` VALUES (771, 32, 187, 1);
INSERT INTO `efficacy_conn_table` VALUES (772, 32, 189, 1);
INSERT INTO `efficacy_conn_table` VALUES (773, 32, 190, 1);
INSERT INTO `efficacy_conn_table` VALUES (774, 32, 191, 1);
INSERT INTO `efficacy_conn_table` VALUES (775, 32, 192, 1);
INSERT INTO `efficacy_conn_table` VALUES (776, 32, 197, 1);
INSERT INTO `efficacy_conn_table` VALUES (777, 32, 198, 1);
INSERT INTO `efficacy_conn_table` VALUES (778, 32, 200, 1);
INSERT INTO `efficacy_conn_table` VALUES (779, 32, 203, 1);
INSERT INTO `efficacy_conn_table` VALUES (780, 32, 204, 1);
INSERT INTO `efficacy_conn_table` VALUES (781, 32, 215, 1);
INSERT INTO `efficacy_conn_table` VALUES (782, 32, 216, 1);
INSERT INTO `efficacy_conn_table` VALUES (783, 32, 218, 1);
INSERT INTO `efficacy_conn_table` VALUES (784, 32, 223, 1);
INSERT INTO `efficacy_conn_table` VALUES (785, 32, 230, 1);
INSERT INTO `efficacy_conn_table` VALUES (786, 32, 232, 1);
INSERT INTO `efficacy_conn_table` VALUES (787, 32, 233, 1);
INSERT INTO `efficacy_conn_table` VALUES (788, 32, 238, 1);
INSERT INTO `efficacy_conn_table` VALUES (789, 32, 240, 1);
INSERT INTO `efficacy_conn_table` VALUES (790, 32, 241, 1);
INSERT INTO `efficacy_conn_table` VALUES (791, 32, 242, 1);
INSERT INTO `efficacy_conn_table` VALUES (792, 32, 243, 1);
INSERT INTO `efficacy_conn_table` VALUES (793, 32, 255, 1);
INSERT INTO `efficacy_conn_table` VALUES (794, 32, 256, 1);
INSERT INTO `efficacy_conn_table` VALUES (795, 33, 75, 1);
INSERT INTO `efficacy_conn_table` VALUES (796, 33, 106, 1);
INSERT INTO `efficacy_conn_table` VALUES (797, 33, 128, 1);
INSERT INTO `efficacy_conn_table` VALUES (798, 33, 129, 1);
INSERT INTO `efficacy_conn_table` VALUES (799, 33, 130, 1);
INSERT INTO `efficacy_conn_table` VALUES (800, 33, 131, 1);
INSERT INTO `efficacy_conn_table` VALUES (801, 33, 132, 1);
INSERT INTO `efficacy_conn_table` VALUES (802, 33, 133, 1);
INSERT INTO `efficacy_conn_table` VALUES (803, 33, 134, 1);
INSERT INTO `efficacy_conn_table` VALUES (804, 33, 135, 1);
INSERT INTO `efficacy_conn_table` VALUES (805, 33, 145, 1);
INSERT INTO `efficacy_conn_table` VALUES (806, 33, 147, 1);
INSERT INTO `efficacy_conn_table` VALUES (807, 33, 163, 1);
INSERT INTO `efficacy_conn_table` VALUES (808, 33, 167, 1);
INSERT INTO `efficacy_conn_table` VALUES (809, 33, 176, 1);
INSERT INTO `efficacy_conn_table` VALUES (810, 33, 177, 1);
INSERT INTO `efficacy_conn_table` VALUES (811, 33, 232, 1);
INSERT INTO `efficacy_conn_table` VALUES (812, 33, 242, 1);
INSERT INTO `efficacy_conn_table` VALUES (813, 33, 252, 1);
INSERT INTO `efficacy_conn_table` VALUES (814, 34, 7, 1);
INSERT INTO `efficacy_conn_table` VALUES (815, 34, 16, 1);
INSERT INTO `efficacy_conn_table` VALUES (816, 34, 157, 1);
INSERT INTO `efficacy_conn_table` VALUES (817, 34, 160, 1);
INSERT INTO `efficacy_conn_table` VALUES (818, 34, 161, 1);
INSERT INTO `efficacy_conn_table` VALUES (819, 34, 167, 1);
INSERT INTO `efficacy_conn_table` VALUES (820, 34, 168, 1);
INSERT INTO `efficacy_conn_table` VALUES (821, 34, 217, 1);
INSERT INTO `efficacy_conn_table` VALUES (822, 34, 219, 1);
INSERT INTO `efficacy_conn_table` VALUES (823, 34, 235, 1);
INSERT INTO `efficacy_conn_table` VALUES (824, 35, 6, 1);
INSERT INTO `efficacy_conn_table` VALUES (825, 35, 11, 1);
INSERT INTO `efficacy_conn_table` VALUES (826, 35, 13, 1);
INSERT INTO `efficacy_conn_table` VALUES (827, 35, 22, 1);
INSERT INTO `efficacy_conn_table` VALUES (828, 35, 29, 1);
INSERT INTO `efficacy_conn_table` VALUES (829, 35, 32, 1);
INSERT INTO `efficacy_conn_table` VALUES (830, 35, 74, 1);
INSERT INTO `efficacy_conn_table` VALUES (831, 35, 77, 1);
INSERT INTO `efficacy_conn_table` VALUES (832, 35, 78, 1);
INSERT INTO `efficacy_conn_table` VALUES (833, 35, 79, 1);
INSERT INTO `efficacy_conn_table` VALUES (834, 35, 80, 1);
INSERT INTO `efficacy_conn_table` VALUES (835, 35, 81, 1);
INSERT INTO `efficacy_conn_table` VALUES (836, 35, 82, 1);
INSERT INTO `efficacy_conn_table` VALUES (837, 35, 122, 1);
INSERT INTO `efficacy_conn_table` VALUES (838, 35, 125, 1);
INSERT INTO `efficacy_conn_table` VALUES (839, 35, 128, 1);
INSERT INTO `efficacy_conn_table` VALUES (840, 35, 145, 1);
INSERT INTO `efficacy_conn_table` VALUES (841, 35, 157, 1);
INSERT INTO `efficacy_conn_table` VALUES (842, 35, 164, 1);
INSERT INTO `efficacy_conn_table` VALUES (843, 35, 165, 1);
INSERT INTO `efficacy_conn_table` VALUES (844, 35, 166, 1);
INSERT INTO `efficacy_conn_table` VALUES (845, 35, 171, 1);
INSERT INTO `efficacy_conn_table` VALUES (846, 35, 173, 1);
INSERT INTO `efficacy_conn_table` VALUES (847, 35, 182, 1);
INSERT INTO `efficacy_conn_table` VALUES (848, 35, 197, 1);
INSERT INTO `efficacy_conn_table` VALUES (849, 35, 199, 1);
INSERT INTO `efficacy_conn_table` VALUES (850, 35, 201, 1);
INSERT INTO `efficacy_conn_table` VALUES (851, 35, 205, 1);
INSERT INTO `efficacy_conn_table` VALUES (852, 35, 208, 1);
INSERT INTO `efficacy_conn_table` VALUES (853, 35, 217, 1);
INSERT INTO `efficacy_conn_table` VALUES (854, 35, 227, 1);
INSERT INTO `efficacy_conn_table` VALUES (855, 35, 228, 1);
INSERT INTO `efficacy_conn_table` VALUES (856, 35, 229, 1);
INSERT INTO `efficacy_conn_table` VALUES (857, 35, 237, 1);
INSERT INTO `efficacy_conn_table` VALUES (858, 35, 254, 1);
INSERT INTO `efficacy_conn_table` VALUES (859, 36, 42, 1);
INSERT INTO `efficacy_conn_table` VALUES (860, 36, 47, 1);
INSERT INTO `efficacy_conn_table` VALUES (861, 36, 54, 1);
INSERT INTO `efficacy_conn_table` VALUES (862, 36, 61, 1);
INSERT INTO `efficacy_conn_table` VALUES (863, 36, 73, 1);
INSERT INTO `efficacy_conn_table` VALUES (864, 36, 109, 1);
INSERT INTO `efficacy_conn_table` VALUES (865, 36, 114, 1);
INSERT INTO `efficacy_conn_table` VALUES (866, 36, 127, 1);
INSERT INTO `efficacy_conn_table` VALUES (867, 36, 138, 1);
INSERT INTO `efficacy_conn_table` VALUES (868, 36, 145, 1);
INSERT INTO `efficacy_conn_table` VALUES (869, 36, 147, 1);
INSERT INTO `efficacy_conn_table` VALUES (870, 36, 148, 1);
INSERT INTO `efficacy_conn_table` VALUES (871, 36, 150, 1);
INSERT INTO `efficacy_conn_table` VALUES (872, 36, 151, 1);
INSERT INTO `efficacy_conn_table` VALUES (873, 36, 153, 1);
INSERT INTO `efficacy_conn_table` VALUES (874, 36, 154, 1);
INSERT INTO `efficacy_conn_table` VALUES (875, 36, 159, 1);
INSERT INTO `efficacy_conn_table` VALUES (876, 36, 169, 1);
INSERT INTO `efficacy_conn_table` VALUES (877, 36, 170, 1);
INSERT INTO `efficacy_conn_table` VALUES (878, 36, 175, 1);
INSERT INTO `efficacy_conn_table` VALUES (879, 36, 183, 1);
INSERT INTO `efficacy_conn_table` VALUES (880, 36, 184, 1);
INSERT INTO `efficacy_conn_table` VALUES (881, 36, 185, 1);
INSERT INTO `efficacy_conn_table` VALUES (882, 36, 186, 1);
INSERT INTO `efficacy_conn_table` VALUES (883, 36, 187, 1);
INSERT INTO `efficacy_conn_table` VALUES (884, 36, 188, 1);
INSERT INTO `efficacy_conn_table` VALUES (885, 36, 189, 1);
INSERT INTO `efficacy_conn_table` VALUES (886, 36, 190, 1);
INSERT INTO `efficacy_conn_table` VALUES (887, 36, 192, 1);
INSERT INTO `efficacy_conn_table` VALUES (888, 36, 193, 1);
INSERT INTO `efficacy_conn_table` VALUES (889, 36, 194, 1);
INSERT INTO `efficacy_conn_table` VALUES (890, 36, 195, 1);
INSERT INTO `efficacy_conn_table` VALUES (891, 36, 198, 1);
INSERT INTO `efficacy_conn_table` VALUES (892, 36, 200, 1);
INSERT INTO `efficacy_conn_table` VALUES (893, 36, 201, 1);
INSERT INTO `efficacy_conn_table` VALUES (894, 36, 202, 1);
INSERT INTO `efficacy_conn_table` VALUES (895, 36, 203, 1);
INSERT INTO `efficacy_conn_table` VALUES (896, 36, 214, 1);
INSERT INTO `efficacy_conn_table` VALUES (897, 36, 216, 1);
INSERT INTO `efficacy_conn_table` VALUES (898, 36, 221, 1);
INSERT INTO `efficacy_conn_table` VALUES (899, 36, 223, 1);
INSERT INTO `efficacy_conn_table` VALUES (900, 36, 226, 1);
INSERT INTO `efficacy_conn_table` VALUES (901, 36, 228, 1);
INSERT INTO `efficacy_conn_table` VALUES (902, 36, 229, 1);
INSERT INTO `efficacy_conn_table` VALUES (903, 36, 232, 1);
INSERT INTO `efficacy_conn_table` VALUES (904, 36, 233, 1);
INSERT INTO `efficacy_conn_table` VALUES (905, 36, 234, 1);
INSERT INTO `efficacy_conn_table` VALUES (906, 36, 238, 1);
INSERT INTO `efficacy_conn_table` VALUES (907, 36, 242, 1);
INSERT INTO `efficacy_conn_table` VALUES (908, 36, 245, 1);
INSERT INTO `efficacy_conn_table` VALUES (909, 36, 246, 1);
INSERT INTO `efficacy_conn_table` VALUES (910, 36, 248, 1);
INSERT INTO `efficacy_conn_table` VALUES (911, 36, 249, 1);
INSERT INTO `efficacy_conn_table` VALUES (912, 36, 250, 1);
INSERT INTO `efficacy_conn_table` VALUES (913, 36, 251, 1);

-- ----------------------------
-- Table structure for image_table
-- ----------------------------
DROP TABLE IF EXISTS `image_table`;
CREATE TABLE `image_table`  (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_category` int(11) NULL DEFAULT NULL,
  `image_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_sequence` int(11) NULL DEFAULT NULL,
  `image_explain` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 269 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_table
-- ----------------------------
INSERT INTO `image_table` VALUES (1, 1, 1, '', 1, '第一步：粳米淘洗净，用清水泡20分钟');
INSERT INTO `image_table` VALUES (2, 2, 1, '', 1, '第一步：先将防风、葱白煎煮取汁，去渣');
INSERT INTO `image_table` VALUES (3, 3, 1, '/static/images/medicinaldiet/川芎白芷炖鱼头_1.png', 1, '第一步：川芎、白芷、红枣和生姜洗净');
INSERT INTO `image_table` VALUES (4, 4, 1, '', 1, '第一步：将生姜、苏叶洗净，切成细丝，同置茶杯内');
INSERT INTO `image_table` VALUES (5, 5, 1, '//银花茶p', 1, NULL);
INSERT INTO `image_table` VALUES (6, 6, 1, '/static/images/medicinaldiet/豉粥_1.png', 1, '第一步：先煎葱、姜、豆豉，后下薄荷，稍煎后去渣取汁，人米');
INSERT INTO `image_table` VALUES (7, 7, 1, '//淡豉葱白煲豆腐p', 1, NULL);
INSERT INTO `image_table` VALUES (8, 8, 1, '//生津茶p', 1, NULL);
INSERT INTO `image_table` VALUES (9, 9, 1, '//石膏粳米汤p', 1, NULL);
INSERT INTO `image_table` VALUES (10, 10, 1, '//竹叶粥p', 1, NULL);
INSERT INTO `image_table` VALUES (11, 11, 1, '//石膏乌梅饮p', 1, NULL);
INSERT INTO `image_table` VALUES (12, 12, 1, '//生地黄粥p', 1, NULL);
INSERT INTO `image_table` VALUES (13, 13, 1, '//二根西瓜盅p', 1, NULL);
INSERT INTO `image_table` VALUES (14, 14, 1, '//清络饮p', 1, NULL);
INSERT INTO `image_table` VALUES (15, 15, 1, '//荷叶冬瓜汤p', 1, NULL);
INSERT INTO `image_table` VALUES (16, 16, 1, '', 1, '第一步：佩兰叶熬成适量的水待用。将兔肉切成长约3厘米，宽1．5厘米的薄片');
INSERT INTO `image_table` VALUES (17, 17, 1, '//鱼腥草饮', 1, NULL);
INSERT INTO `image_table` VALUES (18, 18, 1, '//蒲金酒', 1, NULL);
INSERT INTO `image_table` VALUES (19, 19, 1, '//马齿苋绿豆粥', 1, NULL);
INSERT INTO `image_table` VALUES (20, 20, 1, '//灯心竹叶汤', 1, NULL);
INSERT INTO `image_table` VALUES (21, 21, 1, '//平肝清热茶', 1, NULL);
INSERT INTO `image_table` VALUES (22, 22, 1, '//天花粉粥', 1, NULL);
INSERT INTO `image_table` VALUES (23, 23, 1, '//竹茹饮', 1, NULL);
INSERT INTO `image_table` VALUES (24, 24, 1, '//牙痛茶', 1, NULL);
INSERT INTO `image_table` VALUES (25, 25, 1, '//青头鸭羹', 1, NULL);
INSERT INTO `image_table` VALUES (26, 26, 1, '//枸杞叶粥', 1, NULL);
INSERT INTO `image_table` VALUES (27, 27, 1, '//地骨皮饮', 1, NULL);
INSERT INTO `image_table` VALUES (28, 28, 1, '//白薇饮', 1, NULL);
INSERT INTO `image_table` VALUES (29, 29, 1, '//双母蒸甲鱼', 1, NULL);
INSERT INTO `image_table` VALUES (30, 30, 1, '//麻子苏子粥', 1, NULL);
INSERT INTO `image_table` VALUES (31, 31, 1, '//郁李仁粥', 1, NULL);
INSERT INTO `image_table` VALUES (32, 32, 1, '//蜂蜜决明茶', 1, NULL);
INSERT INTO `image_table` VALUES (33, 33, 1, '//升麻芝麻炖猪大肠', 1, NULL);
INSERT INTO `image_table` VALUES (34, 34, 1, '//牛髓膏', 1, NULL);
INSERT INTO `image_table` VALUES (35, 35, 1, '//桃花粥', 1, NULL);
INSERT INTO `image_table` VALUES (36, 36, 1, '//番泻叶茶', 1, NULL);
INSERT INTO `image_table` VALUES (37, 37, 1, '//干姜粥', 1, NULL);
INSERT INTO `image_table` VALUES (38, 38, 1, '//吴茱萸粥', 1, NULL);
INSERT INTO `image_table` VALUES (39, 39, 1, '//良姜炖鸡块', 1, NULL);
INSERT INTO `image_table` VALUES (40, 40, 1, '//砂仁肚条', 1, NULL);
INSERT INTO `image_table` VALUES (41, 41, 1, '//六味牛肉脯', 1, NULL);
INSERT INTO `image_table` VALUES (42, 42, 1, '//丁香鸭', 1, NULL);
INSERT INTO `image_table` VALUES (43, 43, 1, '//川乌粥', 1, NULL);
INSERT INTO `image_table` VALUES (44, 44, 1, '//艾叶生姜煮蛋', 1, NULL);
INSERT INTO `image_table` VALUES (45, 45, 1, '//当归生姜羊肉汤', 1, NULL);
INSERT INTO `image_table` VALUES (46, 46, 1, '//附子粥', 1, NULL);
INSERT INTO `image_table` VALUES (47, 47, 1, '//桂浆粥', 1, NULL);
INSERT INTO `image_table` VALUES (48, 48, 1, '//姜附烧狗肉', 1, NULL);
INSERT INTO `image_table` VALUES (49, 49, 1, '//五加皮酒', 1, NULL);
INSERT INTO `image_table` VALUES (50, 50, 1, '//白花蛇酒', 1, NULL);
INSERT INTO `image_table` VALUES (51, 51, 1, '//威灵仙酒', 1, NULL);
INSERT INTO `image_table` VALUES (52, 52, 1, '//海桐皮酒', 1, NULL);
INSERT INTO `image_table` VALUES (53, 53, 1, '//雪凤鹿筋汤', 1, NULL);
INSERT INTO `image_table` VALUES (54, 54, 1, '//巴戟狗肉', 1, NULL);
INSERT INTO `image_table` VALUES (55, 55, 1, '//胡椒根煲蛇肉', 1, NULL);
INSERT INTO `image_table` VALUES (56, 56, 1, '//薏苡仁粥', 1, NULL);
INSERT INTO `image_table` VALUES (57, 57, 1, '//冬瓜粥', 1, NULL);
INSERT INTO `image_table` VALUES (58, 58, 1, '//车前叶粥', 1, NULL);
INSERT INTO `image_table` VALUES (59, 59, 1, '//赤小豆鲤鱼汤', 1, NULL);
INSERT INTO `image_table` VALUES (60, 60, 1, '//丝瓜花鲫鱼汤', 1, NULL);
INSERT INTO `image_table` VALUES (61, 61, 1, '//金钱草炖猪蹄', 1, NULL);
INSERT INTO `image_table` VALUES (62, 62, 1, '//滑石粥', 1, NULL);
INSERT INTO `image_table` VALUES (63, 63, 1, '//甘蔗白藕汁', 1, NULL);
INSERT INTO `image_table` VALUES (64, 64, 1, '//金钱草饮', 1, NULL);
INSERT INTO `image_table` VALUES (65, 65, 1, '//荠菜鸡蛋汤', 1, NULL);
INSERT INTO `image_table` VALUES (66, 66, 1, '//茵陈粥', 1, NULL);
INSERT INTO `image_table` VALUES (67, 67, 1, '//栀子仁粥', 1, NULL);
INSERT INTO `image_table` VALUES (68, 68, 1, '//泥鳅炖豆腐', 1, NULL);
INSERT INTO `image_table` VALUES (69, 69, 1, '//白茅根炖猪肉', 1, NULL);
INSERT INTO `image_table` VALUES (70, 70, 1, '//田基黄鸡蛋汤', 1, NULL);
INSERT INTO `image_table` VALUES (71, 71, 1, '//桔红糕', 1, NULL);
INSERT INTO `image_table` VALUES (72, 72, 1, '//瓜萎饼', 1, NULL);
INSERT INTO `image_table` VALUES (73, 73, 1, '//柚子炖鸡', 1, NULL);
INSERT INTO `image_table` VALUES (74, 74, 1, '//半夏山药粥', 1, NULL);
INSERT INTO `image_table` VALUES (75, 75, 1, '//石菖蒲拌猪心', 1, NULL);
INSERT INTO `image_table` VALUES (76, 76, 1, '//昆布海藻煮黄豆', 1, NULL);
INSERT INTO `image_table` VALUES (77, 77, 1, '//川贝秋梨膏', 1, NULL);
INSERT INTO `image_table` VALUES (78, 78, 1, '//真君粥', 1, NULL);
INSERT INTO `image_table` VALUES (79, 79, 1, '//杏仁猪肺粥', 1, NULL);
INSERT INTO `image_table` VALUES (80, 80, 1, '//百部生姜汁', 1, NULL);
INSERT INTO `image_table` VALUES (81, 81, 1, '//杏仁饼', 1, NULL);
INSERT INTO `image_table` VALUES (82, 82, 1, '//杏仁粥', 1, NULL);
INSERT INTO `image_table` VALUES (83, 83, 1, '//蛤蚧粥', 1, NULL);
INSERT INTO `image_table` VALUES (84, 84, 1, '//腐皮白果粥', 1, NULL);
INSERT INTO `image_table` VALUES (85, 85, 1, '//山楂麦芽茶', 1, NULL);
INSERT INTO `image_table` VALUES (86, 86, 1, '//甘露茶', 1, NULL);
INSERT INTO `image_table` VALUES (87, 87, 1, '//神仙药酒丸', 1, NULL);
INSERT INTO `image_table` VALUES (88, 88, 1, '//荸荠内金饼', 1, NULL);
INSERT INTO `image_table` VALUES (89, 89, 1, '//神曲丁香茶', 1, NULL);
INSERT INTO `image_table` VALUES (90, 90, 1, '//健脾消食蛋羹', 1, NULL);
INSERT INTO `image_table` VALUES (91, 91, 1, '//白术猪肚粥', 1, NULL);
INSERT INTO `image_table` VALUES (92, 92, 1, '//小儿七星茶', 1, NULL);
INSERT INTO `image_table` VALUES (93, 93, 1, '//益脾饼', 1, NULL);
INSERT INTO `image_table` VALUES (94, 94, 1, '//六和茶', 1, NULL);
INSERT INTO `image_table` VALUES (95, 95, 1, '//葛根枳棋子饮', 1, NULL);
INSERT INTO `image_table` VALUES (96, 96, 1, '//神仙醒酒丹', 1, NULL);
INSERT INTO `image_table` VALUES (97, 97, 1, '//橘味醒酒羹', 1, NULL);
INSERT INTO `image_table` VALUES (98, 98, 1, '//姜橘饮', 1, NULL);
INSERT INTO `image_table` VALUES (99, 99, 1, '//良姜鸡肉炒饭', 1, NULL);
INSERT INTO `image_table` VALUES (100, 100, 1, '//柚皮醪糟', 1, NULL);
INSERT INTO `image_table` VALUES (101, 101, 1, '//五香酒料', 1, NULL);
INSERT INTO `image_table` VALUES (102, 102, 1, '//二花调经茶', 1, NULL);
INSERT INTO `image_table` VALUES (103, 103, 1, '//薯蓣半夏粥', 1, NULL);
INSERT INTO `image_table` VALUES (104, 104, 1, '//竹茹芦根茶', 1, NULL);
INSERT INTO `image_table` VALUES (105, 105, 1, '//橘朴茶', 1, NULL);
INSERT INTO `image_table` VALUES (106, 106, 1, '//益母草煮鸡蛋', 1, NULL);
INSERT INTO `image_table` VALUES (107, 107, 1, '//红花当归酒', 1, NULL);
INSERT INTO `image_table` VALUES (108, 108, 1, '//桃花白芷酒', 1, NULL);
INSERT INTO `image_table` VALUES (109, 109, 1, '//丹参烤里脊', 1, NULL);
INSERT INTO `image_table` VALUES (110, 110, 1, '//桃仁粥', 1, NULL);
INSERT INTO `image_table` VALUES (111, 111, 1, '//三七蒸鸡', 1, NULL);
INSERT INTO `image_table` VALUES (112, 112, 1, '//玫瑰露酒', 1, NULL);
INSERT INTO `image_table` VALUES (113, 113, 1, '//坤草童鸡', 1, NULL);
INSERT INTO `image_table` VALUES (114, 114, 1, '//牛膝复方酒', 1, NULL);
INSERT INTO `image_table` VALUES (115, 115, 1, '//牛筋祛瘀汤', 1, NULL);
INSERT INTO `image_table` VALUES (116, 116, 1, '//地龙桃花饼', 1, NULL);
INSERT INTO `image_table` VALUES (117, 117, 1, '//还童茶', 1, NULL);
INSERT INTO `image_table` VALUES (118, 118, 1, '//茅根车前饮', 1, NULL);
INSERT INTO `image_table` VALUES (119, 119, 1, '//白及肺', 1, NULL);
INSERT INTO `image_table` VALUES (120, 120, 1, '//苎麻根粥', 1, NULL);
INSERT INTO `image_table` VALUES (121, 121, 1, '//花生衣红枣汁', 1, NULL);
INSERT INTO `image_table` VALUES (122, 122, 1, '//藕汁鸡冠花糖饮', 1, NULL);
INSERT INTO `image_table` VALUES (123, 123, 1, '//糯米阿胶粥', 1, NULL);
INSERT INTO `image_table` VALUES (124, 124, 1, '//莲花茶', 1, NULL);
INSERT INTO `image_table` VALUES (125, 125, 1, '//双耳海螺', 1, NULL);
INSERT INTO `image_table` VALUES (126, 126, 1, '//艾叶炖母鸡', 1, NULL);
INSERT INTO `image_table` VALUES (127, 127, 1, '//旱莲草粳米粥', 1, NULL);
INSERT INTO `image_table` VALUES (128, 128, 1, '//百合粥', 1, NULL);
INSERT INTO `image_table` VALUES (129, 129, 1, '//酸枣仁粥', 1, NULL);
INSERT INTO `image_table` VALUES (130, 130, 1, '//柏子仁粥', 1, NULL);
INSERT INTO `image_table` VALUES (131, 131, 1, '//甘麦大枣汤', 1, NULL);
INSERT INTO `image_table` VALUES (132, 132, 1, '//玉竹卤猪心', 1, NULL);
INSERT INTO `image_table` VALUES (133, 133, 1, '//龙眼纸包鸡', 1, NULL);
INSERT INTO `image_table` VALUES (134, 134, 1, '//人参炖乌骨鸡', 1, NULL);
INSERT INTO `image_table` VALUES (135, 135, 1, '//朱砂煮猪心', 1, NULL);
INSERT INTO `image_table` VALUES (136, 136, 1, '//磁石粥', 1, NULL);
INSERT INTO `image_table` VALUES (137, 137, 1, '//天麻鱼头', 1, NULL);
INSERT INTO `image_table` VALUES (138, 138, 1, '//夏枯草煲猪肉', 1, NULL);
INSERT INTO `image_table` VALUES (139, 139, 1, '//罗布麻茶', 1, NULL);
INSERT INTO `image_table` VALUES (140, 140, 1, '//菊花绿茶饮', 1, NULL);
INSERT INTO `image_table` VALUES (141, 141, 1, '//芹菜肉丝', 1, NULL);
INSERT INTO `image_table` VALUES (142, 142, 1, '//芹菜红枣汤', 1, NULL);
INSERT INTO `image_table` VALUES (143, 143, 1, '//浮小麦饮', 1, NULL);
INSERT INTO `image_table` VALUES (144, 144, 1, '//麻鸡敛汗汤', 1, NULL);
INSERT INTO `image_table` VALUES (145, 145, 1, '//生脉饮', 1, NULL);
INSERT INTO `image_table` VALUES (146, 146, 1, '//乌梅粥', 1, NULL);
INSERT INTO `image_table` VALUES (147, 147, 1, '//八珍糕', 1, NULL);
INSERT INTO `image_table` VALUES (148, 148, 1, '//薯蓣鸡子黄粥', 1, NULL);
INSERT INTO `image_table` VALUES (149, 149, 1, '//金樱子粥', 1, NULL);
INSERT INTO `image_table` VALUES (150, 150, 1, '//金樱子炖猪小肚', 1, NULL);
INSERT INTO `image_table` VALUES (151, 151, 1, '//芡实煮老鸭', 1, NULL);
INSERT INTO `image_table` VALUES (152, 152, 1, '//山茱萸粥', 1, NULL);
INSERT INTO `image_table` VALUES (153, 153, 1, '//菟丝子粥', 1, NULL);
INSERT INTO `image_table` VALUES (154, 154, 1, '//白果乌鸡汤', 1, NULL);
INSERT INTO `image_table` VALUES (155, 155, 1, '//山药芡实粥', 1, NULL);
INSERT INTO `image_table` VALUES (156, 156, 1, '//黄芪蒸鸡', 1, NULL);
INSERT INTO `image_table` VALUES (157, 157, 1, '//四君蒸鸭', 1, NULL);
INSERT INTO `image_table` VALUES (158, 158, 1, '//乌鸡豆蔻', 1, NULL);
INSERT INTO `image_table` VALUES (159, 159, 1, '//黄精烧鸡', 1, NULL);
INSERT INTO `image_table` VALUES (160, 160, 1, '//黄芪猴头汤', 1, NULL);
INSERT INTO `image_table` VALUES (161, 161, 1, '//人参猪肚', 1, NULL);
INSERT INTO `image_table` VALUES (162, 162, 1, '//山药鸡肫', 1, NULL);
INSERT INTO `image_table` VALUES (163, 163, 1, '//人参莲肉汤', 1, NULL);
INSERT INTO `image_table` VALUES (164, 164, 1, '//生脉饮', 1, NULL);
INSERT INTO `image_table` VALUES (165, 165, 1, '//人参粥', 1, NULL);
INSERT INTO `image_table` VALUES (166, 166, 1, '//银鱼粥', 1, NULL);
INSERT INTO `image_table` VALUES (167, 167, 1, '//健胃益气糕', 1, NULL);
INSERT INTO `image_table` VALUES (168, 168, 1, '//锅焦糕', 1, NULL);
INSERT INTO `image_table` VALUES (169, 169, 1, '//归参炖母鸡', 1, NULL);
INSERT INTO `image_table` VALUES (170, 170, 1, '//参芪炖鲜胎盘', 1, NULL);
INSERT INTO `image_table` VALUES (171, 171, 1, '//红杞田七鸡', 1, NULL);
INSERT INTO `image_table` VALUES (172, 172, 1, '//群鸽戏蛋', 1, NULL);
INSERT INTO `image_table` VALUES (173, 173, 1, '//阿胶羊肝', 1, NULL);
INSERT INTO `image_table` VALUES (174, 174, 1, '//菠菜猪肝汤', 1, NULL);
INSERT INTO `image_table` VALUES (175, 175, 1, '//当归苁蓉猪血羹', 1, NULL);
INSERT INTO `image_table` VALUES (176, 176, 1, '//猪心枣仁汤', 1, NULL);
INSERT INTO `image_table` VALUES (177, 177, 1, '//参归猪肝汤', 1, NULL);
INSERT INTO `image_table` VALUES (178, 178, 1, '//龙眼酒', 1, NULL);
INSERT INTO `image_table` VALUES (179, 179, 1, '//十全大补汤', 1, NULL);
INSERT INTO `image_table` VALUES (180, 180, 1, '//归芪蒸鸡', 1, NULL);
INSERT INTO `image_table` VALUES (181, 181, 1, '//乌鸡白凤汤', 1, NULL);
INSERT INTO `image_table` VALUES (182, 182, 1, '//参枣米饭', 1, NULL);
INSERT INTO `image_table` VALUES (183, 183, 1, '//鹿角粥', 1, NULL);
INSERT INTO `image_table` VALUES (184, 184, 1, '//枸杞羊肾粥', 1, NULL);
INSERT INTO `image_table` VALUES (185, 185, 1, '//白羊肾羹', 1, NULL);
INSERT INTO `image_table` VALUES (186, 186, 1, '//羊脊骨粥', 1, NULL);
INSERT INTO `image_table` VALUES (187, 187, 1, '//巴戟牛膝酒', 1, NULL);
INSERT INTO `image_table` VALUES (188, 188, 1, '//补骨脂胡桃煎', 1, NULL);
INSERT INTO `image_table` VALUES (189, 189, 1, '//雀儿药粥', 1, NULL);
INSERT INTO `image_table` VALUES (190, 190, 1, '//鹿鞭壮阳汤', 1, NULL);
INSERT INTO `image_table` VALUES (191, 191, 1, '//壮阳狗肉汤', 1, NULL);
INSERT INTO `image_table` VALUES (192, 192, 1, '//杜仲腰花', 1, NULL);
INSERT INTO `image_table` VALUES (193, 193, 1, '//虫草炖老鸭', 1, NULL);
INSERT INTO `image_table` VALUES (194, 194, 1, '//虫草炖鲜胎盘', 1, NULL);
INSERT INTO `image_table` VALUES (195, 195, 1, '//人参胡桃汤', 1, NULL);
INSERT INTO `image_table` VALUES (196, 196, 1, '//清蒸人参元鱼', 1, NULL);
INSERT INTO `image_table` VALUES (197, 197, 1, '//益寿鸽蛋汤', 1, NULL);
INSERT INTO `image_table` VALUES (198, 198, 1, '//生地黄鸡', 1, NULL);
INSERT INTO `image_table` VALUES (199, 199, 1, '//秋梨膏', 1, NULL);
INSERT INTO `image_table` VALUES (200, 200, 1, '//淮药芝麻糊', 1, NULL);
INSERT INTO `image_table` VALUES (201, 201, 1, '//龟肉炖虫草', 1, NULL);
INSERT INTO `image_table` VALUES (202, 202, 1, '//黄精天冬龟肉汤', 1, NULL);
INSERT INTO `image_table` VALUES (203, 203, 1, '//鳖鱼补肾汤', 1, NULL);
INSERT INTO `image_table` VALUES (204, 204, 1, '//养肝明目汤', 1, NULL);
INSERT INTO `image_table` VALUES (205, 205, 1, '//洋参雪耳炖燕窝', 1, NULL);
INSERT INTO `image_table` VALUES (206, 206, 1, '//荷叶减肥茶', 1, NULL);
INSERT INTO `image_table` VALUES (207, 207, 1, '//茯苓豆腐', 1, NULL);
INSERT INTO `image_table` VALUES (208, 208, 1, '//参芪鸡丝冬瓜汤', 1, NULL);
INSERT INTO `image_table` VALUES (209, 209, 1, '//麻辣羊肉炒葱头', 1, NULL);
INSERT INTO `image_table` VALUES (210, 210, 1, '//冬瓜粥', 1, NULL);
INSERT INTO `image_table` VALUES (211, 211, 1, '//茯苓饼子', 1, NULL);
INSERT INTO `image_table` VALUES (212, 212, 1, '//鲤鱼汤', 1, NULL);
INSERT INTO `image_table` VALUES (213, 213, 1, '//健美茶', 1, NULL);
INSERT INTO `image_table` VALUES (214, 214, 1, '//蟠桃果', 1, NULL);
INSERT INTO `image_table` VALUES (215, 215, 1, '//玉柱杖粥', 1, NULL);
INSERT INTO `image_table` VALUES (216, 216, 1, '//七宝美髯蛋', 1, NULL);
INSERT INTO `image_table` VALUES (217, 217, 1, '//花生米大枣炖猪蹄', 1, NULL);
INSERT INTO `image_table` VALUES (218, 218, 1, '//煮料豆', 1, NULL);
INSERT INTO `image_table` VALUES (219, 219, 1, '//瓜子芝麻糊', 1, NULL);
INSERT INTO `image_table` VALUES (220, 220, 1, '//玫瑰五花糕', 1, NULL);
INSERT INTO `image_table` VALUES (221, 221, 1, '//小龙团圆汤', 1, NULL);
INSERT INTO `image_table` VALUES (222, 222, 1, '//红颜酒', 1, NULL);
INSERT INTO `image_table` VALUES (223, 223, 1, '//沙苑甲鱼', 1, NULL);
INSERT INTO `image_table` VALUES (224, 224, 1, '//真珠拌平菇', 1, NULL);
INSERT INTO `image_table` VALUES (225, 225, 1, '//苡仁茯苓粥', 1, NULL);
INSERT INTO `image_table` VALUES (226, 226, 1, '//胡椒海参汤', 1, NULL);
INSERT INTO `image_table` VALUES (227, 227, 1, '//黄精煨肘', 1, NULL);
INSERT INTO `image_table` VALUES (228, 228, 1, '//清蒸哈什蟆', 1, NULL);
INSERT INTO `image_table` VALUES (229, 229, 1, '//燕窝粥', 1, NULL);
INSERT INTO `image_table` VALUES (230, 230, 1, '//枸杞子酒', 1, NULL);
INSERT INTO `image_table` VALUES (231, 231, 1, '//补虚正气粥', 1, NULL);
INSERT INTO `image_table` VALUES (232, 232, 1, '//长生固本酒', 1, NULL);
INSERT INTO `image_table` VALUES (233, 233, 1, '//乌须延年豆', 1, NULL);
INSERT INTO `image_table` VALUES (234, 234, 1, '//珍珠鹿茸', 1, NULL);
INSERT INTO `image_table` VALUES (235, 235, 1, '//八宝饭', 1, NULL);
INSERT INTO `image_table` VALUES (236, 236, 1, '//延年草', 1, NULL);
INSERT INTO `image_table` VALUES (237, 237, 1, '//九仙王道糕', 1, NULL);
INSERT INTO `image_table` VALUES (238, 238, 1, '//决明子鸡肝', 1, NULL);
INSERT INTO `image_table` VALUES (239, 239, 1, '//猪肝羹', 1, NULL);
INSERT INTO `image_table` VALUES (240, 240, 1, '//杞实粥', 1, NULL);
INSERT INTO `image_table` VALUES (241, 241, 1, '//芝麻羊肝', 1, NULL);
INSERT INTO `image_table` VALUES (242, 242, 1, '//归圆杞菊酒', 1, NULL);
INSERT INTO `image_table` VALUES (243, 243, 1, '//首乌肝片', 1, NULL);
INSERT INTO `image_table` VALUES (244, 244, 1, '//人参枸杞酒', 1, NULL);
INSERT INTO `image_table` VALUES (245, 245, 1, '//磁石粥', 1, NULL);
INSERT INTO `image_table` VALUES (246, 246, 1, '//鹿肉粥', 1, NULL);
INSERT INTO `image_table` VALUES (247, 247, 1, '//磁石酒', 1, NULL);
INSERT INTO `image_table` VALUES (248, 248, 1, '//气虚狗肉汤', 1, NULL);
INSERT INTO `image_table` VALUES (249, 249, 1, '//鱼鳔汤', 1, NULL);
INSERT INTO `image_table` VALUES (250, 250, 1, '//熘炒黄花猪腰', 1, NULL);
INSERT INTO `image_table` VALUES (251, 251, 1, '//琼玉膏', 1, NULL);
INSERT INTO `image_table` VALUES (252, 252, 1, '//水芝汤', 1, NULL);
INSERT INTO `image_table` VALUES (253, 253, 1, '//神仙富贵饼', 1, NULL);
INSERT INTO `image_table` VALUES (254, 254, 1, '//神仙鸭', 1, NULL);
INSERT INTO `image_table` VALUES (255, 255, 1, '//肉桂肥鸽', 1, NULL);
INSERT INTO `image_table` VALUES (256, 256, 1, '//牛骨膏', 1, NULL);
INSERT INTO `image_table` VALUES (257, 3, 1, '/static/images/medicinaldiet/川芎白芷炖鱼头_2.png', 2, '第二步：将川芎、白芷、红枣、姜、大鱼头放入炖盅，加适量水，盖上盖，放入锅内');
INSERT INTO `image_table` VALUES (258, 1, 1, NULL, 2, '第二步：洗去生姜外皮污泥（不要去生姜皮），切成厚片（0.3厘米左右）');
INSERT INTO `image_table` VALUES (259, 1, 1, NULL, 3, '第三步：粳米边同泡粳米的水一同倒进砂钵锅里，酌情添水，放进生姜片盖上盖');
INSERT INTO `image_table` VALUES (260, 1, 1, NULL, 4, '第四步：大火烧开后，转中小火煮（盖子留一丝缝，防粥外溢），直至米粒软稠成粥样即可');
INSERT INTO `image_table` VALUES (261, 2, 1, NULL, 2, '第二步：粳米按常法煮粥，待粥将熟时加入药汁，煮成稀粥');
INSERT INTO `image_table` VALUES (262, 3, 1, '/static/images/medicinaldiet/川芎白芷炖鱼头_3.png', 3, '第三步：以上放人砂锅内，加水适量，武火烧沸，再以文火炖半小时，人盐调味即成');
INSERT INTO `image_table` VALUES (263, 4, 1, NULL, 2, '第二步：加沸水浸泡5~10分钟，放红糖拌匀即成');
INSERT INTO `image_table` VALUES (264, 6, 1, '/static/images/medicinaldiet/豉粥_2.png', 2, '第二步：小米与适量清水同放锅内，大火煮沸');
INSERT INTO `image_table` VALUES (265, 16, 1, NULL, 2, '第二步：兔肉片故入碗内，加盐、生粉拌匀后，再加佩兰叶水调淀粉搅拌至兔肉片吸水尽，再加鸡蛋搅拌，均匀地粘牢在免肉片上，如浆太稀，可再微上些干淀粉，拌匀之后，放入苏打粉、猪肉拌匀');
INSERT INTO `image_table` VALUES (266, 16, 1, NULL, 3, '第三步：烧热锅，放猪油300克，烧至五成热时放入酱好的免片，随即用筷子快\r\n\r\n速搅散，断红时，取出沥去油');
INSERT INTO `image_table` VALUES (267, 16, 1, NULL, 4, '第四步：炒锅烧热，用油滑锅后放入50克猪油，烧到四成熟，故入甜酱、葱、姜米，拌至酱细腻无颗粒，起香味');
INSERT INTO `image_table` VALUES (268, 16, 1, NULL, 5, '第五步：酱锅中放入绍酒拌开，加入糖、味精、酱油、白汤炒拌成棚状，放免肉片拌匀，沿锅边淋入猪油15克，翻炒至酱包牢兔肉，加麻油，出锅装盘即成');
INSERT INTO `image_table` VALUES (269, 257, 1, NULL, 1, NULL);

-- ----------------------------
-- Table structure for job_table
-- ----------------------------
DROP TABLE IF EXISTS `job_table`;
CREATE TABLE `job_table`  (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_characteristic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_key_a` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_key_b` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_key_c` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_key_d` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_table
-- ----------------------------
INSERT INTO `job_table` VALUES (1, '程序员', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for material_table
-- ----------------------------
DROP TABLE IF EXISTS `material_table`;
CREATE TABLE `material_table`  (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_character` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_efficacy` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_application` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_explain` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_constitute` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_effect` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_precautions` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `medicinal_pub_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for medicinal_diet_table
-- ----------------------------
DROP TABLE IF EXISTS `medicinal_diet_table`;
CREATE TABLE `medicinal_diet_table`  (
  `medicinal_diet_id` int(11) NOT NULL AUTO_INCREMENT,
  `med_diet_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_constitute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_preparation` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_efficacy` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_application` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_explain` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_precautions` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `medicinal_pub_id` int(11) NULL DEFAULT NULL,
  `med_diet_video` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_effi_cate` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_shape_cate` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_make_cate` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `med_diet_click` int(11) NULL DEFAULT NULL,
  `med_video_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`medicinal_diet_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 261 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicinal_diet_table
-- ----------------------------
INSERT INTO `medicinal_diet_table` VALUES (1, '生姜粥 ', '《饮食辨录》 ', '梗米50g，生姜5片，连须葱数茎，米醋适量。', '将生姜捣烂，与梗米同煮粥，粥将熟时加入葱、醋，稍煮即成。乘热食，覆被取微汗出。 ', '解表散寒，温胃止呕。', '辛温解表类，适用于外感风寒之邪引起的头痛身痛、无汗呕逆等症。', '本方是以生姜、梗米为主料配制而成的药膳食品，具有解表散寒，温胃止呕之效。方中生姜辛温发散，可发汗解表、温胃止呕，是治疗外感风寒所致恶寒发热、头痛、鼻塞之要品。临床治疗轻微感冒，可以本品单味煎服即效。梗米廿平，为温中益气之佳品。梗米又善助药力。葱为常用的调味品原料，可发汗解表、散寒通阳，是治疗感冒风寒轻证的常用品。且常与生姜配伍，即连须葱白汤。再加食醋调味，并健胃消食。四味相伍，共奏解表散寒、温胃止呕之效。本品食用方便，老幼咸宜，是治疗风寒型感冒初起之良方。 ', '本品为辛温之剂，素有阴虚内热及热盛之证者忌用；外感表证属风热者忌用。 ', 1, '/static/video/生姜粥.mp4', '解表类', '粥食类', '煮', '/static/images/medicinaldiet/生姜粥_0.png', 30, '/static/video/生姜粥_v.png');
INSERT INTO `medicinal_diet_table` VALUES (2, '防风粥', '《千金月令》', '防风10~15g，葱白2根，粳米100g。', '先将防风、葱白煎煮取汁，去渣；粳米按常法煮粥，待粥将熟时加入药汁，煮成稀粥服食。每日早、晚食用。', '祛风解表，散寒止痛。', '辛温解表类，适用于外感风寒所致发热、畏冷、恶风、白汗、头疼、身痛等症。', '本方所治之证，为风寒束表所致，故治宜祛风散寒，解表。方中防风辛温轻散，润泽不燥，主祛风解表、胜湿止痛，能发邪从毛窍而出。《本草经疏》日:”防风治风通用，生发而能散，故主大风头眩痛，恶风，周身骨节疼痛”。葱白可发汗解表，散寒通阳，主治感冒风寒轻证，与防风相须配伍，以加强其发汗解表之功效。故《药对》说:“防风得葱白能行周身。”粳米温中益气,又善助药力,可助防风、葱白以发汗解表。3味相伍，共奏发汗解表之效。', '本品为辛温之剂，素有阴虚内热及热盛之证者忌用；外感表证属风热者忌用。', 1, 'null', '解表类', '粥食类', '煮', '/static/images/medicinaldiet/防风粥_0.png', 8, NULL);
INSERT INTO `medicinal_diet_table` VALUES (3, '川芎白芷炖鱼头', '《家庭食疗手册》', '川芎、白芷各3~9g，鳙鱼头500g，葱、胡椒、生姜、盐各适量。', '将鱼头去鳃洗净，连同川芎、白芷、葱、胡椒、生姜放入砂锅内，加水适量，武火烧沸，再以文火炖半小时，入盐调味即成。分早、晚两次吃鱼喝汤。', '祛风，散寒，活血，止痛。', '辛温解表类，适用于风寒头风；头痛、鼻渊患者前额痛、牙齦肿痛；风湿痹痛见四肢拘挛痹痛、瘀血疼痛。', '本方所治之证，为风寒外袭，瘀阻脉络所致，治宜祛风散寒、活血止痛。方中川芎能祛风止痛，且秉升散之性，能上行头目；又为血中之气药，能通达气血，活血散瘀，行气止痛；故治疗外感风寒引起的头痛、男女头风、前额痛、周身疼痛等，常以川芎为主，其为治头痛之要药。常配白芷、细辛等，如川芎茶调散等。白芷辛温，芳香上达，能解表散寒、祛风止痛，临床常与川芎配伍，以相互增强作用，因气味芳香，故又能增加菜肴的香味。再配以葱、姜、胡椒，既能调和菜肴之味，又能增强发汗解表之功。鳙鱼头，即花鲢鱼头，甘温无毒，其肉细膩，其味鲜美，可“暖胃，去头眩，益脑髓”(《本草求源》)，配合诸药调制，确为一道味道美、效果优的散寒解表药膳佳肴。', '素体阴虚或郁热者忌用。', 1, '/static/video/川芎白芷炖鱼头.mp4', '解表类', '菜肴类', '炖', '/static/images/medicinaldiet/川芎白芷炖鱼头_0.png', 83, '/static/video/川芎白芷炖鱼头_v.png');
INSERT INTO `medicinal_diet_table` VALUES (4, '姜糖苏叶饮', '《本草汇言》', '生姜3g，苏叶3g，红糖15g。', '将生姜、苏叶洗净，切成细丝，同置茶杯内，加沸水浸泡5~10分钟，放红糖拌匀即成。每日2次，趁热服。', '发汗解表，祛寒健胃。', '辛温解表类，主治风寒感冒见发热、恶寒、头身痛等；对同时患有恶心、呕吐、胃痛、腹胀等症的胃肠型感胃，则更为适宜。', '本方所治之证，为风寒所致，治宜辛温解表、发散风寒。方中苏叶辛温，可发表散寒，理气和营,能治疗感冒风寒见恶寒发热、咳嗽气喘等。《本草正义》记载:“紫苏，芳香气烈。外开皮毛，泄肺气而通腠理，上则通闭塞，清头目，为风寒外感灵药。““叶本轻扬，则风寒外感用之，疏散肺闭，宣通肌表,泄风化邪，最为敏捷。”其与生姜相须配伍，可增强发散解表散寒之功。红糖甘温，既可温中散寒，助苏叶、生姜发散在表之寒；又可作为调味品，缓生姜、苏叶辛辣苦涩之味。本方可作为外感病流行期间的预防药膳，也可作为风寒感冒初起阶段的治疗药膳。', '素体阴虚，或湿热内蕴，或外感风热者忌用。', 1, 'null', '解表类', '饮料类', '泡', '/static/images/medicinaldiet/姜糖苏叶饮_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (5, '银花茶', '《疾病的食疗与验方》', '银花20g，茶叶6g，白糖50g。', '水煎服。每天1次。连服2~3天。', '辛凉解表。', '辛凉解表类，适用于风热感冒，症见发热、微恶风寒、咽干口渴等症。', '本方所治之证，为风热感冒，治宜宣散风热。方中银花可轻宣疏散，又能清热解毒，用于外感风热或温病初起，发热而微恶风寒者多具良效。茶叶苦甘而凉，清头目，除烦热，利小便，生津液，解百毒。白糖甘寒，可除烦热，生津液，且能改善银花的苦味。', '素体阳虚或脾虚便溏者忌用。', 1, '/static/video/银花茶.mp4', '解表类', '饮料类', '泡', '/static/images/medicinaldiet/银花茶_0.png', 9, '/static/video/银花茶_v.png');
INSERT INTO `medicinal_diet_table` VALUES (6, '豉粥', '《圣济总录》', '豆豉15g，葱白3茎(切段)，薄荷6g，生姜6g(切片)，羊髓100g，白米100g，细盐少许。', '先煎葱、姜、豆豉，后下薄荷，稍煎后去渣取汁，入米，再煮，候粥熟，下羊髓及盐，搅匀。空腹温服。', '祛风，清热，解毒。', '辛凉解表类，适用于疮疡初起，局部红、肿、热、痛，而脓尚未成者。', '本方所治疮疡多由外感邪毒，侵入机体蕴积化热所致，故治宜发散解表、清热解毒。方中豆政苦寒，可解表、宣郁、解毒，为“治天行时疾，疫疠瘟瘴之药”，疮疡初起，用之最宜。配以薄荷疏风散热，辟秽解毒，可治“一切伤寒头痛、霍乱吐泻、痈、疽、疥、癞诸疮”《滇南本草》)。羊髓甘温，可“却风热，止毒”(《千金要方》)，益阴补髓，润肺泽肌，主治痈疽、疮疡、目赤、目翳等。粳米甘平，善助药力，配“薄荷者清热，姜、葱、豉者发汗”《药性裁成》)。诸味相伍，共奏疏风、清热、解毒之功，对疮疡初起兼见表证者具有较好的辅助治疗作用。', '疮疡已成，或已化脓者忌用。', 1, 'null', '解表类', '粥食类', '煮', '/static/images/medicinaldiet/豉粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (7, '淡豉葱白煲豆腐', '《饮食疗法》', '淡豆豉12g，葱白15g，豆腐200g。', '豆腐加水1.5碗，略煎，加入豆豉，煎取大半碗，再入葱白，滚开即出锅。趁热服食，服后盖被取微汗。', '益气健脾，疏散表邪。', '扶正解表类，主治年老体虚者之风寒感冒或风温初起，症见头痛身楚、恶寒微热、咳嗽咽痛、鼻寒流涕等。', '本方是宗《肘后备急方》中葱豉汤方义，以谈豆豉、葱白为主料，伍用豆腐制作而成的药膳食品。具有益气解表之功。方中淡豆鼓辛甘苦而性寒，入肺经，能升能散，为宣郁之上剂，尤长于宜散解表，凡外受寒热，暑湿交感，食饮不运者皆可应用。葱白辛温，入肺、胃经，专主发散风寒邪气。葱、豉相合，发汗解表之力增强，即《本草纳目》所谓“....得葱则发汗”，可用于风寒、风热、暑湿诸外感病证。故《肘后备急方》将葱豉汤视为数种伤寒之“一药兼疗”妙品。配料豆腐能益气和中，与主料共收扶正解表作用。煲汤热服可助药物的发散之力。本方主料、配料，性味平和，全方辛散而不燥烈，无过汗伤津之弊;扶正而不滞邪，无闭门留寇之虑，是临床治疗年老体虚者外感风寒、风热轻证的食疗良方。', '暂无', 1, 'null', '解表类', '菜肴类', '熬', '/static/images/medicinaldiet/淡豉葱白煲豆腐_0.png', 8, NULL);
INSERT INTO `medicinal_diet_table` VALUES (8, '生津茶', '《慈禧光绪医方选议》  ', '青果5个(研)，金石斛6g，甘菊6g，荸荠(去皮)5个，麦冬9g。解芦根2支(切碎)，桑叶9g，竹茹6g，鲜藕10片，黄梨(去皮)2个。', '上10味水煎取汁，代茶频饮，每日1剂。', '解表清热，生津止渴。', '扶正解表类，主治素体肺胃阴處，复微受风热外邪之证，见身有微热、头痛鼻塞、口干咽燥、燥咳不爽、手足心热、不思饮食等。', '本方治证为肺胃津伤，感受风热之邪所致，治宜解表清热、养胃生津。方中桑叶，甘菊甘凉轻清灵动，桑叶清宣肺气，甘菊疏散风热，两药直走上焦以驱除外邪，共为主料。然素体阴虚之质，汗源不充，单用发散之品邪气不易外解，且有劫液耗阴之弊，必须滋阴养液以治病本，故伍用较多的滋润之品。其中麦冬、石斛、芦根、藕、梨滋阴润燥，清热生津；青果、荸荠、竹茹清热利咽，化痰止咳。两组配料有标本兼顾之功。全方滋阴为主，兼以解表，疗效缓和，对肺胃阴虚之风热轻证最为适宜。因阴虚者外感易于化热、化燥、伤肺，故本方也可作为阴虚之入预防感冒的保健饮品。', '外感重证或阴伤不著者不宜，以免留邪。', 1, 'null', '解表类', '饮料类', '煎', '/static/images/medicinaldiet/生津茶_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (9, '石膏粳米汤', '《医学衷中参西录》', '生石膏60g，粳米60g。', '上2味，加水煎煮，至米熟烂，去清取汁，乘热顿服。1日1~2剂。', '清热泻火，除烦止渴。', '清气凉营类，适用于外感寒邪入里化热，或温热病邪在气分所致壮热头痛、面赤心烦、汗出口渴、脉洪大有力等症。', '木方所治之证为伤寒邪入阳明，由寒化热，或温邪传入气分所致。治宜清泄阳明气分热邪。本方由《伤寒论》“白虎汤”化裁而成。方中石膏味辛甘、性大寒，归肺胃两经，具清热泻火、退热解肌、除烦止渴之功，是清解气分实热的要药。现代研究证实石膏煎剂对动物实验性发热及人体都有明显的解热作用。因其机制是抑制发热中枢，同时也有抑制发汗中枢的作用、所以解热却不发汗，因此特别适宜于温热病高热患者。粳米甘平，“主益气，除烦渴，调胃....”(《新修本草》)。方中用之，其义有三:一则辅助石膏生津、止渴、除烦；二则顾护胃气，预防大量服用石膏而损伤牌胃；三则利用浓稠的粥液，使石膏细末悬浮其中，防止有效成分沉淀损失。全方药、食虽少，却配伍得当、功效卓著，且祛邪不伤正、清热不伤胃，实为清解阳明气分热邪之优良膳方，所以张锡纯赞其“治愈者不胜计”。', '暂无', 1, 'null', '清热类', '粥食类', '煮', '/static/images/medicinaldiet/石膏粳米汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (10, '竹叶粥', '《老老恒言》', '生石膏45g，鲜竹叶10g，粳米100g，白砂糖5g。', '竹叶洗净，同生石膏一起加水煎煮，去渣取汁，放入粳米，煮成稀粥，调入白糖即成。每日分2~3次食用，病愈即止。', '清热泻火，清心利尿。', '清气凉营类，适用于温热病见发热口渴、心烦尿赤、口舌生疮等症。', '本方所治之证乃邪入气分，肺、胃、心经热盛所致，治宜解气分邪热、清肺胃心经之火。方中竹叶为禾本科竹属植物淡竹之叶(其功效及临床应用与淡竹叶类似，一可以代淡竹叶用)，味甘微苦、性质寒凉，归心、胃、小肠经，既可清解气分、生津止渴，又能清心除热、通利小便，如《药品化义》指出:“气清入肺，是以清气分实热，非竹叶不能。”《本草求真》也说:“能导心经之火而利小便。”方中用之,一则协同石膏清热泻火，生津止渴；二则清心利尿以除心烦、尿赤、口舌生疮等。粳米调养胃气，清热而兼和胃，补虚而不恋邪，使本方“以大寒之剂，易为清补之方”(《医宗金鉴》)。白糖既可调味，又能清热生津。以上4味合用，共奏清热泻火、清心利尿之功，月解热而不伤胃，除邪而不伤正，对温热病邪在气分、肺胃心经火热亢盛之身热口渴、心烦不宁、口舌生疮、小便短赤涩痛，以及暑热病发热口渴、心烦尿赤与小儿高热惊风等皆有一定的治疗作用。', '凡脾胃虚寒或阴虚发热者不宜使用本方。', 1, 'null', '清热类', '粥食类', '煮', '/static/images/medicinaldiet/竹叶粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (11, '石膏乌梅饮', '《外台秘要》', '生石膏150g，乌梅20枚，白蜜适量。', ' 石膏打碎，纱布包裹，与乌梅同煎，去渣取汁，调入白蜜，代茶频饮。', '清热泻火，生津止渴。', '清气凉营类，适用于温热病热邪未尽、气热伤津所致壮热不已、汗出口渴、面赤恶热、脉洪大等症。', '本方所治之证乃邪热未清，津液受伤所致，治宜清热生津。方中生石膏为主药，擅清肺胃之火，有解热退烧、生津止渴的作用。乌梅异名“青梅”，是蔷薇科樱桃属植物梅的未成熟果实，以个大、核小、肉厚、外皮乌黑、味极酸者最佳，含柠檬酸、苹果酸、琥珀酸等成分，有刺激唾液分泌的作用，在方中一则味酸化阴以养阴生津，二则味酸收涩以敛汗止汗，用为辅药。白蜜即白色至淡黄色的蜂蜜，味甘性平、润肺补虚，用于肺胃津亏燥热与中焦脾肾虚衰的调治，在方中一是与乌梅配伍酸甘化阴以治津伤口渴；二是补中益脾，缓和药性，避免石膏伤中损胃；三是矫正口味，使本方酸甜可口，便于患者食用，在方中为佐使之药。二者合用，全方共奏清热泻火、生津止渴之功，临床可用于气热伤津、热邪木尽之高热不退、大汗不止、口渴不已等症的调治。', '暂无', 1, 'null', '清热类', '饮料类', '煎', '/static/images/medicinaldiet/石膏乌梅饮_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (12, '生地黄粥', '《二如亭群芳谱》', '生地黄汁50ml，生姜2片，粳米60g。', '生地黄适量，洗净切段，绞汁备用。先用粳米加水煮粥，煮沸数分钟后加入地黄汁与生姜片，煮成稀粥食用。', '清热养阴，凉血止血。', '清气凉营类，适用于热入营血引起高热心烦、吐衄发斑或热病后期出现低热不退等症。', '本方治证由邪入营血或热伤阴液引起，治宜清热凉血或养阴生津。方中生地味甘略苦，性质寒凉，富含汁液，味苦性寒故能清热凉血，甘寒养阴，又能养阴生津。所以其主要功效是清热养阴、生津止渴、凉血止血，临床主要适用于血热妄行发斑、吐衄、崩漏及热病伤阴低热、心烦、口渴的治疗。但生地性寒滋腻，极易伤阳碍胃,故粥中又加入温中和胃的生姜，使全方寒而不凝，滋而不滞，可谓画龙点睛之笔。', '热病初起或是温温病不宜使用，否则容易恋邪碍湿。忌食葱白、韭白与薤白。', 1, 'null', '清热类', '粥食类', '煮', '/static/images/medicinaldiet/生地黄粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (13, '二根西瓜盅', '《中国食疗学.食疗菜谱》', '西瓜1只(2500g)，芦根50g，白茅根50g，雪梨50g，糖荸荠50g，鲜荔枝50g，山楂糕条50g，糖莲子50g，罐头银耳100g，石斛25g，竹茹25g，白糖400g。', '芦根、白茅根、石斛、竹茹洗净，加水煎取药汁250ml。西瓜洗净，在其纵向1/6处横切作盖，将盅口上下刻成锯齿形，挖出瓜瓤。雪梨切成小片，荸荠与山楂糕条切成拇指盖大小的丁块，荔枝去核切成小块，莲子对剖成瓣。铝锅或不锈钢锅洗净，倒入药汁，加入白糖，用小火化开，下雪梨片、荸荠丁、荔枝块、莲子瓣煮开，再加入山楂丁即可起锅。瓜瓤去籽，与果料药汁汤羹、银耳一并装入西瓜盅内，加盖放冰箱冷藏1~2小时后上桌。佐餐食用。', '清热解暑，生津止渴，开胃和中。', '清气祛暑类，适用于暑热病见高热烦渴、咳嗽咽干、气逆呕哕等证。', '本方所主之证乃暑热邪气引起肺、胃、心经热其所致，治宜解暑热、清肺胃、降心火。西瓜汁多甘寒爽口，长于清心除烦、生津止渴，又能利小便而导热外出，故又名“寒瓜”。李时珍指出：西瓜“消烦解渴，解暑热，疗喉痹，宽中下气，利小水，治血痢，解酒毒。”《本经逢源》谓其：“能解阳明中暑及热病大渴，故有天生白虎汤之称。”本方用西瓜即在于清热解暑、生津止渴。二根即芦根、白茅根，前者清解肺胃邪热、生津止渴除烦，后者凉血利尿、导热下行；本方配伍以梨、荸荠清热生津，止渴除烦，化痰止咳；荔枝益心肝,止烦渴；山楂膏生津，开胃消滞；莲子清心除烦，健脾益胃；银耳滋阴润肺，益胃生津；白糖润肺清心，生津止渴；竹茹清热除烦，化痰止呕；石斛养阴清热，益胃生津。全方以上各味，协调配合，具有清热解暑、生津止渴、益胃润肺、除烦开胃的综合作用，观之形美色鲜，闻之果香怡人，食之甜蜜清凉，既为暑热病发热、烦渴、咳嗽、呕逆等症的治疗药膳，又为夏季解暑防病之美味佳肴。', '脾胃虚寒、素体阳虚寒湿偏盛者禁用。', 1, 'null', '清热类', '菜肴类', '煮', '/static/images/medicinaldiet/二根西瓜盅_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (14, '清络饮', '《温病条辨》', '西瓜翠衣6g，鲜扁豆花6g，鲜银花6g，丝瓜皮6g，鲜荷叶边6g，鲜竹叶心6g。', '以水煎汁，频频饮服。每日1~2剂。', '祛屠清热。', '清气祛暑类，适用于暑温证见身热口渴、头目不清等症。', '本方所治之证为暑伤肺络，邪在气分所致，治宜清解肺络之暑邪。方中主药西瓜翠衣即西瓜的中果皮，又名“西瓜翠”、“西瓜皮”，一般将食后的果皮用刀削去外果皮与残留的果肉，洗净，直接或晒干后用。其味甘淡、性质寒凉，功同西瓜而力稍逊，清热生津，利尿解暑，有止渴涤署之功效。鲜扁豆花解暑化湿、鲜银花辛凉清暑，共为辅药。丝瓜皮清热通络，利尿解暑；鲜荷叶清暑利湿，升发牌胃清阳；竹叶清心利尿，叮使暑湿之邪从下而泄，三者共为佐使之药。以上各味均为暑季常用的清暑泻火的亦食亦药的绝好佳品，共奏祛暑清热、生津止渴、利湿升阳之功。因其特点是芳香轻清；故宜于暑伤肺经气分之轻证及暑温汗后余邪末尽之证。另外，亦可作为暑季伏天预防暑热病之用。', '暂无', 1, 'null', '清热类', '饮料类', '煎', '/static/images/medicinaldiet/清络饮_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (15, '荷叶冬瓜汤', '《饮食疗法》', '鲜荷叶1块，鲜冬瓜500g，食盐适量。', '荷叶、冬瓜共入锅内，加水褒汤，食盐调味。饮汤食冬瓜。', '清热祛暑，利尿除湿。', '清气祛暑类，适用于暑温、湿温病所致发热烦闷、头晕头痛、口渴尿赤等症。', '本方所治之证乃感受暑、湿病邪引起的病证，治宜祛暑除湿、清热利尿。方中荷叶清香微苦，性质平和,具“清凉解署，止渴生津，解除火热”(《本草从新》)之功，并能升发清阳、清利头目。冬瓜是夏秋冬季的佳蔬，冬瓜皮是利水消肿的良药，其味甘淡，具渗利小便之功效；其性寒凉，有清热消屠的作用却不伤正气；临床可用于暑热烦渴、水肿淋浊等的治疗。两味合用，汤清爽口，用于暑湿、湿湿证见发热口渴、头晕头痛、心烦尿赤等症的治疗。此外，荷叶尚有化湿除痰、活血祛瘀的作用，与冬瓜的淡渗利尿作用结合，本方亦可用于痰血阻滞型肥胖症的辅助治疗。', '暂无', 1, 'null', '清热类', '菜肴类', '熬', '/static/images/medicinaldiet/荷叶冬瓜汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (16, '解暑酱包兔', '成都市药材公司药膳研究组方', '兔肉200g，佩兰叶6g，甜面酱12g，鸡蛋1枚，葱结、姜米、食盐、酱油、白糖、味精、黄酒、生淀粉、白汤适量。', '兔肉切成长6cm、宽3cm的薄片，佩兰叶加水煎汁，备用。兔肉片放入碗内，加生粉、食盐拌匀，再加药汁，搅拌至兔肉片吸足水分，然后加鸡蛋搅拌，使蛋汁均匀地粘附在兔肉片上。锅烧热，放猪油，烧至五成热时放入挂有全蛋淀粉糊的兔肉片，用筷子迅速搅散，避免相互粘连，至肉片断红时，取出沥去油。锅烧热，用凉油滑锅后放猪油，烧至五成热时，放甜面酱、葱结、姜米，炒至酱细腻无颗粒、起香味时放黄酒、白糖、味辅、酱油与白汤炒拌成糊状，然后放肉片拌匀，沿锅边淋上少许猪油，翻炒至而酱包牢兔肉，淋上麻油，出锅装盘即成。佐餐食用。', '解暑，益气，化湿。', '清气祛暑类，适用于暑温、暑湿病见烦热口渴、乏力或头重、纳呆胸闷等症。', '本方主治证乃暑季感受暑热、暑湿病邪，热伤气津，湿阻脾胃所致。治宜清暑解热，益气生津，化湿醒脾。方中兔肉，《本草纲目》称为“食中上品”，味甘性凉，具有补中益气健脾、养阴生津止渴、清热解毒疗疮的作用，如《千金要方》指出:“补中益气止渴”，《随息居饮食谱》说:“甘、冷，凉血，祛温，疗疮解热毒”。现代研究发现：兔肉所含蛋白质高于牛、羊、猪肉，肉质细腻，易于消化，脂肪和胆固醇含量极低，脂肪又多为不饱和脂肪酸，其营养丰富，堪称“保健肉”、“健康食品”，很受现代人的青睐。佩兰辛平,入脾胃二经，能清暑化湿、醒脾开胃、升清降浊，用于夏伤暑湿见发热头重、胸闷纳呆等症的治疗。甜而酱甘、咸，性寒，有除热止烦、开胃爽口的作用，是夏季常用的调味品。三者结合，制成酱包兔，共奏清热解暑化温、益气养阴生津、醒脾开胃降浊之效，临床对暑温、暑湿见发热口渴、乏力、头晕或胸闷恶心、纳呆、头重等，类似于流行性感冒、中暑、急性胃肠炎者有一定的疗效，是一首夏季清补的药膳。', '暂无', 1, 'null', '清热类', '菜肴类', '烧', '/static/images/medicinaldiet/解暑酱包兔_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (17, '鱼腥草饮', '《本草经疏》', '鱼腥草250~1000g (或干品30~60g)。', '鲜鱼腥草捣汁饮服。或干品冷水浸泡2小时后，煎煮一沸，去渣取汁，频频饮服。', '清热解毒，消痈排脓，利水通淋。', '清气解毒类，适用于肺痈咳嗽吐痰及痢疾、淋证等。', '本方所主之肺痈、痢疾等，皆因热毒引起，淋证则由湿热所致。治疗当以清热解毒、消痈排脓，或清热、利湿、通淋为主。角腥草即蕺菜的全草，李时珍谓：“其叶腥气，故俗呼为鱼腥草”，味辛微苦，性质寒凉，主入肺经，既清热解毒，又消痈排脓，兼以利水通淋。药理研究证实：色腥草有抗菌、抗病毒、祛痰、平喘、利尿、止血、镇痛等作用，并可增强白细胞的吞噬作用，提高机体的免疫力。《滇南本草》说：鱼腥草“治肺痈咳嗽带脓血，痰有腥臭”；《岭南采药录》说：鱼腥草“煎服能去湿热，止痢疾”。所以本方在临床即叮用于肺脓疡、肺炎、支气管扩张症、支气管炎等病症所致发热、咳嗽、胸痈、咯吐脓血的治疗。此外，对于热毒、湿热引起的痢疾泄泻、水肿淋证也有一定的治疗作用。', '鱼腥草含挥发性成分，故不宜久煎。《临床中药辞典》指出：“有关鱼腥草，历代皆过分夸大了其不良反应，与近代生活及临床研究不符。本品无不良反应及毒性。”此与实际情况符合，如西南地区民间即以鱼腥草作为蔬苹来食用，就是证明。', 1, 'null', '清热类', '饮料类', '泡', '/static/images/medicinaldiet/鱼腥草饮_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (18, '蒲金酒', '《药酒验方选》', '蒲公英15g，金银花15g，黄酒600ml。', '上药以黄酒600ml煎至一半，去渣取汁，分2份早、晚饭后各1次温饮，药渣外敷患处。', '清热、解毒、消肿。', '清气解毒类，适用于乳痈红肿热痛、扪之坚实等症。', '乳痈俗名“奶疮”，即现代医学所说的“乳腺炎”，多因七情所伤，或产后饮食不洁、过食荤腥厚味、胃肠热盛、热毒壅结而成。临床常用疏肝、清胃、解毒、通乳之法内治，也可用药膏外敷，化脓后则宜手术切开排脓。本方为《本草衍义补遗》“公英忍冬藤酒”的变方。方中蒲公英、金银花均为清热解毒、散结清痈的要药，尤其蒲公英是治疗乳痈的必用之品，如《新修本草》说：公英“主妇人乳痈肿”，《本草求真》更是明确指出：“蒲公英能入阳明胃、厥阴肝，凉血解毒，故乳痈为......首重焉。缘乳头属肝，乳房属胃，乳痈......多因热盛血滯，因此直入二经，散肿臻效......“单用煎服有效，并可用鲜品捣烂或干品调研外敷。黄酒辛温散瘀，可助蒲、金二药散结消肿。全方合用即具清热解毒、散结消肿的作用，治疗乳痈疗效肯定。\r\n', '暂无', 1, 'null', '清热类', '饮料类', '煎', '/static/images/common/暂无图片.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (19, '马齿苋绿豆粥', '《饮食疗法》', '鲜马齿苋120g，绿豆60g。', '上2味同煮成粥，分2次食用。', '清热解毒，凉血止痢。', '清气解毒类，主治痢疾。', '本方所治之证为热毒、疫疠之邪引起，治宜清热凉血、解毒止痢。方中主药马齿苋原为野菜，现已成为饭桌上人们喜食的家常蔬菜，其性寒凉，有清热解毒、凉血止痢(泻)的作用，可治痢疾与泄泻，如对痢疾的下痢脓血，腹痛里急后重等单用或合用此药均有效，另外也可治单纯腹泻或肠炎腹泻。绿豆是家常食品，既可消暑利尿，又能清热解毒，用于暑热烦渴、疮疡肿毒、痢疾等的治疗，如《千金要方》就说其“止泻痢卒擗”。绿豆与马齿苋配伍，增强了本方的解毒、止痢作用，所以在方中是辅药。本方虽说仅有2味，但因能清热解毒、凉血止痢，故可治象细菌性痢疾、慢性非特异性费疡性结肠炎及肠功能紊乱等病证。', '暂无', 1, 'null', '清热类', '粥食类', '煮', '/static/images/medicinaldiet/马齿苋绿豆粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (20, '灯心竹叶汤', '《经验方》', '灯心15g，竹叶10g。', '水煎取汁，代茶饮用。', '清心除烦。', '清脏腑热类，适用于小儿夜啼、成人心烦等症。', '本方所主之证为心火亢盛，热扰心神所致,治宜清心降火，除烦宁神。方中灯心味甘淡、性寒凉，入心与小肠经，上清心火，下利小肠，能使心火从下而出，故最宜于热扰心神所致小儿夜啼不安、成人心烦失眠而兼见小便赤涩热痛之症的治疗。竹叶甘寒，清热除烦，利尿降火，与灯心相须为用，强化了本方降火除烦的功力，故在方中是辅药。两药合用，共奏清心除烦之功，治疗心火亢盛之成人心烦躁扰、夜卧不安与小儿啼哭吵闹、易惊易醒等症，疗效确切。', '暂无', 1, 'null', '清热类', '饮料类', '煎', '/static/images/medicinaldiet/灯心竹叶汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (21, '平肝清热茶', '《慈僖光绪医方选议》', '龙胆草1.8g，醋柴胡1.8g，甘菊花3g，生地黄3g，川芎1.8g。', '上药共为粗末，加水煎汁，或以沸水冲泡，代茶饮用。1日1~2剂。', '平肝清热。', '清脏腑热类，适用于目赤肿痛、眵多粘结，或耳痛耳胀，甚至脓耳等症。', '本方所主之证由肝胆火盛引起，治宜清泄肝胆实火。方中主药龙胆草味苦性寒，是清泄肝胆实火的首选药物，现代研究有解热、抑菌、降压等诸多作用，被广泛用于肝胆系统炎症、眼结合膜炎、中耳炎及高血压病等病症的治疗。柴胡平肝清热，生地、菊花平肝清肝，三者共为辅药。川芎属佐使之药，有行气通滞、活血化瘀的作用。诸味合用，有清泄肝胆实火、平肝清热的功效，可用于急性卡他性眼结膜炎、急性化脓性中耳炎、病毒性肝炎、胆囊炎与高血压病伴有头痛头晕、口千口苦、尿赤便秘等，即辨证属肝胆实火、肝火上炎型的治疗或辅助治疗。', '暂无', 1, 'null', '清热类', '饮料类', '泡', '/static/images/medicinaldiet/平肝清热茶_0.png', 5, NULL);
INSERT INTO `medicinal_diet_table` VALUES (22, '天花粉粥', '《千金要方》', ' 栝楼根15~20g(鲜品用30~60g，栝楼根粉用10~15g)，粳米60g。', '栝楼根洗净切片煎汁，同粳米煮粥；或以粳米加水煮粥，将熟时加入栝楼根粉，再稍煮至粥熟。侯温食用。', '清热生津, 润燥止咳。', '清脏腑热类，适用于热病口渴与肺热咳嗽。', '本方所主之证为热伤肺胃津液所致，治宜清泄肺胃、生津润燥。天花粉即栝楼之块根，古代以之作粉，故名之。又因其色洁白、粉性足、质细腻，别称“白药”、“瑞雪”。本品味甘酸微苦，性微寒，酸甘可养阴生津，苦寒能清热泄火，《医学衷中西录》称其：“清火生津，为止渴要药。”《千金要方》记载：“止大渴：深掘大栝楼根，厚削皮至白处止，以寸切之，水浸1日1宿，易水经5日，取出烂春碎研之，以绢袋滤之，如出粉法干之。水服方比，日三四，亦可作粉粥，乳酪中食之，不限多少，取差止。”此外，天花粉还有润肺止咳的作用。粳米益胃生津。本方酸甜适口、清香扑鼻，具清热益胃止渴、生津润燥止咳之功，可用于多种发热疾病口渴，糖尿病、尿崩症口渴与肺热咳嗽、干咳少痰、咽千口渴等的治疗或辅助治疗。', '本方性质寒润，故脾胃虚寒、大便溏薄者当忌用。', 1, 'null', '清热类', '粥食类', '煮', '/static/images/medicinaldiet/天花粉粥_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (23, '竹茹饮', '《圣济总录》', '竹茹30g，乌梅6g，甘草3g。', '水煎取汁，代茶频饮。', '清胃止呕，生津止渴。', '清脏腑热类，适用于胃热呕吐、暑热烦渴等。', '本方所治之证皆由邪热伤胃引起，治宜清泄胃热、降逆止呕、生津止渴。方中主药竹茹为植物淡竹的茎干除去外皮后刮下的中间层，又名“淡竹茹”、“竹二青\"，味甘微苦、性质寒凉，入胆、胃二经，因其寒凉，故可清热，苦又能降逆，而甘则可益胃安中，所以《本草蒙筌》说：“主胃热呃逆，疗噎嗝呕哕。”乌梅味酸，生津止渴，是为辅药。甘草，一则与乌梅合用，甘酸化阴，生津止渴；二则调和药味，便膳方甘酸适口、患者乐意接受，在方中为佐使之药。3味合用，共奏清胃止呕、生津止渴之功，临床可用于胃热呕哕，如急性胃肠炎、幽门不全梗阻的治疗。此外，亦用于暑病烦渴、热病后期胃阴受损虚呃不止等的治疗。', '暂无', 1, 'null', '清热类', '饮料类', '煎', '/static/images/medicinaldiet/竹茹饮_0.png', 6, NULL);
INSERT INTO `medicinal_diet_table` VALUES (24, '牙痛茶', '《河南省秘验单方集锦》', '大黄15g，生石膏30g。', '上药同放入杯内，用开水冲泡，1剂可冲泡2~3次。代茶饮用。1日1剂。', '清热、泻火、止痛。', '清脏腑热类，适用于胃火牙痛。', '本方主治证由胃中酿热化火，或五志六淫化火，邪热犯胃所致，治宜清胃泻火、消肿止痛。方中大黄、生石膏均为清热泻火之峻品，尤其大黄泻火清热之力强而猛，奏效甚快，故有“将军”之称。此外，大黄尚可杀菌，生石膏还有生肌祛腐之功。两者合用，清热泻火、消肿止痛，用于牙宜、牙痈即现代医学所说的牙周炎、牙龈炎等而辨证属胃火炽盛证型的治疗。', '孕妇与体虚者慎用本方。服用此茶期间，应忌烟酒及油腻、煎炒食物。', 1, 'null', '清热类', '饮料类', '泡', '/static/images/medicinaldiet/牙痛茶_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (25, '青头鸭羹', '《太平圣惠方》', '青头鸭1只，萝卜250g，冬瓜250g，葱、食盐适量。', '鸭洗净，去肠杂，萝卜、冬瓜切片，葱切细。先在砂锅内盛水适量煮鸭，煮至半熟再放入萝卜、冬瓜，鸭熟后加葱丝、盐少许调味。空腹食肉饮汤或作佐餐之用。', '清热，利湿，通淋。', '清脏腑热类，适用于小便涩少疼痛等症。', '本方所主之证为膀胱湿热所致,治宜清热利尿、化湿通淋。《本草纲目》说：“治水利小便，宜用青头雄鸭。”鴨，味甘、咸，性质微寒，有“滋五脏之阴，清虚劳之热......行，养胃生津”(《随息居饮食谱》)的作用，宜于阴虚内热之人的补养与水肿、淋病等病证的治疗。萝卜、冬瓜清热利尿、化湿通淋，亦用于水肿、淋病的治疗。全方合用，即具清热化湿、通淋消肿的功效，常用于湿热阻滞膀胱所致小便短少赤涩疼痛或湿热壅结引起水肿、小便不利，如急性肾盂肾炎、尿道炎、膀胱炎、肾炎及肝硬化等病症的治疗或辅助治疗。', '本方寒凉，凡脾胃虚寒腹痛腹泻或虚寒痛经、月经不调者禁用。', 1, 'null', '清热类', '菜肴类', '煮', '/static/images/medicinaldiet/青头鸭羹_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (26, '枸杞叶粥', '《太平圣惠方》', '鲜枸杞叶250g(干品减半)，淡豆豉60g，粳米250g。', '先用水煎豆豉，去渣取汁，再用豉汁煮米粥，候熟，下枸杞叶，煮熟，以植物油、葱、盐等调味即成。候温食用，1日2次。', '清退虚热，除烦止渴。', '清退虚热类，适用于虚劳发热、心烦口渴等。', '本方所主之证为阴虚内热所致，治宜养阴清热。枸杞叶为茄科植物枸杞的嫩叶，俗称“枸杞头”、“构祀芽”，民间多作野菜食用。其味甘微苦、性凉，功能退虚热、除烦渴,兼以养阴，《药性论》说：“作饮代茶，消烦热，止渴，益阳事”，可用于虚热烦渴、虚火牙痛的治疗。中豆豉，李时珍说：“黑豆性平，作豉则温。既经蒸罨，故能升能散。”配以枸杞叶，虽辛湿却不燥；虽发展而不烈，且无过汗伤津之弊端，用治虚劳发热最为适宜。粳米补中益气，以资化源。本方甘而不滋腻，寒而不伤胃，养阴清热，标本兼顾，治疗虚劳发热虽药力缓和，若守方食用，能获效。\r\n', '暂无', 1, 'null', '清热类', '粥食类', '煮', '/static/images/medicinaldiet/枸杞叶粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (27, '地骨皮饮', '《千金要方》', '地骨皮15g，麦门冬6g，小麦6g。', '上3味加水煎煮，至麦熟为度，去渣取汁，代茶频饮。', '养阴、清热、止汗。', '清退虚热类，适用于阴虚潮热、盗汗等。', '本方主治证由阴血亏损，阴不制阳引起，治宜养阴清热。方中地骨皮即植物枸杞的根皮，味甘性寒，善于清虚热、止盗汗，是治疗阴虚阳亢，潮热低热，骨蒸发热及盗汗的要药；麦门冬养阴生津，清热除烦；小麦益气固表，宁心止汗。三者合用有养阴清热、宁心止汗的作用，临床可用于索体阴虚、热病后期、肺癆阴虚等低热、盗汗的治疗。', '暂无', 1, 'null', '清热类', '饮料类', '煎', '/static/images/medicinaldiet/地骨皮饮_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (28, '白薇饮', '《常用中草药》', '白薇10g，肇草花果10g(或萑草10g)，地骨皮12g。', '水煎取汁，代茶频饮。', '杀痨虫，清虚热。', '清退虚热类，适用于肺痨潮热盗汗、咳嗽或咯血等。', '本方所主之证为感染癆虫，内损阴精而成，治宜抑杀痨虫、养阴清热。方中蓬草花果即桑科萑草属植物律草的果穗，其全草(蓮草)也可入药，味甘、苦，性寒凉，功能抑杀痨虫、清退虚热，《全国中草药汇编》指出：“華草花果对结核杆菌有显著抑制作用”，《本草推陈》亦云：善治“肺结核潮热、盗汗”。白薇味苦微咸而寒，具清热凉血之功，无论实热、虚热皆可清之，但以清虚热见长，用于温病邪入营血所致的发热不退、阴虚内热等症的治疗。地骨皮养阴退热，清肺止咳。三药合用，杀痨虫，清虚热，止盗汗，疗咳嗽，对肺结核而属于中医阴虚内热证者有一定的疗效。', '暂无', 1, 'null', '清热类', '饮料类', '煎', '/static/images/medicinaldiet/白薇饮_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (29, '双母蒸甲鱼', '《妇入良方》', '甲鱼1只(500~600g)，川贝母6g，知母6g，杏仁6g，前胡6g，银柴胡6g，葱、姜、花椒、盐、白糖、黄酒、味精适量。', '甲鱼宰杀，放尽血水，剥去甲壳，弃除内脏，切去脚爪，洗净后切成大块。药材洗净，切成薄片，放入纱布袋内，扎紧袋口。然后把甲鱼块与药袋一起放入蒸碗内，加水适量，再加葱、姜、花椒、盐、白糖、黄酒等调料后入蒸笼内蒸1小时，取出加味精调味后即可。分次食用。', '养阴清热，润肺止渴。', '清退虚热类，适用于低热不退、骨蒸潮热、咳嗽咯痰等症。', '本方所治之证，乃肝肾阴虚、燥热伤肺所致，治宜滋阴清热、润肺止渴。甲鱼，又名“鳖”、“团鱼\"、“元鱼\"，营养丰富，滋味甘美，兼具鸡、鱼、牛、羊、猪、鹿、蛙等7种美味，深受人们的青睐喜爱。其味咸性寒，味咸故能入肾以“滋肝肾之阴”(《随息居饮食谱》)，性寒则能清热以“退虚劳之热”(同前)，用治虚性腰痛、阴虚低热、痨瘵骨蒸等。在本方甲鱼有标本兼治的效用，所以是主药。银柴胡清退虚热；贝母、知母清肺润燥，止咳化痰；杏仁、前胡宣肺降气，化痰止咳，同为辅药。全方共奏养阴清热、润肺止咳之功，宜于长期低热不退骨蒸潮热、咳嗽咯痰与体虚发热等症的治疗。', '暂无', 1, 'null', '清热类', '菜肴类', '蒸', '/static/images/medicinaldiet/双母蒸甲鱼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (30, '苏子麻仁粥', '《普济本事方》', '紫苏子、大麻子各15g，粳米50g。', '将苏子、麻子净洗，研为极细末，加水再研，取汁，用药汁煮粥啜之。', '理气养胃，润肠通便', '泻下类，适用于妇人产后郁冒多汗，大便秘结，以及老人、体虚患者大便秘结。', '本方所治之证，为老人、产妇、虚入肠道津枯所致的大便秘结，治宜润肠通使。方中紫苏子气味辛温,入肺、肝两经，功擅降逆下气，宣通肺郁；麻子气味辛甘平，质润，入大肠、胃、脾三经，是润肠冒通大便的要药。两药同用，上开肺闭，下润肠燥，尽显配伍之妙；以之为粥，更合调治结合的药膳宗旨。因此本方可谓是通便药膳粥食的经典方剂。', '方中大麻子虽为甘坪之品，但服用不可过量。', 1, 'null', '泻下类', '粥食类', '煮', '/static/images/medicinaldiet/苏子麻仁粥_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (31, '郁李仁粥', '《医方类聚》引《食医心鉴》', '郁李仁30g，粳米100g。', '将郁李仁研末，加水浸泡淘洗，滤取汁，加入粳米煮粥，空腹食用。', '润肠通便，利水消肿。', '泻下类，适用于大便不通，小便不利，腹部胀满，兼有面目浮肿者。', '本方所治之证，为大肠燥涩、水气不利所致的便秘，治宜通便利水，俟水去肠宽，津液充沛，气化如常，大小便自然通利。方中郁李仁辛、苦、甘，性平，归脾、大肠、小肠经，《本草经疏》谓其：“性专降下，善导大肠燥结，利周身水气。”故本膳用于痰饮水湿所致的大小便不利最为适宜。', '《本草经疏》谓郁李仁“下后多令人津液亏耗，燥结愈甚，乃治标救急之药”。可知郁李仁有伤阴之弊，不宜久服。如内服过量可发生中毒。孕妇慎用。', 1, 'null', '泻下类', '粥食类', '煮', '/static/images/medicinaldiet/郁李仁粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (32, '蜂蜜决明茶', '《食物本草》', '生决明子10~30g，蜂蜜适量。', '将决明子捣碎，加水200~300ml，煎煮5分钟，冲入蜂蜜，搅匀后当茶饮用。', '润肠通便。', '泻下类，适用于习惯性便秘。', '本方所治之证，多为热病伤津，或老人、产妇津液不足，大肠干燥，无以润滑大便所致的便秘，即所谓“无水舟停”，治宜滋润肠燥、通下大便。\r\n本饮出自清代《食物本草》，“决明子可点茶，又堪入蜜煎”，无方名，也无功用主治，方名为本书作者所加。方中决明子富含油脂而质润，上清肝火，下润大肠，其中所含的蒽醌类物质有缓泻作用，故能用于肠燥便秘。蜂蜜功善润肠通便、润肺止咳、滋养和中，久服养颜，是天然的营养性润下剂。两药合用，润燥清热，泄热通便，且作用平和，较少不良反应。本方还有清肝明日、润肺止咳、降血脂、降血压等作用，若肠燥便秘而兼肝火上炎，目赤肿痛，头痛眩晕，或燥热咳嗽者，较为适宜；老人肠燥便秘兼有高血压、高脂血症者，亦有较好疗效。', '决明子通便，宜生用、打碎入药，煎煮时间不宜过久，否则有效成分破坏，作用降低。因其所含葱甙有缓泻作用，大剂量可致泻，故应注意用量。', 1, 'null', '泻下类', '饮料类', '煮', '/static/images/medicinaldiet/蜂蜜决明茶_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (33, '升麻芝麻炖猪大肠', '《家庭食疗手册》', '黑芝麻100g，升麻15g，猪大肠一段(30cm长)，调料适量。', '将升麻、黑芝麻装入洗净之猪大肠内，两头扎紧，放入砂锅内，加葱、姜、盐、黄酒、清水适量，文火炖3小时，至猪大肠熟透，取出晾凉，切片装盘。佐餐食用。', '升提中气，补虚润肠。', '泻下类，适用于年老津枯，病后肠津未复而见有大便干燥难解者，或肠虚便秘，兼有脱肛、子宫脱垂等症。', '本方所治之证，为中气下陷，肠道津枯所致的便秘、脱肛等，治宜升阳举陷、润养肠道。方中芝麻，又名脂麻，以黑者为佳。《神农本草经》 称其：“补五内，益气力，长肌肉，填脑髓”。富含油脂，味甘性平，入肺、脾、肝、肾经。能滋养肝肾、乌须黑发，为滋补强壮之品；又能涧燥滑肠，治肠燥津枯所致的大便秘涩，有润肠通便之效。伍以升麻之清热解毒，升举中气，则有举陷之功，对脾胃虚弱，清气下陷，升降失调之大便秘结，有开上以通下的功效。猪大肠甘寒，入肺、脾经，能以脏补脏，滋润大肠，增强大肠蠕动，润肠通便。三者合用，既有滑肠润燥之功，又有补虚润肠、升清降浊之效，故对子体虚气陷、津亏肠燥之便秘等有调治功效。', '芝麻、大肠含脂肪成分较多，故脾虚便溏者不宜服用本膳。', 1, 'null', '泻下类', '菜肴类', '炖', '/static/images/medicinaldiet/升麻芝麻炖猪大肠_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (34, '牛髓膏', '《医方类聚》引《寿域神方》', '人参、牛髓、桃仁、杏仁、山药各60g，蜂蜜240g，核桃肉90g(去皮，另研)。', '将人参、桃仁、杏仁、山药、核桃肉研为细末备用。将牛髓放入铁锅内，加热溶化，再加入蜂蜜熬炼，煮沸后滤去滓，加入诸药末，用竹片不断搅拌，至黄色为度，候冷，瓷器盛之。每服5~10g，空腹时细嚼。', '益气补虚，润肠通便。', '泻下类，适用于肠燥津亏，大便秘结，正气虚损，肺虚咳嗽，五劳七伤等。', '本方所治之证，为精气不足，肠道失濡，津液匮乏所致的各种虚损，见有大便秘结者，治宜扶正补虚，润下通便。方中用人参大补元气，牛髓养精壮骨，山药健脾滋液;桃仁、杏仁、核桃仁均为植物种仁，脂多而质润，用以润肠通便，加上蜂蜜养正润下，合而成为扶正气、补虚损、润肠枯、通大便之方。', '本膳富含动物脂肪和植物脂肪，肠虚肠滑、脾虚气陷而泄泻者忌用。', 1, 'null', '泻下类', '其它', '熬', '/static/images/medicinaldiet/牛髓膏_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (35, '桃花粥', '《家塾方》', '桃花6g，生大黄3g，粳米50g。', '以水200ml，先纳桃花煮取120ml，再纳入大黄，煮取60ml，药液备用。将粳米煮粥，待粥将成时加入备用之药汁，略煮片刻郎可。服用时可稍加红糖调味。', '泻下通便，清热利水。', '泻下类，适用于大便燥结，腹中胀痛，或便溏秽臭者，或肠痈属阳明腑实证者，亦可用于浮肿而大小便不通，腹胀口干，舌苔腻，脉滑实者。', '本方所治，为水气不化，停积蕴热，充斥于肠胃的内热结实证，治宜通便泻热，使热从便解。本方出自日本医书《家塾方》，原方为汤剂。方中桃花味苦性平，行气活血，性善走泄下降，功能为通利二便，可攻逐结粪，解除胀塞，有通便、利水双重功效。大黄为斩关夺将之猛药，《药品化义》谓其“气味重浊，直降下行，走而不守，有斩关夺门之力，故号为将军。专攻心腹胀满，胸胃蓄热，积聚痰实，便结瘀血，女人经闭。盖热淫内结，用此开导阳邪，宣通涩滞，奏功独胜。”但在本方中用量较小，又制成米粥，攻下之力因此得到缓和。粳米养脾气，厚肠胃，与桃花、大黄合用煮成稀粥，可使攻逐而不伤正。共奏通便泻下，导行积滞之功。', '中病即止，得大便通利，水肿得消，即停服，无须服至水肿消尽。脾虚水停，肾阳亏虚等所致的水肿虚证禁用本方。本膳对于肠痈、结胸等急腹证患者，只可作为辅助疗法，且不可因依仗本方而贻误病情。体弱年高者慎用。', 1, 'null', '泻下类', '粥食类', '煮', '/static/images/medicinaldiet/桃花粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (36, '番泻叶茶', '《中国药学大辞典》', '番泻叶1.5~10g。\r\n', '缓下，每次1.5~3g；攻下，5~10g。将番泻叶放入茶杯中，一般以沸水泡5分钟后饮用。', '泻下导滞。', '泻下类，适用于积滞便秘或习惯性便秘，症见大便干结，口干口臭，面赤身热，小便短赤，心烦，腹部胀满或疼痛等症。现代常用本品泡服，于X线腹部造影及腹部外科手术前清洁肠道。', '番泻叶具有泻下及抗菌作用。《饮片新参》谓番泻叶性味苦、凉，功能“泻热利肠府，通大便”；《现代实用中药》说它“少用为苦味健胃药，能促进消化；服适量能起缓下作用；欲其大泻则服40~60ml，作浸剂，约数小时即起效用而泄泻。”番泻叶作用较广泛而强烈，用于急性便秘比慢性便秘更适合。', '本品小剂量可得软便或轻度泻下，大剂量则呈水样泄泻，有时会引起恶心、呕吐、腹痛等不良反应，故牌胃虚寒，食少便溏者慎用。妇女月经期、孕妇、哺乳期妇女禁用。', 1, 'null', '泻下类', '饮料类', '泡', '/static/images/medicinaldiet/番泻叶茶_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (37, '干姜粥', '《寿世青编》', '干姜1~3g，高良姜3~5g，粳米50~100g。', '将干姜、高良姜洗净切片，粳米淘净。用水适量，先煮姜片，去渣取汁，再入粳米于药汁中，文火煮烂成粥。调味后早、晚乘温热服，随量食用，尤以秋冬季节服用为佳。', '温中和胃，祛寒止痛。', '温中祛寒类，适用于脾胃虚寒，脘腹冷痛，呕吐呃逆，泛吐清水，肠鸣腹泻等症。', '本方所治，为脾胃虚寒所致，治宜温中散寒止痛。方中干姜性味辛热，善入脾胃，既是调味佐餐之品，又是温中祛寒之药，具有能走能守的特点，能温里散寒，助阳通脉，尤长于祛脾胃之寒，专主温中止痛，降逆止泻。《珍珠囊》谓“干姜其用有四：通心助阳，一也；去脏腑沉痛瘤冷，二也；发诸经之寒气，三也；治感寒腹痛，四也。”本方专为脾胃虚寒冷痛而设，故用之为主。高良姜大辛大热，为纯阳之品，主入脾胃两经，善于温脾暖胃而祛寒止痛，能除一切沉寒痼冷，疗切冷物所伤，为中焦寒冷诸证之要药。《本草正义》谓之“辛热纯阳，故专主中宫真寒重症。”《名医别录》称其“主暴冷，胃中冷逆，霍乱腹痛。”其功用与干姜相似，二姜相伍温里散寒、止痛止呕的效用更强。粳米性平味廿，功擅补中益气，健脾益胃。方中两姜配伍，即为《太平惠民和剂局方》的二姜汤。二姜合用，其温中之功显著增强，专攻腹中寒气。然两姜均为辛热之品，燥热之性较剧，月辛辣之味颇重。今用二姜配伍粳米煮粥，不仅能以助阳温阳之力逐寒，增强温中止痛之功用；又能以益气健牌之功补中，调合燥热辛辣之性味，达到温中祛寒的目的。对于脾胃虚寒所引起的脘腹冷痛、呕吐清水、肠鸣泻痢等症确有良效。', '本方温热性质较强，久病脾胃虚寒之人，宜先从小剂量开始，逐渐增加。凡急性热性病及久病阴虚内热者，不宜食用。', 1, 'null', '温里祛寒类', '粥食类', '煮', '/static/images/medicinaldiet/干姜粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (38, '吴茱萸粥', '《食鉴本草》', '吴朱萸2g，粳米50g，生姜2片，葱白2茶。', '将吴茱萸碾为细末。粳米洗净先煮粥，待米熟后再下吴朱萸末及生姜、葱白，文火煮至沸腾，数滚后米花粥稠，停火盖紧焖5分钟后调味即成。早、晚乘温热服，随壁食用，一般以3~5天为一疗程。', '温脾暖胃，温肝散寒，止痛止呕。', '温中祛寒类，适用于脘腹冷痛，呕逆乔酸，中寒吐泄，头痛，疝气痛等症', '本方所治，为肝胃寒凝所致，治宜散肝胃寒滞、温脾暖胃、温肝止痛止呕。本方以吴朱萸、粳米为主料。吴茱萸辛苦性热，气味芳香而浓烈，主入肝、脾、胃、肾四经。其辛散苦降，气浮味沉，长于温肝胃、下逆气、解郁滞、散冷积、止疼痛，尤以止痛、止呕的作用最为显著，为治胃寒呕逆之要药。《神农本草经》谓其“主温中下气，止痛。”《本草纲日》则明确指出:“茶萸，辛热能散能温，苦热能燥能坚，故所治之证，皆取其散寒温巾、燥湿解郁之功也。”本膳用关茱萸温中降逆，暖肝止痛为主。生姜、葱白皆为温胃散寒止呕之圣药。葱白普通阳气，能上能下，彻内彻外，无处不到，外可解六淫时行之邪，内可通胸腹三焦之气，温中止呕的作用虽不及生姜，但通阳散寒之力较强。该方以吴茱萸为主，但其味苦气烈，燥热而有小毒，配粳米、葱、姜为粥送服，既可缓其燥苦烈性，又能强化温中散寒之功效，心腹冷痛连及胁肋之吐泻者用之最宜，为寒滞吐逆，肝气乘脾之良膳。', '吴杂黄气味浓烈，温中力强，故用量宜小，不宜久服。一切实热证或阴虚火旺者忌服，孕妇慎服。', 1, 'null', '温里祛寒类', '粥食类', '煮', '/static/images/medicinaldiet/吴茱萸粥_0.png', 8, NULL);
INSERT INTO `medicinal_diet_table` VALUES (39, '良姜炖鸡块', '《饮膳正要》', '高良姜6g，草果6g，陈皮3g，胡椒3g，公鸡1只(约800g)，葱、食盐等调料适量。', '诸药洗净装入纱布袋内，扎口。将公鸡宰杀去毛及内脏，洗净切块，剁去头爪，与药袋一起放入砂锅内，加水适量，武火煮沸，撇去污沫，加入食盐、葱等调料，文火炖2小时，最后将药袋拣出装盆即成。每周2~3次，随量饮汤食肉。', '温中散寒、益气补虚。', '温中祛寒类，适用于脾胃虚寒，脘腹冷气串痛，呕吐泄泻，反胃食少，体虚瘦弱等；亦可用于风寒湿痹、寒疝疼痛、宫寒不孕，虚寒痛经等证。', '本方所治之证，为脾胃虚寒所致，治宜温中散寒，益气补虚。方中高良姜辛热纯阳，功擅温脾暖胃，行气降逆，消除胃肠冷气，止痛止呕，具有健脾胃、止吐泻、散寒力强等特点，《饮膳正要》用“治心腹冷痛，积聚停饮，食之效验。”故本方以之为主。草果性味辛温，入脾胃经，长于燥湿除寒辟秽，善消宿食化积滞，为冶寒湿积滞、腹痛胀满之要药，《本草正义》即谓“草果，辛温燥烈，善除寒湿而温燥中宫，故为脾胃寒湿主药。”是以为辅，既助良姜以增温脾散寒之效，又行消滞泻满止痛之功。陈皮味苦辛而温，气香质燥。功擅理气和中消胀，燥湿健脾化痰，善治牌胃不和，胀满呕吐之证。胡椒性昧辛热，气味俱厚，入胃、大肠经。功专温中散寒，除胃肠风冷寒邪，义与陈皮同为居家常用之调味品。二药与良姜、草果相配，本方温中散寒、行气健脾、燥湿和中之力大增，专攻中宫寒冷诸证。公鸡性味甘温，专入脾胃经，能温中益气，补精添髓，为血肉有情之滋补佳品。《神农本草经》即谓“丹雄鸡主女人崩中漏下，赤白沃，补虚温中，止血，杀毒。”方中用之合诸药助阳散寒以止痛，扶正补虚以达邪，还能缓诸药温辣燥口之性味。全方药食相合，既加强了温脾暖胃，祛寒止痛的功效，又能增香调味，补精添髓滋阳气生化之源，使之补虚不碍散寒除湿，温散而无耗气伤胃之弊，达到补而不滞，滋而不腻的效果。全方共奏温中散寒、益气填髓之功，而且味美可口，实为温中散寒止痛之良膳。', '本方专为脾胃虚寒，寒湿在中而设，汤味微辣香浓，肠胃湿热泄泻、外感发热、阴虚火旺者不可服食。', 1, 'null', '温里祛寒类', '菜肴类', '炖', '/static/images/medicinaldiet/良姜炖鸡块_0.png', 7, NULL);
INSERT INTO `medicinal_diet_table` VALUES (40, '砂仁肚条', '《大众药膳》', '砂仁10g， 猪肚100g，花椒末2g，胡椒末2g，葱、姜、食盐、味精、猪油等调料适量。', '猪肚洗净，入沸水氽透捞出，刮去内膜；锅内加骨头汤、葱、姜、花椒各适量，放入猪肚，煮沸后以文火煮至猪肚熟，撇去血泡浮沫，捞出猪肚晾凉切片。再以原汤500g煮沸后，放肚片、砂仁、花椒末、胡椒末，及食盐、猪油、昧精等各适量调味，沸后用湿淀粉勾芡即成。早晚佐餐食用。', '补益脾胃，理气和中。', '温中祛寒类，适用于脾胃虚弱，食欲不振，食少腹胀，体虚瘦弱及妊娠恶阻等，亦可用虚劳冷泻、宿食不消、腹中虚痛等症。', '本方所治之而，为脾胃虚弱所致，治宜补益脾胃。中砂仁性味甘温，辛香馥郁，擅于辛散、温通、芳化，有行气化湿、温脾止呕、顺气安胎之功，既为温中祛寒、醒脾调胃之良药，又是居家常用调味增香之佳品。《开宝本草》用之“治虚劳冷泻，宿食不消，亦白泻痢，腹中虚痛”，具有温而不燥、利而不破的优点，故本方用以为主。猪肚味甘性温，功能为补虚损、健脾胃，专治脾胃亏损、虚劳羸瘦之人，具有“以脏补脏”之妙，历来被公认为调治中焦的食疗佳品。《本草经疏》即称“猪肚，为补脾胃之要品。脾胃得补，则中气益，利自止矣。补益脾胃，则精血自生，虚劳自愈。”本膳猪肚与砂仁合用，意在补脾行气，复中焦之运化，使气血生化有源。花椒、胡椒性能相近，味辛性温，气味俱厚，功专温中散寒、开胃止痛。《本草纲目》即谓“椒，纯阳之物，其味辛而麻，其气温以热。入肺散寒，治咳嗽；入脾除湿，治风寒湿痹，水肿泻痢；入右肾补火，治阳袁溲数，足弱，久泻诸证”。二料与砂仁、猪肚相伍，一则助其温中健脾，二则辛散以行气，亦能调味增香，具相成之妙。砂仁、椒、姜、葱等，合猪肚健脾益胃，寓治疗作用于改变药膳气味之中，食借药力，药助食威，其效专而力宏，齐奏温中健胃、行气止痛、调中导滞之功，使脾胃虚弱、久病虚劳者不期而愈。\r\n', '砂仁所含芳香挥发油，容易挥发，故不宜久煮。凡阴虚血燥，火热内炽者不宜食用。', 1, 'null', '温里祛寒类', '菜肴类', '煮', '/static/images/medicinaldiet/砂仁肚条_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (41, '六味牛肉脯', '《饮膳正要》', '牛肉2500g，胡椒15g，荜茇15g，陈皮6g，草果6g，砂仁6g，良姜6g，姜汁100ml，葱汁20ml，食盐100g。', '选黄牛腿云花肉，冼净切成小条；将胡椒、荜菱、陈皮、草果、砂仁、良姜等6味药研成末，加入姜汁、葱汁、食盐与牛肉相合拌均，放入坛内，封口，腌制两日后取出，再放入烤炉中焙干烤熟为脯，随意食之。', '健脾补虚，温中止痛。', '温中祛寒类，适用于脾胃虚弱，中焦寒盛所致的胃脘冷痛，呕吐溏泄，腹胀痞满，食少纳呆，消化不良，下利完谷，且伴有畏寒肢冷等症者。', '本方所治之证，为脾胃中焦虚寒所致，治宜健脾补虚、散寒止痛。方中胡椒、荜茇、良姜、草果、砂仁、陈皮等6味既为辛热温中之药、又是芳香调味之品。胡椒“大辛热，纯阳之物，肠胃寒湿者宜之”(《本草纲目》)，其专入胃与大肠经，功擅温中散寒、行气止痛，为散脾胃虚寒之要药。荜麦辛热，善行胃肠，长于除冷积、湿中散寒，擅疗胃腑寒痛呕吐，乃“脾肾虚寒之主药”(《本草正义》)。良姜辛热入脾胃，温脾土，散胃寒，为治脾胃虚寒，脘腹冷痛之佳品。草果气浓味厚，善除胃肠冷寒，解大肠寒积。四药均为温里散寒之品，合而用之，同气相求，可除沉寒痼疾，专为脾胃寒湿而配。寒温中阻，脾胃之气必因之呆滞，而砂仁气香馥郁，辛散温通，降胃阴而下食，达脾阳而化谷，不仅能散寒，且功擅醒脾调胃，快气宽中，于脾胃气滞有良散。陈皮辛温，理气健脾，和中消滞，二药合用，不仅能助以上四药形成群队优势以散寒温中，又能醒胖行气，复中阳之运化。牛肉为本方主料，其性味廿平，专入脾胃经，功擅益气血、监筋骨、理虚弱，《医林纂要》即谓“牛肉味甘，专补脾土。”《韩氏医通》亦言“黄牛肉，补气，与绵节芪同功。”其与：六药相配，温补两全，其功颇著。本膳不仅充分体现了集群队辛温香燥之品，以辛温之力助阳气以祛寒，以血肉之味培阳气以御寒，专攻腹中寒湿之气的配伍特点；而且成为五味俱全，味美可口，食用方便，老少咸宜的风味小吃，确实是脾胃虚寒患者不可多得的良膳之剂。', '本方为辛香温热之品，实热证、阴虚证不可食用，以防助热劫阴。', 1, 'null', '温里祛寒类', '菜肴类', '其它', '/static/images/medicinaldiet/六味牛肉脯_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (42, '丁香鸭', '《大众药膳》', '丁香5g，肉桂5g，草蔻各5g，鸭子1只(约1000g)，葱、姜、食盐、卤汁、冰糖、麻油等调料适量。', '将鸭宰杀后去毛和内脏，洗净；丁香、肉桂、草蔻用水煎两次，每次煮20分钟，共取汁3000ml。将药汁、净鸭与葱、姜同放锅中，武火烧沸后转用文火煮至六成熟时捞出晾凉。再将鸭子放入卤汁锅内，用文火煮肉熟后捞出。该锅内留卤汁加冰糖，文火烧至糖化，放入鸭子，将鸭子一面滚动，一面用勺浇卤汁至鸭色呈红亮时捞出，再均匀地涂上麻油即成。切块早晚佐餐食用。', '温中和胃，暖肾助阳。', '温中祛寒类，适用于脾胃虚寒所致的胃院冷痛，反胃呕吐，呃逆嗳气，食少腹泻以及肾阳虚之阳痿、遗精、下半身冷等。', '本方所治之证，为脾肾虚寒所致，治宜温补脾肾。方中丁香性味辛温香烈，入脾、胃、肾经，上达脾胃温中降逆，下及肝肾暖肾助阳，具有暖脾胃、下逆气、益命门、起痿弱之功，既能温中助阳，又善和胃降气，《蜀本草》称其“疗呕逆甚验”，《医林纂要》亦谓其“润命门、暖胃、去中寒\"，是为治疗中焦虚寒，呕吐呃逆之要药，故本膳以之为主。肉桂性体纯阳，辛甘大热，能走能守，峻补命门，散寒止痛，能益火消阴，为补命火壮元阳、治沉寒痼冷之要药，《本草汇》云：“肉桂，散寒邪而利气，下行而补肾，能导火归原以通其气。”不仅能助丁香暖脾肾、散寒邪、止疼痛，而且能除鸭之臊气，增香调味。草蔻辛香走窜，善理中州，辛能破滞，香能悦脾，温能祛寒，窜可行气，功擅燥湿健脾，温胃和中。《名医别录》谓“主温中，心腹痛，呕吐，去口臭气。”《珍珠囊》亦谓其“益脾胃，去寒，又治客寒心胃痛。”方中三药合用，能使中阳健运，寒凝消解，胃气顺降，命火复旺。鸭，又名骛。其肉甘咸微寒，入脾、胃、肺、肾经，功擅健脾补虚，滋阴养胃，利水消肿。《名医别录》将其列为上品，《本草汇》谓其“滋阴除蒸，化虚痰。”鸭肉与以上温阳健胃药相伍，可阴阳并调，使阴生阳长，寓“阳得阴生而生化无穷”之义。既补益脾胃，散寒止痛，且无滋补腻滞或温燥伤胃之弊。全方有补有行，补而不壅，行而不耗，不失为脾肾虚寒患者强身助阳之佳膳。', '本方丁香、肉桂等药辛香温阳，力偏温补，作用较强，用量不宜过大。凡阴虚火旺、急性热病者不宜食用。', 1, 'null', '温里祛寒类', '菜肴类', '煮', '/static/images/medicinaldiet/丁香鸭_0.png', 5, NULL);
INSERT INTO `medicinal_diet_table` VALUES (43, '川乌粥', '《普济本事方》', '生川乌头3~5g，粳米50g，姜汁约10滴，蜂蜜适量。', '将川乌头捣碎，碾为极细粉末。先煮粳米粥，煮沸后加入川乌末，改用小火慢煎，待熟后加入生姜汁及蜂蜜搅均，再煮一、二沸即可。', '燥湿祛寒，通利关节，温经止痛。', '温经散寒类，适用于风寒痹痛，历节风痛，四肢及腰膝酸痛，或四肢不遂，痛重难举等。', '本方所治之证，为寒湿风痹，治宜逐风寒、除寒湿、止疼痛。方中川乌头为辛甘大热，有毒之品，通行十二经，是中医治疗风湿痹痛的常用药物。《珍珠囊》谓之“去寒湿风痹，血痹”；李东垣称其“除寒湿，行经，散风邪，破诸积冷毒。”其总以逐风寒、除寒湿见长，具有较强的止痛作用，擅治中风风痹、脚痛、心腹冷痛等。现代研究证明乌头所含的乌头碱有毒，但在沸水中很容易分解，煎煮后其毒性大大降低，但疗效并不减弱。本方以川乌头为主制为药粥，一则在煮粥过程中可降低乌头的毒性，保证药用的安全；二则因粳米善入脾经，补中益气，又能增强乌头的治疗作用。其效果正如制方人许叔微所言“疾在末，谷气引风湿之药，径入脾经，故四肢得安，比阳剂极为有力，予常制此方以授人，服食良验。”加用生姜温胃止呕；蜂蜜补中润燥，两者均能解乌头之毒，调和粥味。本方药味虽少，但配伍巧妙，既制约了乌头的毒性，又使之香甜可口，还能提高其蠲痹止痛的功用，故为历代常用治疗风湿痹痛的药膳效方。', '本方主药川乌头用量不宜太大，煮粥时间不可太短。凡热证疼痛、发热期间以及孕妇忌服。另外注意不可与半夏、栝萎、贝母、白及、白蔹等中药同时服用。', 1, 'nul', '温里祛寒类', '粥食类', '煮', '/static/images/medicinaldiet/川乌粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (44, '艾叶生姜煮蛋', '《饮食疗法》', '艾叶10g，老生姜15g，鸡蛋2个，红糖适量。', '老生姜用湿过水的草纸包裹3层，把水挤干，放入热炭灰中煨10分钟，取出洗净切片备用。将艾叶、鸡蛋洗净，与姜片一同放入锅内，加清水适量，文火煮至蛋熟后，去壳取蛋，再放入药汁内煮10分钟，加入红糖溶化，饮汁吃蛋。', '温经通脉，散寒止痛，暖宫调经。', '温经散寒类，适用于下焦虚寒所致的腹中冷痛，月经失调，血崩漏下，行经腹痛，胎漏下血，带下清稀，宫寒不孕等。', '本方所治之证，为下焦虚寒或宫冷经冷所致，治宜温经通脉，散寒止痛。方中艾叶辛香而温，味苦，入肝、脾、肾三经。善走三阴而逐寒湿，暖气血而温经脉，温中阳而止冷痛，固阴血而止血溢。尤长于温里和中、祛寒止痛，为妇科经带的常用要药，正如《本草正》所言：“艾叶，能通十二经，而尤肝脾肾之要药，善于温中，逐冷，除湿，行血中之气、气中之滯，凡妇人血气寒滞者，最宜用之。”其对下焦虚寒，腹中冷痛，宫冷经寒诸证，疗效甚佳，故本方用以为主药。老生姜性温味辛，功能温肺解表，温中止呕，为温胃散寒止呕之要药。经煨制后，较生姜则不散，比千姜则不燥，辛散之性减而祛寒之效增，善去脏腑之沉寒，发诸经之寒气，专主温里而治胃部冷痛、泄泻及妇人下焦虚寒诸证。与艾叶相伍，温里散寒之功大大增强，即是《世医得效方》之艾姜汤。鸡蛋性平味甘，具有益气血、安五脏、滋阴液、安胎儿之功，久病大病或产后体虚，或胎动不安者用之最宜。《本草纲目》指出：“能补血，治下痢，胎产诸疾。”配伍温阳通脉的艾、姜同煮，可促进气血生化，扶正达邪，加红糖以补血活血又能矫味。全方选料精当，功效专一，不失为温里散寒、养血益气的药膳良方。', '本方艾叶辛香而苦，性质温燥，用量不宜过大。凡属阴虚血热，或湿热内蕴者不宜食用。', 1, 'null', '温里祛寒类', '其它', '煮', '/static/images/medicinaldiet/艾叶生姜煮蛋_0.png', 5, NULL);
INSERT INTO `medicinal_diet_table` VALUES (45, '当归生姜羊肉汤', '《伤寒论》', '当归20g，生姜12g，羊肉300g，胡椒粉2g，花椒粉2g，食盐适量。', '羊肉去骨，剔去筋膜，入沸水锅内焯去血水，捞出晾凉，切成5cm长，2cm宽、1cm厚的条；砂锅内加适量清水，下入羊肉，放当归、生姜，武火烧沸，去浮沫，文火炖1个半小时，至羊肉熟烂，加胡椒粉、花椒粉、食盐调味即成。每周2~3次，饮汤食肉。\r\n', '温阳散寒，养血补虚，通经止痛。', '温经散寒类，适用于寒凝气滞引起的脘腹冷痛，寒疝腹中痛，产后腹痛，虚劳不足以及形寒畏冷阳虚等。', '本方所治之证，为阳虚血弱，寒凝经脉所致，治宜温阳散寒、养血补虚、通经止痛。方中当归甘辛微苦温，入肝、心、脾经，具补血活血、调经止痛、润肠通便之功。《本草正》谓“当归，其味甘而重，故专能补血，其气轻而辛，故又能行血，补中有动，行中有补，诚血中之气药，亦血中之圣药也。”生姜辛温，为温中散寒止呕之要药。“羊肉补中益气，性甘，大热。”(《本草纲目》)，历来作为补阳佳品。3料配伍，当归温阳活血以通经脉之气，生姜辛温发散以逐凝滞之寒，羊肉温阳养血能补虚以御寒，共奏温阳散寒、养血补虚之功。不仅是寒凝气滞、脘腹冷痛之良膳，亦为年老体弱、病后体虚、产后气血不足者之滋补佳品。', '本方为温补散寒之剂，凡阳热证、阴虚证、湿热证等不宜服用。', 1, 'null', '温里祛寒类', '菜肴类', '炖', '/static/images/medicinaldiet/当归生姜羊肉汤_0.png', 6, NULL);
INSERT INTO `medicinal_diet_table` VALUES (46, '附子粥', '《太平圣惠方》', '制附子3~5g，干姜1~3g，粳米60g，红糖少许。', '先将制附子、干姜捣碎，研为极细粉末，过筛备用。再下粳米煮粥，待粥煮沸后，加入药末、红糖同煮即成。或用附子、干姜煎汁，去渣后，下米及红糖并煮粥(以此法煎煮时，药物用量可稍重)。', '回阳散寒，暖肾止痛。', '温经散寒类，适用于命门火衰，中阳不振，脾肾阳虚所致的畏寒肢冷，阳痿尿频，脘腹冷痛，大便溏泄，小便清长等。', '本方所治之证，为阳衰阴盛所致，治宜回阳散寒。方中附子大辛大热，味甘有小毒，能温行十二经脉，具有回阳救逆、补阳温中、蠲痹止痛之功，内温脏腑骨髓，外暖筋肉肌肤，上益心脾阳气，下补命门真火，是温补命门祛寒回阳之要药，凡阳衰阴盛之真寒证，无不以此为主。于姜亦为大辛大热之品，具有温中回阳、散寒通脉之功，与附子配伍，暖中阳助运化，以资命门之源，回阳救逆，既能增强附子温阳之效应，又能制约附子的毒性，和中调味。粳米、红糖甘温入脾，益气健中，助正达邪，亦能解附子之毒。四者合而为粥，补命门益先天真火以壮元阳，暖脾七助五脏阳气以散真寒，脾肾共温，相得益彰而生化无穷。适用于脾肾阳虚者。\r\n', '本方专为内有真寒者而设，凡里热较重、阴虚火旺、湿温潮热者，均不宜食用，以防两阳相合，转增他病。方中附子温热而有小毒，煎煮的时间不能太短，用量不宜过大，应从小剂量开始为妥。', 1, 'null', '温里祛寒类', '粥食类', '煮', '/static/images/medicinaldiet/附子粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (47, '桂浆粥', '《粥谱》', '肉桂3g，粳米50g，红糖适量。', '先将肉桂煎取浓汁去渣，再用粳米煮粥，待粥煮沸后，调入肉桂汁及红糖，同煮为粥。或用肉桂末1~2g，调入粥内同煮服食。一般以3~5天为一疗程，早晚温热服食。', '补肾阳，暖脾胃，散寒止痛。', '温经散寒类，适用于肾阳不足而致的畏寒肢冷，腰膝酸软，小便频数清长，男子阳痿，女子宫寒不孕；或脾阳不振而致的脘服冷痛，饮食减少，大便稀薄，呕吐，肠鸣腹胀；以及寒湿腰痛，风寒湿痹，妇人虚寒性痛经等证。', '本方所治之证，为脾肾阳虚，阴寒内盛所致，治宜温阳散寒。方中肉桂辛甘大热，香气浓烈，性体纯阳，峻补命门]，能益火消阴，行血中之滞而温经散寒，既为温补肾阳之要药，又是调味之佳品。《本草汇言》日：“肉桂，治沉寒痛冷药也。”能壮命门之阳，植心肾之气，宣导百药，无所畏避，使阳长则阴自消，是以一切虚寒冷疾皆可用肉桂治之，故本方用以为主。同粳米、红糖煮粥，扶脾胃实中气，益气血调口味，可用治多种疾病，古代文献多有记载。如《食医心鉴》用“治胸膈气壅，结饮食不下”；《养老奉亲》用“治老人噎病心痛，闷膈气结”；《太平圣惠方》用“治下焦风湿，腰脚疼痛不可忍。”该粥不仅具有补元阳、暖脾胃、止冷痛、通血脉之功效，而且色味俱佳，香甜诱人，不失为温阳祛寒之良膳。', '本方属于温热之剂，凡实证、热证、阴虚火旺的病人均不宜食用。另外，肉桂所食桂皮油易于挥发，故不易久煎久煮。', 1, 'null', '温里祛寒类', '粥食类', '煮', '/static/images/medicinaldiet/桂浆粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (48, '姜附烧狗肉', '《大众药膳》', '生姜150g，熟附片30g，狗肉1000g，大蒜、菜油、盐、葱各少许。', '将狗肉洗净，切成小块，生姜煨熟切片备用。熟附片先置锅中，水煎2小时，然后将狗肉、煨姜，及大蒜、菜油、葱等放入，加入清水适量，烧至狗肉熟烂即成。可佐餐食用，每周1~2次。', '温肾壮阳，散寒止痛。', '温经散寒类，适用于肾阳不足所引起的阳痿不举，夜尿频多，头晕耳鸣，精神萎靡，畏寒肢冷，腰膝酸软，女子宫寒不孕等。', '本方所治之证为肾阳不足，下焦虚寒所致，治宜温肾壮阳、散寒补虚。方中生姜煨用，较生萎则不散，比干萎则不燥，温经止血之功与炮姜路同而力较逊，故专主温里而治下焦虚寒。“附子，回阳气，散阴寒，逐冷，通关节之猛药也”(《本草汇言》)。姜附相配，走守结合，既能温肾阳，补真火，振奋生化之机；又能暖脾土，温中阳，以资命门火源，两者同为主药。狗肉性温味咸，专入脾、胃、肾三经，功擅补中益气，温肾助阳，理气利水。民间谓其有“御寒”作用，为冬令常用之温补食品。《日华子本草本草》谓之“补胃气，壮阳，暖腰膝，补虚劳，益气力。”《医林纂要》称其“固肾气，壮营卫，强腰膝。”煨姜熟附烧狗肉，不仅使狗肉味道纯正香美，而且大大增强了温中暖下的效用，全方共奏温阳补虚、强身健体之功，对下焦虚寒者尤宜，是温肾壮阳的药膳佳品。', '本膳为温补之剂，素体阴虚火旺、热病后期者以及感冒患者不宜食用，以免燥热伤津。', 1, 'null', '温里祛寒类', '菜肴类', '烧', '/static/images/medicinaldiet/姜附烧狗肉_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (49, '五加皮酒', '《本草纲目》', '五加皮60g，糯米1000g，甜酒曲适量(一方加当归、牛膝、地榆)。', '将五加皮洗净，刮去骨，煎取浓汁，再以药汁、米、曲酿酒。酌量饮之。', '祛风湿，补肝肾，除痹痛。', '祛风湿类，适用于风湿痹证，腰膝酸痛，或肝肾不足，筋骨痿软。', '本方所主之证，为肝肾两亏，或风寒湿邪乘虚客于腰膝所致。肝肾两虚，则筋骨痿软无力，风寒湿客于膳膝，则腰膝酿楚疼痛，治宜益肝肾，强筋骨，祛风湿，止痹痛。方中五加皮性湿，味辛、苦微甘，功能补肝肾，强筋骨，祛风湿，止痹痛；为除痹起痿之要药。《本草经疏》云：“肝肾居下而主筋骨；故风寒湿之邪多自二经先受，此药辛能散风，温能除寒，苦能燥湿，二脏得其气而诸症悉廖矣。”故五加皮无论对肝肾不足者，或是风寒湿痹者，均可应用，对风湿日久，兼有肝肾两虚者，尤为相宜。煎取药汁酿酒，以增其活血脉、祛风湿之功。一方辅以当归活血补血，温经止痛；牛膝补益肝肾，强壮筋骨，活血通经。其补肝肾、强筋骨、祛风湿作用更着。故凡风寒湿痹，拘挛疼痛，或肝肾不足，痿软无力者均可饮用。', '方中所用五加皮，宜用五加科植物细柱五加或无梗h加的根皮，即中药南五加；不宜选用北五加，虽能祛风湿，止痹痛，但无补益作用，且有毒性，过量或久服，易引起中毒。本酒性偏温燥，凡湿热痹证或阴虚火旺者不宜多饮或久服。', 1, 'null', '祛风湿类', '饮料类', '煎', '/static/images/medicinaldiet/五加皮酒_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (50, '白花蛇酒', '《本草纲目》', '白花蛇1条，羌活60g，当归身60g，天麻60g，秦艽60g，五加皮60g，防风30g，糯米酒4000ml。\r\n', '白花蛇以酒洗、润透，去骨刺，取肉；各药切碎，以绢袋盛之，放入酒坛内，安酒坛于大锅内，水煮1日，取起埋阴地7日取出。每饮1、2杯(30~60ml)，仍以渣晒干研末，酒糯为丸，如梧桐子大，每服50丸(9g)，用煮酒送下。', '祛风胜湿，通络止痛，强筋壮骨。', '祛风湿类，适用于风湿顽痹，骨节疼痛，筋脉拘挛；或中风半身不遂，口眼歪斜，肢体麻木，及年久疥癣，恶疮，风癞诸证。', '本方所治之证，为风湿人络，痹阻筋脉，气血虚滞，筋骨肌肤失养所致，治宜祛风湿、通经络、止痹痛、健筋骨。方中白花蛇，又名蕲蛇或五步蛇，甘咸而温，性善走窜，内走脏腑，外彻皮毛，能透骨搜风，祛风邪，通经络，定惊搐，止瘙痒，既能用治风湿痹痛，筋脉拘挛，又可用于中风后半身不遂，口眼歪斜。故《开宝本草》谓其：“主风湿痹不仁，筋脉拘急，口而歪斜，半身不遂，骨节疼痿，脚弱不能久立。”“取其内走脏腑，外彻肌肤，无处不到也。”为搜风通络、胜湿除痹之要药。现代研究证明本品有明显的镇痛、强壮作用，还可以增强机体的免疫能力。配以秦艽、羌活、防风、天麻祛风湿，通经络，止痹痛，意在祛邪；又用当归、五加皮补肝肾、强筋骨，旨在扶正。综观全方，标本兼治，且治以酒剂，通经络、止疼痛之功更著，祛风湿、强筋骨之用也更强。既可用治风湿之血痹筋脉骨节疼痛，又可用于中风口眼歪斜，及年久疥癣、恶疮、风癞诸证。临床可适用于风湿性关节炎、类风湿性关节炎及关节疼痛等。', '治疗期间，“切忌见风、犯欲，及鱼、羊、鹅、面发风之物。', 1, 'null', '祛风湿类', '饮料类', '煮', '/static/images/medicinaldiet/白花蛇酒_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (51, '威灵仙酒', '《中药大辞典》', '威灵仙500g，白酒1500ml。', '威灵仙切碎，加入白酒，锅内隔水炖半小时，过滤后各用。每次10~20ml，每日3~4次。', '祛风除混，通络止痛。', '祛风湿类，适用于风寒湿痹，肢节走注疼痛，关节拘挛。', '本方所主之证，为外感风寒湿邪，风邪偏盛所致，治宜祛风、通络、止痛。方中威灵仙性味辛温，善于行散走窜，既可祛风湿，又可通经络，且兼止痹痛，为风湿疼痛，筋脉拘挛，关节曲伸不利之要药，《本草正义》曰：“威灵仙以走窜消克为能事，积湿停痰，血凝气滞，诸实宜之。味有微辛，故亦谓祛风，然惟风寒湿三气之留凝隧络，关节不利诸痛，尚为合宜。”本方制为药酒，其温通走散之力更强。临床应用，还可随证加减：凡风邪偏胜、疼痛游走者，可配防风祛风除痹；湿邪偏胜、肢体重着者，配苍术燥湿祛邪；寒邪偏胜、得温痛缓者，配桂枝温经散寒；腰膝酸痛痿软，肝肾不足者，配杜仲、狗脊补益肝肾，强壮筋骨。\r\n', '威灵仙性善走窜，多服易伤正气，体质虚弱者慎用。', 1, 'null', '祛风湿类', '饮料类', '炖', '/static/images/medicinaldiet/威灵仙酒_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (52, '海桐皮酒', '《普济方》', '海桐皮30g，薏苡仁30g，生地黄150g，牛膝15g，川芎15g，羌活15g，地骨皮15g，五加皮I5g，甘草15g，白酒3000ml (一法加杜仲亦可)。', '以上各药制为粗末，用绢袋或纱布袋盛装，袋口扎紧，置瓶内，注入白酒，将瓶口密封，每日振摇酒瓶1次，冬季浸14日，夏季浸7日郎可。每次饮15~30mal，视酒量而定，佐餐饮，1日2~3次。', '祛风胜湿，行痹止痛，强筋壮骨。', '祛风湿类，适用于风湿滞留经脉，血行不畅所引起的肢体疼痛，腰膝酸软，筋骨痿弱等症。', '本方所治之证，为肝肾不足，风湿滞留经脉，营血不利，不能滋荣经络所致，治宜祛风除湿、活血止痛、滋补肝肾、强筋壮骨。方中海桐皮、羌活、薏苡仁祛风胜湿，宣痹止痛。其中海桐皮性味苦辛而平，善祛风温，《本草纲目》谓其“能行经络达病所”。羌活善祛风胜湿;薏苡仁善清热利湿，疏筋除痹；五加皮、牛膝补肝肾，强筋骨，祛风混，止痹痛，若加杜仲，则补肝肾、强筋骨之功更著。又重用生地黄滋补肝肾阴血，川芎活血通风，地骨皮退虚热而能坚阴，甘草和中调药。诸药配合，浸酒而用，能助诸药行药势。一能祛风胜湿，通络止痛，二能补肝肾，强筋骨以固根本，三可滋补阴血，使祛风混而不伤阴血。若坚持饮服，能达祛风湿、止痹痛的效果，故原书云：“长令酒气不绝为佳。”本方《三因方》引《传信方》方名“牛膝酒”，治“肾伤风毒攻刺，腰病不可忍。\"', '凡血压偏高及妇女在怀孕期间者宜慎用。', 1, 'null', '祛风湿类', '饮料类', '泡', '/static/images/medicinaldiet/海桐皮酒_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (53, '雪凤鹿筋汤', '《中国药膳学》', '干鹿筋200g，雪莲花3g，蘑菇片50g，鸡脚200g，火腿25g，味精5g，绍酒10g，生姜、葱白、精盐各适量。', '洗净鹿筋，以开水浸泡，水冷则更换，反复多次，约2天左右，待鹿筋发胀后剔去筋膜，切成条块待用。蘑菇洗净切片。雪莲花淘净泥渣，用纱布袋松装。鸡脚开水烫过，去黄衣，剁去爪尖，拆去大骨洗净待用。生姜切片，葱白切节。锅置火上，鹿筋条下入锅中，加入姜、葱、绍酒及适量清水，将鹿筋煨透，去姜、葱，鹿筋条放入瓷缸内，再放入鸡脚、雪莲花包，上面再放火腿片、蘑菇片，加入顶汤、绍酒、生姜、葱白，上笼蒸至鹿筋熟软(约2小时)后取出。滗出原汤，汤中加入味精、精盐，搅拌匀后倒入瓷缸内，再蒸半小时，取出即成。', '补肝肾，强筋骨，逐寒湿，止痹痛。', '祛风湿类，适用于肝肾不足的风湿关节疼痛、腰膝酸软、体倦乏力等症。', '本方所治的风湿关节疼痛，腰膝酸软乏力均为肝肾不足，寒湿侵袭关节经络所致，治宜补益肝肾、强壮筋骨、祛逐寒湿。方中重用鹿筋，乃血肉有情之品，其性味咸温，入肝、肾经，功能补劳续绝，强筋壮骨。《本经逢原》日：“大壮筋骨，食之令人不畏寒冷。”民间也用鹿筋治风湿关节痛，于足无力及腿脚转筋。雪莲花处高山冰雪之地，临严寒而尤花，为藏医常用药，味甘，微苦而性温，功能为温肾壮阳、通经活血、强筋骨，药理研究证明有抗炎镇痛作用，为祛寒温、止痹痛的珍品。鸡脚则以其筋骨健利，用作强筋健骨之需。诸料配伍，以补肝肾、强筋骨、行血脉、驱寒湿为功，系体质虚弱，肝肾不足，寒湿痹痛者之良膳。', '本方适用于肝肾不足，寒湿痹痛者，若湿热痹痛偏于里热实证者不宜使用。方中雪莲花用量不宜过大，孕妇忌用，天山雪莲花有毒，使用时尤须注意。', 1, 'null', '祛风湿类', '菜肴类', '蒸', '/static/images/medicinaldiet/雪凤鹿筋汤_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (54, '巴戟狗肉', '《中国饮食疗法》', '带皮狗肉750g，巴戟5g，枸杞子10g，绍酒30g，白糖10g，胡椒粉3g，花椒5g，生姜3g，葱3g，精盐5g，昧精5g，淀粉5g，香菜10g，香油5g，鸡汤1小碗。', '巴戟天用温水泡饮，去掉木心，洗净，枸杞子用温水泡开备用。狗肉洗净，放水中煮透，捞出沥干。生姜切片，香葱、香菜切段。在狗肉肉面剞上大交叉花刀，皮面朝下放入盆内，加入绍酒、白糖、花椒、巴戟、姜片、葱段、精盐、鸡汤，上屉蒸至熟烂。取出拣去葱、姜、花椒、巴戟、把汤汁倒入炒锅内，打去汤面浮油，加入味精、胡椒粉，再把狗肉皮面朝下推入锅内；将淀粉调成芡淋入，再淋入香油，出锅洒上香菜；将构杞洗净，置放于狗肉周围即成。', '温肾助阳，散寒祛湿，宣痹止痛。', '祛风湿类，适用于肾阳虚弱，腰膝酸痛，风湿骨弱，行步艰难，肌肉萎缩。对年老体弱，久病体虚失眠，阳痿，遗精，早泄，少腹冷痛者也可应用。', '本方所主之证，为肾阳不足，筋痿骨弱，感受寒湿或年老体弱所致，治宜温肾阳、强筋骨、散寒湿、通血脉、止痹痛。方中主料为巴戟天、枸杞子与狗肉。其中巴戟天味辛、甘而性微温，功能为补肾助阳，强筋壮骨，《得宜本草》称其“功专温补元阳”，然其气味辛温，又能祛风除湿，故凡肾亏阳虚，风湿痹痛者，服之更为有益。《本草备要》盲其“辛温散风湿，治风气、脚气、水肿。”方中取其温肾阳、散寒湿之功。枸杞子味甘，性平，长于滋补肝肾、益精养血，为肝肾亏虚者之要药。《食疗本草》谓其“坚筋耐老，除风，补益筋骨，能益人，去虚劳。”与巴戟天相须为用，阴生阳长、温肾助阳、强筋壮骨之功更著。狗肉咸温，能壮元阳、益精血、暖腰膝、强筋骨，对脾肾阳虚、体弱虚寒、腰痛足冷者尤宜。诚《本草逢原》口：“犬肉，下元虚人，食之最宜。”本方以狗肉合巴戟天，能温阳散寒以祛风湿；以狗肉配枸杞子，则补益精血以壮筋骨。全方药食相合，共奏温肾阳、强筋骨、散寒湿、止痹痛之功。', '本方药性温补，适宜阳虚体质而患风湿痹痛者，故凡阴虚有热，或肝阳偏亢，或热病后期等见烦躁口干、颧红、潮热者不宜食用。', 1, 'null', '祛风湿类', '菜肴类', '蒸', '/static/images/medicinaldiet/巴戟狗肉_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (55, '胡椒根煲蛇肉', '《饮食疗法》', '胡椒根40~60g，蛇肉250g，生姜、香葱、黄酒、盐各适量。', '胡椒根洗净，切成段；蛇肉(切除蛇头)洗净，切段。两者同放锅内，加葱、姜、黄酒、盐、清水各适量，烧沸后用文火炖熬至蛇肉熟透。煲汤服食。', '祛风胜湿，舒筋活络。', '祛风湿类，适用于风寒湿痹，手足痿弱曲伸不便。', '本方所治之证，为风寒湿邪侵袭所致，治宜祛风胜湿、舒筋活络。方中重用蛇肉，白花蛇(靳蛇)、乌梢蛇皆可。白花蛇甘咸而温，专入肝经，祛风通络，治痹痛之功效较乌梢蛇更著。《开宝本草》谓：“主中风湿痹不仁，筋脉拘急，口面歪斜，本身不遂，骨节疼痛”。胡椒根是胡椒科植物胡椒的根，性味辛、热，功能为温经通络、祛寒除痹。两者配合煲汤饮用，可增强祛风除湿、舒筋通络之功，民间常用以治疗属风寒型的风湿性关节炎、类风湿关节炎、手足痿弱曲伸不便和中风后遗半身不遂等一类疾患。', '本方功在寒湿，凡湿热痹痛，关节红肿热痛者不宜。\r\n', 1, 'null', '祛风湿类', '菜肴类', '炖', '/static/images/medicinaldiet/胡椒根煲蛇肉_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (56, '薏苡仁粥', '《本草纲目》', '薏苡仁60g，粳米60g，盐5g，味精2g，香油3g。', '将薏苡仁洗净捣碎，粳米淘洗，同入煲内，加水适量，共煮为粥。粥熟后调入盐、味精、香油，温热食之，日服2次。', '健脾补中，渗湿消肿。', '渗湿利水类，适用于水肿，小便不利；脾虚泄泻，湿痹筋脉挛急，四肢屈伸不利，肺痈吐吐脓痰及扁平疣等。', '本方所治水肿由脾虚不运，水湿泛溢肌肤所致，治宜健脾祛湿消肿。方中薏苡仁，性味甘淡能健脾益胃，渗湿利水，其微寒而不伤胃，健脾而不碍湿，渗润而不过利，为一优良的淡渗清补之品。《本草新编》说：“薏苡仁最善利水，不至耗损真阴之气，凡湿盛在下身者，最宜用之”。薏苡仁还食有薏苡脂，对小鼠艾氏腹水癌细胞的生长有抑制作用，煎剂对多种癌细胞有阻止成长及杀伤作用。故常服本粥，对胃癌、肠癌、宫颈癌等有一定的防治作用，是癌症病人良好的辅助食品。薏苡仁还含有多种氨基酸、糖类、维生素B、甾醇等。粳米健脾益胃，合用煮粥，共奏健脾渗湿之功。', '本粥为清补健胃之品，功力较缓，食用时间需长，方可奏效。大便秘结及孕妇慎用。', 1, 'null', '利水祛湿类', '粥食类', '煮', '/static/images/medicinaldiet/薏苡仁粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (57, '冬瓜粥', '《粥谱》', '冬瓜100g，梗米100g，味精、盐、香油、嫩姜丝、葱适量。', '冬瓜洗净毛灰后，削下冬瓜皮(勿丢)，把剩下的切成块。粳米洗净放入锅内，加入水适量煮粥。米粥半熟时，将冬瓜、冬瓜皮放入锅，再加适量水，继续煮至瓜熟米烂汤稠为度，捞出冬瓜皮不食，调好味精、盐、香油、姜、葱，随意食服。', '利尿消肿，清热止渴。', '渗湿利水类，适用于水肿胀满，脚气浮肿，小便不利(包括慢性肾炎水肿、肝硬化腹水等)，并可用于痰热喘嗽，暑热烦闷，消渴引饮；痛肿、痔漏、肥胖症等。', '本方所治之证为湿热壅盛或脾失健运，水湿内聚所致，治宜健脾利湿、消肿。方中冬瓜味甘、淡，性微寒，为药食两兼之品，是一种解热利尿较理想的日常食物，其子、皮、肉囊均可入药。《神农本草经》载:食冬瓜，“令人悦泽好颜色，益气不饥，久服轻身，耐老”，《本草从新》谓其“清心火，泻脾火，利湿祛风，消肿止渴，解暑化热”。冬瓜与梗米煮粥，既可养胃充饥，又可利水消肿。冬瓜粥可作为慢性胃炎、肝硬化腹水等病的常用粥食，可不拘数量，不按次数，随意服食。冬瓜含有蛋白质、糖类、维生素(B、B2、C)、胡萝卜素、烟酸、矿物质(钙、磷、铁)等，药理试验证实，食用冬瓜粥后，在2小时以内有明显的利尿作用，因此为肾脏病、肥胖病、浮肿病的理想食物。', '冬瓜以老熟(挂霜)者为佳。在煮粥时不宜放盐，不然会影响其利水消肿效果。食用时可调盐适量。水肿病人宜较长时间服食。', 1, 'null', '利水祛湿类', '粥食类', '煮', '/static/images/medicinaldiet/冬瓜粥_0.png', 10, NULL);
INSERT INTO `medicinal_diet_table` VALUES (58, '车前叶粥', '《圣济总录》', '鲜车前叶30g，葱白15g，淡豆豉12g，粳米50g，盐、味精、香油、姜末、陈醋各适量。', '车前草及葱白切碎与淡豆豉同入煲中，加入水500ml，煎煮30分钟后倒出药液并用2层纱布虑过、药渣弃去。粳米洗净放入锅中，加入车前草药液及适量水，先武火烧沸，再改用文火慢慢熬煮。粥成后，调入盐、味精、香油、姜末、陈醋，即可食用。', '清热利尿，通淋泄浊。', '渗湿利水类，适用于热淋，小便不利，尿色黄赤浑浊，咳嗽痰多、痰黄，小便不利；暑湿泄泻，症见腹痛水泻，小便短少等。', '本方治证为湿热内蕴所致，故上宜清湿热以化痰，下宜利湿热以泄浊。本粥选车前草鲜品为佳。车前叶性寒味甘，可“利小便，通五淋”，又能“祛痰止咳”，对膀胱湿热，咳嗽痰多等，均有治疗作用。淡豆豉、葱白有宣泄之功，三者合用有宣肺以助膀胱排尿的作用，更以粳米滋养和中，故对体弱及老年入患有膀胱炎、急慢性气管炎又可起辅助治疗作用。', '车前叶属“甘滑通利”之品，患有遗精、遗尿者不宜服。本粥宜空腹食之。', 1, 'null', '利水祛湿类', '粥食类', '熬', '/static/images/medicinaldiet/车前叶粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (59, '赤小豆鲤鱼汤', '《外台秘要》', '赤小豆100g，鲤鱼1条(250g左右)，生姜1片，盐、味精、料酒、食油适量。', '将赤小豆洗净，加水浸泡半小时；生姜洗净；鲤鱼留鳞去腮、肠脏，洗净。起油锅，煎鲤鱼，溅清水中量，放入赤小豆、生姜、洒料酒少许。先武火煮沸，改文火焖至赤小豆熟，调上盐、味精即可随量食用或佐餐。', '利水消肿。', '渗湿利水类，适用于水湿泛溢，症见面色㿠白，水肿胀满，小便不利，或气逆而咳等。西医运用本品用治慢性肾炎以消肿，有显著利尿消肿之效外，对门静脉性肝硬化伴浮肿或腹水者，亦有显著的利尿治肿作用。', '本方治证由脾虚气弱，水气不化，泛溢肌肤所致，治宜健脾益胃、利尿消肿。本品出自《外台秘要》，原治因气滞不畅，水气泛逆而成的肾水肿。本品以调畅气血，通利水湿为主，方中赤小豆性平，味甘、酸，功能利水治肿、和血解毒。鲤鱼性平味甘，功能利水、下气，《本草纲目》说用鲤鱼“煮食，下水气，利小便”。两者合用，可奏理气和血，利尿消肿之功。', '没有特殊禁忌，每周可食腹3次。', 1, 'null', '利水祛湿类', '菜肴类', '煮', '/static/images/medicinaldiet/赤小豆鲤鱼汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (60, '丝瓜花鲫鱼汤', '《中医饮食疗法》', '鲜丝瓜花25g，鲫鱼75g，樱桃10g，香菜3g，蕴白3g，姜2g，盐、味精、料酉、胡椒粉适量，鸡汤1大碗。', '将活鲫鱼刮鳞、去鳃、去内脏，洗净，在鱼身两侧剞花刀，加盐、料酒、胡椒粉、味精腌制片刻。起锅放食油，烧至八成熟时，把鱼下入冲炸，见鱼外皮略硬即捞起沥去油。把炸好鱼置砂锅内，加上葱白、姜片、料酒、盐、鸡汤，用武火煮沸，放文火慢煅，掠去蕴白、姜片，再加入味精、丝瓜花、樱桃、香菜，煮滚2分钟，起锅后撒上胡椒粉即成，佐餐食用。', '健脾渗湿，利尿消肿。', '渗湿利水类，适用于因脾气虚弱，水湿内停而致的水肿淋病等，见有食少纳呆、浮肿不消、小便不利、脘腹胀满、心烦口渴等症状即可食用。', '渗湿利水类，适用于因脾气虚弱，水湿内停而致的水肿淋病等，见有食少纳呆、浮肿不消、小便不利、脘腹胀满、心烦口渴等症状即可食用。方中鲫鱼又名鲋鱼、土鱼，全身均可药用。鲫鱼性平味甘，入脾、胃、大肠经，具有温中下气、补虚赢的作用，能健脾利湿，治疗浮肿、小便不利、腹水等。《医林纂要探源》谓“鲫鱼性和缓，能行水而不燥，能补脾而不分濡，所以可贵耳”，因而可见鲫鱼很早就用于治疗体弱水肿。丝瓜花能开胃醒脾、利尿解毒，可用于治疗脾虚水停，肢体浮肿。樱桃能调中益脾，《名医别录》载“樱桃昧甘，主调中，益脾气，令人好颜色”。香莱能芳香健脾。鲫鱼健脾行水，辅以丝瓜花、樱桃、香荣益胃健脾，共同功用重在恢复脾的运化功能，使脾运复健，能运化水温，而达湿化肿消，故对脾虚气呆者尤宜。', '本品对一般水肿均有效，对脾肾虚弱者效果较好。于肾阳不足而致之水肿，本品温阳之力不足，用之效果难以满意。', 1, 'null', '利水祛湿类', '菜肴类', '烧', '/static/images/medicinaldiet/丝瓜花鲫鱼汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (61, '金钱草炖猪蹄', '《四季饮食疗法》', '猪蹄1只500g，鲜金钱草200g，盐、味精、香油、料酒适量，生姜2片。', '猪蹄去毛及蹄甲，洗副净斩快，放入瓦煲内拌少许料酒后加水、放姜片，先武火煮沸，改文火炖2小时。金钱草洗净，放入瓦煲内与猪蹄同炖半小时，调盐、味精、香油可食用。', '清热祛湿，利尿通淋。', '渗湿利水类，适用于湿热郁结，症见小便不利，或小便涩痛，少腹拘急，或腰腹绞痛，尿中带血等。', '本品所治乃因湿热阻滞，水道不畅而致，治宜利水湿、通水道。方中金钱草为唇形科植物活血丹的全草，性寒昧苦平，入肝、胆、肾、膀胱经，功能清热利水，祛湿止泻。猪蹄性平味甘、咸，归肾经，能补益气血，通乳，润肤，托疮，《随息居，饮食谱》云：猪蹄“填肾精而健腰脚\"，《本草图经》谓：“行妇人乳脉， 滑肌肢，去寒热”。两味共炖可补肾气，祛湿清热，利尿通淋。', '本品阴虚火旺者忌食用。', 1, 'null', '利水祛湿类', '菜肴类', '炖', '/static/images/medicinaldiet/金钱草炖猪蹄_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (62, '滑石粥', '《太平圣惠方》', '滑石20g，粳米50g，白糖适量。', '将滑石磨成细粉，用布包扎，放入煲内，加水500mnl，中火煎煮30分钟后，弃布包留药液。粳米洗净入煲，注入滑石药液，加水适量，武火煮沸后文火煮成粥。粥成调入白糖，温热食用。每日2次，每次1碗。', '清热利湿，通小便。', '利水通淋类，适用于尿道、膀胱感染而引起的小便不利，淋沥热痛，以及热病烦躁口渴，水肿等。', '本方证由湿热蕴结下焦所致，治宜清热化湿、利尿通淋。方中滑石为矿物质，主要成分是硅酸镁以及微量的氧化铝、氧化镍等物质，性平味甘、淡，入胃、膀胱经，功能清热渗湿利窍。《药性论》说滑石“偏主石淋”，尤以湿热瘀阻或结石阻塞泌尿道有显效。粳米味甘性平，入中焦健脾胃，与滑石相伍，能健脾理气以祛湿，亦可制滑石消利太过而损阴伤胃。两味配合得当，可作湿热淋证的日常调理。', '滑石粥有通利破血的能力，孕妇应忌服；脾胃處寒，滑精及小便多者亦不宜服用。', 1, 'null', '利水祛湿类', '粥食类', '煮', '/static/images/medicinaldiet/滑石粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (63, '甘蔗白藕汁', '《中华药膳大宝典》', '甘蔗100g，莲藕100g。\r\n', '洗净甘蔗，去皮、切碎榨汁。洗净莲藕，去节、切碎、绞汁，每次取甘蔗汁，莲藕汁各一半饮用，1天3次，连服3天。', '清热利湿，凉血润燥。', '利水通淋类，用于口渴心烦，肺燥咳嗽，大便秘结的热病，尿频、尿短、尿痛的急性膀胱炎、尿道炎，有小便不利，腰腹绞痛、尿中带血的尿道结石以及老年入便秘等，均有疗效。', '本方证为湿热久蕴，损伤阴津所致，治宜清热利湿、生津凉血。中甘蔗为禾本科植物的茎杆，含蛋白质、脂肪、甲基延胡索酸、琥珀酸、甘醇酸、苹果酸、柠檬酸、乌头酸、维生素B、维生素B2、维生素B、维生素C及钙、磷、铁等元素。性味甘寒，入胃、肺经。藕为睡莲科植物的根茎，含淀粉、蛋白质、天门冬素、维生素C、焦性儿茶酚、新绿原酸、过氧化物酶等,性味甘寒,入心、胃、脾经。两者均取汁用，甘凉清润，清香爽口，既善养阴润燥，其甘寒之性又长于清热利水，对于湿热所致诸证常有较好的疗效。', '甘蔗要黑皮蔗，莲藕要白嫩藕。脾胃虚寒者慎用。', 1, 'null', '利水祛湿类', '饮料类', '其它', '/static/images/medicinaldiet/甘蔗白藕汁_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (64, '金钱草饮', '《中国传统医学丛书.中国营养食疗学》', '金钱草200g，冰糖少许。', '洗净金钱草，切碎，入药煲，加水300g，煎至100g，调入冰糖代茶频饮。', '清肝泄热，利湿退黄。', '利水通淋类，适应胁痛口臭，湿热黄疸型肝胆疾病，以及尿血，尿痛，腰腹绞痛，石淋等。', '金钱草为报春花科排草属植物过路黄的全草，味淡，性微寒，入胆、肝、肾、膀胱经。有清热、利胆、排石、利尿功效，可用治湿热黄疸、肝胆结石、尿路结石、感染等。', '神疲乏力，便溏者，或面色寒湿阴黄、暗黑，肝功能极差者忌食。', 1, 'null', '利水祛湿类', '饮料类', '煎', '/static/images/medicinaldiet/金钱草饮_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (65, '荠菜鸡蛋汤', '《本草纲目》', '荠菜250g，鲜鸡蛋1个，食用油、盐、味精适量。', '将荠菜洗净、切段，鸡蛋去壳打匀，用清水煮成汤，温热食服。每天1次，连食30天', '清肝泄热，祛湿利尿。', '利水通淋类，适用老年人的迎风落泪、头晕目眩，五官科的急性结膜炎、腮腺炎、牙肿牙痛等，以及尿频、尿急、尿血、急性膀胱炎、肾结石、肾结核等。\r\n', '本方证由肝胆郁热所致，治宜清泄肝胆，利尿祛湿。方中荠菜又叫菱角菜，为十字花科一年生或越年生草本植物，食芥菜酸、生物碱、多种氨基酸、黄酮类、糖类、蛋白质、胡萝卜素、维生素B族、维生素C，钙、磷、铁等物质，性温味甘，归肝、胃、小肠，膀胱经，有明目清热、祛风利尿、解毒健脾之用。鸡蛋富食蛋白质，营养价值极高，其性味甘平，有除烦安神、补脾和胃作用。以荠菜与鸡蛋作汤，能补益五脏、清热明目、祛湿利尿。', '此汤可佐餐。感冒发烧者，不宜食用。', 1, 'null', '利水祛湿类', '菜肴类', '煮', '/static/images/medicinaldiet/荠菜鸡蛋汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (66, '茵陈粥', '《粥谱》', '茵陈30~50g，粳米100g，白糖或食盐适量。', '茵陈洗净入瓦煲加水200ml，煎至100ml，去渣；入粳米，再加水600ml，煮至粥熟，调味成甜均可。每天2次微温服。7~10天为1疗程。', '清热除湿，利胆退黄。', '利湿退黄类，适应湿热蕴蒸，胆汁外溢所致之目黄身黄，小便不利，尿黄如浓茶，属于急性黄疽型肝炎者；以及湿疮瘙痄，流黄水者。', '本方治证由湿热蕴蒸肝胆所致，治宜清肝泄热、利胆退黄。方中茵陈蒿为菊科植物茵陈蒿的幼嫩茎叶，味苦微寒，主入脾、胃、肝、胆，功专利湿，热、退黄疸，为古今治疗黄疽的要药。对于湿热型黄疸，单用本品，效果良好；因此药性寒微而气清香，并非大苦大寒之品，且以利湿退黄见长，兼理肝胆郁滞，故亦为黄疸属于湿邪偏盛者所常用。正如《本草图解》所说：“发黄有阴阳二种......总之，芮陈蒿为君，随佐使之寒热而理黄证之阴阳也。”据药理研究，本品有利胆作用，能增进胆汁的分泌；有抑制肝炎病毒和保肝作用；并有解热作用。本品配伍红枣、甘草煎服，对小儿传染性肝炎，亦有较好疗效。黄疸型肝炎患者，多有胃口不开，食欲不佳的症状，本方以粳米煮粥，不但增加营养，开胃和中，而且又能防茵陈苦寒伤胃，酌加白糖，既能矫味，又可保肝，系肝脾两调之法，配伍甚为巧妙。', '茵陈应取每年3、4月份之蒿枝，药效尤佳。煮粥时只能用粳米，粥宜稀，不宜稠。', 1, 'null', '利水祛湿类', '粥食类', '煮', '/static/images/medicinaldiet/茵陈粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (67, '栀子仁粥', '《太平圣惠方》', '栀子仁100g，粳米100g，冰糖少许。', '将栀子仁洗净晒干、研成细粉备用。粳米放入瓦煲内加水煮粥至八成熟时，取栀子仁粉10g调入粥内继续熬煮，待粥熟，调入冰糖，煮至溶化即成。每日2次温热，服食，3天为1疗程。', '清热降火、凉血解毒。', '利湿退黄类，适用于肝胆湿热郁结阶段之黄痕，发热，小便短赤；热病烦闷不安，目赤肿痛，口渴咽干；血热妄行之衄血、吐血、尿血。', '本方证为湿热久郁肝胆所致，治宜清热降火，凉血解毒。方中栀子为茜草科常绿灌木栀子树的干燥成熟果实，主要成分有栀子甙，以及栀子次甙、栀子素、藏红花酸、熊果酸、胆酸、B-谷甾醇、鞣质等，性味苦、寒，入心、肺、胃经。现代研究发现，栀子有解热、镇静、降压等作用，又能促进胆汁分泌、降低血中胆红素，对多种细菌有抑制作用。用栀子与梗米做成药粥，主要用以清热解毒，清热燥湿，利胆退黄，且同时能护胃健脾。', '本粥偏于苦寒，能伤胃气，不宜久服多食。如体虚脾胃虚寒，食少纳呆者不宜服食。', 1, 'null', '利水祛湿类', '粥食类', '煮', '/static/images/medicinaldiet/栀子仁粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (68, '泥鳅炖豆腐', '《泉州本草》', '活泥鳅150g，鲜嫩豆腐100g，生姜5g，料酒、油、盐、味精适量。', '将泥鳅去内脏洗净，放入油锅中燥煎，下生姜、料酒调味，再将豆腐加入锅中，加盐、水，用文火慢炖，至泥鳅炖烂、豆腐成蜂窝状，调入味精，即可食用。', '清热，利湿，退黄。', '利湿退黄类，适应肝炎属脾虚有湿者，症见面目及全身皮肤微黄，胁肋微胀痛，饮食不振，体倦乏力，小便泛黄不利等。', '本方治证由脾虚不运，湿热郁结所致，治宜健脾利湿、清热退黄。方中泥鳅具有补中气、祛湿邪的作用。豆腐具有清热解毒、宽肠降浊、益气和中的作用。2味同煮为食，以泥鳅的阴凉滑利利湿邪，健中气，辅以豆腐之凉润清热毒，降湿浊，共成清热除湿、利尿退黄之功。', '泥鳅用清水放养1天，排清肠内脏物，要活杀。隔天一食，连食15天。', 1, 'null', '利水祛湿类', '菜肴类', '炖', '/static/images/medicinaldiet/泥鳅炖豆腐_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (69, '白茅根炖猪肉', '《中国传统医学丛书.中医营养食疗学》\r\n', '白茅根100g，猪肉150g，食油、味精、盐适量。', '将白茅根洗净切段，猪肉洗净切薄块。把茅根、猪肉一齐放入锅内，加清水适量，武火煮沸后改文火炖1个半小时，调入食油、味精、盐，即可服用。', '清肝凉血，健中退黄。', '利湿退黄类，用于急性黄疸型肝炎属湿热者，症见面目俱黄，色泽鲜明，小便不利，色如浓茶，饮食不振，便溏者。', '本方证为湿热蕴结中焦，薰蒸肝胆所致，治宜清肝凉血以退黄，益脾和胃以健中。方中白茅根为禾本科植物白茅的根茎，味甘，性寒，归心、肺、胃、膀胱经，有生津止渴、凉血止血、利尿通淋功效，可用治热病烦热口渴，血热性吐血、鼻出血、尿血，以及小便赤热、水肿、黄疸等。猪肉味甘、性平，归肺、脾、肝经，能滋阴润燥、益胃补血。两味同煮为食，白茅根清血热以利肝胆，旨在退黄；猪肉益脾胃，健脾中气，以绝混热化生之源；共奏清热退黄之效。', '白茅根取新鲜者，猪肉用猪脊肉。脾胃虚寒者不宜。', 1, 'null', '利水祛湿类', '菜肴类', '炖', '/static/images/medicinaldiet/白茅根炖猪肉_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (70, '田基黄鸡蛋汤', '《中华药膳大宝典》', '新鲜田基黄60g，溪黄草30g，鸡蛋2个。', '将田基黄、溪黄草洗净切碎，鸡蛋煮熟去壳，再将3味一齐放入瓦煲内，加清水适量，武火煮沸，待蛋熟去壳，再用文火煮1小时，调味，食鸡蛋饮汤。1天1次，连食30~60天。', '疏肝利胆，解毒去黄。', '利湿退黄类，适应于急性黄疸型肝炎、急性胆囊炎、胆结石、胆道感染属湿热者，可见右肋疼痛，面目俱黄，色泽鲜明，脘腹微胀，胃纳欠佳，小便短黄，大便不畅，舌红苔黄，脉滑数等症。', '本方治证为湿蕴中焦，热结肝胆所致，治宜疏利肝胆、解毒退黄。中田基黄为藤黄科植物地耳草的全草，又称地耳草、雀舌草，性味甘淡微寒，甘淡能渗湿，性寒能清热，故有清热解毒、利湿退黄之功；单用或配伍鸡骨草、溪黄草等同用，可治急性黄疸型肝炎(湿热黄疽)。现代研究证明，田基黄含有黄酮类、内酯、酚类、糖类、蒽醌、鞣质等成分，对金黄色葡萄球菌、链球菌均有不同程度的抑制作用，故能用治急性胆囊炎、胆道感染等病。溪黄草性味甘苦，向属退黄要药，功能清泄肝胆、利湿退黄；与田基黄相配，功效互相促进，解毒去黄效果更佳。汤中鸡蛋，既可益阴护肝，使肝功能早日康复，又可缓和药性，防止寒凉伤胃。', '脾胃虚寒者不宜用。忌烟酒。', 1, 'null', '利水祛湿类', '菜肴类', '煮', '/static/images/medicinaldiet/田基黄鸡蛋汤_0.png', 13, NULL);
INSERT INTO `medicinal_diet_table` VALUES (71, '桔红糕', '《民间食谱》', '桔红50g，粘米粉500g，白糖200g。', '将桔红洗净，烘干研为细末，与白糖和匀备用。粘米粉适量，用水和匀，放蒸笼上蒸熟，待冷后，卷入桔红糖粉，切为夹心方块米糕，不拘时进食。', '燥湿化痰，理气健脾。', '化痰类，适用于慢性支气管炎属痰湿所致，症见咳嗽痰多，色白清，胸脘痞闷，食欲不振者有疗效。', '本方所治证为脾虚气弱，痰湿内生，壅聚于肺所致，治宜健脾燥湿、理气化痰。方中桔红是成熟桔子外层红色果皮，味干微苦性温，气芳香而入脾肺，功能燥混化痰、理气健脾、和胃止吐，为脾、肺两经气之药。辅之以粘米、白糖调理中焦脾胃之气，使脾能健运而湿自化。本糕以食代药，不仅化痰止咳，又能理气健脾，且甘美不腻，服食方便，实为痰湿咳嗽，气滞纳呆者之食疗佳品。', '肺阴不足，燥热有痰之咳嗽者不宜食用本品。', 1, 'null', '化痰止咳平喘类', '粥食类', '蒸', '/static/images/medicinaldiet/桔红糕_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (72, '瓜萎饼', '《本草思辨录》', '瓜蒌瓤(去子) 250g，白糖100g，面粉100g。', '把瓜蒌瓤(去子)与白糖拌匀作馅，面粉发酵分成16份，包瓜蒌白糖馅做成包子，蒸熟或烙熟即可食用。每日早晚空腹各食1个。', '清肺祛痰。', '化痰类，适用于肺郁痰咳，伴胸肋痛胀，咳嗽气促，咳痰粘稠或粘黄，咽痛口渴等。', '本方所治证为痰浊郁肺而咳，治宜清肺祛痰止咳。方中瓜蒌为葫芦科的果实，味甘苦性寒，入肺、胃、大肠经，功专清肺化痰，止咳润肠。面粉、白糖健脾益胃，可助瓜蒌化痰，又可矫正瓜蒌瓜瓤之异味，使人食之可口。', '脾胃虚寒成外感发热者不宜食用。', 1, 'null', '化痰止咳平喘类', '粥食类', '蒸', '/static/images/medicinaldiet/瓜萎饼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (73, '柚子炖鸡', '《本草纲目》', '新鲜柚子1个，新鲜鸡肉500g，姜片、葱白、百合、味糖、盐等适量。', '将柚剥皮、去筋皮、除祛，取肉500g，将鸡肉洗净切块，焯去血水。再将柚肉、鸡肉同放入炖盅内，置姜片、葱白、百合子鸡肉周围，调好盐、味精，加开水适量，炖盅加盖，置于大锅中，用文火炖4小时，取出可食之。1周2次，连食服3周。', '健鲜清食，化痰止咳。', '化痰类，适应肺部疾病的痰多咳嗽，气郁胸闷，脘腹胀痛，食积停滞等。', '本方治证由脾虚食滞，痰浊紊肺所致，治宜健脾气以消食滞、化痰浊而止咳嗽。方中柚子是芸香科植物的成熟果实。柚子肉味甘带酸、性凉，归肺、胃经，能生津止渴、开胃下气、止咳化痰。鸡肉味甘性温，归肺、胃经，能温中补脾、益气养血、补肾益精，配以柚子入肺，使膳方能健脾胃而理肺气，达到气顺痰除，脾健痰化的目的。', '消化不良者， 以饮汤为宜。', 1, 'null', '化痰止咳平喘类', '菜肴类', '炖', '/static/images/medicinaldiet/柚子炖鸡_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (74, '半夏山药粥', '《药性论》', '半夏30g，山药60g。', '半夏先煮半小时，去渣取汁一大碗。山药研成粉，放入半夏汁内，煮沸搅成糊状即可食。分3天早晚温服。', '燥湿化痰，降胃止咳。', '化痰类，适用于脾虚湿痰蕴肺，咳嗽兼胃气上逆者。', '本方治证为脾虚生痰，胃气止逆，湿痰蕴肺所致，治宜健脾化湿、降气消痰。方中半夏为天南星科植物的地下块茎，经姜和明矾浸制后应用，性味辛湿，有小毒，功能为燥湿化痰、降逆止呕、散结消痞。山药为薯蓣科植物薯蓣的块茎，味甘、性平，入肺、脾、肾经，能健脾益胃润肺。山药与半夏同用，为脾肺两调之法，以半夏化肺家之痰以止咳，又可燥脾以化生痰之湿，山药以健脾运湿，培脾土以复肺金。', '半夏有小毒，宜制成法半夏后使用，且煎煮时间宜长，去其毒性。', 1, 'null', '化痰止咳平喘类', '粥食类', '煮', '/static/images/medicinaldiet/半夏山药粥_0.png', 5, NULL);
INSERT INTO `medicinal_diet_table` VALUES (75, '石菖蒲拌猪心', '《医学正传》', '猪心半个，石菖蒲10g，陈皮2g，料酒、盐、味精、姜片等。', '猪心洗净，去内筋膜，挤干净血水，切成小块；石菖蒲、陈皮洗净，同猪心放入炖盅内，加开水适量，调好料酒、盐、味精、姜片等，炖盅加盖，置于大锅中，用文火炖4小时，即可食用。', '化浊开窍，宁心安神。', '化痰类，适用于神经衰弱属痰浊内扰者，症见失眠心悸，头晕头重，胸脘满闷，或呕吐痰沫，甚则突然昏倒，喉有痰声。', '本方治证为心之气阴不足，痰浊内扰心神所致，治宜化痰开窍、养心安神。方中菖蒲辛苦而湿，有芳香味，功能为湿化痰浊、芳香开窍、醒神宁志，本膳以此为主料，辅以苦温燥湿、健脾化痰的陈皮，旨在化痰浊以开心气；猪心善补心养血，得菖蒲、陈皮化痰之力，则补养而不恋邪；菖、陈得猪心之补，则更助心气以开窍；故全方能达到补养心血、化痰开窍、安神定志的作用。', '痰浓色黄、发饶，或火扰心神者不宜食用。', 1, 'null', '化痰止咳平喘类', '菜肴类', '炖', '/static/images/medicinaldiet/石菖蒲拌猪心_0.png', 5, NULL);
INSERT INTO `medicinal_diet_table` VALUES (76, '昆布海藻煮黄豆', '《本草纲目》', '黄豆100g，昆布30g，海藻30g。', '洗净黄豆，放入瓦煲内，加清本适量，文火煮至半熟；再将洗净切碎的昆布、海藻，与黄豆同煮至黄豆熟烂，调入油、盐、味精后可食用。', '清热化痰，软坚散结。', '化痰类，适应早期肝硬化属痰湿郁结、咳痰不出者；烦躁咽痛，咳痰粘稠，伴胸闷胁痛者；以及甲状腺肿大，癭瘤痰结等。', '本方主治证系痰浊壅聚，而致坚结成块成团，治宜清热消痰、软坚散结。本方昆布、海布均为浅海植物，具咸、寒特性，均有消痰、泄热、软坚散结的作用，于消痰软坚中且多联合运用，以增强功效。凡痰浊结聚、水肿臌胀等，常配合一起以软之，散之，泄之。黄豆则营养丰富，能人脾胃经而补脾胃，益气血。配昆布、海藻则能以健脾益气之力而助化痰结、消壅聚，使坚结易散，痰浊易化。', '糖尿病、脂肪肝或早期肝硬化属于脾胃阳虚者，不宜服用。', 1, 'null', '化痰止咳平喘类', '菜肴类', '煮', '/static/images/medicinaldiet/昆布海藻煮黄豆_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (77, '川贝秋梨膏', '《中华临床药膳食疗学》', '款冬花、百合、麦冬、川贝各30g，秋梨100g，冰糖50g，蜂蜜100g。', '将款冬花、百合、麦冬、川贝入煲加水煎成浓汁，去渣留汁，再将去皮去核切成块状的秋梨以及冰糖、蜂蜜一同放人药汁内，文火慢煎成膏。冷却取出装瓶备用。每次食膏15g，日服2次，温开水冲服。', '润肺养阴，止咳化痰。', '化痰类，适用于肺热燥咳、肺虚久咳、肺虚劳咳痰不出。', '本方治证为燥热伤肺，气阴两虚所致，治宜养阴润肺、止咳化痰。方中川贝味甘苦、性微寒，归肺、心经，有化痰、止咳、清热之功效。秋梨味甘带酸、性凉，归肺、胃经，能清热生津、润燥化痰。款冬花、百合、麦冬等药，皆有润肺、止咳、化痰之力。本方以群队清凉甘润、滋阴生津原料以润肺养阴，使肺阴充而燥咳止。再以蜂蜜养脾胃，和营卫，又具培土生金之力。此膏滋而不腻，补而不燥，为化痰止咳之佳品。', '脾胃虚寒，咳唾清稀者不宜。', 1, 'null', '化痰止咳平喘类', '粥食类', '煎', '/static/images/medicinaldiet/川贝秋梨膏_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (78, '真君粥', '《山家清供》', '成熟的杏子5~10枚，粳米50~100g，冰糖适量。', '洗净杏子，用水煮烂去核，加入洗净之粳，再加冰糖共煮，粥熟后温食。每天一食，共5天。', '清润肺胃，止咳平喘。', '止咳类，适应肺、胃阴伤，症见身热烦躁，干咳无痰，咽干口渴等。', '本方所治之咳嗽证，为燥热灼伤肺胃津液所致，治宜清润肺胃、止咳平喘。方中杏子为杏或山杏的果实，杏子性温，味酸、甘，入肺经，能能润肺定咳、生津止渴。但以止咳为主，放咳逆不已而略兼燥热者，宜用本品。与冰糖、粳米同煮粥，甘寒滋润及清养肺胃的功效更好。', '如有肺热咳嗽，有黄稠痰，尿黄尿涩，大便千燥者不可食用。', 1, 'null', '化痰止咳平喘类', '粥食类', '煮', '/static/images/medicinaldiet/真君粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (79, '杏仁猪肺粥', '《食鉴本草》', '苦杏仁15g，粳米100g，猪肺100g，油、盐、味精适量。', '将苦杏仁去皮尖，放入内煮15分钟，再放洗净的粳米共煮粥半熟，再将洗净、挤干血水与气泡，切成小块的猪肺放入锅中，继续文火煮成熟粥，调入油、盐、味精，即可食用。每日早、晚1次，温食，1碗为宜。', '润肺止咳。', '止咳类，适应慢性支气管炎属痰盛者，症见咳嗽痰多，呼吸不顺，以致气喘，胸膈痞满，脉滑等。', '本方治证为气逆不降，痰浊阻肺所致，治宜润肺化痰、降气止咳。本方以苦杏仁为主料，杏仁苦温，人肺与大肠经，功善祛痰止咳平喘、润肠降气，取其润则能润肠润肺，降则能顺气止逆，且能化痰，故用于气逆痰阻所致之咳喘；粳米健脾扶胃，土壮则金生；猪肺补肺润肺；三者合用，则祛痰降气、润肺平喘诸作用同化为一膳，故凡肺虚喘咳，甚或肺燥咳血等均适用。', '食杏仁猪肺粥时，忌辛辣食物，忌油膩肥甘食物，忌烟、酒。饮食不宜过咸，少甜食。', 1, 'null', '化痰止咳平喘类', '粥食类', '煮', '/static/images/medicinaldiet/杏仁猪肺粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (80, '百部生姜汁', '《中华临床药膳食疗学》', '百部50g，生姜50g。\r\n', '把生姜洗净切块拍扁，与百部同入瓦煲加水煎沸，去渣，改文火煎煮15分钟，待温凉即可饮用。', '散寒和胃，止咳平喘。', '止咳类，适用于咳嗽气喘，胸闷口淡，食欲不振，夜咳尤甚，不能人眠，舌苔白，脉弦滑。多见慢性支气管炎反复发作，百日咳属寒痰者，及风寒之邪引起的喘证。', '本方治证多为风寒外袭，肺胃不和所致，治宜和胃散寒、降气平喘、化痰止咳。方中百部甘苦而温，功善润肺下气、止咳平喘。现代研究发现能抑制咳嗽反射，有镇咳祛痰作用；对支气管平滑肌有松弛作用，能治哮喘，近似氨茶碱。用为主料，专为痰咳喘逆而设。生姜辛温，能散寒邪、和胃气、降冲逆，辅百部则能增强其降气平喘之力，并和胃散寒以防胃气之冲逆，故对百日咳、慢性支气管炎、哮喘等病证有良效。\r\n', '因百部甚苦，可调入蜂蜜，以矫正其苦味，又增加其润肺之力。', 1, 'null', '化痰止咳平喘类', '饮料类', '煎', '/static/images/medicinaldiet/百部生姜汁_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (81, '杏仁饼', '《丹溪纂要》', '杏仁(去皮尖)40粒，柿饼10个，青黛10g。', '将杏仁炒黄研为泥状，与青黛搅拌匀，放入掰开柿饼中摊开，用湿黄泥包裹，煨干后取柿饼食用。', '清肝泻火，润肺化痰。', '平喘类，可治气逆咳嗽，面红喉千，咳时引胁作痛，舌苔薄黄少津，脉弦数。', '本方治证由肝火犯肺所致，治宜清泻肝火、止咳平喘。方中杏仁为蔷薇科植物杏树的果实。味辛苦，性微温，归肺、大肠经，能降肺气，性疏散，又善宣肺除痰，痰消气宣，则咳喘自平。青黛为大青叶叶绿素的制品，性味咸寒，专入肝经血分，功能消热解毒，凉血泻肝，兼能清肺止咳。柿饼为柿科植物果实柿子的制成品，味甘、涩，性寒，入心、肺、大肠经，能润肺化痰、止咳止血。三者合制成饼，以青黛泻肝火，杏仁降气化痰，柿饼润肺，乃标本兼顾的膳方，为平喘、润肺、止咳之佳品。', '杏仁饼乃治肝火犯肺之咳喘，故虚寒咳嗽者不宜食用。', 1, 'null', '化痰止咳平喘类', '其它', '煎', '/static/images/medicinaldiet/杏仁饼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (82, '杏仁粥', '《食医心镜》', '杏仁(不论苦甜)20g，粳米100g，食盐或冰糖适量。', '将杏仁去皮尖，放入锅中加水煮汁至杏仁软烂，去渣留汁，用药汁煮粳米成粥，调入盐或冰糖湿热食，每日2次。', '止咳平喘。', '平喘类，适用于咳嗽气喘，久咳不止，咳痰多及肠燥津枯，大便秘结等。', '本方治证多为体弱气虚，痰气上逆，津亏肠燥所致，治宜润肠下气、止咳平喘。方中杏仁为蔷薇科植物杏树的成熟种子。在应用上有苦、甜杏仁之分，其性味和功用均有区别。苦杏仁味苦性微温，有小毒，归肺、大肠经。其苦泄降气，能平喘、润肠通便。与粳米同煮为粥，既能止咳平喘、润肠通便，又能健脾养胃；既可借米之力增强药力，又可缓其毒性。甜杏仁味甘性平，无毒，归肺、大肠经，也可止咳平喘、润肠通便，其滋润之性较佳，最宜于虚劳咳嗽气喘，久喘无痰，短气乏力等。粳米甘平养胃，与甜杏仁合煮成粥，可增强润肺补肺之功，以助降气平喘。对年老体弱、虚劳咳嗽气喘而又见肠燥便秘者尤为适宜。', '按病情辨证使用苦或甜杏仁。', 1, 'null', '化痰止咳平喘类', '粥食类', '煮', '/static/images/medicinaldiet/杏仁粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (83, '蛤蚧粥', '《四季饮食疗法》', '生蛤蚧1只，全党参30g，糯米50g，酒、蜂蜜适量。', '生蛤蚧用刀背砸头至死，开膛去内脏，冲洗干净，用酒、蜂蜜涂抹全身，注意保护尾巴不可断折，再置瓦片上炙熟。全党参洗净，炙干，与蛤蚧共研末，调匀成饼。煮糯米稀粥八成熟，加入蛤蚧党参饼搅化，继续煮粥熟即可食。分2~3次食服，每日或隔日一料，5~6料一疗程，可间断再服。', '补益肺肾，纳气定喘。', '平喘类，适用于日久咳喘不愈，而浮肢肿，动则出汗，腰腿冷痛，阳痿等。', '本方治证为肺虚失于肃降，肾虚不司摄纳，兼中焦气弱所致，治宜补益肺肾、扶胃健脾、纳气定喘。方中蛤蚧又名角蟾，产于云桂石山地区，其肉可食，亦可入药，药力在尾。蛤蚧性平，味咸，有小毒，入肺、肾经，有益肾补肺、纳气定喘的作用。党参性微温，味甘，入脾、肺经，有补中益气、健脾胃之功。与糯米合用，全膳可健脾胃以补中土，益肾气以司摄纳，补肺气以助肃降，适量多食，可望咳止喘平。', '外感，咳喘痰黄者不宜服用。', 1, 'null', '化痰止咳平喘类', '粥食类', '煮', '/static/images/medicinaldiet/蛤蚧粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (84, '腐皮白果粥', '《家庭食疗手册》', '白果10g，豆腐皮30g，粳米50g，调味品适量。', '将白果去壳、皮、心，洗净；豆腐皮洗净切碎。将粳米洗净，与白果、豆腐皮一齐放入煲内，加水适量，文火煮成粥，调味即可食用。每日一料，分2次食用，连用两周。', '益气养胃，敛肺平喘。', '平喘类，适用于慢性支气管炎、哮喘属肺虚者，症见咳嗽气喘日久不愈，动则尤甚，体倦气短，饮食不佳等。', '本方治证属久咳伤肺，肺气不敛所致，治宜补气敛肺、平喘止咳。方中白果又称银杏、公孙果，性味涩甘、微苦，功能敛肺气、止咳喘，具有除湿以减少痰液化生的作用，《本草便读》述为“上敛肺金除咳逆，下行湿浊化痰涎”。豆腐皮为黄豆浆凝结成的薄膜，含有丰富的优质蛋白质、维生素B族、钙、磷、钾、铁等矿物质，是豆制品中的精品。黄豆性平味甘，能益肺气、养胃阴、清痰涎而止咳喘，与粳米共煮粥，不但补益肺胃而不腻滯，而且可降低白果之毒，矫正其苦涩之味，是用治虚喘痰咳的理想药膳佳品。', '白果有毒，生食尤剧，故使用时要注意不宜过量，食前要熟煮去毒。外感咳嗽者不宜食用本品。', 1, 'null', '化痰止咳平喘类', '粥食类', '煮', '/static/images/medicinaldiet/腐皮白果粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (85, '山楂麦芽茶', '《中国药膳》', '山楂10g，生麦芽10g。', '山楂洗净、切片，与麦芽同置杯中，倒入开水，加盖泡30分钟，代茶饮用。', '消食化滞。 ', '消食化滞类，适用于伤食、食积证，或大病初愈，胃弱纳差的病证。', '本方治证为食积内停所致，治宜消食、化积、导滞。方中山楂、生麦芽及其神曲合称“三仙”，均属消食化滞的常用药物，既是食品，又是药材，但山楂因含解脂酶，口服可促进胃酸的分泌，故以消乳食、肉食最为适宜；生麦芽含淀粉、蛋白水解酶及B族维生素，故多用于消米面、薯类食积、食滞。本方由山楂、生麦芽两味冲泡、代茶饮服，功能健胃消食、化积导滞，临床尤其适用于肉食、乳食积滞所致纳呆纳差、脘腹胀闷、恶食恶心、或吐或泻等症的治疗，味道酸甜可口，老人、儿童都易于接受。', '暂无', 1, 'null', '消食解酒类', '饮料类', '泡', '/static/images/medicinaldiet/山楂麦芽茶_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (86, '甘露茶', '《古今医方集成》', '炒山楂24g，生谷芽30g，麸炒神曲45g，炒枳壳24g，姜炙川朴24g，乌药24g，橘皮120g，陈茶叶90g。', '上药干燥，共制粗末，和匀过筛，分袋包装，每袋9g。1日1~2次，每次1袋，开水冲泡，代茶温饮。', '消食开胃，行气导滞。', '消食化滞类，适用于伤食、食积气滞证。', '本方所主之证乃饮食停积，气机阻止所致，治宜消食开胃、理气导滞。方中山楂、谷芽、神曲即“三仙”，开胃消食，谷芽与麦芽皆为消米面、薯类食积之有效药、食，两者常相须为用以增强疗效。枳壳、厚朴、乌药辛散温通，消胀止痛;橘皮既行气健胃，又降气理气，如《名医别录》记载:“主脾不消谷，气冲胸中，吐逆霍乱......”，临床单用橘皮一味即可治伤食、食积气滞证，食后嗳气矢气频作，上下通气，胃脘饱胀即刻减轻或缓解，疗效肯定。陈茶叶既消食，又降气，亦能清火。以上各味共奏消食开胃、行气导滞、消胀止痛之功，适用于脘腹饱胀疼痛，暧气矢气后胀痛减轻或缓解，纳呆厌食等即伤食、食积气滞证的治疗。', '暂无', 1, 'null', '消食解酒类', '饮料类', '泡', '/static/images/medicinaldiet/甘露茶_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (87, '神仙药酒丸', '《清太医院配方》', '檀香6g，木香9g，丁香6g，砂仁15g，茜草60g，红曲30g。', '上药共为细末，炼蜜为丸，每丸10g左右，可泡白酒500ml，适量饮用。', '开胃消食，顺气导滞，快膈宽胸。', '消食化滞类，适用于食积气滞证。', '本方所治之证属饮食积滞，食停气滞，治宜开胃消食、行气导滞。方中植香、木香顺气导滞；丁香温中散寒；砂仁开胃健脾；茜草、红曲通经活血，有“气病治血”之义，而茜草性寒，又可防诸药温燥太过伤阴损液，红曲既是着色剂，又有“消食”(《饮膳正要》)、“健脾温中”(《本草衍义补遗》)的作用(如西北地区蒸花卷、千层饼、作礼馍常把红曲粉撒在面饼、蒸馍上或揉入面中使用，除着色、染色使之形态美观外，也有预防食积的保健作用)。诸药炼蜜为丸，用时以酒泡之，方便快捷，开胃消食，顺气导滞，对各种食积气滞证均有效。该药酒制成后，气味芬芳，酒色由白转红，饮后胸膈脘腹饱胀即刻消失，其乐融融，悠哉悠哉，故有“神仙”之美誉。', '暂无', 1, 'null', '消食解酒类', '其它', '泡', '/static/images/medicinaldiet/神仙药酒丸_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (88, '荸荠内金饼', '《中国食疗学养生食疗菜谱》', '荸荠600g，鸡内金25g，天花粉20g，玫瑰20g，白糖150g，菜油、面粉、糯米粉适量。', '将鸡内金制成粉末，加入天花粉、玫瑰、白糖与熟猪油60g、面粉10g。拌匀作成饼馅。荸荠去皮洗净，用刀拍烂、剁成细泥，加入糯米100g拌匀上笼蒸熟。趁热把刚蒸熟的荸荠糯米泥分成汤圆大小，逐个包入饼馅，压成扁圆形，撒上细干淀粉备用。炒锅置旺火上，倒入菜油烧至八成热时把包入饼馅的荸荠饼下入油锅内炸至金黄色，用漏勺捞起入盘，撒上白糖即可上桌。当点心直接食用。', '功能开胃消食、清热止渴。', '消食化滞类，主治胸中烦热口渴、脘腹痞闷、恶心恶食、纳食减少、苔黄腻、脉滑数等症。', '本方治证为饮食积滞，郁久化热而成，治宜消食导滞、清化郁热。方中鸡内金即家鸡的砂囊内壁，又名“鸡嗦子”、“鸡肫皮”、“鸡肫里黄皮”等，味甘性平，入脾胃二经，有健脾胃、消食积的功能，为有力的消食化积药，适用于饮食停滞所致的各种病证。现代药理研究证实：鸡内金能增强胃运动功能、消化能力，加快胃排空，增加胃液分泌量及其酸度。临床观察发现：鸡内金对于各种消化不良病症都有比较满意的疗效。荸荠、天花粉、白糖均有清热止渴的作用，尤其荸荠兼能开胃消食，用治饮食停滞，壅久化热最为适宜。米、面温中健脾、猪油益胃生津，皆为顾护胃气之品。玫瑰气味芳香、性质温热，具“健脾，......疏肝，......和血”(《本草从新》)之功，“治消化不良，恶心呕吐，肝胃气痛”(《山东中草药》)，方中用之，取行气开胃之效用，可预防米面、猪油等“膏梁”之味壅中呆胃。全方合用，即具开胃消食除积，清热生津止渴的功效，所以可治饮食停滞，壅久化热伤津之病证。', '荸荠性寒、猪油滑肠，脾胃虚寒及血寒者不可大量食用。', 1, 'null', '消食解酒类', '其它', '煎', '/static/images/medicinaldiet/荸荠内金饼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (89, '神曲丁香茶', '《简易中医疗法》', '神曲15g，丁香1.5g。', '上两药放入茶杯中，沸水冲泡，代茶饮用。', '温中健胃、消食导滯。', '消食化滞类，适用于胃寒食滞而纳差纳呆、胃脘饱胀、呕吐呃逆等症。', '本方所冶之证为胃寒而纳运功能减退，饮食停滞引起，治宜温中散寒、消食开胃、行气导滞。方中神曲为辣蓼、苍耳、杏仁、青蒿、赤小豆等药、食加人面粉或麸皮共6味混合后，经发酵而成的曲剂，又名“六神曲”。其味甘辛而性温，入脾胃二经，具健脾和胃、消食调中之功，正如《本草经疏》所言：“其气味甘温，性专消导，行脾胃滯气，散脏腑寒冷”，因此神曲尤其适用于胃寒食滞的治疗。丁香“暖胃，去中寒”(《医林纂要》)，现代研究也证实能排除肠内积气、促进胃肠蟎动与胃液分泌，从而有健胃开胃、消胀止痛的作用，所以可缓解脘腹胀痛，增强消化功能，减轻恶心呕吐。两者合用，共奏温中散寒、健胃消食的作用，主治胃寒食滯证。', '暂无', 1, 'null', '消食解酒类', '饮料类', '泡', '/static/images/medicinaldiet/神曲丁香茶_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (90, '健脾消食蛋羹', '《临床验方集锦》', '山药15g，茯苓15g，莲子15g，山楂20g，麦芽15g，鸡内金30g，槟榔15g，鸡蛋若干枚，食盐、酱油适量。', '上述药、食除鸡蛋外共研细末，每次5g，加鸡蛋1枚调匀蒸熟，加适量食盐或酱油调味后直接食用。1日1~2次。', '补脾益气，消食开胃。', '健脾消食类适用于脾胃虚弱，食积内停之证，症见纳食减少、脘腹饱胀、嗳腐吞酸、大便溏泻、脉象虚弱等。', '本方所主之证为脾胃虚弱，饮食积滞而成；治宜消补兼施，使脾胃得健，食滞得消，则气机调畅，诸症自会痊愈。方中山药、茯苓、莲子与鸡蛋益气补中，以治病本，前三者昧甘性平，既补益脾胃，又除湿止泻，临床常用于脾胃虚弱之不思饮食、泄泻久痢等类似于消化不良、胃肠炎等的治疗；鸡蛋乃血肉有情之物，也属味甘性平之品，具补脾和胃、养血安神、滋阴润燥之功，主治脾胃虚弱食滞纳呆，腹泻便溏，阴血不足眩晕乏力，鸡盲夜盲及其阴津亏损失眠烦躁，咽干口渴等。山楂、麦芽与鸡内金消食导滞，以治病标，山楂主消乳食、肉食积滞；麦芽主消米面、薯类积滞；鸡内金健脾胃，消食积，是强而有力的消食化积药；适用于各种饮食停滞病证的治疗。槟榔苦温，苦能降气，温能散气，临床既可治疗饮食积滞证，又可预防食积食滞证。饮食停滞易于导致气机阻止，故本方槟榔的作用即是消积导滞、行气除胀。全方合用，补脾益气，消食开胃，补消兼施，用于脾胃虚弱所致饮食积滞，特别是小儿疳积，疗效确切。', '暂无', 1, 'null', '消食解酒类', '菜肴类', '蒸', '/static/images/medicinaldiet/健脾消食蛋羹_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (91, '白术猪肚粥', '《圣济总录》', '白术30g，模榔10g，生姜10g，猪肚1付，粳米100g，葱白3茎(切细)，食盐适量。', '前3味装入纱布袋内、扎口，猪肚洗净去涎滑，将药袋纳入猪肚中缝口，用水适量煮猪肚令熟、取汁。以猪肚煮汁煮米粥，将熟时入葱白及食盐调味。空腹食用。', '健脾消食，理气导滞。', '健脾消食类，适用于脾虚气滞脘腹胀满、纳差纳呆。', '本方治证属脾胃虚弱，纳运失调，气机阻滞所致，治宜健脾益气、消食开胃、理气导滞。方中主药白术苦甘性温，具补脾益气之功，用治脾胃虚弱所致脘腹胀满、食欲不振、泄泻便溏等症，如《医学启源》说：“和中益气，温......(主)四肢困倦、目不欲开、懈怠嗜卧、不思饮食......”猪肚味甘性温，补中益气，擅治虚劳羸弱，配伍白术、粳米尤使本方健脾益胃功能大大增强。此外，中医还习惯用动物的脏器来补益人体脏腑的虚损，以收“以脏补脏”之效。槟榔味苦辛，性温燥，入胃与大肠经，功能消积行气，常用于食积不消、脘腹胀满疼痛等类似于胃肠功能紊乱、消化不良及慢性结肠炎等的治疗，在方中为辅药。生姜、葱白皆为辛温之品，辛可行气，温能暖中，因此在方中两者与槟榔相须为用，强化了本方行气散郁导滞的作用。本方用粳米及其白术、猪肚配合槟榔煮粥，既可消食行气导滞，又能益气补中扶正，消补兼施，相辅相成。全方合用即具健脾益气、消食开胃、理气导滞的功效，用于治疗脾虚气滞所致脘腹胀满疼痛、纳差纳呆等症，疗效肯定。', '白术猪肚粥不宜长久食用，一般以3~5天为一疗程。气虚下陷者忌用。\r\n', 1, 'null', '消食解酒类', '粥食类', '煮', '/static/images/medicinaldiet/白术猪肚粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (92, '小儿七星茶', '《家庭医生》', '薏苡仁15g，甘草4g，山楂10g，生麦芽15g，淡竹叶10g，钩藤10g，蝉蜕4g(一方无甘草而为灯心3~ 5g)。', '上药共为粗末，水煎。代茶饮用。', '健脾益胃，消食导滞，安神定志。', '健脾消食类，适用于小儿脾虚伤食证或疳积证，症见纳差腹胀，吐奶或呕吐，大便稀溏，或面黄肌瘦，厌食恶食，大便时干时稀，多汗易惊，睡卧不安，手足心热等。', '小儿脏腑娇嫩、脾常不足，加之乳食不知自节，故极易发生乳食积滞，日久又可导滞营养不良而发生疳积。伤食或疳积往往易于化生食火，食火形成后又易于扰动心神。因此本方主治证既有伤食、疳积脾升胃降气机逆乱的表现，又有化热与心神被扰的症状，治宜健脾益气、消食化滞、安神定志。方中惹苡仁、甘草健脾益气补中，山楂、麦芽消食导滞开胃，竹叶、钩藤、蝉蜕宁神镇惊定志，如《本草正义》说：“钩藤......气本轻清而味甘性寒，最合于幼儿稚阴未充、稚阳易旺之体质......能泄火而能定风\"，《药性论》也说：“主小儿惊啼，瘛疚从热壅”，张守颐则谓：“蝉蜕，主小儿惊痫。盖幼科惊痫，内热为多......治以寒凉，降其气火，使不上冲......”。灯心清心火、利小便，治心烦不寐、小儿夜啼。诸药合用，共奏健脾益气、消食导滞、安神定志之功。因本方由7味药物组成，主要用治小儿疾病，同时剂型为代茶饮，故方名即为“小儿七星茶”。该方原为广东、特别是广州地区家喻户晓的婴幼儿医疗保健药茶，由于疗效确实、群众乐意接受，因此目前已有冲剂问世。广东梁剑波教授认为：“七星茶具备补脾、平肝、泻心的立法处方(原则)。它对于解决小儿的风、火、热、滞，配合严谨......对治疗小儿因肠胄消化不良、食滞吐奶、烦躁磨牙、易啼易怒、小便短赤，以及不明原因的发热等症，煎服一二剂，无不良反应而效果优良，诚为良......家有小孩，每星期煎服1次，还可有预防之效。”', '暂无', 1, 'null', '消食解酒类', '饮料类', '煎', '/static/images/common/暂无图片.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (93, '益脾饼', '《医学衷中参西录》', '白术30g，红枣250g，鸡内金15g，干姜6g，面粉500g，食盐适量。', '白术、干姜入纱布袋内，扎紧袋口，入锅，下红枣，加水1000ml，武火煮沸，改用文火熬1小时，去药袋，红枣去核，枣肉捣泥。鸡内金研成细粉，与面粉混匀，倒入枣泥，加而粉与少量食盐，和成面团，将面团再分成若千个小面几，制成薄饼。平底锅内倒少量菜油，放入面饼烙熟即可。空腹食用。', '健脾益气，温中散寒，开胃消食。', '健脾消食类，主治脾胃寒湿所致纳食减少，大便溏泄等病症。', '本方主治证属脾胃寒湿，饮食停滞所致，治宜健脾益气、温中散寒、消食导滞。方中白术苦甘性温，入脾胃两经，甘以补脾益胃，温能散寒除湿，苦以燥湿止泻，用治脾胃虚弱，寒湿内生所致纳差纳呆、脘腹饱胀、大便溏泄等症，《本草通玄》赞誉道：“补脾胃之药，更无出其右也”。红枣味甘性温，入脾胃两经，与白术相须为用，健脾益气功力更强。鸡内金运脾磨谷，有较强的消食化积作用。干姜温中散寒，健胃运脾，主治脾胃虚寒脘腹冷痛，纳食不消，恶心呕吐，泄泻下痢等。本方配伍得当，具有较好的健脾益气、温中散寒、消食健胃的作用，主治“脾胃寒湿，饮食减少，常作清泻，完谷不化”(张锡纯语)等。', '本品偏温，故中焦有热者不宜食用。', 1, 'null', '消食解酒类', '其它', '煎', '/static/images/medicinaldiet/益脾饼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (94, '六和茶', '《全国中成药处方集》', '党参30g，苍术45g，甘草15g，白扁豆60g，砂仁15g，藿香45g，厚朴30g，木瓜45g，半夏60g，赤茯苓60g，杏仁45g，茶叶120g。', '以上各味共为粗末，每次9g，沸水冲泡；或加生姜3片，大枣5枚，煎汤，代茶饮用。', '健脾益胃，理气开郁，消食化痰。', '健脾消食类，适用于脾胃虚弱，饮食痰湿积滞的病证，症见脘腹胀满，食欲不振，恶心呕吐，大便溏泄，面色无华，形体消瘦，倦怠乏力，舌淡胖嫩苔白腻或水滑，脉缓弱或滑。', '本方主治证为脾虚食滞痰积引起，治宜健脾益气、理气开郁、消食化痰。中参、术、草及扁豆健脾益胃补中，扁豆尚能和中化湿，可治脾虚食少，呕吐泄泻。砂仁、藿香、厚朴、木瓜理气开郁醒脾，砂仁行气和胃，能缓解胃肠胀气，减轻脘腹疼痛，调中醒脾，可健胃开胃，增进食欲；藿香行气和中，藿香挥发油能促进胃液分泌，抑制胃肠过激蠕动，故有健胃止吐、解痉、防腐之功；半夏、赤茯苓、杏仁、茶叶利湿化痰祛邪，赤茯苓多用于利湿泄热剂中；茶叶味苦甘，性质寒凉，功能为消食化痰、除湿清热。另外，因本方治证为饮食、痰湿实邪积滞，而实邪郁阻，易致气机阻滞，气滞日久又易化热所致，故本方除有祛邪、理气的药、食之外，同时还有象赤茯苓、茶叶等清解邪热之品。诸味合用即奏健脾、益胃、理气、开郁、消食、化痰6效于1方，对上述诸症均有良效，故名“六和茶”。临床可用于脾胃虚弱、饮食痰湿积滞证的治疗。', '暂无', 1, 'null', '消食解酒类', '饮料类', '煎', '/static/images/medicinaldiet/六和茶_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (95, '葛根枳棋子饮', '《防醉解酒方》', '葛根20g，葛花10g，枳棋子15g。', '水煎2次，取汁600~800ml，于2小时内分3~5次饮腹。', '发表散邪、清热除烦。', '解酒醒醉类，适用于急性酒精中毒所致头痛头晕、燥热口渴等症。', '本方所主之证为酒毒冲逆，热灼津伤引起，治宜解散酒毒、清热利湿、生津止渴。方中葛根、葛花、积惧子尤其是后两味是最为常用的解酒药。葛花有解酒毒的作用，常用于饮酒中毒所致头痛头晕，或长期饮酒，胃肠积热所致恶心呕吐、小便短涩的治疗。积棋子为植物拐枣的果实或种于，具解毒利尿、清热除烦的作用，如《滇南本草》说：“能解酒毒”、《本草拾遗》说：“利小便，功用如蜜”，“止渴除烦，去膈上热”，可用于饮酒中毒、热病烦热、小便不利的治疗。本方以葛花为主，葛根为辅发表解肌以解酒毒，葛根尚有清热生津的作用，可治饮酒过度、湿热灼津所致口千口渴。枳棋子利小便解酒毒，兼以清热除烦、生津止渴。三味合用，共奏解饥发表、利尿除湿、清热生津之功，所以可用于饮酒过多或不善饮酒引起急性酒精中毒的治疗。', '暂无', 1, 'null', '消食解酒类', '饮料类', '煎', '/static/images/medicinaldiet/葛根枳棋子饮_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (96, '神仙醒酒丹', '《寿世保元》', '葛花15g，葛根粉240g，赤小豆花60g，绿豆花60g，白豆蔻15g，柿霜120g。', '以上各昧共为细末，用生藕汁捣和作丸，如弹子大。每用1丸，嚼碎吞服，立醒。', '宣散排毒，利尿祛湿，醒牌清胃。', '解酒醒醉类，适用于饮酒酒醉所致头痛头晕、小便短涩、嗳气吞酸、纳差纳呆、苔腻脉滑等症。', '本方所治之证为饮酒过度，湿热阻滞，升降失职所致，治宜解表渗湿、升清降浊、清热生津。方中葛花、葛根解肌发表，便酒湿之邪从肌表而出；赤小豆花、绿豆花便酒湿从小便而出；白豆蔻调气化湿，醒脾开胃；柿霜、藕汁清热生津。全方合用，即具解肌发表、利尿渗湿、升清降浊、清热生津的作用，所以可用于酒醉的病证，尤以长期酗酒所致头痛头晕、小便短涩、纳差纳呆等症最为适宜。', '暂无', 1, 'null', '消食解酒类', '其它', '其它', '/static/images/common/暂无图片.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (97, '橘味醒酒羹', '《滋补保健药膳食谱》', '糖水橘子250g，糖水莲子250g，青梅25g，红枣50g，白糖300g，白醋30ml，桂花少许。', '青梅切丁，红枣洗净去核，置小碗中加水蒸熟。糖水橘子、莲子倒入铝锅或不锈钢锅中，再加入青梅、红枣、白糖、白醋、桂花、清水，煮开，晾凉后频频食用。', '解酒和中除噫，清热生津止渴。', '解酒醒醉类，适用于饮酒酒醉所致噫气呕逆、吞酸嘈杂、不思饮食等症。', '本方所主之证为饮酒酒醉，湿热积聚，胃气上逆所致，治宜清热利湿、和降胃气。方中橘子化湿行气，顺气和胃；莲子、红枣健脾祛湿；桂花香味浓烈，有行气散郁的作用；青梅即乌梅，生津止渴；白糖、白醋皆为民间常用的解酒用品，《本草纲目》就说：“润心肺燥热......消痰，解酒和中”，《医海拾零》也说：“饮酒过多，酌饮醋有解酒作用”。方中橘子、莲子、青梅、红枣均为日常果品，且用糖、醋、桂花调味，甜酸可口，清香怡人，共奏清湿热、解酒毒、降胃气之功，是解酒和胃之优良膳方，临床对饮酒过多所致噫气呕逆、胃脘嘈杂、烦渴燥热等症确有良效。', '暂无', 1, 'null', '消食解酒类', '菜肴类', '蒸', '/static/images/medicinaldiet/橘味醒酒羹_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (98, '姜橘饮', '《家庭食疗手册》', '生姜60g，橘皮30g。', '水煎取汁，代茶饭前温饮。', '理气健中，除满消胀。', '理气类，适用于脾胃气滯引起的脘腹胀满。', '本方治证为痰湿阻滞或脾胃虚弱，致使中焦脾胃气滞引起，症见胸部满闷，脘腹胀满，不思饮食或食后腹胀，或口淡无味，苔薄或稍腻等，治宜理气健中、燥湿化痰、除满消胀。方中生姜味辛、性温，人肺、脾、胃经，除有发汗解表、散寒止咳的作用外，还有健胃理气、降逆止呕的功效。现代研究发现：生姜煎液能引起消化液的分泌增加，并能抑制异常发酵，使肠张力、节律及蠕动增加，可用于积气的排出与肠胀气引起的疼痛；生姜浸液及从生姜中分离出的成分的混合物都有比较明显的止呕作用。橘皮苦、平，入肺、脾二经，有较好的行气健胃作用，《本草拾遗》载陈皮“去气，调中”，《名医别录》也说：“主脾不消谷，气冲胸中，吐逆霍乱，止泻”；因其味苦，故也有燥湿化痰之功。两者合用即有键中理气、燥湿化痰、消胀止呕的作用，临床适用于痰湿滞中，中虚气滞之脘腹胀满或胃寒型呕吐，类似于消化不良、胃肠功能紊乱，或急性胃肠炎、神经性呕吐等的调治。', '暂无', 1, 'null', '理气类', '饮料类', '煎', '/static/images/medicinaldiet/姜橘饮_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (99, '良姜鸡肉炒饭', '《中国食疗大全》', '高良姜6g，草果6g，陈皮3g，鸡肉150g，粳米饭150g，葱花、食盐、料酒、味精各适量。', '前3味洗净，加水煎取浓汁50ml，鸡肉切片。起油锅，放入鸡肉片，加料酒、葱花煸炒片刻，倒入米饭，加食盐、味糟及药汁再炒片刻即成。', '温胃散寒除湿，行气止痛降逆。', '理气类，适用于脾胃中寒、湿阻中焦之脘腹冷痛胀满、嗳气吐逆反胃等症。', '本方所治之证为寒湿中阻，脾胃气机阻滞或逆乱引起，治宜温中散寒、行气止痛、除湿降逆。方中主药高良姜辛热，“除一切沉寒痼冷”(《本草汇言》，“治......腹冷气痛”(《药性论》)。因其专入脾胃，故温散之力尤强，临床主要用治胃寒脘腹冷痛。草果辛温，也入脾胃二经，既可行气解郁，又能散寒除湿，用治寒湿阻滞中焦，脾胃气机逆乱所致脘痛腹胀、恶心嗳气、呕吐反胃等病症。陈皮行气健胃，燥湿化痰。鸡肉甘平微湿，补益五脏，温中益气。粳米健脾益胃。诸品配合，既散寒行气、除湿降逆，又补虚湿中、健脾益胃，对体质虚弱，寒湿阻滞，脾胃气机郁阻或逆乱的病证尤为适宜。', '上方性偏温燥，宜于寒湿之证，故胃热或阴虚所致者不宜使用。', 1, 'null', '理气类', '粥食类', '炒', '/static/images/medicinaldiet/良姜鸡肉炒饭_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (100, '柚皮醪糟', '《重庆草药》', '柚子皮(去白)、青木香、川芎各等份，醪精、红糖各适量。', '前3味制成细末，每煮红糖醪糟1小碗，兑入药末3~6g，趁热食用，1日2次。', '理气解郁，和胃止痛。', '理气类，适用于肝胃不和所致的脘胁疼痛，并见脘胁胀闷疼痛，嗳气呃逆，不思饮食，精神郁闷成烦躁、脉弦等。', '本方所治属于肝郁气滞，肝胃不和，气滞面略兼寒凝所致，治宜疏肝和胃、温散寒郁、理气止痛。柚子异名“文旦”，品种有“沙田柚”、“文旦柚”与“大红袍”等，皮厚，较耐贮存，是常年清口爽神的水果。柚子皮又名“气柑皮”、“橙子皮“，辛苦面性温，功能宽中理气、消食化痰、温中止痛，主治寒湿、痰食阻滞中焦所致院腹满闷冷痛、纳差纳呆等症。青木香亦称“云木香”、“南木香”、“广木香”等，其正名为“木香”，味辛苦、性温，入肝、胆、脾、胃及大肠经，行气止痛，温中和胃，常用于肝郁气滞，肝胃不和等所致脘腹胀满疼痛、食不消化，或呕吐泄泻等的治疗。川芎为血中气药，不但长于活血，还能行气散郁止痛。醪精、红糖既温经散寒和血，又健脾益胃和中。全方合用，共奏疏肝理气、温中散寒、行气止痛，对肝胃气滞面略兼寒湿的病证，颇为有散。', '暂无', 1, 'null', '理气类', '其它', '煮', '/static/images/medicinaldiet/柚皮醪糟_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (101, '五香酒料', '《清太医院配方》', '砂仁、丁香、檀香、青皮、薄荷、藿香、甘松、三奈、官桂、大苗香、白芷、甘草、菊花各12g，红曲、木香、细辛各1.8g，干姜1.2g，小茴香1.5g，烧酒1kg。', '上药以绢袋盛好，入烧酒中浸泡，10日后可用。每日早晚各饮1次，一次饮20~30ml，忌食生冷、油膩等物。', '醒脾健胃，散寒止痛，芳香化湿，发表散邪。', '理气类，适用子脾胃气滯所致脘腹胀痛、食欲不振等症，也可用于寒凝肝郁疝气疼痛、阴暑证头身疼痛、呕恶恶食等的治疗或辅助治疗。', '本方主治证有三：一是寒郁凝结、痰饮阻滞、饮食积滞等所致的脾胃气滞证；二是寒湿凝滞、肝气郁结引起的疝气疼痛；三是暑季内有暑湿，而又贪凉感寒，由此形成的内有湿阻症状、外有风寒表现的证候，即阴暑证。方中砂仁辛、温，归脾、胃经，具行气调中、醒脾和胃之功，是治疗脾虚湿困、气机阻滞所致脘腹胀痛、食欲不振的佳品。红曲即真菌紫色红曲霉寄生在粳米上而成的红曲米，味甘性温，入肝、脾、胃经，有健脾消食、活血化瘀的作用。砂仁、红曲醒脾健胃，合木香、丁香、檀香及青皮理气导滞、消胀止痛。薄荷、藿香、甘松、三奈芳香化湿、避除秽浊。干姜、官桂、大小茴香暖肝、散寒、止痛，木香、青皮除行脾胃气滞、治脘腹胀痛外，也具疏肝破气之功，可治疝气疼痛。细辛、白芷并藿香发散风寒。甘草调和诸药，菊花性凉，能缓解上药辛温伤阴耗液之弊。酒为辛温之品，既可助细辛、白芷、藿香等解散表邪，又与红曲一起温通血脉，取“气病治血”之义。以上各味合用，全方即具调中理气导滞、疏肝散寒止痛与散风寒化薯湿的综合作用，所以可用于脾胃气滞证、寒凝肝郁疝气疼痛和阴暑证的治疗。', '暂无', 1, 'null', '理气类', '其它', '泡', '/static/images/medicinaldiet/五香酒料_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (102, '二花调经茶', '民间验方', '月季花9g(鲜品加倍)，玫瑰花9g(鲜品加倍)，红茶3g。', '上三味制粗末，用沸水冲泡10分钟，不拘时温饮，每日1剂。连服数日，在经行前几天服用。', '理气活血，调经止痛。', '理气类，适用于气滯血瘀型月经不调或痛经。', '本方治证为气滞血瘀，经脉不畅痛经等，治宜行气活血、调经止痛。方中月季花、玫瑰花均为血中气药，两者功用相当，有理气活血、调经止痛的作用，是治疗气滞血瘀型月经病的佳品。如《本草正义》指出：“玫瑰花，香气最浓，清而不浊，和而；不猛，柔肝醒胃，流气活血，宣通窒滞而绝无辛温刚燥之弊，断推气分药之中，最有捷效而最为驯良者，芳香诸品，殆无其匹。”红茶乃全发酵茶，因色泽乌黑油润，沏出的茶色红鲜亮而得名，其性温，散寒除湿，且食有咖啡因，能兴奋高级神经中枢，使精神兴奋、思想活跃、体力恢复，有利于行气解郁；与茶碱对血管运动中枢也有兴奋作用，有改善血液循环的功能，又可认为与行血活血有关。上三味共奏理气活血，调经止痛之功，用于月经后期，经色暗红、量少、有块，小腹疼痛，伴精神抑郁或烦躁不安，胸胁乳房胀痛，纳食减少等症。即气滞血瘀型月经不调或痛经的治疗。', '暂无', 1, 'null', '理气类', '饮料类', '泡', '/static/images/medicinaldiet/二花调经茶_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (103, '薯蓣半夏粥', '《医学衷中参西录》', '山药30g，半夏30g，白糖适量。', '山药制成细末。半夏用温水浸泡，淘洗数次以去矾味，加水煎煮5分钟，取汁250ml。将半夏汁倒入山药末中拌匀，加清水适量煮3~5分钟，入白糖调味。1日3餐食用。', '健脾益胃，燥湿化痰，降逆止呕。', '理气类，适用于中焦气弱，痰湿壅盛，胃气上逆所致之恶心呕吐等症。', '本方所治之证为脾胃虚弱，痰湿壅盛，胃气失于和降所致上逆呕恶，治宜益气补中、燥湿化痰、降逆止呕。薯蓣又名山药，味廿微酸、性温，主入脾、肺，有健脾补肺的作用，既是一味补药、又是日常佳蔬，用治脾胃虚弱、肺脾两虚诸证。半夏辛温降逆、和胃止呕之功颇为显著，可用于多种呕吐哕逆证候，由于性质温燥，因此对脾虚、痰饮犯胃所致之呕吐尤为适宜。现代研究发现：半夏3g即可对抗最小有效量的阿朴吗啡及硫酸铜引起犬的致呕作用，其机制主要是抑制呕吐中枢的结果。白糖甘寒，清热生津，既可牵制半夏之温燥，免伤阴液；又能矫味，与山药配合，使本方酸甜适门。三者合用，共奏健脾益胃、燥湿化痰、降逆止呕之功，适用于中虚痰盛、胃气上逆而恶心呕吐、脘痞纳呆、口淡不渴、舌淡苔腻、脉沉缓或滑等症。', '暂无', 1, 'null', '理气类', '粥食类', '煮', '/static/images/medicinaldiet/薯蓣半夏粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (104, '竹茹芦根茶', '《千金要方》', '竹茹30g，芦根30g，生姜3片。', '上药水煎，代茶饮用。', '清热益胃，降逆止呃。', '理气类，适用于胃热呃逆与热病后期哕逆不止。', '本方治证为胃热逆气冲上或中虚胃气失于和降引起的呃逆证，治宜清热益胃、降逆止呃。方中竹茹、芦根与生姜均有和胃降逆的作用，都可用于呕吐呃逆的治疗，特别是竹茹、芦根为治疗胃热呃逆的常用药对子。竹茹甘苦性凉，人胆、胃二经，因其寒凉故可清热，苦又能降下，而甘则可益胃安中，所以《本草蒙荃》说：“主胃热呃逆，疗噎嗝呕哕”，《本经逢源》指出：“为虚烦烦渴、胃虚呕逆之要药”。芦根甘寒，既可清热生津，以治热病津伤，又能清热降逆，以治胃热呕哕。生姜辛温，主治胃寒呕哕，有“呕家圣药”之称，配寒凉之芦根、竹茹，则功在温散，而专其和胃降逆之功。以上配伍，有清热益胃止呃的作用，临床既用于胃热呕哕，如急性胃肠炎、幽门不全梗阻等症的治疗，也用于热病后期胃阴损伤所致虚呃不止，如感染性、传染性病症恢复期的调治。', '暂无', 1, 'null', '理气类', '饮料类', '煎', '/static/images/medicinaldiet/竹茹芦根茶_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (105, '橘朴茶', '《江西中医药》', '橘络3g，厚朴3g，红茶3g，党参6g。', '上四味共制粗末，放入茶杯中用沸水冲泡10分钟即可。不拘时随饮随冲，至味淡为止，每日1剂。', '理气开郁，化痰散结。', '理气类，适用于梅核气。', '梅核气相当于现代医学所说的“咽部神经官能症”或“癔病球”，临床以咽部自我感觉异常为主，并随精神情绪的变化而变化，客观检查无异常发现，全身症状多为精神抑郁、多疑善虑、胸胁胀满，若肝郁日久横逆犯脾又见纳呆腹胀、大便溏泄，妇女还可见月经不调。其病机主要在于肝郁气滞或痰气互结，治宜疏肝理气、健脾和胃、化痰散结。中橘络昧淡微苦，性平微温，入肝、脾经，《本草纲目拾遗》说：“橘络专能宣通经络滞气，驱皮里膜外积痰”，即具理气、通络、化痰之功，故为主药。厚朴苦辛，性温，入脾、胃、肺经，既可温中行气降逆，又能健脾燥湿化痰，是为辅药。红茶温中暖胃，散寒除湿；党参健脾益胃，取“见肝之病，则知肝当传之于脾，故先实其脾气”之义；上两药是佐使之药。以上组方合理、严谨，所以可用于梅核气的治疗。', '服用本方，同时也应注意精神治疗，即要细心开导病人，使其消除顾虑，并避免各种不良刺激，使其精神愉快，以期获得更加满意的疗效。', 1, 'null', '理气类', '饮料类', '泡', '/static/images/medicinaldiet/橘朴茶_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (106, '益母草煮鸡蛋', '《食疗药膳》', '益母草30~60g，鸡蛋2个。', '鸡蛋洗净，与益母草加水同煮，熟后剥去蛋壳，入药液中复煮片刻。吃蛋饮汤。每天1剂。连用5~7天。', '活血调经，利水消肿，养血益气。', '活血化瘀类，适用于气血瘀滞之月经不调，崩漏，产后恶露不止或不下等。', '本方所治月经不调，为气血淤滞所致，治宜活血养血调经。方中益母草辛苦而凉，入心包、肝经，功能活血、祛瘀、调经、消水，是治疗血热、血滞及胎产艰涩之要药，《本草汇言》云其“行血养血，行血而不伤新血，养血而不滞瘀血，诚为血家之圣药也”，故益母草为本方之主料；鸡蛋甘、平，人心、肾经，滋阴润燥，养心安神。两者相伍，化瘀与扶正并举，可活血补血，利水消肿。主要用于预防和治疗崩漏、痛经、闭经、产后恶露不下等；也可用于折伤内损有瘀血者，或尿血、肾炎水肿等。疼痛明显者可加入黄酒适量，血虚者加入红糖适量。由于本方药性平和，无峻攻蛮补之弊，故亦可作为妇人产后调补之方，以助子宫整复。', '脾胃虚弱者不宜多食，多食令人闷满。', 1, 'null', '理血类', '其它', '煮', '/static/images/medicinaldiet/益母草煮鸡蛋_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (107, '红花当归酒', '《中药制剂汇编》', ' 红花100g，当归50g，赤芍50g，桂皮50g，40%食用酒精适量。', '将上药干燥粉成粗末，40%食用酒精1000ml浸渍10~15天，过滤，补充一些溶剂续浸药渣3~5天，滤过，添加酒至10000ml，即得。每日3~4次，每服10~20ml，亦可外用涂擦跌打扭伤未破之患处。', '活血祛瘀，温经通络。', '活血化瘀类，适用于跌打扭伤、瘀血经闭腹痛等。', '本方所治之证，为瘀血阻滞脉络所致，治宜活血化瘀、通络止痛。方中红花辛、温，入心、肝经，《本草汇言》言：“红花，破血行血、和血、调血之药也”，故能活血通经、祛瘀止痛，为血中之气药。当归甘辛，温，入心、肝、脾经，能补血和血、调经止痛，《日华子本草》云：当归“破恶血，养新血”。两者配合，红花偏于活血止痛，当归偏于养血调经，主治经闭、癥瘕、产后恶露不下、瘀血作痛、跌扑损伤等，共为主料。赤芍酸苦性凉，入肝、脾经，功能化瘀止痛、凉血消肿，与红花均善治外伤瘀血肿痛；桂皮辛甘而热，可补元阳、通血脉、止疼痛。芍、桂皮与主料相伍，助其活血止痛之效。酒为百药之长，方用酒剂，取其辛温行散，以通血脉、行药势，增强药力。且本方可内服、外用并行，使药力迅速布达血脉以化瘀止痛，故以方便实用、效专力宏为特点。用治跌打扭伤，经闭腹痛诸证，可收捷效。', '本品性偏温热，阴虚火妄者不宜，孕妇慎服。不胜酒力者可将药料加适量黄酒，水煎内服；外用也可水煎熏洗。', 1, 'null', '理血类', '饮料类', '其它', '/static/images/medicinaldiet/红花当归酒_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (108, '桃花白芷酒', '《家庭药酒》', '桃花250g，白芷30g，白酒1000g。', '农历3月3日或清明节前后采摘桃花，特别是生长于东南方向枝条上的花苞及初放不久的花更佳。将采得的桃花与白芷、白酒同置入容器内，密封浸泡30日即可。每日早晚各1次，每次饮服15~30ml，同时倒少许酒于掌心中，两手掌对擦，待手掌热后涂擦按摩面部患处。', '活血通络，润肤祛斑。', '活血化瘀类，主治瘀血所致的面部晦暗、黑斑、黄褐斑等。', '本方所治之证，为瘀滞血热所致，治宜活血通络、润肤祛斑。方中桃花味苦性平，入足阳明、手少阴、足厥阴经，功能活血利水、凉血解毒，为中医美容之要品。白芷辛温无毒，善治阳明一切头面诸疾。《本草经百种录》言：“白芷极香，能驱风燥湿，其质又极滑润，能和利血脉，而不枯耗”。桃花与白芷相伍，可活血祛风、解毒消斑。酒剂可助药力，并适于久服，以缓缓图功。本品性质平和，制作方便，主要用于防治面部晦暗、黑斑、黄褐斑等，也可作为伤风头痛、眩晕等病的辅助治疗，外用可美颜色、润肌肤及防治皮肤燥痒诸症。', '妊娠期、哺乳期妇女及阴虚血热者忌服。', 1, 'null', '理血类', '饮料类', '其它', '/static/images/medicinaldiet/桃花白芷酒_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (109, '丹参烤里脊', '《中国药膳大全》', '丹参9g(煎水)，猪里脊肉300g，番茄酱25g。葱、姜各2.5g(切末)，水发兰片、熟胡萝卜各5g(切粒)，白糖50g，醋25g，精盐1.5g，花椒10g，绍酒10g，酱油25g，豆油70g。', '将猪里脊肉切块(如鸭蛋大)，顺着切刀口1cm深，用酱油拌一下，用热油炸成金黄色，放入小盆内。加酱油、丹参水、姜、葱、花椒水、绍酒、清汤，拌匀，上烤炉，烤熟取出，顶刀切成木梳片，摆于盘内。勺内放油，入兰片、胡萝卜煸炒一下，加清汤、番茄酱、白糖、精盐、绍酒、花椒水。开锅后，加明油，浇在里脊片上即成。日常佐餐随量食用，每周3~5次。', '活血祛瘀，安神除烦。', '活血化瘀类，适用于瘀血所致的月经不调，癥瘕积聚，胸腹刺痛，关节肿痛，心烦不眠等。', '本方所治之证，为瘀血所致，治宜活血凉血祛瘀、安神除烦。主料丹参，味苦面微温，入心、肝经，专走血分，功能活血祛瘀、养血安神、排脓止痛，主治胸痹心痛，月经不调，痛经，闭经，癥痕积聚，瘀血腹痛，骨节疼痛，惊悸不眠，恶疮肿毒等多种病症。配料猪肉甘咸性平，功善滋阴、润燥、益气，能“补肾液，充胃汁，滋肝阴，润肌肤”《随息居饮食谱》。番茄甘酸、微寒，可生津止渴，健胃消食。主料与配料相伍，性味平和，化瘀不伤正，扶正不留邪，可用于多种瘀血病证的治疗和日常调理，以防治月经不调，经闭痛经，崩漏带下，产后瘀血腹痛，乳痈肿痛，心烦不眠，疮疡肿毒等。特别是瘀血日久，兼有气血精津亏损不足者尤为适宜。前人有“一味丹参饮，功同四物汤”的经验，本方有祛瘀生新之效，也可作为女性、中老年人的养生保健食品，可辅助治疗面部色素沉着、高脂血症、动脉硬化、肝脾肿大、冠心病、心绞痛、中风半身不遂、神经衰弱等病症。', '本方药性平和，去配料中的白糖亦可作为糖尿病患者的保健食品。孕妇慎用。', 1, 'null', '理血类', '菜肴类', '烧', '/static/images/medicinaldiet/丹参烤里脊_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (110, '桃仁粥', '《太平圣惠方》', '桃仁21枚(去皮尖)，生地黄30g，桂心3g(研末)，粳米100g(细研)，生姜3g。', '地黄、桃仁、生姜3味加米酒180ml共研，绞取汁备用。另以粳米煮粥，再下桃仁等汁，更煮令熟，调入桂心末。每日1剂，空腹热食。', '祛寒化瘀止痛。', '活血化瘀类，适用于寒凝血瘀之攻心瘕痛、痛经、产后腹痛、关节痹痛等。', '本方所治诸痛，为寒凝血瘀，不通則痛，治宜化瘀通经、散寒止痛。方中桃仁苦甘性平，入心、肝、大肠经，《药品化义》认为“桃仁，味苦能泻血热，体润能滋肠燥”，功善破血行瘀、润燥滑肠，是治疗血瘀血闭引起的经闭、癜瘕、产后瘕痛、胸瘕刺痛之专药。生地黄甘苦性凉，《神农本草经》载其能“逐血痹”，《本草经疏》言其善“益阴血”，唐宋之前多用地黄活血通经，治疗寒热积聚、痹阻疼痛诸症。桂心辛热，助阳散寒、通脉止痛。生姜辛温，温散和中。4味配合，重在祛邪，可收化瘀、散寒、止痛之捷效，主要用于瘀血寒凝所致的心腹疼痛、痛经、产后腹痛、关节痹痛等症。以粳米煮粥，取其补中益气、健脾和胃之功，意在资生化源，祛邪不损正。临床也可作为冠心病、心绞痛、风湿性关节炎、类风湿性关节炎、行经腹痛等病的辅助治疗。', '本方总以祛邪为主，不宜长时间服用。血热明显者可去桂心。平素大便稀溏者慎用。', 1, 'null', '理血类', '粥食类', '煮', '/static/images/medicinaldiet/桃仁粥_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (111, '三七蒸鸡', '《延年益寿妙方》', ' 母鸡1只(约1500g)，三七20g，姜、葱、料酒、盐各适量。', '将母鸡宰杀退去毛，剁去头、爪，剖腹去肠杂，冲洗干净；三七一半上笼蒸软，切成薄片；一半磨粉。姜切片，葱切成大段。将鸡剁成长方形小块装盆，放入三七片，葱、姜摆于鸡块上，加适量料酒、盐、清水，上笼蒸2小时左右，出笼后拣去葱姜，调人味精，拌人三七粉即成。吃肉喝汤，佐餐随量食用。', '散瘀止血定痛，益气养血和营。', '活血化瘀类，主治产后、经期、跌打、胸痹、出血等一切瘀血之证。', '本方所治之证，为瘀血所致，治宜化瘀止血、消肿定痛。方中三七甘苦而温，功能“和营止血，通脉行瘀，行瘀血而敛新血”《玉楸药解》，为治疗瘀血出血之要药。鸡肉甘温，入脾、肾经，可温中益气、补精填髓，主治虚劳瘦弱诸证。两者配伍，一通一补，作用平和，善于理血补虚，无峻攻蛮补之弊，凡瘀血、出血、血虚诸血分之证均叮酌情选用。临床多用于胸痹心痛、跌打损伤、崩漏带下、遗精泄泻、消渴、咯血等病症，兼能益气养血、和营养颜；血虚面色萎黄，年老久病体弱者也可作为强壮之品。', '孕妇忌服。', 1, 'null', '理血类', '菜肴类', '蒸', '/static/images/medicinaldiet/三七蒸鸡_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (112, '玫瑰露酒', '《全国中药成药处方集》', '鲜玫瑰花3500g，白酒15000g，冰糖2000g。', '当玫瑰花花蕾将开放时采摘，将花与冰糖浸入酒中，用瓷坛或玻璃瓶储存，不可加热，密封月余即得。每日2次，每次饮服10~30ml。', '活血散瘀，理气解郁。', '活血化瘀类，适用于血瘀气滞之月经不调、肝胃气痛、新久风痹、乳痈肿毒等。', '本方所治之证，为瘀血气滞所致，治宜和血散瘀、理气解郁、疏肝和胃。方中攻瑰花甘辛而温，气味芳香，功能“和血、行血、理气”(《本草纲目拾遗》)，“调中活血”(《随息居饮食谱》)，浸酒可增加行散活血之功，主要用于气郁血瘀之月经不调、赤白带下、胸痛头痛、胃脘疼痛、肢体痹痛、损伤瘀痛、乳痈肿毒等。女子以肝为先天，多有气血郁滞，本方以玫瑰花为主，行气散血，芳香浓郁，色味俱佳，兼能美容养颜，也可作为女性日常美容保健饮品，能和气血、美颜色。', '阴亏燥热者勿用。女性或不胜酒力者可改为玫瑰花10g，黄酒50ml，加水，适量煮沸服用。', 1, 'null', '理血类', '饮料类', '泡', '/static/images/medicinaldiet/玫瑰露酒_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (113, '坤草童鸡', '《华夏药膳保健顾问》', '坤草(益母草)15g，童子鸡500g，鲜月季花10瓣，冬菇15g，火腿5g，香菜叶2g，绍酒30g，白糖10g，精盐5g，味精1g，香油3g。', '将益母草洗净，放碗内，加入绍酒、白糖上屉，用足气蒸1小时后取出，用纱布过滤，留汁备用。童子鸡宰杀去净毛，洗净，从背部剖开，除去内脏，剁去头、爪，入沸水中烫透。捞出放砂锅内，加入鲜汤、绍酒、冬菇、火腿、葱、姜，煮开后，加入精盐，盖上盖，用小火煨至熟烂。然后拣去葱、姜，加入味精、益母草汁、香油、香菜叶和鲜月季花瓣即成。食肉喝汤，随量食用。', '活血化瘀，调经止痛。', '活血化瘀类，适用于瘀血滯留的多种病证，妇女经脉阻滞引起的月经不调、痛经、经闭、产后瘀血腹痛、恶露不尽、产后血晕、崩漏下血，及跌打瘀痛等。', '本方所治之证，为瘀血阻滞所致，治宜活血化瘀、调经止痛。方中益母草，有活血化瘀、调经、消水等功效，为血瘀诸证，特别是妇科瘀血病证的常用要药，《本草纲目》谓其能“活血破血，调经解毒，治胎漏产难，胎衣不下，血晕、血风血痛，崩中漏下，尿血泻血，打扑内损瘀血，大小便不通”，故益母草功擅行血化瘀，本方用以为主。月季花功擅活血调经，以之配伍益母草，使该方活血化瘀之效偏重妇人经水。但均为草本枝叶，通疏有效，而补养乏力，于妇人血不足之体，以童子鸡配伍，能生精血，养五脏，一可补气血之虚，一可因滋补而补益母草、月季花之不及。故全方配伍，药虽少，而配合得当，活血无伤血之虞，补血无瘀阻之患，是一首好的祛瘀药膳。对气血不足的经闭、经期错后、久不受孕也可应用。', '血热之月经病证，或痰湿内盛者不宜服食。', 1, 'null', '理血类', '菜肴类', '蒸', '/static/images/medicinaldiet/坤草童鸡_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (114, '牛膝复方酒', '《太平圣惠方》', '牛膝120g，丹参、杜仲、生地、石斛各60g，好白酒1500g。', '将5味药料共捣碎，放入瓷罐中，加入白酒浸泡，密封口，7天即成，去渣留酒备用。每服30ml，每日1~2次。', '活血通络，补肾壮骨。', '活血化瘀类，主治关节不利，筋骨疼痛，肌肉酸痛，肾虚腰痛等。', '本方所治之证，为血脉淤滯，肝肾不足所致，治宜活血化瘀、滋补肝肾、强筋壮骨。方中牛膝甘苦酸，性平，入肝、肾经，生用主活血化瘀、通络止痛，且性善下行，筋骨痛风在下者最宜。丹参苦而微寒，入心、肝经，功能活血通脉止痛，《大明本草》以其主治“骨节疼痛，四肢不遂”。两味合用，可化瘀和络止痛，主治跌扑损伤等所致的瘀血凝滞之筋骨疼痛，尤长于治疗腰膝关节疼痛、屈伸不利。杜仲甘微辛，性温，入肝、肾经，可补肝肾、益精气、坚筋骨，主治腰脊酸痛、脚膝行痛，《药品化义》云：“牛膝主下部血分，杜仲主下部气分，相须而用。”生地为滋阴养血之上品，《神农本草经》则谓其“主折跌绝、伤中，逐血痹，填骨髓，长肌肉”，是古方治疗筋骨痹痛常备之品。石斛既可生津养胃，亦能益精补虚除痹，疗脚膝痛冷痹弱。酒为辛热之品，能御寒气、散湿气、通血脉、行药势。诸味共用，可化瘀血、除寒湿、通经络、补肝肾、益精气、壮筋骨，治疗血脉失和、肝肾不足所致的各种关节不利、筋骨疼痛、肌肉酸痛、肾虚腰痛等。', '牛膝为下行滑利之品，孕妇及梦遗、滑精、腹泻者忌服。', 1, 'null', '理血类', '饮料类', '泡', '/static/images/medicinaldiet/牛膝复方酒_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (115, '牛筋祛瘀汤', '《百病中医药膳疗法》', '牛蹄筋100g，当归尾15g，紫丹参20g，雪莲花10g，鸡冠花10g，香菇10g，火腿15g，生姜、葱白、绍酒、味精、盐各适量。', '将牛蹄筋温水洗净，将5000ml清水煮沸后，放入食用碱15g，倒入牛蹄筋，盖上锅盖焖两分钟，捞出用热水洗去油污，反复多次，待牛蹄筋发胀后才能进行加工。发胀后的牛蹄筋切成段状，放入蒸碗中；将当归、丹参入纱布袋放于周边，将雪莲，鸡冠花点缀四周，香菇、火腿摆其上面，放入生姜、葱白及调料，上笼蒸3小时左右，待牛蹄筋熟烂后即可出笼，挑出药袋、葱、姜即可。日常佐餐食用。', '活血化瘀通脉。', '活血化瘀类，主治瘀血痹阻，筋脉不通之肢体疼痛、筋脉拘急或弛纵。', '本方所治之证，为瘀阻筋脉所致，治宜活血止痛、化瘀通脉。方中当归甘辛性温，入心、肝、脾经，能活血养血、导血归源，主血分之病，“归身主守，补固有功，归尾主通，逐瘀自验”(《本草正义》)。丹参，味苦微温，入心、肝经，功能活瘀血，生新血，凉血安神，长于破血通经止痛，主治月经不调、癥瘕积聚、瘀血腹痛、骨节疼痛、恶疮肿毒等多种病症。两味主料相合，以化瘀通脉止痛为主。配料中雪莲花甘苦性温，能散寒、活血、通经；鸡冠花凉血止血、敛营。4味相合，有明显的活血止痛作用。配合牛蹄筋补肝强筋、扶助正气，使全方兼具化瘀血、通血脉、止疼痛、补筋脉之功。主治瘀血痹阻，筋脉不通之肢体疼痛、关节屈伸不利、筋脉拘急或弛纵等，也可辅助治疗瘀血阻滞型脉管炎。', '暂无', 1, 'null', '理血类', '菜肴类', '蒸', '/static/images/medicinaldiet/牛筋祛瘀汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (116, '地龙桃花饼', '《常见病的饮食疗法》', '干地龙30g，红花20g，赤芍20g，当归50g，川芎10g，黄芪100g，玉米面400g，小麦面100g，桃仁、白糖各适量。', '将干地龙以酒浸泡去其气味，然后烘于研为细面；红花、赤芍、当归、川芎、黄芪等入砂锅加水煎成浓汁，再把地龙粉、玉米面、小麦面、白糖倒入药汁中调匀，做圆饼20个，将桃仁去皮尖略炒，匀布饼上，入烤炉烤熟郎可。每次食用1~2个，每日2次。', '益气，活血，通络。', '活血化瘀类，适用于中风后遗症之半身不遂、口眼歪斜、语言謇涩、口角流涎、肢体菱废等属气虚血瘀者。也可用于小儿麻痹后遗症，以及其他原因引起的半身瘫痪、截瘫，或肢体萎软等。本方所主之证，为气虚血瘀所致，治宜益气活血、疏通经络。', '本方仿王清任《医林改错》之补阳还五汤方义，是以补气类药食与活血化瘀类药食配伍制作而成。方中重用黄芪，黄芪甘温，善于大补元气，以推动血行。川芎、桃仁均为破血祛瘀之品，川芎之性善散，上行头目，下达血海，中开郁结，为血中之气药。桃仁“性善破血，散而不收，泻而无补”(《本草经疏》)。红花、当归均能活血行血、和血养血，其中红花偏于化瘀，当归偏于养血。四者配合，活血兼以养血，无破血伤血之弊。赤芍酸苦性凉，能清热凉血化瘀；地龙咸寒，可清热熄风通络。两者合用，化瘀通经，以活血生血；玉米面、小麦面主健脾补虚，调中和胃。全方相合，共收补气活血、养血通络之功效。加工成饼剂，可以减少药物对胃肠道的刺激，且易于制作，食用方便，适合慢性病患者长期坚持服用，是治疗气虚血瘀、中风后遗症、半身瘫痪的药膳佳品。', '暂无', 1, 'null', '理血类', '其它', '其它', '/static/images/medicinaldiet/地龙桃花饼_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (117, '还童茶', '《中成药研究》', '槐角1kg。', '秋季采摘饱满壮实之荚果为原料，洗净，常温晾干，烘烤至深黄色，上笼蒸，出锅后再烘干至棕红色，除尽水分，最后将槐角轧破，将其内黑色种子脱去，取干燥之果皮轧碎，过筛，分袋装，每袋10g。用白开水冲泡饮用，每次1袋，每日2次。本品可连泡2次，颜色以棕红色至浅黄色为宜。', '清热，凉血，止血。', '止血类，适用于血热肠风泻血，痔疮出血，崩漏，血淋，血痢等。', '本方所治的出血病证，为血热所致，治宜清热滋燥、凉血止血。方中独用槐角，“苦寒纯阴之药，为凉血要品，故能除一切热，散一切结，清一切火”(《本草经疏》)。又因其入肝、大肠经，是病肝明目、清肠止血之要药。本方在加工过程中除去种子，故以凉血止血，治疗五痔肠风下血、赤白热泻痢疾见长，也可用于崩血、血淋等。临床将还童茶用于治疗和预防动脉硬化、冠心病、高血压、神经衰弱、肝炎、肠炎等疾病，均获得满意疗效。', '《本草经疏》云：“病人虚寒，脾胃作泄及阴虚血热而非实热者，外证似同，内因实异，即不宜服。”孕妇也当忌服。', 1, 'null', '理血类', '饮料类', '泡', '/static/images/medicinaldiet/还童茶_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (118, '茅根车前饮', '《中草药新医疗法资料选编》', '白茅根、 车前子(布包)各50g，白糖25g。', '将白茅根、车前子和适量水放入砂锅中，水煎20分钟，放入白糖即可。代茶频饮。', '凉血止血，利尿通淋。', '止血类，适用于下焦热盛，灼伤脉络，症见血尿、色鲜红，小便不利，热涩疼痛者；也可用于水肿、黄疸等。', '本方所治之证，为热伤血络所致，治宜清热凉血止血、利水消肿。方中白茅根性味甘寒，入肺、胃、小肠经，功善“清脾胃伏热，生肺津以凉血，为热血妄行上下诸失血之要药”(《本草求原》)。车前子甘寒滑利，有通利水道、渗泄湿热之功，能使湿热从小便而解。配料白糖甘平，可润心肺之燥热，以助白茅根清热凉血之功；又能利尿，助车前子导热下行。3味相合，具有清热不伤胃、利尿不伤阴、凉血行血而不留瘀的特点。本方具有廉、便、效、验的特点，对湿热下注膀胱之尿血、血淋、尿道灼热疼痛、小便滴沥不畅者最宜。现亦用于辅助治疗急性传染性肝炎、急性肾炎水肿、乳糜尿、高血压病，以及麻疹火盛等病。', '本方虚寒者不宜。白茅根鲜者效著，远胜干者。', 1, 'null', '理血类', '饮料类', '煎', '/static/images/medicinaldiet/茅根车前饮_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (119, '白及肺', '《喉科心法》', '白及片30~45g，猪肺1具，黄酒50g，细盐适量。', '先将猪肺挑去血筋血膜，剖开洗净，切成小块，把猪肺小块同白及片一同放入砂锅内，加水煮沸，改用文火炖烂，最后加入黄酒、细盐，煎取浓汤。每日早、晚各炖热一小碗，空腹时喝汤吃肺。5~7天为1疗程。', '补肺止血。', '止血类，适用于肺痨咳嗽、咯血、吐血等。', '本方所治之证，为肺虚咳血所致，治宜补肺敛肺，止血生肌。方中白及苦甘性凉，专入肺经，功能为补肺、止血、消肿、生肌、敛疮。由于白及“质极粘腻，性极收涩，味苦气寒，善入肺经”，“能坚斂肺脏，封填破损”(《本草汇言》)，故能入肺止血，为治疗肺虚咳血之要药。白及涩中有散，补中有破，虽禀收斂之性，但有苦泄辛散之力，兼具止血与补肺之功效，虚而有热者尤宜，故为主料。但白及一味，补虚之力尚嫌不足，配伍猪肺，以脏补脏，可增强其补肺功能，以猪肺善“疗肺虚咳嗽，嗽血”(《(本草纲目》)。两者合用，扶正兼以祛邪，功效专于补肺虚、止嗽血、止咳嗽，是治疗肺痨咳嗽、咯血、吐血的重要药膳方剂，临床常用于肺结核、支气管扩张出血、矽肺、百日咳等疾病的日常调理。', '外感咳血，肺痈初起及肺胃有实热者忌服。', 1, 'null', '理血类', '其它', '炖', '/static/images/common/暂无图片.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (120, '苎麻根粥', '《经验方》', '苎麻根10g，淮山药5g，莲子肉5g，糯米50g。', '将以上3味药适当切碎，与糯米共煮为粥。空腹食用，日2次。', '补脾益肾，止血安胎。', '止血类，适用于妊娠下血，也可用于血热崩漏下血、赤白带下、血淋、肠风下血。', '本方是以竺麻根为主料，配合淮山药、莲子肉、糯米等配制而成的药膳粥品，具有益肾气、健脾胃、止血安胎之效。方中苎麻根甘寒无毒，人足厥阴经血分及手足太阴经，功能清热、止血散瘀、解毒安胎，可用于多种血热出血证，是治疗胎漏F血之主药。配料中淮山药、莲子肉均性味甘平，入脾、肾经，长于健脾益肾，与苎麻根配伍能补主料未备之功，增强其补益安胎功能；且山药益精补虚赢、莲子性涩固下焦，使苎麻根凉血止血之功专于治疗胎漏、胎动不安之下血。全方以糯米煮粥，取其补中益气，顾护脾胃之义，扶正而不滞邪，祛邪而不伤正。依据本方的配伍特点，临床凡血分有热所致的月经过多、崩漏下血、赤白带下、血淋、肠风下血、功能性子宫出血、习惯性流产等病证均叮酌情选择食用。', '暂无', 1, 'null', '理血类', '粥食类', '煮', '/static/images/medicinaldiet/苎麻根粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (121, '花生衣红枣汁', '《家庭食疗手册》', '花生衣60g，干红枣30g，红糖适量。', '花生米在温水中泡半小时，取皮。下红枣洗净后温水泡发，与花生衣同放铝锅内，倒入泡花生米的水，再酌加清水，小火煎半小时，捞出花生衣，加入红糖。日1剂，分3次，饮汁并吃枣。', '补气养血，收敛止血。', '止血类，适用于产后、病后血虛，各种出血证。', '本方所主之证，为虚证出血，治宜补中益气、养血止血。方中花生衣，古方中极少与花生分用，但在民间常作为止血之品。现代研究证明，花生衣甘混性平，归肺、脾、肝经，功善收敛止血，用于内外各种出血证。且止血不留瘀，兼具化瘀、生血之效，对血小板减少性紫癜、再生障碍性贫血的出血、血友病、类血友病、先天性遗传性毛细血管扩张出血症、血小板无力出血症等，不但有止血作用，而且有一定的对治疗作用。干红枣甘温，入脾、胃经，功能健脾益气，调和营卫；红糖甘温，入脾、胃、肝经，功能补中，养血化瘀。两味与花生衣相合，益气以生血，养血兼和血，止血又散瘀，能缓和花生衣的涩味，是治疗各种血虚和出血性病证的常用药膳。', '内热、痰湿者不宜久服。', 1, 'null', '理血类', '饮料类', '煎', '/static/images/medicinaldiet/花生衣红枣汁_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (122, '藕汁鸡冠花糖饮', '《药膳食谱集锦》', '新鲜鸡冠花500g，鲜藕汁500ml，白糖500g。', '将鸡冠花除去杂质，洗净，入锅中水煎两次，滤去药渣，取汁，再以文火煎，浓缩，将成膏时加入鲜藕汁，继续文火炖至膏状，离火，拌入白糖，吸收煎液中水分使之混合均匀，放阴凉干燥通风处阴十，再把药糖粉碎成颗粒状，装瓶备用。每次取冲剂10g，以温水融化，频频饮之，或每日3次顿服。', '清热凉血，止血行瘀。', '止血类，适用于血热妄行引起的各种出血；或湿热下注，冲任失调所致的赤白带下、外阴瘙痒等。', '本方所主之证，为血热妄行所致，治宜清热止血、凉血行瘀。方中鸡冠花性味甘涩而凉，入肝、肾经，功能凉血止血、收敛止带，用于各种血热出血，如痔漏下血、白下痢、吐血、咳血、血淋、妇女崩中，赤白带下等，尤以治疗下焦出血见长。藕汁性味甘寒，入心、肺、脾、胃经，善于清热润肺、凉血散瘀，《日华子本草》谓其能“清热除烦，凡呕血、吐血、瘀血、败血，一切血证宜食之”。两味主料相伍，可通上、中、下三焦，清热邪，生津液，凉血止血，行散瘀血，主治血热妄行引起的各种出血，有标本兼顾之功。加入白糖制成饮品，可增强润肺和中之力，频频饮服，能通利小便，引热下行，使邪有出路，因此也可用于湿热下注所致的下痢、白带下、外阴瘙痒等。', '暂无', 1, 'null', '理血类', '饮料类', '煎', '/static/images/medicinaldiet/藕汁鸡冠花糖饮_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (123, '糯米阿胶粥', '《食医心鉴》', '阿胶30g，糯米100g，红糖适量。', '糯米淘洗净，入锅加清水煮至粥将熟时，放入捣碎的阿胶，边煮边搅，稍煮2~3沸，加入红糖搅匀即可。每日分两次趁热空服食下，3日为1疗程，间断服用。', '滋阴润燥，补血止血。', '止血类，适用于阴血不足，虚劳咳嗽，吐血，衄血，便血，妇女月经不调，崩中，胎漏。', '本方所主之证，为阴血不足所致，治宜滋阴润燥、补血止血。方中阿胶甘平无毒，入肺、肝、肾经，功效总以补血滋阴为主，可治疗血虚燥热之一切出血，故为本方主料。辅以糯米补中气，健脾胃；红糖补中缓肝，养血活血。3味相伍，共收滋阴润燥益肺、养血止血安胎之功，主治血虚萎黄、眩晕心悸，及阴血不足之虚劳嗽血、肺燥久咳，吐血衄血、便血、妇女月经不调、崩漏、孕妇胎动不安、胎漏等。临床也用于营养不良性贫血、恶性贫血、血小板减少性紫癜、再生障碍性贫血等疾病的辅助治疗。', '阿胶性粘腻，连续服用可有胸满气闷之感觉，故宜间断服食。脾胃虚弱者不宜多用。', 1, 'null', '理血类', '粥食类', '煮', '/static/images/medicinaldiet/糯米阿胶粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (124, '莲花茶', '《云林堂饮食制度集》', '莲花6g，绿茶3g。', '取7月含苞末放的莲花大花蕾或初开之花朵，阴干和茶叶共为细未，用滤泡纸包装成袋泡茶，或取莲花与茶一起用开水冲泡。每日1剂，代茶饮。', '清心凉血，止血活血。', '止血类，适用于血热心烦，舌红，咯血、衄血，尿赤等。', '本方所主之证，为血热所致，治宜清心凉血、止血活血。方中选花苦甘性温，入心、肝两经，有清心凉血、止血活血、去湿消风作用。配料绿茶苦甘性凉，可清心提神、生津止渴、清热解毒、利尿祛湿。两者共奏清心凉血、止血活血、利尿解毒之功，主治血热心烦、舌红、衄血、尿赤，也可治疗跌损呕血、月经过多、瘀血腹痛、湿疹疮疡等。本方药性平和，服用方便，无不良反应，亦是夏令祛暑生津、女性益色驻颜之日常保健饮品。', '暂无', 1, 'null', '理血类', '饮料类', '泡', '/static/images/medicinaldiet/莲花茶_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (125, '双耳海螺', '《中国药膳大全》', '黑木耳10g，白木耳6g，净海螺肉30g，黄瓜50g，香菜、绍酒、姜、葱各10g，素油50g，盐、上汤各适量。', '将黑、白木耳发好，去蒂及泥沙，撕成瓣。海螺肉洗净，切成片。黄瓜洗净，切片。香菜洗净，切段。葱切花，姜切粒。将炒锅置中火上，放入素油，将海螺入锅，炒至变色，放入双耳、姜、葱、绍酒、盐、上汤，翻炒至熟，放入香菜即成。随量佐餐食用，连用3~5天。', '清热，止血，明目。', '止血类，适用于血热吐血、衄血、咯血、痰中带血、尿血、痔疮便血，以及肝经热盛之目赤肿痛等。', '本方所治之证，为血热所致，宜滋阴清热、凉血止血、益肝明目。方中黑木耳甘平，主入阳明经，能凉血止血、润燥利肠，主治肠风、血痢、血淋、崩漏、痔疮等。白木耳甘淡性平，长于滋阴润肺、养胃生津；海螺肉味甘性冷，专于清热明目；黄瓜清热解毒。相合而用，功善滋阴清热、凉血止血、解毒明目，既可用于血分热盛之吐血、咯血、衄血、尿血、痔疮便血等各种出血证，也可治疗肝经热盛之目赤肿痛，亦可作为肺胃燥热之干咳痰嗽、胃痛泛酸，以及血管硬化、高血压、眼底出血等疾病的日常保健食品。', '平素大便稀溏者不宜久服。', 1, 'null', '理血类', '菜肴类', '炒', '/static/images/medicinaldiet/双耳海螺_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (126, '艾叶炖母鸡', '《中华养生药膳大典》', '艾叶15g，老母鸡1只，米酒60ml，葱白2段，精盐适量。', '将老母鸡宰杀，去净毛及内脏，洗净，去头、爪，剁块，入沸水中烫透。捞出放砂锅内，加入艾叶、米酒和适量清水，煮沸。加精盐、葱白，用小火煨至熟烂，然后拣去艾叶和葱白即成。食肉喝汤，佐餐食用，连用5~7天。', '益气扶阳散寒，温经止血安胎。', '止血类，适用于虚寒性月经过多、崩漏、妊娠下血、便血等。', '本方所治之证，为气血虚寒所致，治宜益气扶阳、温经散寒、止血安胎。方艾叶苦辛性温，入脾、肝、肾经，功能温经止血、散寒除湿、安胎，《本草正》认为“艾叶，能通十二经，而尤为肝脾肾之药，善于温中，逐冷，除湿，行血中之气、气中之滞，凡妇人血气寒滞者，最宜用之”，故本方用以治中气虚寒，下焦无权摄纳，使血失其道之妇人下血诸证。葱白辛温，能发散通阳、安胎止血；米酒温通血脉；两者共助艾叶温中血之力。母鸡甘温，入脾胃经，以温中益气、补精填髓，助后天生化之温，补精血之亏损，使标病除而根本固。诸药合用，可益气扶阳、温经散寒、止血安胎，是治疗虚寒性出血，特别是月经过多、崩漏、妊娠下血的常用药膳方剂；也可用于虚寒性脘腹疼痛、少腹冷痛、腰痛、痛经、带下、久痢、滑胎等病症的辅助治疗。', '阴虚血热者慎用。', 1, 'null', '理血类', '菜肴类', '炖', '/static/images/medicinaldiet/艾叶炖母鸡_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (127, '旱莲草粳米粥', '《中华养生药膳大典》', '旱莲草10g，白茅根15g，粳米60g。', '将早莲草、白茅根加水适量，煎取药汁约400ml，放碗中沉淀，备用。再将粳米淘洗于净，放入锅中，倒入药汁中的上清液和适量清水，置武火上煮沸，改用文火煮至米烂粥成即可。', '凉血止血，滋阴益肾。', '止血类，适用于阴虚血热引起的各种出血，如吐血、咳血、衄血、尿血、便血及崩漏下血等。', '本方所治之证，为阴虚血热所致，治宜凉血止血、滋阴益肾。方中早莲草甘酸性凉，人肝、肾经，功能滋阴清热、凉血止血、养血补肾，《本草正义》云其“入肾补阴而生长毛发，又能人血，为凉血止血之品”，故可治疗阴虛血热所致的各种出血证；白茅根性味甘寒，入肺、胃、小肠经，功善清胃热、生肺津、凉血比血；两者相伍，对肺胃伏热、肾虚有热引起的血热出血皆可应用。上两味药皆禀阴寒之质，显善凉血，不益脾胃，故以粳米煮粥，叮健脾、和中、安胃。由于旱莲草和白茅根均能凉血、利尿、通小肠，且粥剂食用方便，对血热所致的须发早白、疮疡、淋浊、带下、阴部湿痒等也有辅助治疗作用。', '脾胃虚寒者不宜久服。', 1, 'null', '理血类', '粥食类', '煮', '/static/images/medicinaldiet/旱莲草粳米粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (128, '百合粥', '《本草纲目》', '百合30g(或干百合粉20g)，糯米50g，冰糖适量。', '将百合剥皮、去须、切碎(或十百合粉20g)，与洗净的糯米同入砂锅中，加水适量，煮至米烂汤稠，加入冰糖即成。温热服。', '宁心安神，润肺止咳。', '养心安神类，适用于热病后期余热未清引起的精神恍惚、心神不安，以及妇女更年期综合征等；亦可用于肺燥引起的咳嗽、痰中带血等。', '本方所治之证，为余热扰心，或肺燥所致，治宜宁心安神、润肺止咳。方中百合甘平质润，入心肺两经，具有养心安神、滋阴清热、润肺止咳之效，为治疗虚烦不眠、心神不宁、低热不退、久咳久喘之要药。据《日华子本草》记载，本品可“安心、定胆、益智、养五脏”，故为本方之主料。糯米甘平，可益气解毒、定心神、除烦渴，适用于各种慢性虚证及热病伤津、心悸、烦热等症。两者相伍，共奏养心润肺之功效。最适宜于热病后期余热未清所致的精神恍惚、心神不安，以及妇女更年期综合征等的治疗和调养，亦可用于中老年人的滋养保健。', '暂无', 1, 'null', '安神类', '粥食类', '煮', '/static/images/medicinaldiet/百合粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (129, '酸枣仁粥', '《太平圣惠方》', '酸枣仁10g，熟地10g，粳米100g。', '将酸枣仁置炒锅内，用文火炒至外皮鼓起并呈微黄色，取出，放凉，捣碎，与熟地共煎，去渣，取汁待用；将粳米淘洗干净，加水适量，煮至粥稠时，加入药汁，再煮3~5分钟即可食用。温热服。', '养心安神。', '养心安神类，适应于心肝血虚引起的心悸、心烦、失眠、多梦等症。', '本方所治之证，为心肝血虚所致，治宜宁心安神、养肝补血。方中酸枣仁味甘性平，人心、肝两经，是治疗心肝血虚引起的虚烦不眠、惊悸怔忡、体虚汗出之要药，“久服安五脏，轻身，延年”(《神农本草经》)，为本方之主料；熟地甘温，可益气养血；粳米甘平，补中益气，健脾和胃，利小便，除烦渴，适用于各种慢性虚证及热病伤津导致的心悸、烦热等症。3味相伍，质柔性平，作用和缓，且制作江艺简单，食用方便，适宜于心肝血虚引起的心神不安、惊悸怔仲、失眠多梦等症的治疗和调养，亦可用于中老年人的养生保健，久服可益寿延年。', '暂无', 1, 'null', '安神类', '粥食类', '煮', '/static/images/medicinaldiet/酸枣仁粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (130, '柏子仁粥', '《粥谱》', '柏子仁15g，梗米100g，蜂蜜适量。', '将柏子仁去净皮、壳、杂质，捣烂，同粳米一起放入锅内，加水适量，用慢火煮至粥稠时，加入蜂蜜，搅拌均匀即可食用。温热服。', '养心安神，润肠通便。', '养心安神类，适用于心血不足引起的虚烦不眠、惊悸怔忡、健忘，以及习惯性便秘、老年性便秘等。另外，对血虚脱发亦有一定的治疗效果。', '本方所治之证，为心血不足所致，治宜养心安神、润肠通便。方中柏子仁味甘性平，入心、肾、大肠经，是治疗心血不足引起的虚烦不眠、惊悸怔忡、多梦健忘等症的常用药，《本草纲目》载柏子仁“安魂定魄，益智宁神”。配用粳米可补中益气，健脾和胃；蜂蜜“养脾气，除心烦”，润肠通便。3味相合，性平无毒，作用和缓，以养心安神为主，兼具润肠通便之效。最适宜于年高心血不足引起的心神不安、惊悸怔仲、失眠多梦以及津亏便秘等症的治疗和调养。', '本方有润下、缓泻作用，故便溏或泄泻者忌服。', 1, 'null', '安神类', '粥食类', '煮', '/static/images/medicinaldiet/柏子仁粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (131, '甘麦大枣汤', '《金匮要略》', '甘草20g，小麦100g，大枣10枚。', '将甘草放入砂锅内，加入清水500g，大火烧开，小火煎至剩200g，去渣，取汁，备用；将大枣洗净，去杂质，同小麦一起放入锅内，加水适量，用慢火煮至麦熟时，加入甘草汁，再煮沸后即可食用。空腹温热服。', '养心安神，和中缓急。', '养心安神类，适应于心虚、肝郁引起的心神不宁，精神恍惚，失眠等。', '本方所治之证，为心失所养，神不守舍所致，治宜养心安神。方中首选甘草，甘缓养心以缓急迫；辅以小麦，微寒以养心宁神；大枣甘温，可养血安神，补益脾气，缓肝急并治心虚。3味相伍，具有甘缓滋补、宁心安神、柔肝缓急之效。', '本品路有助湿生热之弊、故伴有湿盛脘腹胀满，以及痰热咳嗽者忌服。', 1, 'null', '安神类', '菜肴类', '煮', '/static/images/medicinaldiet/甘麦大枣汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (132, '玉竹卤猪心', '《中国中医药学报》', '玉竹50g，猪心1个，葱、姜、盐、花椒、白糖、味精、麻油、卤汁各适量。', '先煎玉竹2次，合并滤液，猪心剖开洗净血水后，与葱、姜、花椒等共入药汁中，置砂锅内，武火煮开后，文火煮至猪心六成熟，捞出晾干。再将猪心置卤汁锅中，文火煮熟，捞出切片，稍加调料即成。佐餐食用。', '补心宁神，养阴生津。', '养心安神类，适应于心阴不足引起的心悸，心烦，心神不宁，多梦失眠等。', '本方所治之证是由阴液不足，心神失养所致，治宜以养阴生津、补心安神为主。方中玉竹为甘平滋润之品，其性缓，其质柔，能养心肺之阴而除烦热，又无滋腻敛邪之弊。据《日华子本草》记载，玉竹可“除烦闷，止渴，润心肺，补五劳七伤”。配猪心养心补血，安神定惊。本方质柔性平，作用和缓，无大寒大热之弊，无毒。虽不能救一时之急，但长期食用对心阴虚损所致证候确有良效。', '暂无', 1, 'null', '安神类', '菜肴类', '煮', '/static/images/medicinaldiet/玉竹卤猪心_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (133, '龙眼纸包鸡', '《中国药膳》', '龙眼肉20g，胡桃肉100g，嫩鸡肉400g，鸡蛋2个，胡荽100g，火腿20g，食盐6g，砂糖6g，味精2g，淀粉25g，麻油5g，花生油1500g(实耗100g)，生姜5g，葱20g，胡椒粉3g。', '胡桃肉去皮后入油锅炸熟，切成细粒；龙眼肉切成粒，待用。鸡肉切成片，用盐、味精、胡椒粉调拌腌渍，再用淀粉加清水调湿后与蛋清调成糊。取玻璃纸摊平，鸡肉片上浆后摆在纸上，加上少许胡荽、姜、葱片、火腿、胡桃仁、龙眼肉，然后折成长方形纸包；炒锅置火上，入化生油，加热至六成熟时，把包好的鸡肉下锅炸熟，捞出装盘即成。作菜肴食用。', '养心安神，健脾益气。', '养心安神类，适应于气血两虚引起的心悸，失眠，健忘，病后体虚，食少乏力，眩晕，面色无华等。', '本方所治心悸、失眠、健忘等症。是心脾两虚所致。思虑过度，劳伤心脾，心血暗耗，心失所养，故见惊悸怔忡、健忘不寐等症。治宜养心安神，益气补血。方中龙眼肉甘温，归心脾经，可“益血安神”(《滇南本草》)，补心脾而不滋腻，益气血而不壅滞，是治疗心脾两虚引起的心悸、失眠、健忘之量药，《本经》称“主安忐，厌食，久服强魂魄，聪明”。胡桃肉味甘性温，可益血补髓、强前壮骨；鸡肉、鸡蛋甘温，可补中益气，为补气养血之佳品。为防峻补之鹰滞、再配以充荽，既能调菜肴之味，又能消食以行郁滞之气。本方配料合理，甘温峻补而不滞，既为养心健脾、补益气血之良药，又是餐桌上的佳肴。', '本品肥甘，故索体肥满，有湿热内蕴者慎用。', 1, 'null', '安神类', '菜肴类', '烧', '/static/images/medicinaldiet/龙眼纸包鸡_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (134, '人参炖乌骨鸡', '《中国食疗大典》', '乌骨鸡2只，人参100g，母鸡1只，猪肘500g，精盐、料洒、味精、葱、姜及胡椒粉各适量。', '将乌骨鸡宰杀，去毛，斩爪，去头，去内脏，将腿别在肚子里，出水。将人参用温水洗净；并将猪肘用力刮洗干净，出水；把葱切成段，姜切成片备用。将大砂锅置旺火上，加足清水，放人母鸡、猪肘、葱段、姜片，沸后嫩去浮沫，移小火上慢炖，炖至母鸡和猪肘五成烂时，将乌骨鸡和人参加入同炖，用精盐、料酒、味精、胡椒粉调好味，炖', '养阴安神，清热除烦。', '养心安神类，适应于阴虚内热引起的虚烦少寐，心悸神疲，五心烦热等症。', '本方所治之证为阴虚内热所致，治宜养阴清热安神。方中人参味甘微苦，性微温，可大补元气，养阴安神，《本经》记载，人参能“补五脏，安精神，止惊悸，除邪气，明目，开心益智”。凡元气不足，阴液亏损，虚火内扰而致的心神不宁、五心烦热等用之最宜，乌骨鸡味甘性平，具有养阴退热安神之功效。猪肉味甘性平，具有滋阴润燥之功效。3味相伍，可补肝肾、降阴火、除烦热、安神益智。故儿热病伤津，久病耗阴，肝肾阴亏，虚火上炎所致的神志不宁、心悸神疲、五心烦热、失眠多梦等，本方均叮奏效。', '本方略有滋腻，故凡素有湿热内蕴，或阳气不足者慎用。', 1, 'null', '安神类', '菜肴类', '炖', '/static/images/medicinaldiet/人参炖乌骨鸡_0.png', 13, NULL);
INSERT INTO `medicinal_diet_table` VALUES (135, '朱砂煮猪心', '《疾病食疗900方》', '猪心1个，朱砂1g。', '将猪心剖开，将朱砂塞入心腔内，外用细线扎好，放入足量的清水中熬煮，直至猪心煮熟为止。最后酌加细盐、小葱等即成。食猪心，喝汤，两天内吃完。', '养心，安神，镇惊。', '重镇安神类，主治心火亢盛、心阴不足引起的心烦失眠，心慌，惊悸，神志不宁等症。', '本方证是由心火偏亢，阴血不足所致。治疗当以清泻心火，滋养阴血，重镇安神为主。方中朱砂秉寒、降之性，能制浮游之火，重镇以安心神；猪心为血肉之品，味甘性平，可养心补血、安神定惊。2味相伍，一以寒降之性，泻偏盛之阳火，使心火下降；一以血肉之情，补偏衰之阴血，使阴血上承，故对心火偏亢、阴血不足所致的心烦失眠、心慌、惊悸、神志不宁等症具有较好的疗效。', '朱砂含硫化汞等有毒之品，故服用本方不宜过量，亦不可久服。肝肾功能不正常者慎用。', 1, 'null', '安神类', '菜肴类', '煮', '/static/images/medicinaldiet/朱砂煮猪心_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (136, '磁石粥', '《寿亲养老新书》', '磁石30g，粳米100g，生姜、大葱各适量(或加猪腰子，内膜，洗净切细)。', '先将磁石捣碎，于砂锅内煎煮1小时，滤汁去渣，再加入粳米(或加少量猪腰子)、生姜、大葱，同煮为粥。供晚餐，温热服。', '重镇安神。', '重镇安神类，适应于心神不安引起的心烦失眠，心慌，惊悸，神志不宁，头晕头痛等症。', '本方所治之证，为心神不安所致，治宜镇惊安神。方中磁石潜阳纳气，镇惊安神，是治疗各种心神不宁、心悸、失眠之要药。糯米甘平，可益心气、定心神、除烦热，适用于各种慢性虚证心悸、心烦、多梦、失眠等症。两者相伍，共奏镇惊安神之功效。', '磁石为磁铁矿的矿石，内服后不易消化，故不可多服。脾胃虚弱者慎用。', 1, 'null', '安神类', '粥食类', '煮', '/static/images/medicinaldiet/磁石粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (137, '天麻鱼头', '《中国药膳学》', '天麻25g，川芎10g，茯苓10g，鲜鲤鱼2条(每条重600g以上)，酱油25g，绍酒45g，食盐15g，白糖5g，味精1g，胡椒粉3g，麻油25g，葱10g，生姜15g，湿淀粉50g。', '将鲜鲤鱼去鳞，剖开腹，挖去内脏，洗净，再从鱼背部剖开，每半边剁为3~4节，每节剞3~5刀(不要剞透)，将其分为8等份，用8个蒸碗分盛。另把川芎、茯苓切成大片，放入二泔水中，再加入天麻同泡，共浸泡4~6小时，捞出天麻置米饭上蒸软蒸透，趁热切成薄片，与川芎、茯苓同分为8等份，分别挟入各份鱼块中，然后放入绍酒、姜、葱，兑上适量清汤，上笼蒸约30分钟后取出，拣去姜、葱，翻扣碗中，再将原汤倒入火勺内，调入酱油、食盐、白糖、味精、胡椒粉、麻油、湿淀粉、清汤等，烧沸，打去浮末，浇在各份鱼的面上即成。每周2~3次，佐餐食用。', '平肝熄风，滋养安神，活血止痛。', '平肝潜阳类，适用于肝阳、肝风所引起的眩晕头痛，肢体麻木，手足震颤等症；对顽固性偏正头痛，体虚烦躁失眠等亦有良好的疗效。', '本方所治之证，为肝风上扰所致，治宜平肝熄风。方中天麻“古有定风草之名，又因其性平味甘，专入肝经，走肝经气分，故凡肝阳上亢，肝火上炎，肝风内动之证，不论寒热虚实，均可选用，为虚风内动、痉挛风痫最为多用的药物。《本草汇言》即谓其“主头风，头痛，头晕虚旋，癩痛强痉，四肢挛急，语言不顺，一切中风、风痰。”《本草纲目》誉之为“治风之神药”，故前人有“眼黑头眩，虚风内作，非天麻不能治”之说。川艿辛散温通，入肝行血、为血中气药。功擅通血脉、祛风气、解头风，“上行头目，下调经水，中开郁结”(《本草汇言》)，长于活血定痛，既具辛散之力又能调达肝气，抑其上逆之阳，故有川芎“虽入血分，又能去一切风、调一切气”(《本草汇言》)之省，为临床各科瘀血诸痛常用之要药。茯苓甘淡，其性平利，善益脾气，其下行之性，能渗水湿以开泻州都，开心智而宁心安神，为利水补中安神之要约。两药活血定痛、利水安神，与天麻相伍，平肝熄风、止痛定志之功更强。鲤鱼甘平、功擅利水、下气、镇惊，与上药配伍后，既能滋精血益肝肾而涵阳熄风，义能利小便下逆气而降上亢之阳。两相促进，对于肝阳肝风之头痛、眩晕、失眠者卓有成效。', '本方性昧平和，肝肾阴虚，肝阳上亢者可用作日常膳食经常食用，无特别禁忌。', 1, 'null', '平肝潜阳类', '菜肴类', '蒸', '/static/images/medicinaldiet/天麻鱼头_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (138, '夏枯草煲猪肉', '《食物疗法》', '夏枯草20g，猪瘦肉50g，食盐、昧精各适量。', '将猪肉切薄片，夏枯草装纱布袋中、扎口，同放入砂锅内，加水适量，文火炖至肉熟烂，弃药袋，加食盐、味精调味即成。每日1剂，佐餐食肉饮汤。', '平肝清热，疏肝解郁。', '平肝潜阳类，适用于头痛，眩晕，目疼，耳鸣，烦躁，瘰疬，痰核等。', '本方所治之证，为肝火上升所致，治宜清泄肝火。方中夏枯草味芳气寒，泄肝火、散郁结；《本草逢经》谓：夏枯草“辛能散结，苦能除热......性寒味苦，专清肝火”；故肝阴上亢或肝火上升头晕目眩者，单用已可收效卓著，如《摄生众妙方》中的夏枯草汤，故本方以之为主。猪瘦肉为甘平滋补之品，《随息居饮食谱》谓之“补肾液，充胃汁，滋肝阴，润肌肤，利二便，止消渴，起廷赢。”两料相合，以夏枯草清肝泄火、开郁散结之效，辅以猪瘦肉补肾养血、滋阴润燥之功，使肝火肝阳得清则阴血不致妄耗；肝肾阴血得补则虚风自灭，具相辅相成之妙；为治疗肝阳上亢，肝火上炎之良膳。', '本方性偏寒凉，脾胃虚寒，大便溏薄者慎用。', 1, 'null', '平肝潜阳类', '菜肴类', '炖', '/static/images/medicinaldiet/夏枯草煲猪肉_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (139, '罗布麻茶', '《新疆中草药手册》', '罗布麻3~10g。', '将罗布麻放入瓷杯中，以沸水冲泡，密闭浸泡5~10分钟，不拘时间，代茶频饮，每日数次。', '平肝清热，利尿安神。', '平肝潜阳类，适用于肝阳上亢所致的头痛眩婦，脑胀烦躁，失眠，肢体麻木，小便不利等症。', '本方主治之证，为肝阳上亢所致，治宜平降肝阴。方中罗布麻性微寒、味甘苦，专人肝、肾两经，气味俱薄，味苦性降。既能清肝热，泄肝火，育肾阴，潜肝阳，有降而不伤正、泻而不伤阴之特点；又能清湿热，消壅滞，行气化，利小便，有清热祛湿、利尿消肿之功用。《中国药植物图鉴》载“罗布麻嫩叶蒸炒揉制后代茶，有清凉去火，防治头晕和强心的功用。”本品对于肝阳上亢，肝火上炎之头痛，头胀，眩晕，心悸，失眠等症有良好的疗效。', '本方作用缓和，服用时间愈久，疗效愈高，超过半年者，其效尤显著。但脾胃虚寒者，不宜长期服用。罗布麻以泡服为宜，不宜煎煮，以免降低疗效。', 1, 'null', '平肝潜阳类', '饮料类', '泡', '/static/images/medicinaldiet/罗布麻茶_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (140, '菊花绿茶饮', '《药膳食谱集锦》', '菊花3g，槐花3g，绿茶3g。', '将以上三者放入瓷杯中，用沸水冲泡，密闭浸泡5~10分钟，频频饮用，每日数次。', '平肝清热，明目止痛。', '平肝潜阳类，适用于肝阳上亢所致的头痛目胀，眩晕耳鸣，心中烦热，口苦易怒，小便短黄等症；对温病初起或疔痈火毒亦有良好作用。', '本方所治之证，为肝阳、肝火所致，治宜平肝清热。方中菊花性味辛甘微苦，入肺、肝、胃经，甘而不腻，苦而不燥，可升可降，升则宣扬疏泄而达于巅顶，清头目、止疼痛，降则收摄虚阳而归于肝肾，抑木气、潜肝阳，故具清肝火、熄内风之能，《药性本草》称其“治头目风热，风旋倒地，脑骨疼痛”，《本草正义》则指出菊花的独到之处：“凡花皆主宣扬疏泄，独菊花则摄纳下降，能平肝火，熄内风，抑木气之横逆”，为历代治疗肝阳上亢、肝火上炎之要药，故本膳用之为主。槐花味苦微寒，入肝、大肠经，其体轻气薄，性主下行，善清上泄下，以清泻肝经实火，凉血坚阴见长，为泻火凉血之佳品，《本草求真》称其“为凉血要药”；槐花与清肝熄风明目的菊花配伍，特别适宜于肝火、肝阳上逆的头晕头痛患者。绿茶性凉味甘苦，上可清头目，中能消食滯，下则利二便。方中3味皆为平肝、清肝、清利头目之佳品，合而用之，既保持茶之风味，且平肝潜阳之力亦强，又便于长期服用，确为平肝、清肝之药膳良方。', '本方味苦性偏寒，脾胃虚寒，食少腹胀，大便溏烂者慎用。', 1, 'null', '平肝潜阳类', '饮料类', '泡', '/static/images/medicinaldiet/菊花绿茶饮_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (141, '芹菜肉丝', '《中医饮食疗法》', '芹菜500g，便猪肉100g，食盐5g，酱油5g，味精5g，芝麻油30g，葱丝5g，姜丝3g，湿淀粉适量。', '将芹菜剔去叶，削去老根，洗净，切成寸许长的段，放沸水中略焯，捞出用凉水过凉，沥干备用。瘦猪肉洗净切为细丝加入少许湿淀粉、酱油、芝麻油拌匀腌制备用。炒锅置旺火上，注入芝麻油，烧热后放入葱丝、姜丝、肉丝煸炒。待肉丝炒熟，加入芹、食盐、味精，翻炒均匀，出锅即成。\r\n', '清热平肝，利湿降火，芳香健胃。', '平肝潜阳类，适用于肝阳上亢、肝火上炎所致的头晕头痛，目眩耳鸣，心悸失眠，口苦目赤，心烦欲饮，肢体麻木，痉挛抽搐，小便不利等症；亦可用于病后体弱，食欲减退，形体消瘦者。', '本方所治之证，为阳亢火盛所致，治宜清热平肝。方中芹菜有水、旱两种，旱芹香气浓烈，平肝清热作用远胜于水芹，故入药多用，又称药芹、香芹。其性凉味甘苦，入肝、胃经，功擅养阴平肝，清利头目，芳香健胃。《本草推陈》谓之“治肝阳头痛，面红目赤，头重脚轻，步行飘摇等证”，故用为主料。瘦猪肉为滋补营养之佳品，入脾、胃、肾经，《本草逢源》即有“精者补肝益血”之语，故猪肉以瘦者为佳。芹菜、瘦猪肉两者配伍，荤素结合，功用相辅，补而不腻，既能入肝清热熄风治证之标，又能滋阴润燥养血治证之本。而且气香味美，清淡不浓，既是营养丰富的可口食物，又有平肝健胃的药用价值，是肝阳上亢、肝火上炎患者的合适膳食。', '芹菜性凉，脾胃虚寒，大便溏薄者则不宜常食。', 1, 'null', '平肝潜阳类', '菜肴类', '炒', '/static/images/medicinaldiet/芹菜肉丝_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (142, '芹菜红枣汤', '《家庭食疗手册》', '芹莱200~500g，红枣60~120g。', '将芹菜全株洗净(不去根叶)，切成寸许长的段，与洗净的红枣一同放入锅中，加水适量煮汤，分次饮用。', '平肝清肝，养血宁心。', '平肝潜阳类，适用于肝阳上亢，心血不足所致的头痛头晕，失眠烦躁，惊悸怔仲，食少等症。', '本方所治之证，为阳亢有余，心血不足所致；治宜平肝阳之有余，补心血之不足。芹菜药用始自《神农本草经》，因其性味甘苦而凉，气浓芳香，后世多用以平肝热、清头目、利小便，是肝阳头痛患者理想的保健食品，故本方用之为主料。红枣功善补脾益气，养血安神，《素问》即称“枣为脾之果，为脾经血分药也。”红枣与芹菜配伍，温凉相配，甘苦相合，性味平和，对肝阳上亢头痛头晕而兼气血不足，心神不宁者，最为适宜。不仅能抑上亢之肝阳，清利头目；而且能健脾补心生血，宁心安神；同时增强和中健胃的效果，缓和芹菜的凉性，以免损伤脾胃。两者相配，既可治病，亦可强身，不仅为治疗阳亢血虚的有效佳配，更具有健身益寿的作用。', '暂无', 1, 'null', '平肝潜阳类', '菜肴类', '煮', '/static/images/medicinaldiet/芹菜红枣汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (143, '浮小麦饮', '《卫生宝鉴》', '浮小麦15~30g，红枣10g。', '将浮小麦、红枣洗净放入砂锅内，加水适量，煎汤频饮。亦可将浮小麦炒香，研为细末，每次2~3g，枣汤或米饮送服，每日2~3次。', '固表止汗，养血安神。', '固表止汗类，适用于卫气不足，肌表不固，或心阴亏损，心液外泄所致的自汗、盗汗之症有良好的疗效。', '本方主治证，为卫气不足，心阴亏损所致，治宜益气敛阴止汗。方中浮小麦味甘性凉，主入心经，气味俱薄，轻浮善敛，益心气，敛心液，善敛虚汗。气虚自汗者，用之可益气固表，卫气充肌表固密，自汗可止；阴虚盗汗者，用之能除热敛阴，心液内守，盗汗自除。故凡属虚汗之证，不论气虚自汗、阴虚盗汗均甚相宜，为本膳主药。与补脾益气、养血安神之红枣相伍，更增浮小麦益气固表之效，而且能补脾生血助已耗之阴，对虚汗证达到标本兼治的目的。本方清甜可口，适于长期饮用，对于气虚、阴虚、或气阴两虚所致的一切虚汗证，鲜有不效者。', '本方益气滋阴，善敛虚汗，但作用较为缓和，故虚脱重证不宜使用，否则病重药轻，无济于事。', 1, 'null', '固涩类', '饮料类', '煎', '/static/images/medicinaldiet/浮小麦饮_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (144, '麻鸡敛汗汤', '《太平圣惠方》', '麻黄根30g，牡蛎30g，肉苁蓉30g，母鸡1只(约重1000g)，食盐、味精各适量。', '先将鸡宰杀后去毛、内脏、头、足，洗净与麻黄根同放入砂锅中，加水适量，文火煮至鸡烂后，去鸡骨及药渣，加入冼净后的肉苁蓉、牡蛎再煮至熟，入食盐、味精调味即成。每周2~3次，食肉喝汤，早晚佐餐服食。', '补气固表，敛阴止汗。', '固表止汗类，适用于气阴不足，卫阳不固所致的自汗、盗汗，或病后动辄汗出不止，且易复感及畏风、短气乏力者。', '本方主治之证，为阳虚气弱，卫表不固所致，治宜补虚敛汗。方中麻黄根味涩性平，善收敛浮越之阳，还归于里，为固表止汗之要药，无论自汗、盗汗皆宜，《本草纲目》亦言：“麻黄发汗之气，驶不能御，而根节止汗，效如影响，物理之妙，不可测度如此”，故用之为本方之主药。牡蛎味咸性寒，质重沉降，平肝益阴，收敛固涩，与麻黄根相伍，涩腠理、敛毛孔、止汗出之功效大大增强。肉苁蓉甘咸温润，为滋肾壮阳、补精益血之要药。《神农本草经》谓“主五劳七伤，补养五脏，强阴，益精气。”母鸡为众所周知的滋补营养食品其性味甘平，功擅温中益气、补精添髓，与麻黄根、牡蛎相伍，既能固表止汗治其标，又可益气养阴固其本，收中寓补，补中有收，为气阴不足，自汗盗汗之良方佳膳。', '暂无', 1, 'null', '固涩类', '菜肴类', '煮', '/static/images/medicinaldiet/麻鸡敛汗汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (145, '生脉饮', '《备急千金要方》', '人参10g，麦冬15g，五味子10g。', '将3药洗净，人参切成小块，放入砂锅中，加水适量，文火煎煮约1小时后取汁，不拘时温服。', '大补元气，益气生津，敛阴止汗。', '固表止汗类，适用于热病或大病后，口渴多汗，体倦气短，心悸，脉虚数或结代，以及久咳伤肺，干咳无病，动则汗出，口呼舌红，气促声怯，脉虚者。', '本方所治之证，为气阴两虚所致，治宜益气养阴、敛汁腹脉。方中人参不仅能大补元气，而且具有补益脾肺、生津止渴、宁神益智之功，是一味强身健体、补虚扶正、抗老防衰的要药。麦冬体润而滋，具清热养心、滋阴润肺之功，为退热养心、益气补阴之良品，与人参同用则益气敛阴固脱之功愈显。“五味子，敛气生津之药也”(《本草汇言》)，其味酸性温质润，补中寓涩，功擅敛肺补肾、益气固表、止汗生津、涩精止泻，是一味滋补、收涩作用均佳的良药。本方3药合用，一补、一清、一敛，使气复津回，汗止而阴存，正如《医方集解》所言：“人参甘温，大补肺气为君；麦冬止汗，润肺滋水清心泻热为臣；五味酸温敛肺，生津收耗散之气为佐。盖心主脉，肺朝百脉。补肺清心，则气充而脉复，故曰生脉也。”此饮是热伤气阴患者的可口饮料。', '本方对热伤气阴汗出不止之症，效果颇佳，若属热邪伤阴之证，可以西洋参易人参，但对暑病热炽，气阴未伤者，以及表邪未解而咳者，禁用本方，误用有“闭门留寇”之患。', 1, 'null', '固涩类', '饮料类', '煎', '/static/images/common/暂无图片.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (146, '乌梅粥', '《圣济总录》', '乌梅10~15g，粳米60g，冰糖适量。', '先将乌梅洗净，逐个拍破，入锅煎取浓汁去渣，再入粳米煮粥，粥熟后加冰糖少许，稍煮即可。趁温热空腹服之，早晚各1次。', '涩肠止泄，收敛止血，敛肺止咳，生津止渴。', '固肠止泻类，适用于脾虚久泻久痢、肺虚久咳不止、消渴或暑热汗出、口渴多饮等。', '本方所治之证，为脾虚固摄无权所致，治宜涩肠止泻为首务。方中乌梅为主药，味酸涩偏温，其性善敛，“入肺则收，入肠则涩(《本草求真》)，具有敛肺生津、涩肠止痢、止血等多种功效。《本草经疏》谓“乌梅味酸，能敛浮热，能吸气归元，故主下气，除烦热烦满及安心也。下痢者，大肠虚脱也；好唾口干者，虚火上炎，津液不足也。”粳米甘平，“补脾，益五脏，壮气力，止泄痢”(《食鉴本草》)。冰糖平和，最为滋补，与乌梅同用，乃涩而兼补，不仅可以增强乌梅敛肺、涩肠、止血等作用，而且具有“酸甘化阴”，生津止渴之妙。合而用之，能敛久咳而补脾益肺，止泄痢而开胃消滞，治消渴而生津止渴，疗血证而收敛止血，而且制作简单，酸甜可口，效高价廉，为久咳、久泻、久痢等证极便宜、有效的膳方之一。《圣济总录》以乌梅粥治“肠风下血”，《粥谱》用治“久咳不止”。', '本方以慢性久病之咳嗽、消渴、泄痢、便血等为宜，凡外感咳嗽、泄痢初起及内有实邪者均不宜食用。', 1, 'null', '固涩类', '粥食类', '煮', '/static/images/medicinaldiet/乌梅粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (147, '八珍糕', '《外科正宗》', '人参15g，山药180g，芡实180g，茯苓180g，莲子肉180g，糯米1000g，粳米1000g，白糖500g，蜂蜜200g。', '将人参等各药分研为末，糯米、粳米如常法磨制为粉，各粉放入盆内，与蜂蜜、白糖相合均匀，入水适量煨化，同粉料相拌和匀，摊铺蒸笼内压紧蒸糕，糕熟切块，火上烘干，放入瓷器收贮。每日早晚空腹食30g。', '补中益气，收涩止泻，安神益智。', '固肠止泻类，适用于病后及年老、小儿体虚脾胃虚弱，神疲体倦，饮食无味，便溏腹泻者。', '本方所治之证，为脾胃虚弱，不能固摄所致，治宜补中涩肠止泻。方中人参味甘微温，补后天，益五脏，资化源，生气血，固真元，为大补元气之要药。山药甘平和缓，为补脾养胃、益肺固肾、强身健体之佳品。芡实味甘平而涩，功善健脾固肾，渗淡除湿，补而不燥，利不伤阴，其“功与山药相似，然山药之补，本有过于失实，而芡实之涩，更有胜于山药”(《本草求真》)，与山药合用，则补中有涩，相辅相成。茯苓味甘而淡，功能利水渗湿，补中安神，与芡实、山药相伍，既能杜绝生湿之源，又能祛已成之湿。莲子肉味甘善补，涩敛精气，“主补中养神，益气力，除百疾”(《神农本草经》)，与上药合用具养心益肾、补脾涩肠之功。再与健脾和胃之糯米、粳米相合为糕，全方标本同治，补中有行，行中有止，温而不燥热，滋补而不呆滞，除湿而不伤于燥，具相得益彰之妙。作为糕点，亦食亦药，香甜可口，不仅是补肾固精、健脾除温、涩肠止泻之药膳，更是强身健体、延年益寿之佳品，故原方后云：“服至百日，轻身耐老，壮助元阳，培养脾胃，妙难尽述”。本方配伍得当，作用全面，益气补虚，健脾止泻，性味平和，香甜可口，特别适合小儿、老人及素体虚弱者，坚持食用，还可收到强身健体的功效。\r\n', '暂无', 1, 'null', '固涩类', '其它', '蒸', '/static/images/medicinaldiet/八珍糕_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (148, '薯蓣鸡子黄粥', '《医学衷中参西录》', '薯蓣(山药)50g，熟鸡蛋黄2枚，食盐少许。', '先将薯蓣捣碎研末，放入盛有凉升水的大碗内调成薯蓣浆。把薯蓣浆倒入小锅内，用文火一边煮，一边不断的用筷子搅拌，煮熟后，再将熟鸡子黄捏碎，调入其中，稍煮1、2沸，加食盐少许调味即成。1日内分3次空腹食用。', '补益脾胃，固肠止泄，养血安神。', '固肠止泻类，适用于脾虚日久，食欲不振，肠滑不固，久泻不止者。', '本方所治之证，为脾虚肠滑不而所致，治宜健脾固肠止泻。方中薯蓣在《神农本草经》中被列为上品，《本草正》谓其“能健脾补虚，滋精固肾，治诸虚百损，疗五劳七伤”。鸡子黄珠甘性平，入心肾经，长于补益气血、安养五脏、健脾止泻。原书用“薯蓣鸡子黄粥，治泄泻很久，而肠滑不固者”，《本草纲目》谓“薯蓣粥，补肾精，固肠胃。”山药与鸡子黄配伍，药力平缓，不温不燥，既有补养作用，又具治疗功效。不仅增强了补气血、安五脏、止泻痢的作用，而且营养丰富，易于消化，是脾虚久泻之人及体虚患者的良好调补之品，可以久服。', '本方质润而收涩，凡湿盛、胸腹满闷者，不宜食用。血胆固醇水平高者，应慎用。', 1, 'null', '固涩类', '粥食类', '煮', '/static/images/medicinaldiet/薯蓣鸡子黄粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (149, '金樱子粥', '《饮食辨录》', '金樱子30g，粳米50g，食盐少许。', '金樱子洗净，放入锅内，加清水适量，用武火烧沸后，转用文火煮10分钟，滤去渣，药汁与粳米同煮为粥，再加食盐少许拌匀调味即成。每日1次，晚上睡前湿服。', '收涩固精，止遗固泄。', '涩精止遗类，适用于脾肾不足，下元不固所致的神疲乏力，腰膝酸软，滑精遗精，尿频遗尿，女子带下、阴挺，以及久泻脱肛等。', '本方所治之证，为肾虚失藏，下元不固所致，治宜收敛固涩。方中金樱子性平味酸涩，特别善入肾、脾、膀胱、大肠经而收敛虚脱之气，以固涩见长，自南北朝陶弘景谓其“止遗泄”以来，被历代医药学家视为收涩良药，《蜀本草》用“治脾泄下痢，止小便利，涩精气“；《滇南本草》用“治日久下痢，血崩带下，涩精遗泄”；《本草正》用以“止吐血，衄血，收虚汗，敛虚火。”临床用治子宫脱垂，与补中益气的梗米相合煮粥，脾胃之气壮，则收涩之力愈强，于滑脱遗泄诸症有良效。但金樱子以收涩为主，滋补力不强，煮粥时适当加入芡实、山药之类，疗效将更为理想。', '本方收涩作用显著，非属滋补之品，不可无故服之。凡实证及兼外感者，不宜服食。', 1, 'null', '固涩类', '粥食类', '煮', '/static/images/medicinaldiet/金樱子粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (150, '金樱子炖猪小肚', '《泉州本草》', '金樱子30g，猪小肚1个，食盐、味精各适量。', '先将猪小肚去净肥脂，切开，用盐、生粉拌擦，用水冲洗干净，放入锅内用开水煮15分钟，取出在冷水中冲洗。金樱子去净外刺和内瓤，一同放入砂锅内，加清水适量，武火煮沸后，文火炖3小时，再加食盐、味精调味即成。', '缩尿涩肠，固精止带，益肾固脱。', '涩精止遗类，适用于肾气不足所致腰膝酸软，小便频数，遗尿，遗精，滑精，带下等证。', '本方所治之证，为肾虚不固所致，治宜益肾固精。方中金樱子味酸而涩，功专固敛，善敛庞散之气，固滑脱之关，能止遗滑、缩小便、治遗溺、周精关、敛肾气，为固涩药之首选，故为本方主药。猪小肚，为猪膀胱的俗称，其性味甘咸而平，专入膀胱经，功能固涩补肾、温固膀胱，善治小儿遗尿。两者相伍，以金樱子固肾收涩之功，得膀胱补肾固涩之力，直入前阴膀胱，为精气遗泄、小便失控诸病证的良膳。', '本方具有补肾固涩之功用，感冒期间，以及发热的病人不宜食用。另外，食用时要特别注意将猪小肚漂洗干净，否则会有躁味。', 1, 'null', '固涩类', '菜肴类', '炖', '/static/images/medicinaldiet/金樱子炖猪小肚_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (151, '芡实煮老鸭', '《大众药膳》', '芡实200g，老鸭1只(约1000g)，葱、姜、食盐、黄酒、味精等各适量。', '将鸭宰杀后，除去毛及内脏，洗净鸭腹内的血水。芡实洗净，放入鸭腹。将鸭子放入砂锅内，加葱、姜、食盐、黄酒、清水适量，用武火烧沸后，转用文火煮2，小时，至鸭酥烂，再加味精搅匀即成。每周1~2次，佐餐食用。', '补益脾胃，除湿止泻，固肾涩精。', '涩精止遗类，适用于脾肾亏虚，下元不固而致的腰膝酸软，脘闷纳少，肠鸣便溏，久泻久痢以及遗精，带下等。', '本方所治之证，为脾肾亏虚不固所致，治宜补脾益肾、敛精固涩。方中芡实为健脾除湿、涩肠止泻之佳品，固肾涩精、缩尿止带之要药，正如《本草求真》所言：“惟其味甘补脾，故能利湿，而泄泻腹痛可治；惟其味涩固肾，故能闭气，而使遗精、小便不禁皆愈。”若多用久服，还能“补中，益精气，强志，令耳目聪明，久服轻身不饥，耐老神仙”(《神农本草经》)，可见，芡实是传统的药食两用益肾强身之品，故为本方主药。老鸭性味甘咸微寒，功能滋阴养胃、益肾行水、健脾补虚，为滋阴而不滞腻的滋补食品。《食物本草备考》称其“补虚乏，除客热，和脏腑，利水道”。两料配伍，更少佐葱、姜等，一则益胃通阳，散寒除湿，二则调味增香，滋补可口。全方既能益牌气祛湿邪以止泻痢，又能益精补肾而固下元，而且补中寓敛，涩而不滞，药简效宏，堪称药膳之良方。', '本方为补涩之剂，凡湿热为患之遗精白浊、尿频带下、泻痢诸证，则不宜食用。', 1, 'null', '固涩类', '菜肴类', '煮', '/static/images/medicinaldiet/芡实煮老鸭_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (152, '山茱萸粥', '《粥谱》', '山茱萸15g，粳米60g，白糖适量。', '将山茱萸洗净去核，与粳米同入砂锅煮粥，待粥将成时，加入白糖稍煮即成。1日分2次食用。3~5天为一疗程，病愈即可停服。', '补益肝肾，涩精止遗，敛汗固脱。', '涩精止遗类，适用于肝肾不足所敛的腰膝酸软、头晕耳鸣、阳痿遗精、遗尿尿频以及冲任损伤所致的崩漏、月经过多、虚汗不止、带下量多等证。', '本方所治之证，为肝肾不固所致，治宜补益肝肾、涩精止遗。方中山茱萸酸涩，专人肝肾，“大能收敛元气，振作精神，固涩滑脱”(《医学衷中参西录》)，为补益肝肾、收敛固涩最常用的药物之一。梗米和中健脾，与茱英相伍，可使后天得补，先天生化有源。再人白糖调配，一则酸甘化阴，更增山茱萸滋补肝肾之效；二则酸甜可口，宜于服用。故《粥谱》谓：“山英肉粥，温肝，益气，秘精。”肝肾得补，闭藏有司，精血秘而不泄，是以遗精、尿频、崩带可止；精血上奉，骨骼得养，是以眩晕、耳鸣、腰酸可除，确实是一首药膳良方。', '本方以补涩见长，邪气未尽者忌用。此外，因山茱萸果核可以导致遗精，故煮粥时宜先将果核去除干净。', 1, 'null', '固涩类', '粥食类', '煮', '/static/images/medicinaldiet/山茱萸粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (153, '菟丝子粥', '《粥谱》', '菟丝子30g，粳米60g，白糖适量。', '将菟丝子洗净后捣碎，加水煎煮去渣取汁，再用药汁煮粥，待粥将成时，加入白糖稍煮即成。1日分2次食用。', '补肾益精，养肝明目，益脾止泄，安胎止带。', '固崩止带类，适用于肝肾亏虚所致的腰膝酸软，头晕目眩，视物不清，目昏目暗，耳鸣耳聋；妇人带下过多，胎动不安，滑胎不孕以及男子阳痿遗精，早泄不育，膏淋白浊，尿频遗尿，久泻不止等。', '本方所治之证，为肝肾亏虚所致，治宜补肾益肝、固精止带。方中菟丝子性平味甘微辛，入肝肾两经，功擅补肾精、益肝血、健脾气、平补阴阳，是一味阴中有阳，守而能走的平补良药。因此在临床治疗中，无论属肝肾阴虚抑或阳虚之证，均可用之，历来被视为补肝肾之要药。与粳米相合作粥，能增强调补脾胃及充养先天之效，不仅对于肝肾不足，脾胃虚弱所致的上述诸症起到治疗作用，坚持服用对于中老年人还具有强身健体、延年益寿的效果。', '本方作用比较和缓，必须坚持服用，方可达到预期的目的。以7~10天为1疗程，然后每隔3~5天再续服。', 1, 'null', '固涩类', '粥食类', '煮', '/static/images/medicinaldiet/菟丝子粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (154, '白果乌鸡汤', '《经验方》', '白果15g，莲子肉15g，薏苡仁15g，白扁豆15g，怀山药15g，胡椒末3g，乌骨鸡1只(约1000g)，食盐、绍酒各适量。', '先将乌骨鸡宰杀，去毛及内脏洗净后，剁去鸡爪不用。然后将水发各药；一并装入鸡腹内，用麻线缝合剖口，将鸡置于砂锅内，加入食盐、绍酒、胡椒末及适量清水，武火烧沸后，转用文火炖(2小时)熟烂即成。每周1~2次，空腹食。', '补益脾肾，固精止遗，除湿止带，涩肠止泻，止咳平喘。', '固崩止带类，适用于脾肾两虚或脾虚有湿所致的白带清稀量多，遗精滑泄，腰膝酸软，小便白浊，尿频遗尿，纳少便溏，倦怠乏力等。', '本方所治之证，为脾肾两虚，不能固摄所致的带下，或遗精滑泄，治宜补益脾肾、固精止带。方中白果性平味甘苦涩，有小毒，入肺、肾两经，《本草纲目》谓“其气薄味厚，性涩而收，益肺气，定喘嗽，缩小便”，《本草便读》称其“上敛肺金除咳，下行湿浊化痰涎。”可见白果善主收涩，为平痰喘、止带浊之要药，对脾肾两虚，不能固摄之证，白果独有专功。莲子味甘善补，味涩善固，《玉楸药解》谓“莲子甘平，甚益脾胃，而固涩之性，最官滑泄之家，遗精便溏，极有良效。”生用养胃清心，熟食则固肾厚肠，与白果同用则大增其益肾气、固精关、敛肺金、降痰涎之效。薏苡仁甘淡渗利，为脾虚湿困所致食少泄泻之要药。白扁豆甘香气平，功擅疏脾开胃、化清降浊，又可渗混止泻。两药与白果、莲子协同配合，使补脾渗混、收敛固混两相促进。“山药，能健脾补虚，滋精固肾，治诸虚百损，疗五劳之伤”(《本草正》)，为健脾益肺、填精固肾之佳品，与上述4药配伍则益脾气以生津液，补肾涩精以强阴，共奏补中益气、滋肺补肾、固涩下元之功。对于脾肾亏虚或脾虚有湿之遗精、白浊、遗尿、带下、便溏，以及肺肾两虚之哮喘痰多者，配伍已堪称周密，更加药食两用之滋补佳品乌骨鸡健脾益气，补精添髓以补虚劳羸弱，便之温补而不骤，固涩而不燥，用治“遗精白浊及赤白带下”、“脾虚滑泻”(《本草纲目》)等卓有成效，可起到治疗和预防的双重作用。', '本方有良好的调补作用，以补虚固涩为著，凡属带下色黄而臭，湿热带下者；或外邪未清，实邪内停者，均不宜服用，', 1, 'null', '固涩类', '菜肴类', '炖', '/static/images/medicinaldiet/白果乌鸡汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (155, '山药芡实粥', '《寿世保元》', '山药50g，芡实50g，粳米50g，香油、食盐各适量。', '山药去皮切块，芡实打碎。两者同入锅中，加水适量煮粥，待粥熟后加香油、食盐调味即成。每晚温热服食。', '补益脾肾，除湿止带，固精止遗。', '固崩止带类，适用于脾肾两虚或脾虚有湿所致的女子带下清稀，男子遗精滑泄，以及健忘失眠，纳少便溏，倦息乏力，形体羸瘦等。', '本方所治之证，为脾肾虚弱所致，治宜健脾固肾、收涩止带。方中山药甘平质润，健脾益肾，涩精止遗，为药食两用之佳品，《神农本草经》谓之“补中益气力，长肌肉，久服耳目聪明。”芡实为涩精、止带、缩尿之要药，“治小便不利，遗精，白浊，带下”(《本草纲目》)。山药与之相伍，再与健脾益气、强身健体的粳米合而为粥，齐奏健脾固肾、收敛固深之功，是以下元闭藏有司，精气秘而不泄，带下、遗精可止。而且味美可口，服食方便，宜于久服。', '本方补涩力较强，凡湿热为患所致之带下尿频、遗精白浊诸症，不宜服用。', 1, 'null', '固涩类', '粥食类', '煮', '/static/images/medicinaldiet/山药芡实粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (156, '黄芪蒸鸡', '《随园食单》', '嫩母鸡1只(1000g左右)，黄芪30g，精盐1.5g，绍酒15g，葱、生姜各10g，清汤500g，胡椒粉2g。', '母鸡宰杀后去毛，剖开去内脏，剁去爪，洗净。先入沸水锅内焯至鸡皮，伸展，再捞出用清水冲洗，沥干水待用。黄芪用清水冲洗干净，趁湿润斜切成2mm厚的长片，塞入鸡腹内。葱洗净后切成段，生姜洗净去皮，切成片。把鸡放入砂锅内，加入葱、姜、绍酒、清汤、精盐，用湿棉纸封口。上蒸笼用武火蒸，水沸后蒸约1.5~ 2小时，至鸡肉熟烂。出笼后去黄芪，再加入胡椒粉调味，空腹食之。', '益气升阳，养血补虚。', '补气类，适用于脾虚食少，倦息乏力，气虚自汗，易患感冒，血虚眩晕，肢体麻木及中气下陷所引起的久泻、脱肛、子宫下垂等。', '本方所治之证，为脾胃气虚，清阳下陷所致。脾胃气虚，受纳与运化不及，故见食少倦怠，气虚自汗，易患感冒；生化之源不足，故见血虚眩晕、肢体麻木；清阳不升，则见久泻、脱肛、子宫下垂等。治宜益气升阳，养血补虚。方中黄芪性味甘温，功能补气升阳，益卫固表，利水消肿，既善于补气，又长于升阳，无论是牌虚食少、倦息乏力，还是中气下陷之脱肛、子宫下垂等内脏下垂诸症，黄芪皆为必用之品。其益卫固表力佳，故又常用于虚人感冒等，《本草求真》谓其：“能入肺补气，入表实卫，为补气诸药之最。”鸡肉为填髓补精之佳品，以营养丰富，滋味鲜美著称。两者配伍，黄芪得鸡肉之助，则气化于精血，补气之力更强；鸡肉得黄芪以健脾，则运化力旺，化血生精之功更著，具有相得益彰之妙。本药膳制作简便，疗效确实，为多种虚弱性疾病的佳膳。对于病后体虚、营养不良、贫血、肾炎水肿、内脏下垂等患者，经常食用本膳，具有养生保健、增强体质、预防感冒等作用。', '表虚邪盛，气滞湿阻，食积停滞，以及阴虚阳亢者，均不宜用。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/黄芪蒸鸡_0.png', 13, NULL);
INSERT INTO `medicinal_diet_table` VALUES (157, '四君蒸鸭', '《百病饮食自疗》', '嫩鸭1只，党参30g，白术15g，茯苓20g，调料适量。', '活鸭宰杀，洗净，去除嘴、足，入沸水中滚一遍捞起，把鸭翅盘向背部；党参、白术、茯苓切片，装入双层纱布袋内，放入鸭腹；将鸭子置蒸碗内，加入姜、葱、绍酒、鲜汤各适量，用湿绵纸封住碗口，上屉武火蒸约3小时，去纸并取出鸭腹内药包、葱、姜，加精盐、味精，饮汤食肉。', '益气健脾。', '补气类，适用于脾胃气虚，食少便溏，面色萎黄，语声低微，四肢无力，舌质淡，脉细弱等。', '本方所治之证，为脾胃气虚，运化无力，生化之源不足所致，治宜益气健脾。方中党参性味甘平，功能补中益气，生津养血，为常用的益气健脾药，如《本草正义》所说：“力能补脾养胃，润肺生津，健运中气，本与人参不甚相远，尤其可贵者，则健脾运而不燥，滋胃阴而不湿。”现代研究证明，本品具有调节胃肠运动、抗溃疡、增强免疫功能及机体抗病能力等多种作用。白术味甘苦而性湿，功能健脾燥湿，对脾虚气弱，运化无力所致的食少腹胀、大便溏泄、倦怠乏力等症，既能补脾益气，又能燥湿健脾，历代医家将其视为补脾脏第一要药。《本草汇言》记载：“白术，乃扶植脾胃、散湿除痹、消食除痞之要药也。脾虚不健，术能补之；胃虚不纳，术能助之。”茯苓性味甘、淡，平，既能利水渗湿，又能健脾止污，能补能泻，常与党参、白术等补脾药配合同用，使健脾渗湿之功更为增强，以治脾虚体倦、食少便溏诸症。鸭子功能健脾补虚，滋阴养胃，利水消肿。中医认为鸭是水禽类，其性寒凉，适用于内热较重的人食用。特别是对于身体赢瘦，阴虚内热，或低热不退，大便干燥及水肿等，尤为适宜。民间历来视其为滋补妙品。诸料合用，药借食味，食助药性，能补能利，补虚而不滋膩，滋阴而不恋邪。实为年老体弱、脾胃气虚之人的滋补良方。', '脾胃虚寒所致的食少便溏、脘腹疼痛不宜用。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/四君蒸鸭_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (158, '乌鸡豆蔻', '《本草纲目》', '乌骨母鸡1只(1kg以上)，草豆蔻30g，草果2枚。', '鸟骨母鸡，宰杀后，去杂毛及肠杂，洗净。将豆蔻、草果烧存性，放人鸡腹内扎定，煮熟，空腹食之。', '益气补虚，健脾止泻。', '补气类，适用于体虚气弱，寒湿阻滞脾胃，脘腹胀满冷痛，大便滑泻等。', '本方所治之证，为脾虚气弱，寒湿滞于脾胃，脾失健运所致，宜补虚益气、燥湿温中、健脾止泻。方中乌骨鸡又有“药鸡”、“竹丝鸡”之称，自古以来，民间一直将其视为滋补佳品，尤其为妇科所常用。本品性味甘平，具有养阴退热、补虚劳赢弱的作用，对虚劳骨蒸贏瘦、消渴、脾虚滑泻，及妇人崩中带下虚损诸病，皆可随证配伍应用。《本草经疏》言其：“补血益阴，则虚劳赢弱可除；阴回热去，则津液自生，渴自止矣。阴平阳秘，表里固密，邪恶之气不得人，心腹和而痛自止。益阴，则冲、任、带三脉俱旺，故能除崩中带下一切虚损诸疫也。”草豆蔻、草果性昧辛温，皆属芳香化湿药，均能燥湿温中，以治寒湿阻滞脾胃所致脘腹，胀满疼痛，呕吐泄泻之症。朱丹溪云：“草豆蔻，性温，能散滞气，消膈上痰。若明知身受寒邪，日食寒物，方可温散，用之如鼓应桴。”方中将草豆寇、草果烧存性用者，是减其辛热，以免浮散，而专力于温行脾胃之寒湿郁滞。本方既可治体虚气弱，寒湿郁滞脾胃之脘腹冷痛、大便滑泻，又可治呕恶不欲食，属于脾胃虚弱，寒湿郁滞所致之症。', '伤食消化不良及胃肠湿热而致的泄泻，不宜使用本方。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/乌鸡豆蔻_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (159, '黄精烧鸡', '《家庭药膳》', '黄精50g，党参25g，怀山药25g，鸡1只(约2000g)，生姜、葱各15g，胡椒粉3g，料酒50g，味精2g，化猪油70g，肉汤1500ml。', '将鸡宰杀后，去杂毛和内脏，剁去脚爪，入沸水锅中氽透，捞出砍成块；将党参洗净切5cm长段，山药洗净切片，生姜洗净拍破，葱洗净切长段。锅置火上，注入猪油，下姜、葱煸出香味，放入鸡块、黄精、党参、怀山药、胡椒粉，注入肉汤、料酒，用大火烧斤，打去浮沫，改用小火慢烧3小时，待鸡肉熟时，拣去姜、葱不用，收汁后入味精调味即成。空腹食之。', '补脾胃，安五脏。', '补气类，适用于脾胃虚弱，便溏，消瘦，纳少，带下等。', '本方所治之证，为脾胃虚弱，健运失常所致的便溏、消瘦、纳少等症，治宜益气补脾。方中黄精味甘性平，是一味补脾气、益脾阴，而又兼能涧肺燥、益肾精的药物，因补性缓和，滋味甘甜，自古以来，人们一直将其作为滋补佳品，并认为能够延缓衰老。《别录》称其：“久服轻身延年不饥。”《本草纲目》谓其：“补诸......填精髓。”现代研究证明黄精有改善冠脉循环、降血脂、降血糖的功能，有利于心血管疾病、糖尿病的防治。临床观察，用于病后体虚或慢性病消耗性营养不良有较好疗效。山药功效与黄精相近，亦有补气益阴的作用，但兼具涩性，微有收敛作用，山药在历代本草中皆被视为补虚传品。临床实践证明其有增加食欲、增强体质等多种作用。党参功能补中气，善冶脾胃气虚的食少便溏、体倦乏力等症。鸡肉性味甘温，具有温中补脾、益气养血、补肾益精等作用，与黄精、山药、党参配合蒸服，益气补虚之力更强，亦为年老体弱或病后体虚、形体消瘦、须发早白兼脾胃气虚之人的美味住肴。', '本品性质滋腻，故脾虚湿困，痰湿咳嗽及舌苔厚腻者不宜服用。', 1, 'null', '补益类', '菜肴类', '烧', '/static/images/medicinaldiet/黄精烧鸡_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (160, '黄芪猴头汤', '《中国药膳学》', '猴头菌150g，黄芪30g，嫩母鸡250g，生姜15g，葱白20g，食盐5g，胡椒面3g，绍酒10g，小白菜心100g，清汤750g。', '猴头菊经冲洗后放入盆内，用温水泡发，约30分钟后捞出，前去底部的木质部分，再洗净切成约2mm厚的大片。发菌用的水用纱布过滤后留存待用。嫩母鸡宰杀后洗净，切成条块。黄芪用热湿毛巾揩抹净，切成马耳形薄片。葱白切为细节，生姜切为丝，白菜心用清水洗净待用。锅烧热下入猪油，投进黄芪、生姜、葱白、鸡块，共煸炒后放入食盐、绍酒，及发猴头菌的水、少量清汤，用武火烧沸后，改用文火再煮约1小时，然后下猴头菌再煮半小时，撒入胡椒面和匀。先捞出鸡块放置碗底，再捞出猴头菌盖在鸡肉上；汤中下入小白菜心，略煮片刻，将菜心舀出置碗内，即成。', '益气健脾，补益虚损。', '补气类，适用于脾胃虚弱，食少乏力，气虚自汗，易患感冒者；或由于气血两虚所致眩晕心悸、健忘、面色无华等。', '本方所治之证，为脾胃虚弱或气血两虚所致，治宜益气健脾、补益虚损。方中黄芪性味甘温，功善补气升阳，固表止汗，是最常用的补气药之一。《日华子本草本草》称其能：“助气壮筋骨，长肉，补血”，《本草求真》谓其：“补气诸药之最。”现代研究证明，本品能增强和调节机体免疫功能，提高机体的抗病能力，并有抗衰老、抗疲劳等作用。猴头菌有很高的营养价值，其人口清香，风味独特，被誉为“山珍之珍”，味甘性平，有利五脏、助消化、补虚损的功效，可用于治疗消化不良、胃溃疡、十二指肠溃疡、慢性胃炎、神经衰弱等症。鸡肉则能温中益气，填精补髓，为滋补强壮的常用食物。黄芪补气健脾，得猴头菌之和胃健脾、鸡肉之补养气血、小白菜之通利胃肠，则荤素结合，补虚而不滋腻，祛邪而不伤正，是味美效佳的益脾良方。亦可作为病后体虚易感风寒，或年老体弱、营养不良、贫血、神经衰弱、慢性胃炎、糖尿病等的调补佳膳。', '胃热气滞而见胃脘胀痛、灼热泛酸者，不宜用本膳。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/黄芪猴头汤_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (161, '人参猪肚', '《良药佳馐》', '人参10g，甜杏仁10g，茯苓15g，红枣12g，陈皮1片，橘米100g，猪肚1具，花椒7粒，姜1块，独头蒜4个，葱1根，调料适量。', '人参洗净，置旺火上煨30分钟，切片留汤。红枣酒喷后去核；茯苓洗净，杏仁先用开水浸泡，用冷水搓去皮晾干，陈皮洗净，破两半；猪肚两面冲洗干净，刮去白膜，用开水稍稍烫一下。姜、蒜拍破，葱切段，糯米淘洗干净。把诸药与糯米、花椒、白胡椒同装纱布袋内，扎口，放入猪肚内。把猪肚放置在一个大盘内，加适量奶油、料酒、盐、姜、葱、蒜，上屉用旺火蒸2小时，至猪肚烂熟时取出。待稍凉后，取出纱布袋，解开，取出人参、杏仁、红枣，余物取出弃去不用，只剩糯米饭。把红枣放入小碗内，并将猪肚切成薄片放在红枣上，然后人参再放置在猪肚上。把盘内原汤与人参汤倒入锅内，待沸，调人味精。饮汤吃猪肚、糯米饭。每周服1~2次，长期服食效佳。', '益气健脾，滋养补虚。', '补气类，适用于脾胃虚弱，食欲不振，便溏，气短乏力，头晕眼花及浮肿诸症。', '本方所治之证，为脾胃气虚所致，治宜益气健脾、滋养补虚。方中人参味甘、微苦，性微温，有大补元气、补脾益肺等功效，为脾气不足、肺气亏虚等气虚之证的要药，《本草纲日》谓其“治男妇一切虚证。”茯苓功能利水渗湿，健脾，安神，药性平和，能补能利，尤其是对于脾虚水肿，用之有标本兼顾之效。红枣功能补中益气，养血安神，为调补脾胃之常用药。三者合用，为益气健脾的常用配伍。猪肚味甘，性温，功能补虚损，健脾胃。与人参合用，益气健脾作用进一步加强，又配以杏仁降气宽肠，陈皮、花椒、胡椒等辛香之品理气和胃，可使全方补中有行，补而不壅，实为脾胃虚弱之佳膳，也可用于大病、手术后等各种虚弱病证。', '本方适用于慢性疾病的恢复与调养，尤其对脾胃虚弱者的调补最为适宜，各种急性病发作期均不宜应用。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/人参猪肚_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (162, '山药鸡肫', '《家庭药膳》', '鸡肫250g，鲜山药100g，青豆30g，生姜、葱各10g，料酒15g，精盐2g，酱油5g，白糖3g，胡椒粉、味精各1g，湿淀粉50g，香油3g，鸡汤50g，菜油500g。', '取新鲜鸡肫洗净，切成薄片，生姜洗净，不去皮，切成姜末；葱洗净，切成葱花；鲜山药洗净，煮熟，切成片。鸡肫片放碗内，加精盐、料酒、胡椒粉拌匀上味。再用1碗放入酱油、白糖、味精、鸡汤、湿淀粉，兑勾滋汁。锅烧热，加菜油，待烧至六七成热时，下入肫片划散，再捞出用漏勺沥去油。锅内留底油约50ml，下姜末，煸香后入青豆、山药片，翻炒数下，倒入兑好的滋汁勾芡翻匀，撒上葱花，淋上香油，起锅装盘即成。', '健脾和胃，消食化积。', '补气类，适用于脾虚食少，食后腹胀，或满胀不食，呕吐泄泻，小儿疳积等。', '本方所治之证，为脾胃虚弱，消化不良所致，治宜健脾和胃、消食化积方中山药味甘性平，既能补气，又能养阴，具有补气而不滞，养阴而不腻之特点，因药性平和，故尤适用于小儿脾虚消化不良诸证。正如《本草崇原》所言：“山药气味甘平，乃补太阴脾土之药，故主治之功皆在中土。”鸡肫善消食积，具有健脾消食的作用，对于脾胃虚弱，运化失常，水谷不化，食少纳呆者有良效。本膳以消食之品鸡肫与滋补佳品山药相配伍，有相辅相成的作用，使健脾消食之力进一步加强。脾复健运，胃善消谷，于素体虚弱，病后体虚木复，小儿肯养不良等患者兼有脾胃虚弱，消化不良者均可运用。', '暂无', 1, 'null', '补益类', '菜肴类', '烧', '/static/images/medicinaldiet/山药鸡肫_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (163, '人参莲肉汤', '《经验良方》', '白人参10g，莲子15枚，冰糖30g。', '将白人参与去心莲子肉放碗内，加水适量浸泡至透，再加入冰糖，置蒸锅内隔水蒸炖1小时左右，人参可连用3次，第3次可连同人参一起吃完。早晚餐服食。', '补气益脾，养心固肾。', '补气类，适用于体虚气弱，神疲乏力，自汗脉虚；脾虚食少，大便泄泻；心悸失眠，或夜寐多梦；肾虚遗精、滑精及妇女崩漏，白带过多等。', '本方所治之证，为气虚脾弱所致。脾虚气弱，则见神疲乏力、大便泄泻；气血生化不足，心失所养，则见心神不安、健忘失眠；肾气不固，则遗精、滑精。治宜补气健脾，养心安神，益肾固精。方中人参功能大补元气，补脾益肺，安神增智，生津止渴。《药性论》云人参：“主五脏气不足，五劳七伤，虚损痿弱。”《本草经疏》载：“人参能回阳气于垂绝，却虚邪于俄顷，功魁群草，力等丸丹矣。”莲子肉性味甘、涩，平，具有补脾止泻、益肾固精和养心安神的作用，为治疗脾虚久泻，食欲不振，肾虚不固的常用药。《神农本草经》谓其“主补中，养神，益气力”，《本草纲目》称其“交心肾，厚肠胃，固精气，强筋骨，补虚损”。冰糖功能补中益气，又具有调味作用。人参、莲子肉、冰糖相配，则甘甜清香，补而不滞，尤宜子年老体虚者。', '脾虚气滞或湿阻、食积所致的胸闷腹胀、食欲不振、舌苔厚腻的病人，不宜服用；不可同时服食萝卜及茶叶；大便燥结者不宜服用。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/人参莲肉汤_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (164, '生脉饮', '《千金方》', '人参10g，麦冬15g，五味子10g。', '水煎，取汁，不拘时温服。', '益气生津，敛阴止汗。', '补气类，适用于体倦乏力，气短懒言，汗多神疲，咽干口渴，舌干红少苔，脉虚数；或久咳气弱，口渴自汗等。', '本方所治之证，为气阴两伤所致，治宜益气养阴生津。方中人参性味甘温，益气生津，为大补人身元气的第一要药。麦门冬味甘性寒，具有养阴清热、润肺生津之功。两药相配，则益气养阴之功益彰。五味子性味酸温，功能敛肺止汗、生津止渴。3药合用，一补一清一敛，共奏益气养阴、生津止渴、敛阴止汗之功，使气复津生，汗止阴存，脉得气充，则可复生，故名“生脉”。《医方集解》说：“人有将死脉绝者，服此能复生之，其功甚大。”至于久咳肺虚，气阴两伤证，取其益气养阴、润肺止咳，以求本图治，使气阴恢复，肺润津生，诸症悉除。', '外邪未解，或暑病热盛，气阴未伤者，不宜用本方。', 1, 'null', '补益类', '饮料类', '煎', '/static/images/common/暂无图片.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (165, '人参粥', '《食鉴本草》', '人参3g，粳米100g，冰糖适量。', '将粳米淘净，与人参(切片或打粉)一起放入砂锅内，加水适量，煮至粥熟，再将化好的冰糖汁加入，拌匀，即可食用。', '补元气，益脾肺，生津安神。', '补气类，适用于脾肺气虚所致的短气懒言，神疲乏力，动则气喘，易出虚汗及食欲不振，大便溏薄等；亦可用于年老体弱，不思饮食，全身无力，倦息欲睡而又久不能入寐，或津伤口渴等。', '本方所治之证为元气及脾肺之气虚弱所致。元气不足，则体弱多病；脾肺气虚则短气懒言、神疲乏力、食欲不振、大便溏薄。治宜大补元气，补益脾肺。方中入参性味甘、微苦，其性微温，既能大补元气，又有补脾益肺之效，我国现存最早的药学专著《神农本草经》载：“人参主补五脏，安精神，定魂魄，止惊悸，除邪气，明目，开心益智，久服轻身延年”。本品无论对气虚欲脱、短气神疲、脉微欲绝的重危证候，还是脾气虚弱的不思饮食、食少便溏，以及肺气虚弱的少气懒言、动则喘乏、易出虚汗，或消渴少津、心神不安等一切气虚之证，皆有良好的补气作用。粳米性味甘平，功能补中益气，健脾和胃。冰糖味甘性平，功能补中益气，和胃润肺，又能调味。人参、冰糖相配煮粥食用甘甜不腻，补气而不温燥，制作方便，长期食用，具有养生保健之功，诚为家庭食疗良方。', '本方作用平和，坚持数日，方可见效。一般以生晒参、红参最为常用。习惯认为生晒参常用于气阴两亏的病入；红参常用于阳气虚弱的病人。人参一般只适用于虚证，实证、热证而正气不虚者忌用。否则，“滥用”、“蛮补”，可形成“人参滥用综合征”，出现血压升高、失眠、兴奋、食欲减退等不良反应。', 1, 'null', '补益类', '粥食类', '煮', '/static/images/medicinaldiet/人参粥_0.png', 5, NULL);
INSERT INTO `medicinal_diet_table` VALUES (166, '银鱼粥', '《草木便方》', '银鱼干30g，糯米100g，生姜、猪油、食盐各适量。', '先将银鱼干、糯米、老生姜分别洗干净，合煮成粥，然后再加入少量猪油、食盐，趁热空腹食之。每日可服2次。', '健脾，益肺，补虚。', '补气类，适用于脾肺虚弱，贏瘦乏力，或虚劳咳嗽等。', '本方所治之证，为脾肺气虚所致。脾虚气弱则食少乏力，消瘦；肺气虚弱则虚劳咳嗽。治宜健脾益肺，补益虚损。方中银鱼味甘性平，肉质细腻，无骨刺，无腥味，经干制后的银鱼所食营养素更高，其中尤以钙的食量最高，功能补虚健脾、益肺，为补益虚损之要药。《医林纂要》谓其“补肺清金，滋阴，补虚劳。”《日用本草》云：“宽中健胃，合生姜作羹佳。”糯米甘平而质柔粘，既可养脾胃，亦能润肺。糯米与银鱼干合煮成粥，共奏补虚健脾、益肺之功，以治脾肺虚弱，虚劳咳嗽之证。加老生姜以健胃，可更好地促进消化和吸收。本膳清淡可口，营养丰富，制作简便，无论男女老少，皆可服食。', '脾虚湿盛，中满气滞者不宜服。', 1, 'null', '补益类', '粥食类', '煮', '/static/images/medicinaldiet/银鱼粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (167, '健胃益气糕', '《华夏药膳保健顾问》', '山药200g，莲子肉200g，茯苓200g，芡实200g，陈仓米粉250g，糯米粉250g，白砂糖750g。', '将上述诸药磨成细末，与米粉及白砂糖混合均匀，加入少量清水和成粉散颗粒，压入模型内，脱块成糕，上笼蒸熟，空腹酌食。', '健脾止泻。', '补气类，适用于脾胃虚弱，食少便溏，神疲倦怠及妇女脾虚带下等。', '本方所治之证，为脾胃虚弱而挟湿所致。脾虚湿困，脾失健运则见食少倦怠、便溏泄泻诸症。治宜益气健脾，渗湿止泻。方中山药性味甘平，上能养肺，中能补脾，下能益肾。既能补气，又能养阴，补气而不滞，养阴而不腻，为培补中气最和平之品，无论对脾虚泄泻，还是肺虚咳嗽等，皆有较好疗效。莲子肉性味甘、涩，平，功能补脾止泻，益肾固精，养心安神，尤为补脾止泻之佳品。茯苓性味甘平，既能健脾渗湿，治疗脾虚湿困所致的泄泻、痰饮，还可补心气，安神志，治心神失养的惊悸失眠。荧实味甘、涩，性平，既能健脾止泻，又能除湿止带，还能益肾固精。因其健脾除湿而又性涩，故对脾虚湿盛的带下疗效尤佳。白糖、陈仓米、糯米合用，功能补中益气。合而为糕，不仅健脾止泻之功较好，而且性质平和，香甜味美，老少咸宜。', '本方药性平和，少量或短暂服用，不易见效，应坚持常服，方可获良效。', 1, 'null', '补益类', '粥食类', '蒸', '/static/images/medicinaldiet/健胃益气糕_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (168, '锅焦糕', '《周益生家宝方》', '锅焦1500g，神曲(炒)125g，砂仁62g，山楂(炒)125g，莲子肉300g，粳米(炒)1500g，鸡内金(炒)30g，白糖1500g。', '将诸药研为细末，加白糖调匀，做成糕，早晚随食。', '补中，健脾，消食。', '补气类，适用于脾胃虚弱，饮食难消，脘腹胀满，使溏泄泻。适用于脾胃虚弱，饮食难消，脘腹胀满，使溏泄泻。', '本方所治之证，为脾虚少食，消化不良所致，治宜益气健脾、消食和中。方中锅焦(即锅巴)，又名黄金粉，为烧干饭时所起的焦锅巴，《本草纲目拾遗》谓其有：“补气、运脾、消食、止泄泻”之功效，可用于治疗消化不良、脾虚泄泻。粳米，性味甘平，炒至焦香后又能助脾之健运，且较一般米粉容易消化。莲肉具有补脾止泻之功，常用于脾虚所致的便溏泄泻。神曲具有消食健胃、和中止泻之功，常用于食滯脘腹胀满、便溏泄泻等症。《药品化义》称其：“平胃气，理中焦，用治脾虚难运。”山植味酸而甘，性温，善治各种食积停滞之证，尤为消油腻肉积之要药。鸡内金性味甘平，消化食积的作用较强，可用于各种食积停滯及小儿脾虚疳积证。神曲、山楂、鸡内金3药皆炒香运用，意在增强其健脾消食之力。砂仁性昧辛温，气味芳香，善于化湿行气，为醒脾和胃之良药，常用于湿阻脾胃引起的食欲不振及呕吐、泄泻等症。诸药配合，酸甜适口，消补结合，实乃老幼皆宜之良方。', '此方性质平和，补消配伍得当，但总以脾胃虚弱，健运失常，饮食积滞难于消化者服用为宜。若无饮食积滞，不宜服用。', 1, 'null', '补益类', '粥食类', '其它', '/static/images/medicinaldiet/锅焦糕_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (169, '归参炖母鸡', '《乾坤生意》', '当归身15g，党参15g，母鸡1500g，生姜、葱、料酒、食盐各适量。', '将母鸡宰杀后，去掉杂毛与内脏，洗净；再将洗净切片的当归、党参放入鸡腹内，置砂锅中，加入葱、姜、料酒等，掺入适量的清水，武火煮至沸后，改用文火炖至鸡肉熟透即成。可分餐食肉及汤。', '补血益气，健脾温中。', '补血类，适用于血虚气弱而见面色萎黄、头晕、心悸、肢体倦乏等。', '本方所治之证，为血虚气弱所致。血虚则见面色萎黄，头晕，心悸；气虚则见肢体倦乏；治宜补血益气。方中鸡肉味甘性温，功能益气养血、温中补脾、补肾益精，为滋补佳品，尤宜于妇女产后或年老体弱者。党参既善于补脾益气，又能养血生津，故常用于脾虚气弱，倦息乏力，及血虑萎黄，头晕，心悸等。现代研究证明，党参能增加红细胞和血红蛋白，增强免疫功能，增强机体抵抗力等。当归功能补血活血，调经止痛，为妇科调经要药，无论血虚或血瘀而致的月经不调、痛经等症，皆为必用之品。鸡肉与诸药合用，共奏补血益气、健脾温中、调经止痛之功。本膳不但气血双补，而且鲜味美，为四季进补之佳品。尤论对于缺铁性、营养不良性贫血，还是脾胃虚弱、消化吸收功能障碍所致的贫血萎黄，以及血虚气弱之月经衍期、量少色淡等症，均可应用。', '外邪未净及热性病患者不宜食用。', 1, 'nul', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/归参炖母鸡_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (170, '参芪炖鲜胎盘', '《实用食疗方精选》', '鲜胎盘1个，黄芪60g，潞党参60g，当归身20g，生姜15g。', '将鲜胎盘割开血管，用清水洗漂干净，置沸水中煮2~3分钟，及时捞出，放入锅内，再将洗净的党参、黄芪、当归身一并放入，加水适量，置武火上烧至欲沸时，除去浮沫；然后加入洗净拍破的生姜，改用文火，炖至胎盘熟透，趁热食用胎盘及汤。可分次服完，日服2~3次。', '补益气血。', '补血类，适用于气血不足，虚羸消瘦，劳热骨蒸，妇人不孕及产妇乳汁不足等。', '方中所治之证，为气血不足所致，治宜补益气血。方中胎盘又名紫河车，味甘、咸，性温，有益气养血、补肾益精之效，为滋补名品，临床常用于气血亏虚，形体消瘦，肺肾两虚之喘咳及产后缺乳等。《本草蒙筌》称其：“疗诸虚百损......煮食滋补尤佳，又益妇入，俾育胎孕。”现代研究证明，本品含多种抗体、多种澈素，还能直接作用于内分泌系统，促进生长发育。黄芪、当归相配，能益气生血，以治劳倦内伤，气弱血虚所致诸症。由于有形之血生于无形之气，故更用党参协同黄芪，大补脾肺之气，以资气血生化之源，使气旺血生，诸症白除。生姜辛微温，有健胃作用，配人方中既能增进食欲，促进消化吸收功能，又可使汤味更为鲜美。方中诸品同用，具有气血双补、扶正固本之特点。凡年老体弱、形体消瘦、贫血、再生障碍性贫血、肺结核等属气血两虚者，亦可应用。', '血虚有热之证不宜服用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/参芪炖鲜胎盘_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (171, '红杞田七鸡', '《中国药膳学》', '枸杞子125g，三七10g，肥母鸡1只，猪瘦肉100g，小白菜心250g，面粉150g，绍酒30g，味精0.5g，胡椒粉5g，生姜l0g，葱白30g，精盐10g。', '肥母鸡宰杀后去毛，剖腹去内脏，剁去爪，冲洗干净；枸杞子拣去杂质，洗净；三七用4g研末备用，6g润软后切成薄片；猪肉洗净剁细；小白菜心清水洗净，用开水烫过，切碎；面粉用水和成包饺子面团；葱洗净，少许切葱花，其余切为段；生姜洗净，切成大片，碎块捣姜汁备用。整鸡人沸水中略焯片刻，捞出用凉水冲洗后，沥干水。将枸杞子、田七片、姜片、葱段塞于鸡腹内。鸡置锅内，注入清汤，入胡椒粉、绍酒，将三七粉撒于鸡脯肉上。用湿棉纸封紧锅子口，上笼旺火蒸约2小时。另将猪肉泥加精盐、胡椒粉、绍酒、姜汁和成饺子馅，再加小白菜拌匀。将面团分20份擀成饺子皮，包20个饺子蒸熟。吃饺子与鸡肉。', '补肝肾，益气血。', '补血类，适用干年老体虚，病后未复，产后血虚，贫血及其他营血虚损证，见面色菱黄、心悸心慌、头晕眼花、经血量少及腰膝酸软等症。', '本方所治之证，为肝肾不足、气血两亏所致。肝肾不足，则见腰膝酸软；气血两亏，则见面色萎黄、头晕眼花等。治宜补益肝肾，益气养血。方中枸杞性味甘平，能补益肝肾、明目、润肺，为肝肾亏虚之要药。三七性味甘温，功能化瘀止血、活血定痛，与人参属同一科属，均为五加科多年生草本植物，亦有较好的滋补强壮作用，《本草新编》称其；“止血而兼补。”枸杞、三七相配，枸杞补肝血，因三七之活血则补而不滞，不犯呆补之弊；三七之活血行血，则使瘀血去而新血易生。方中鸡肉、猪瘦肉相配，以滋补气血，使营血不乏生化之源。与三七、枸杞子相伍，以达补肝肾、益精血之功。本方以血肉有情之品益精血而滋化源，以草木有专功者为向导直达病所，相辅相成，共奏补益气血的功效。且性较平和，一般体虚不足、营血亏损者均可以作为补益良膳。', '凡外感表证未愈，身患湿热病证，或其他急性病罹患期间则不宜食用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/红杞田七鸡_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (172, '群鸽戏蛋', '《养生食疗菜谱》', '白鸽3只，鸽蛋12个，人参粉10g，干淀粉30g，清汤130g，湿淀粉I5g，熟猪油500g(实耗l00g)，绍酒15g，精盐7g，葱15g，酱油15g，味精1g，姜块10g，胡椒面0.8g，花椒12粒。', '新鲜白鸽去毛及内脏，洗净。精盐、绍酒、酱油兑成汁，抹于鸽肉内外，将鸽子两腿翻向鸽背盘好。炒锅置旺火上，下熟猪油烧至七成熟，放入鸽肉，炸约6分钟，捞出沥去油，放入蒸碗内，加姜葱、人参粉、清汤等，用湿棉纸封住碗口，置火上蒸至鸽肉骨松翅裂为度。将鸽蛋蒸熟，用冷水略浸，剥去蛋完，入干淀粉中滚动，裹上淀粉后入油中炸至色黄起锅。将蒸好的鸽肉起出摆盘中，下放2只，上放1只，炸鸽蛋镶于周围。再将蒸鸽原汤入锅加胡椒、味精、湿淀粉勾成芡汁入汤，将汤淋于鸽肉及蛋上即成。', '益气养血，补益肝肾。', '补血类，适用于气虚血亏，肝肾不足，腰膝酸软，脾胃虚弱，食欲不振，气短乏力等。', '本方所治之证，为肝肾不足，脾胃虚弱所致，治宜补益肝肾、益气养血。方中人参大补元气，补脾益肺，历来深受医家的推崇，《本草纲目》称其：“治男妇一切虚证。”现代研究证明，人参能增强机体免疫功能、提高应激反应能力、提高脑力劳动功能、抗疲劳等。鸽及鸧蛋营养价值很高，功能补益气血，滋补肝肾。人参得鸽肉、鸽蛋血肉有情之品，补气生血之力更强；而鸽肉、鸽蛋得人参补元气之功，化生精血之力更速，确为一首益气补血的良方。对于年老体弱，病后耗损营血未复，慢性消耗性疾病等，症见体虚乏力、食欲不振、形体消瘦、面色萎黄、眩晕耳鸣、失眠健忘等均可应用。', '本膳药食均较平稳，一般虚弱病证均可食用，但阴虚甚者不宜用。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/群鸽戏蛋_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (173, '阿胶羊肝', '《中医饮食疗法》', '阿胶15g，鲜羊肝500g，水发银耳3g，青椒片3g，白糖5g，胡椒粉3g，绍酒10g，酱油3g，精盐2g，味精5g，香油5g，淀粉l0g，蒜末3g，姜3g，葱5g。', '将阿胶放于碗内，加入白糖和适量清水，上屉蒸化。羊肝切薄片，放入碗内，加入干淀粉搅拌均匀备用。另用1小碗，加入精盐、酱油、味精、胡椒粉、淀粉勾兑成汁。炒锅内放入500g油，烧五成热时，将肝片下入油中，滑开滑透，倒入漏勺内沥去油。炒锅内留少许底油，放入姜葱炸锅，加入青椒、银耳，烹入绍酒，倒入滑好的肝片、阿胶汁，翻炒几下，再把兑好的芡汁泼入锅内，翻炒均匀，加香油即成。', '补血养肝。', '补血类，适用于肝血不足所致面色萎黄，头晕耳鸣，目暗昏花，两眼干涩，雀目夜盲等症。', '本方所治之证，为肝血不足，失于濡养所致，治宜补血养肝。方中阿胶又称驴皮胶，味甘性平，具有补血止血、滋阴润肺的作用，为补血之要药，善治血虚诸证。《药品化义》谓其：“力补血液，能令脉络调和，血气无阻。”《本草思辨录》称其：“为补血圣药，不论何经，悉其所任。”药理研究证明，阿胶具有提高红细胞数和血红蛋白，促进造血功能的作用。羊肝味甘苦，性凉，功能益血补肝、明目，《唐本草》云：“疗肝风虚热，目赤暗无所见。”阿胶、羊肝均为血肉有情之品，善补精血以治血虚诸疾，两者合用，功能补养肝血。肝主藏血，肝得血养，则能濡养脏腑机体。本膳亦可作为年老体弱，血虚萎黄，形体消瘦，及小儿体弱多病之贫血与妇人血虚出血、崩漏、月经不调等的常用膳食。', '阿胶性质滋腻，有碍消化，故脾胃虚弱，食欲不振，大便糖薄者忌服。如有外感表证未愈者，亦不宜用。', 1, 'null', '补益类', '菜肴类', '烧', '/static/images/medicinaldiet/阿胶羊肝_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (174, '菠菜猪肝汤', '《中国药膳学》', '菠菜30g，猪肝100g，调料适量。', '将菠菜洗净，在沸水中烫片刻，去掉涩味，切段，将鲜猪肝切成薄片，与食盐、味精、水豆粉拌匀；将清汤(肉汤、鸡汤亦可)烧沸，加入洗净拍破的生姜、切成短节的葱白、熟猪油等，煮几分钟后，放入拌好的猪肝片及菠菜，至肝片、菠菜煮熟即可。佐餐常服。', '补血养肝，润燥滑肠。', '补血类，适用于血虚萎黄，视力减退，大便涩滞等。', '本方所治之证，为血不养肝的视力减弱、血虚肠燥的大便涩滞，治宜补血养肝、润燥滑肠。菠菜味甘性凉而质滑，有养血润燥、滑肠通便之功，可用于血虚及血虚肠燥的大便涩滞。正如《本草求真》所言“凡人久病大便不通，及痔漏关塞之人，咸宜用之”。近年来有人报道，菠菜能刺激胰腺分泌，故对糖尿病亦有一定帮助。猪肝既可养血补肝，以治血虚萎黄，又可补肝明目，治肝血不足的视力减退、雀目夜盲等。现代用于预防维生素A缺乏所致的眼疾，如眼干燥、角膜软化等，确有相当疗效，可作为辅助治疗。两物合用，对血虚娄黄、肝虚视弱及肠燥大便涩滯之症有治疗效果。', '暂无', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/菠菜猪肝汤_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (175, '当归苁蓉猪血羹', '《实用食疗方精选》', '当归身15g，冬葵菜250g，肉苁蓉15gg，猪血125g，香油、熟猪油、葱白、食盐、味精各适量。', '将当归身、肉苁蓉洗净，加水适量，煮取药液待用；将冬葵菜(如无，以落葵叶代之亦可)撕去筋膜，洗净，放人锅内，将待用的药液加入，煮至冬葵菜熟时，将煮熟的猪血切成片或条，同熟猪油、葱白、食盐、味精、香油一并加入，混和均匀，趁热空腹食之。亦可于进餐时服食。', '补血活血，润肠通便。', '补血类，适用于血虚肠燥的大便秘结。', '本方所治之证，为年老体弱，阴虚血少，津枯肠燥所致，治宜养血润肠通便。方中当归为补血活血、润肠通便的要药，当归身补血作用较好，对于血虚萎黄、肠燥便秘之症用之甚为适宜。肉苁蓉补肾助阳，润肠通便，对年老体弱或病后肠燥便秘而精亏血虚，肾阳不足者尤为适宜。苁蓉虽性温助阳，但温而质润，补阳不燥，药力和缓。《本草汇言》称其：“此乃平补之剂，温而不热，补而不峻，暖而不燥，滑而不泄。故有从容之名。”冬葵菜；味甘性寒而质滑利，能清热滑肠，故用治肠燥便秘的疗效颇好。《儒门事亲》说：“老人久病，大便涩滞不通者，时复服葵菜、菠菜、猪羊血，自然通利。”猪血性味咸平，《医林纂要》谓其能：“利大肠”。药食相配，相辅相成，能充分发挥补血养血与润燥通便之功，再加以适量的香油、熟猪油，助其润滑之力，故对于年老体弱，精血亏虚之肠燥便秘，甚有效验。', '湿盛中满及胃肠虚冷泄泻者不宜使用。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/当归苁蓉猪血羹_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (176, '猪心枣仁汤', '《四川中药志》', '猪心1具，茯神15g，酸枣仁15g，远志6g。', '将猪心剖开，洗净，置砂锅内，再将洗净打破的枣仁及洗净的茯神、远志一起放入锅内，加清水适量，先用武火烧沸，打去浮沫后，改用文火，炖至猪心熟透即成。只食猪心及汤。服食时可加精盐少许调味。', '补血养心，益肝宁神。', '补血类，适用于心肝血虚引起的心悸、怔仲、失眠等症。', '本方所治之证，为血虚而致心肝失养所致，治宜补养阴血以宁心安神。方中猪心性味甘威而平，功能补虚养心、安神定惊，为治心血不足之心悸、怔忡、自汗、不眠等症的食疗佳品。《千金.食治》谓其：“主虚悸气逆”《本草图经》称其：“主血不足，补虚劣。”酸枣仁性味片平，功能养心阴、益肝血而宁心安神，为滋养性安神药，主要用于心肝血虚引起的失眠、惊悸怔忡等症。《本草纲目》称其：“疗胆虚不得眠。”现代研究证明，酸枣仁有镇静、催眠作用。茯神比茯苓更长于安神，善治心悸、失眠等神志病症。远志具有宁心安神之功，兼能开心窍，尤其适用于心神不宁、失眠心悸而有健忘者。《本草纲目》述：“其功专于强志益精，治善忘。”诸药与猪心配伍炖汤服食，使养心阴、益肝血、宁心神的作用进一一步加强，确为一首滋养安神作用较好的食疗方剂。', '高血压、冠心病、高脂血症等患者应慎用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/猪心枣仁汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (177, '参归猪肝汤', '《四川中药志》', '猪肝250g，党参15g，当归身15g，枣仁10g，生姜、葱白、料酒、食盐、味精适量。', '将党参、当归身洗净，切薄片，枣仁洗净打碎，加清水适量煮后取汤；将猪肝切片，与料洒、食盐、昧精、水发豆粉拌匀，放人汤内煮至肝片散开，加人拍破的生姜、切段的葱白，盛人盆内蒸15~20分钟。食肝片与汤。', '养血补肝，宁心安神。', '补血类，适用于心肝血虚的心悸、失眠、面色萎黄等症。', '本方所治之证，为心肝血虚所致。肝主藏血，心主神志，心肝血虚则见心悸、失眠、面色菱黄等症。治宜养血补肝，宁心安神。方中党参性味甘平，具有益气生血之功。若疗气血两虚所致心悸失眠、多梦易惊，常与酸枣仁、龙眼肉等配伍。《得配本草》称其：“君当归活血，佐枣仁补心。”当归具有补血活血之功，亦常用于血虚引起的面色萎黄、头晕、目眩、心悸、健忘等症。《外台秘要》云：“其用有三：心经药一也，和血二也，治诸病夜甚三也。”酸枣仁功能为宁心安神、养肝敛汗，为滋养性安神药，常用于心肝血虚所致的虚烦不眠、多梦易醒、心悸怔忡，尤宜于出虚汗而兼有心烦失眠者。《本草切要》云：“酸枣仁佐归、参可以敛心。”猪肝能养血补肝，为治血虚萎黄等的常用食品。药食合用，共奏养血补肝、养心宁神之效。', '高血压、冠心病、高脂血症等患者应慎用。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/参归猪肝汤_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (178, '龙眼酒', '《万氏家抄方》', '龙眼肉60g，上好烧酒500g。', '内浸百日，随个人酒量适量饮用。', '补心脾，益气血。', '补血类，适用于心脾两虚，食少纳差，心神不宁，精神不集中，睡眠不实等。', '本方所治之证，为心脾两虚所致。心神失养，则见心神不宁、睡眠不实；脾失健运，则见食少纳差。治宜补心脾，益气血。方中龙眼又称桂圆，具有补心脾、益气血之功，为滋补心脾之要药，凡思虑过度，劳伤心脾而见心悸失眠者，用之尤为适宜。《神农本草经》谓其：“久服强魂魄，聪明，轻身不老，通神明。”《本草药性大全》称其：“养肌肉，美颜色，除健忘，却怔忡。”浸酒内服，其味醇香甘甜，益气血之功更捷。', '湿阻中满或有停饮、痰、火者不宜服用。不善饮酒者，也可煎汤内服。孕妇不宜服用，以免生热助火。', 1, 'null', '补益类', '饮料类', '其它', '/static/images/medicinaldiet/龙眼酒_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (179, '十全大补汤', '《良药佳馐》', '人参、黄芪、白术、茯苓、熟地、白芍各10g，当归、肉桂各5g，川芎、甘草各3g，大枣12枚，生姜20g，墨鱼、肥母鸡、老鸭、净肚、肘子各250g，排骨500g，冬笋、蘑菇、花生米、葱各50g，调料适量。', '将诸药装纱布袋内，扎紧袋口。鸭肉、鸡肉、猪肚清水洗净；排骨洗净，剁成小块；姜洗净拍破；冬笋洗净切块；蘑菇洗净去杂质及木质部分。各配料备好后同放锅中，加水适量。先用武火煮开后改用文火慢煨炖，再加入黄酒、花椒、精盐等调味。待各种肉均熟烂后捞出，切成细条，再放入汤中，捞出药袋。煮开后，调入味精即成。食肉饮汤，每次1小碗，早晚各服1次。全料服完后，间隔5日后另做再服。', '温补气血。', '气血双补类，适用于气血两虚，面色萎黄，头晕日眩，四肢倦念，气短懒言，心悸怔忡，饮食减少等。', '方所治之证，为久病失治或病后失调，或失血过多，以致气血两虚所致，治宜温补气血。方中用人参廿温益气，健脾养胃；白术苦温健脾燥湿，以助脾运；茯苓甘淡健脾祛湿；炙甘草甘温益气和中，调和诸药；四药配伍，即为补脾益气的基础方四君子汤。熟地甘温味厚，质地柔润，长于滋阴养血；当归补血养肝，和血调经；芍药养血柔肝和营；川芎活血行气，调畅气血，此即为中医补血名方四物汤；两方合用，则为气血双补的八珍汤。再加黄芪益气，肉桂鼓舞气血生长，便为十全大补汤。墨鱼养血滋阴；肥鸡益气养血，温中补脾；老鸭滋阴养胃，利水消肿；肘子、排骨滋阴润燥；冬笋、蘑菇等皆为植物膳料之上品，滋味鲜美，以上诸物均营养价值高，富含各种营养成分，具有滋补精血、强壮身体的作用。本方荤素相合，气血双补，阴阳并调，滋补力强，故对于各种慢性虚损性疾病，有较好的滋补作用，适用于体虚贫血、发枯易脱、虚劳咳嗽、遗精阳痿、血压偏低、营养不良、血小板减少性紫癜、胃下垂、脱肛、子宫下垂、白带过多、月经不调等属气血两虚者。手术后及病后服用，有明显的调养作用。无病服用，亦能防病健身、增强抵抗力。', '本膳味厚偏于滋腻，故外感未愈、阴虚火旺、湿热偏盛之人不宜服用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/十全大补汤_0.png', 5, NULL);
INSERT INTO `medicinal_diet_table` VALUES (180, '归芪蒸鸡', '《中国药膳学》', '炙黄芪100g，当归20g，嫩母鸡1只(1500g)，绍酒30g，昧精3g，胡椒粉3g，精盐3g，葱、姜各适量。', '将鸡宰杀后去净毛，剖腹去内脏洗净，剁去爪不用，用开水焯去血水，再于清水中冲洗干净，沥干水待用。当，上先净，块大者顺切几刀；葱洗净剖开，切成寸许长段；姜洗净去皮，切成大片。把当归、黄芪装于鸡腹内，将鸡置锅内，腹部朝上，闭合剖口；姜、葱布于鸡腹上，注入适量清水，加入食盐、绍酒、胡椒粉，用湿棉纸将锅口封严。上笼蒸约2小时后，取出去封口纸，去姜、葱，加适量味精调味，装盘即成。', '补气生血。', '气血双补类，适用于气血两虚，面色萎黄，神疲乏力，消瘦倦怠，心悸头晕，脉象虚大无力，或妇人产后大失血，崩漏，月经过多者。', '本方所治之证，为劳倦内伤，血虚气弱所致，治宜补气生血。方中黄芪与当归相配，为《内外伤辨惑论》中之当归补血汤。补气之黄芪为补血之当归的5倍，气旺则能生血，乃遵“有形之血生于无形之气”之说，方中重用黄芪大补脾肺之气，以资气血生化之源，通过补气使气能旺于内，则脏腑气机活动增强，化生血液即速，少用当归以养血和营。如此则阳生阴长，气旺血生，诸症悉除。方中再配以滋养补虚、益精补血的母鸡肉，进一步增强了全方益气生血的作用。本膳滋味鲜美，疗效确实，实为家庭滋补之佳品。对于各种贫血、过敏性紫癜等属血虚气弱者，既有补养作用，又有治疗效果。', '湿热内阻，或急性病期间不宜服用。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/归芪蒸鸡_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (181, '乌鸡白凤汤', '《中国药膳大全》', '鹿角胶25g，鳖甲12g，牝蛎12g，桑螵蛸10g，人参25g，黄芪10g，当归30g，白芍25g，香附25g，天门冬12g，甘草6g，生地黄50g，熟地黄50g，川芎12g，银柴胡5g，丹参25g，山药25g，芡实12g，鹿角霜10g，生姜30g，墨鱼1000g，乌鸡肉8000g，调料适量。', '将人参润软，切片，烘脆，碾成细末备用。用温水洗净墨鱼，去骨。将乌鸡宰后去内脏，洗净，剁下鸡爪、鸡翅膀。中药除人参外，各药用纱布袋装好，扎紧袋口，与墨鱼、鸡爪、鸡翅一同下锅，注人清水，烧沸后再熬1小时，备用。鸡肉洗净后，以沸水焯去血水，洗净，切成条方块，摆在100个碗内，加上葱段、姜块、食盐、绍酒的一半，加上备用药汁适量，上笼蒸烂、鸡蒸烂后出笼，择去姜、葱，原汤倒入勺内，再和上原药汁调余下的绍酒、食盐、味精，烧开，去上沫，收浓汁，浇于鸡肉上即成。', '补气养血，调经止带。', '气血双补类，适用于妇女体虚，神疲体倦，腰膝酸软，月经不调，白带量多，虚热，惊悸怔帅，睡卧不宁等。', '本方所治之证，为血虚气弱、冲任虚损所致，治宜补气养血、调经止带。本方为治妇科虚弱病证的名方。方中以四物熟地、当归、白芍、川芎补血，加人参、黄芪以补气摄血，是治疗失血过多，气血两虚的圣愈汤。加天冬、生地、鳖甲、银柴胡等，具有养阴退热之功，与牡蛎、失实、桑螵蛸、鹿角霜等问用，既能敛阴而固肝肾，又能收敛而止带下。山药健脾补虚，滋肾固精，为治诸虚百损、疗五劳七伤之食疗佳品；香附、丹参则活血行气而调经止痛；鹿胶、墨鱼、乌鸡，皆为血肉有情之品，滋补力强，善调虚损诸证。本品药食相配，既能补气养血，调经止痛，又策补益、固涩于一方，是一首配伍严格，选药精当，疗效显著的补虚调理之佳肴。对气血两虚，及由此而致的诸多病证均有良好疗效。凡年老体虚，妇人经带病证，属气血虚者均可食用。亦可用治再生障碍性贫血、血小板减少症、青春期无排卵性子官功能性出血等。', '外感未愈，湿热、痰湿较重者，不宜服用。', 1, 'null', '补益类', '菜肴类', '熬', '/static/images/medicinaldiet/乌鸡白凤汤_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (182, '参枣米饭', '《醒园录》', '党参15g，糯米250g，大枣30g，白糖50g。', '先将党参、大枣煎取药汁备用，再将糯米淘净，置瓷碗中加水适量，煮熟，扣于盘中，然后将煮好的党参、大枣摆在饭上，最后加白糖于药汁内，煎成浓汁，浇在枣饭上即成。空腹食用。', '补中益气，养血宁神。', '气血双补类，适用于脾虚气弱，倦息乏力，食少便溏，以及血虚所致面色菱黄、头晕、心悸、失眠、浮肿等症。', '本方所治之证，为脾气虚弱，气血生化不足所致，治宜补益脾气、养血宁神。方中党参性味甘平，入脾肺经，为补中益气、养血生津之佳品，尤为补中益气之要药，诚如《本草从新》所云：“主补中益气，和脾胃，除烦渴，中气微弱，用以调补，其为平妥。”大枣补中益气，养血安神，缓和药性。《吴普本草》中记载：“主调中益脾气，令人好颜色。”《本草汇言》称其：“补中益气，壮心神，助脾胃，养肝血，保肺气，调营卫，生津之药也。”党参与大枣合用，功能补中益气，并有养血的作用，用治脾气虚弱和气虚血弱等证。糯米具有补脾益气之功，其质粘柔，富于滋养，并可治脾虚泄泻。《本经逢原》谓：“糯米，益气补脾肺。”白糖性味甘平，入脾经，具有润肺生津、补益中气之功。党参、大枣、糯米、白糖合用，共奏益气补脾、养血安神之效。本方香甜可口，为家庭良膳。', '本方甘温壅中，且糯米粘滞难化，故脾为湿困，中气壅滞，脾失健运者不宜服。', 1, 'null', '补益类', '粥食类', '煮', '/static/images/medicinaldiet/参枣米饭_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (183, '鹿角粥', '《癯仙活人方》', '鹿角粉10g，粳米60g。', '先以米煮粥，米汤数沸后调入鹿角粉，另加食盐少许，同煮为稀粥，1日分2次服。', '补肾阳，益精血，强筋骨。', '补阳类，适用于肾阳不足，精血亏虚之畏寒身冷，腰膝酸痛，阳痿早泄，不育不孕，精神疲乏；小儿发育不良，骨软行迟，囟门不合；妇女崩漏、带下；阴疽内陷，疮疡久溃不敛等。', '本方所治之证，为元阳虚衰、精血不足所致，治宜温肾壮阳、补益精血。方中鹿角粉为鹿科动物梅花鹿或马鹿已骨化之鹿角，经加工而成，味咸，性温，能补肾阳，益精血，强筋骨，调冲任，固带脉。其温肾助阳而不燥烈，补益精血而不滋腻，温补之功虽不及鹿茸之峻，但其性缓和，无动火升阳之弊，为慢性虚损长期服食的佳品。李时珍在《本草纲目》中认为鹿角生用散热行血、消肿辟邪，熟用则益肾补虚、强精活血，故本粥用治阳虚精亏，鹿角粉宜早下久煮；用治疮痈溃疡，宜后下微煮。', '本方温热，夏季不宜选用，适合在冬天服食。因其作用比较缓慢，应当小量久服，一般以10天为1疗程。凡素体有热，阴虚阳亢，或阳虚而外感发热者，均当忌用。', 1, 'null', '补益类', '粥食类', '煮', '/static/images/medicinaldiet/鹿角粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (184, '枸杞羊肾粥', '《饮膳正要》', '枸杞叶250g(或枸杞子30g)，羊肉60g，羊肾1个，粳米60g，葱白2茎，盐适量。', '将新鲜羊肾剖开，去内筋膜，洗净，细切；羊肉洗净切碎；煮枸杞叶取汁，去清。也可用枸杞叶切碎，同羊肾、羊肉、粳米、葱白一起煮粥。待粥成后，入盐少许，稍煮即可。每日早晚服用。', '温肾阳，益精血，补气血。', '补阳类，适用于肾虚劳损，阳气衰败，腰脊冷痛，脚膝软弱，头晕耳鸣，视物昏花，听力减退，夜尿频多，阳痿等。', '本方所治之证，为肾阳虚弱、肾精亏耗、气血不足而成，治宜补肾益精、温养气血。方中羊肾，性味甘温，《名医别录》谓其“补肾气，益精髓“，常用于肾虚劳损，腰脊疼痛，足膝痿弱，耳聋，消渴，阳萎，尿频，遗尿等。羊肉性味甘温，历代被视为益肾气、强阳道之佳品。功能益肾补虚，温养气血，温中暖下。《千金要方》云：“主丈夫五劳七伤。”民间历来有冬令炖服之习俗，以治虚劳畏冷，腰膝酸软，产后虚弱，形贏消瘦，脾胃虚寒等。枸杞叶是枸杞之嫩茎叶，可蔬可药，气味清香，养肝明目，《食疗本草》谓其：“坚筋耐老，除风，补益筋骨，能益人，去虚劳”，《药性论》也日：“能补益诸精不足，和羊肉作羹，益人。”3味同时人米熬粥，甘美可口，补虚之功可靠。温而不热，为肾虚食养之要方。如无枸杞叶，可用枸杞子代入。亦可去粳米，炖汤食用。', '外感发热或阴虚内热及痰火壅盛者总食。', 1, 'null', '补益类', '粥食类', '煮', '/static/images/medicinaldiet/枸杞羊肾粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (185, '白羊肾羹', '《饮膳正要》', '白羊肾(切作片)2具，肉苁蓉(酒浸，切)30g，羊脂(切作片)120g，胡椒6g，陈皮(白)3g，荜茇6g，草果6g，面粉150g，食盐、生姜、葱各适量。', '面粉制成面片；羊肾洗净，去臊膝脂膜；羊脂洗净；余药相合，同入纱布袋；入锅内，加清水适量，沸后，文火炖熬至羊肾熟透，放入面片及调味品，煮熟，如常作羹食之。', '温肾阳，健筋骨，祛风湿。', '补阳类，适用于肾阳虚弱，阳痿不举，腰膝冷痛或风湿日久，累及肝肾，筋骨痿弱。', '本方所治之证，为肾阳不足，精血亏虚或脾肾虚寒所致，治宜补益精血、温补脾肾。方中白羊肾性味甘温，《名医别录》日：“补肾气，益精髓”。肉苁蓉，性味甘温，功能补肾阳、益精血，为“养命门、滋肾气、补精血之要药也”(《本草汇言》)，现代研究发现其有调整内分泌、促进代谢及强壮作用，并能提高或调节机体的免疫功能。将白羊肾、羊脂配合肉苁蓉同用，其温肾益精作用更佳。胡椒、陈皮、荜茇、草果味辛性热，不但气味辛香，可除羊肾、羊脂油腻膻气，而且功能湿中散寒、行气止痛，对脾肾虚寒，食少腹痛者也颇有效。《圣济总录》“白羊肾羹”方中无荜茇、草果、陈皮、羊脂，适用于肾阳不足而无脾胃虚寒者。', '本方偏于温燥，凡热盛阳亢者忌用，对脾虚便溏者，肉苁蓉用量不宜过大。', 1, 'null', '补益类', '菜肴类', '熬', '/static/images/medicinaldiet/白羊肾羹_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (186, '羊脊骨粥', '《太平圣惠方》', '羊连尾脊骨1条，肉苁蓉30g，菟丝子3g，粳米60g，葱、姜、盐、料酒适量。', '肉苁蓉酒浸1宿，刮去粗皮；菟丝子酒漫3日，晒干，捣木。将羊脊骨砸碎，用水2500ml，煎取汁液1000ml，入粳米、肉苁蓉煮粥；粥欲熟时，加入葱末等调料，粥熟，加入菟丝子末、料酒20ml，搅匀，空腹食之。', '补肾阳，益精血，强筋骨。', '补阳类，适用于虚劳羸瘦，腰膝无力，头目昏暗。', '本方所主之证，为脾肾阳虚，肝肾亏损所致，治宜温肾阳、益肝肾、健筋骨。方中羊脊骨性味甘温，功能温肾补虚、强健筋骨，可用于肾阳虚冷，腰膝酸软，体衰赢瘦等，故《饮膳正要》说：“(羊)尾骨，益肾明目，补下焦虚冷”，《本草纲目》谓其“补肾虚，通督脉，治腰痛。”肉苁蓉性味甘温，功能补肾助阳、暖腰膝、健筋骨、滋肝肾精血、润肠胃燥结，实为补阳之佳品，如《本草汇言》所说：“混而不热，补而不峻，暖而不燥，滑而不泄。”菟丝子辛甘而平，功能补肝肾、益精髓，既补肾阳，又益肾阴，补而不峻，温而不燥，性平质润，为滋补肝肾之良药。尤以肝肾不足而兼精气不固者，更为多用。全方羊脊骨、肉苁蓉、菟丝子同用，入米为粥，甘美养胃，既温阳，又益精，凡虚劳羸瘵诸证皆宜。若作汤佐餐服用也可。', '脾胃虚寒久泻者，应减肉苁蓉；大便燥结者，宜去菟丝子。', 1, 'null', '补益类', '粥食类', '煮', '/static/images/medicinaldiet/羊脊骨粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (187, '巴戟牛膝酒', '《千金方》', '巴戟天100g，怀牛膝100g，白酒1500g。', '将以上两物同浸于白酒中，每日早晚服15~30ml。', '温肾阳，健筋骨，祛风湿。', '补阳类，适用于肾阳虚弱，阳痿不举，腰膝冷痛或风湿日久，累及肝肾，筋骨痿弱。', '本方所治之证，为肾阳不足，下元虚所致，治宜温补肾阳。方中巴戟天，性味辛甘微温，功能补肾阳、强筋骨、祛风湿，其体润而不燥烈，故既能祛风除湿，又能补肾强骨，用于虚羸阳道不举，肾虚精滑，腰痛，脚膝痿软，小便不禁，女子官冷不孕及风湿痹痛等。淮牛膝功能补肝肾、强筋骨，长于治疗腰膝疼痛，脚膝痿弱，与巴戟天配合，意在增强补肾阳、健筋骨、祛风湿、除痹痛之功。两药浸于酒中，行气血，增药效，温补之力更著。对于不善饮酒者，也可将两物与羊骨、羊肉等炖服，其温补肝肾之功不减。腰膝冷痛者，可加肉桂，下姜；阳虚痿弱者，宜加苁蓉、五加皮。', '本方温热，凡热盛阳亢者不宜饮用，夏天勿服或少饮。', 1, 'null', '补益类', '饮料类', '其它', '/static/images/medicinaldiet/巴戟牛膝酒_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (188, '补骨脂胡桃煎', '《类证本草》', '补骨脂100g，胡桃肉200g，蜂蜜100g。', '将补骨脂酒拌，蒸熟，晒干，研末；胡桃肉捣为泥状。蜂蜜熔化煮沸，加入胡桃泥、补骨脂粉，和匀。收贮瓶内，每服10g，黄酒调服，不善饮者开水调服。每日2次。', '温肾阳，强筋骨，定喘嗽。', '补阳类，适用于肾阳不足，阳痿早泄，滑精尿频，腰膝冷痛，久咳虚喘等。', '本方所治之证，乃肾阳不足，肾气不同；或肾不纳气，肺气虚寒所致，治宜温肾阳、强筋骨、定喘嗽。方中补骨脂性温味辛，善能补肾助阳，为壮火益土之要药。凡肾虚阳痿、遗精、滑精，腰膝冷痛、虚寒喘嗽等属肾阳不足，下元虚寒者皆宜。胡桃肉性味廿涩而温，既能补肾助阳以益精，又能温肺纳气以定喘；既可用于肾气亏虚之腰痛脚软、尿频遗精等症，又可用于肺肾两虚之久虚嗽喘。方中以补骨脂配胡桃肉问用，既是肺肾同治，又温肾助阳，相须以为用。《本草图经》谓：“二物合服弥久，则延年益气，悦心明目，补添筋骨。”本方原名“补骨脂煎”，有改作丸剂者，名补骨脂丸。也有称之为“膏剂”者。方中胡桃仁原方去皮为用，若用于肺肾虚喘，也可连皮应用。《医林篡要》日：“胡桃仁连皮则能固能补，去皮则止于能行能润耳。”', '痰火咳喘及肺肾阴虚之喘嗽忌用。', 1, 'null', '补益类', '其它', '其它', '/static/images/medicinaldiet/补骨脂胡桃煎_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (189, '雀儿药粥', '《太平圣惠方》', '雀儿10枚(刺去皮毛，剁碎)，菟丝子30g(酒浸3日，晒干，搞为末)，覆盆子30g，五味子30g，枸杞子30g，粳米60g，酒60g。', '上为未。将雀肉先以酒炒，入水3大盏，次入米煮粥，欲熟，下药末10g，搅转，入五味调令匀，更煮熟，空心食之。', '补肝肾，益精血，壮阳气，暖腰膝。', '补阳类，适用于肝肾虚损，阳气衰弱，阳痿，遗精早泄，腰膝酸软，头晕眼花，耳鸣耳聋，尿频遗尿，妇女带下。', '本方所主之证，为肝肾虚损，阳气衰弱，筋骨不健所致，治宜补肝肾、益精血、壮阳气、健腰膝。方中雀儿乃麻雀，性味甘温，有壮阳益精、暖腰膝、缩小便之功。《养老奉亲书》用治“老人脏腑虚损贏瘦，阳气乏弱。”乃补肝肾、益精血之良药，对老年阳虚赢弱者，尤为适宜。枸杞子、菟丝子性味廿平，柔润而多液，既能补肾以益精，又可养肝以明目。覆盆子、五味子性味酸温，益肾涩精，固摄肾气，尤宜于肾阳不足、肾气不固、肾精亏损者。本药粥集5味滋补肝肾之品于一方，对阳气不足的老年人，有祛病延年之功。麻雀滋味鲜美，因其来源所限，方中之雀肉，可以鹌鹑肉、鸽子肉或鸡肉等代之。本方也可去粳米，炖汤食用，其功效主治相似。', '本方功能壮阳，凡阴虚火旺、性机能亢进者不宜服用。', 1, 'null', '补益类', '粥食类', '煮', '/static/images/medicinaldiet/雀儿药粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (190, '鹿鞭壮阳汤', '《中国药膳学》', '鹿鞭2条，枸杞子15g，菟丝子30g，狗肾100g，山药50g，巴戟9g，猪肘肉800g，肥母鸡800g，绍酒50g，胡椒粉、花椒、盐、生姜、葱白各适量。', '鹿鞭发透后刮去粗皮杂质，剖开，再刮净内面的粗皮，洗净，切段；狗肾用油砂炒烫，用温水浸泡，洗净；猪肘肉、鸡肉洗净，切条块；山药润软，切块；枸杞子、菟丝子、巴载天用纱布袋装扎紧；葱洗净扎结，姜洗净拍破。锅内放入鹿鞭、姜、葱、绍酒，加清水约1500ml，用武火煮沸15分钟，捞出鹿鞭，原汤不用，如此反复煮2次。另砂锅，放入猪肘、鸡块、鹿鞭、狗肾，加清水适量，烧沸后，撇去浮沫，加入绍酒、姜、葱、花椒，移于文火炖90分钟左右，取出姜、葱、猪肘，再将山药片、药袋、盐、胡椒粉、味精放入锅内。用武火炖至山药熟烂、汤汁浓稠。取汤碗1个，先捞出山药铺于碗底，再盛上鸡肉块，最后摆上鹿，倒入汤汁即成，佐餐食用。', '温肾壮阳，补血益精。', '补阳类，适用于肾阳衰惫，精血不足，阳痿遗精，早泄，腰酸膝软，畏寒肢冷，小便清长。', '本方所治之证，为肾阳虚弱，精血不足所致，治宜温肾壮阳、补益精血。方中鹿鞭为雄性梅花鹿或马鹿的阴茎及睾丸，性味甘、咸而温，功能补肾阳、益精血。本方乃取其壮阳强身之功，用以峻补肾阳。狗肾即狗鞭，为犬科动物雄性家狗带睾丸的阴茎。功能温肾壮阳、补益精髓，《本草从新》谓其：“补虚寒，助阳事”，于方中助鹿鞭以补阳气、益精髓。善补阳者，必于阴中求阳，养阴能滋阳气之化源，故配以猪肘肉、肥母鸡等血肉有情之品以益精补血，滋补肝肾。又唯恐力有不专，故伍以温肾阳、强筋骨的巴戟天，补肝肾、益精血之菟丝子、枸杞子，直入肝、肾之经以益阴助阳。本药膳以温肾壮阳、益精补血、强身健体的药食合用，配伍严谨，营养丰富，为健身壮阳、益阴助阳之重剂，对于肾阳虚弱、精血不足所致的各种病证，鲜有不效者。', '本膳功偏温补，凡阴虚火旺，虚热虚烦，潮热盗汗，心烦口干者，不宜服用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/鹿鞭壮阳汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (191, '壮阳狗肉汤', '《华夏药膳保健顾问》', '狗肉200g，菟丝子5g，附片3g，葱、姜各5g，食盐、味精、绍酒各适量。', '狗肉洗净，投入锅内焯透，捞出，洗净血沫，沥干，切块；菟丝子、附片用纱布合包；姜葱洗净，姜切片、葱切断备用。锅内投入狗肉、姜片煽炒，烹入绍酒炝锅，倒入砂锅内，并将菟丝子、附片放入，加入清汤、食盐、味精、葱，以武火烧沸，撇净浮沫，用文火炖2小时，待狗肉熟烂，除去姜、葱，装入汤碗内即成。佐餐食用。', '温脾暖肾，益精祛寒。', '补阳类，适用于脾肾阳虚，畏寒肢冷，小便清长，脘腹冷痛，大便溏泻，腰膝酸痛。', '本方所治之证，为脾肾虚寒所致，治宜温脾暖肾、益精祛寒。方中狗肉功能温肾助阳，补中益气，适用于脾胃虚寒，胀满少食或肾气不足，腰膝酸软者，本方取其温暖脾肾之力，脾得温，则后天气血生化有源；肾得暖，其先天真阳不至亏乏。附子辛热，能人心、脾、肾经，功专回阳温中，散寒补火，为温阳要药，配伍狗肉，温阳之功力专子脾肾，有相成之妙。菟丝子人肝肾，功能益阴而固阳，为补肝肾要药。3味相伍，一以助附子、狗肉温阳而调脾肾之阳虚，一以益阴而滋阳气生化之源泉，配伍精当，是脾肾阳虚患者用以强身助阳的佳膳。', '本膳力偏温补，凡阴虚火旺，夜热盗汗，五心烦热者，不可服食。也不宜于春、夏季食用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/壮阳狗肉汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (192, '杜仲腰花', '《华夏药膳保健顾问》', '杜仲12g，猪肾250g，绍酒25g，葱50g，味精1g，酱油40g，醋2g，干淀粉20g，大蒜10g，生姜10g，精盐5g，白砂糖3g，花椒1g，混合油100g。', '杜仲以水300ml熬成浓汁，去杜仲，再加淀粉绍酒、味精、酱油、白砂糖拌兑成芡糊，分成3份待用。猪腰子剖为两片，刮去筋膜，切成腰花，生姜去皮，切片。葱洗净切成节，待用。炒锅烧熟，入油，烧至八成热，放入花椒烧香，再投人腰花、葱、姜、蒜，快速炒散，沿锅倾入芡汁与醋，翻炒均匀，起锅装盘即成，佐餐食。', '补肾益精，健骨强体。', '补阳类，适用于肾虚腰痛膝软，阳痿遗精，耳鸣眩晕，夜尿频多。', '本方所治之证，为肾虚所致，治宜补肾精、强筋骨。本方以杜仲、猪肾为主。猪肾具有补肾气、助膀胱等功能，常用于治疗肾虚腰痛，骨软脚弱，遗精盗汗等。《名医别录》称其“和理肾气，通利膀胱。”杜仲甘温，入肝肾经，能补肝肾、壮筋骨。《本草从新》认为杜仲“充筋力，强阳道。”用猪肾益精滋血助阳，杜仲入肾经壮阳气，两者相伍，可阴阳并调，而以滋化阳气偏重，故全方为助阳健身为主之药膳方，也可作为肾炎、高血压、性功能低下者的膳食；无病常食，具有强身健骨的滋养作用。', '本膳作为佐餐，对于肾阳虽虚，而尚不甚严重者具有调养作用。阳虚较重者，则本方力有未逮，但若长服则可缓以收功，仍具有较好功效。阴虚火旺者非本方所宜。', 1, 'null', '补益类', '菜肴类', '炒', '/static/images/medicinaldiet/杜仲腰花_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (193, '虫草炖老鸭', '《本草纲目拾遗》', '冬虫夏草5枚，老雄鸭1只，香葱、黄酒、生姜、胡椒、精盐各适量。', '鸭子去肚杂洗净，将鸭头劈开，纳冬虫夏草于中，仍以线扎好，加酱油、酒等调味品如常煮烂食之。', '补虚损，益肺肾，止咳喘。', '补阳类，适用于病后虚损，身体羸弱，腰膝酸痛，阳痿遗精以及久咳虚喘，劳嗽痰血等。', '本方所治之证，乃久病精血亏虚，或肾阳不足，肺阴耗损所致，治宜补肾助阳、补肺益精。方中冬虫夏草是一味名贵的滋补药品，性味甘温，秘精益气，专补命门，用治肾虚阳痿、腰膝酸痛等，《本草纲目拾遗》谓其“入房中药用”，功能保肺气、补肾精，且可化痰止血，《本草从新》日：“保肺益肾，止血化痰，已劳嗽”，故为肺肾阴虚，久咳虚喘，劳嗽痰血的要药。老雄鸭温阳补虚，《本经逢原》日：“男子阳气不振者，食之最宜”。与冬虫夏草炖服，味道鲜美，补肾助阳，养肺益精功能加强，对肺肾不足虚喘劳嗽者宜。若肺肾阴虚者，宜用性味甘平，有滋阴作用的白鸭肉。', '外感表邪咳喘不宜使用。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/虫草炖老鸭_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (194, '虫草炖鲜胎盘', '《实用食疗方精选》', '鲜胎盘1具，白果仁45g，虫草10g，麻黄9g，生姜9g。', '新鲜胎盘割开血管，洗净；虫草洗净；银杏去壳，放入锅内，沸水煮熟，捞出，去皮膜，切两头，去心，焯去苦水；麻黄洗净，切碎，纱囊装好；生姜洗净，去皮、拍破。同放入砂锅内，加水适量，炖至胎盘熟烂，取出盛麻黄的纱袋，加入适量的食盐即可。每日早晨食用，5~7天1疗程。', '补益肺肾，定喘消痰，兼可散寒宣肺。', '补阳类，适用于咳喘日久，痰多胸闷，呼多吸少，动则气喘尤甚，汗出，腰酸肢冷，小便频多等。', '本方所主之证，为肺气虚，肾阳衰，兼有寒邪所致，治宜补益肺肾、定喘消痰、散寒宣肺。方中胎盘，又名紫河车，为补精血、益阳气之上品，有良好的益气养血、温肾补精之效。凡身体虚弱，贏瘦乏力，肺虚喘咳，劳嗽咯血，及肾阳不足，精血亏损等，皆宜食用。虫草性味甘温，能益肾补肺、化痰止血，用于肾阳不足，身体衰弱，及久咳虚喘，劳嗽咯血，疗效可靠。本品既能补肾固本，又能补肺实卫，与胎盘或鸡、鸭、牛、羊肉炖服效果尤佳。白果仁味甘、苦、涩，性平，有敛肺消痰平喘等作用，对喘嗽痰多之症，颇有疗效。麻黄辛散温通，善开肺气，散风寒而止咳平喘。白果与麻黄敛散相伍，即可增强定喘之效，又能宜散寒邪。方中诸药配伍，共奏补肺气、温肾阳、定喘嗽、消痰涎之功。', '本方不宜用于痰热壅肺的实喘，方中白果大量食用或生食均易引起中毒，务必注意剂量适宜。咳嗽痰稠，咯吐不利者慎用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/虫草炖鲜胎盘_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (195, '人参胡桃汤', '《济生方》', '人参6g，胡桃肉15g，生姜5片，大枣7枚。', '将人参、胡桃肉(去壳不去衣)切细，加水与生姜、大枣同用，连煎2次，将2次煎液混合均匀，分2~3次服用。', '补肺肾，止喘咳。', '补阳类，适用于肺肾不足，胸满喘急，不能平卧，动则喘甚。', '本方所治之证，为肺气不足，肾不纳气的喘嗽气喘，治宜补肺肾、止喘咳。方中人参大补元气，入肺脾经，有补肺益脾之功。对体虚气弱，特别是肺气不足的呼吸短促，行动乏力，动则喘甚有明显的疗效。胡桃仁性味甘温，能人肺肾，既能温肺，又能润燥化痰，敛肺定喘，且可补肾固精而纳气。《古方选注》：“胡桃可解膈内痰饮，膈间痰化而咳止声清；连皮能收肺经耗散之气”，故可用治肺肾不足之虚喘。与人参配伍成方，对于肺肾两虚，虚而偏寒的咳嗽喘促，用之最宜。', '本方偏于温补，热证喘咳不宜用；又能润燥滑肠，大便溏泻者不宜服用。', 1, 'null', '补益类', '菜肴类', '煎', '/static/images/medicinaldiet/人参胡桃汤_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (196, '清蒸人参元鱼', '《滋补保健药膳食谱》', '活元鱼1只(约750g)，人参3g，鸡翅250g，火腿、姜片各10g，熟猪油、冬笋、香菇、料酒、葱各15g，清汤750g，调料适量。', '人参洗净，切斜片，用白酒浸泡，制成人参白酒液约6ml，拣出人参片备用。元鱼宰杀后去壳及内脏，洗净，剔下裙边备用，元鱼肉剁成4~6块；沸水锅内加少量葱、姜及料酒，放入元鱼块烫去腥味，捞出用清水冲洗于净，沥千水。火腿、冬笋切片；香菇洗净，斜切成两半，与冬笋用沸水焯一下；葱切段，姜洗净拍破。将火腿片、香菇片、冬笋片分别铺于蒸碗底部，平铺一层元鱼肉放在中央，元鱼裙边排于周围，再放上剩余的火腿、冬笋、香菇、鸡翅及葱、姜、蒜、料酒、盐、清汤、人参白酒液，上屉武火蒸1.5小时，至肉熟烂时取出。将汤倒入另-锅内拣去葱、姜、蒜，甲鱼肉翻扣于大汤碗中。再将原汤锅置火上加味精、姜水、料酒、精盐，调好味，烧沸，打去浮沫，滤去渣，再淋入少许明油，浇入甲鱼肉碗内，人参片撒于其面上即成。单食或佐餐均可。', '益气养阴，补虚强身。', '补阴类，适用于气阴不足所致的气短神疲，口燥咽干，不思饮食，潮热自汗，腰酸腿软，脉细虚数。', '本方所治之证，为阴亏气虚所致，治宜益气养阴。方中元鱼，即甲鱼，性味甘、平，入肝经，能滋阴凉血。《随息居饮食谱》谓：“甲鱼滋肝肾之阴，清虚劳之热。”本膳取其血肉之体滋阴补血；人参大补元气，生津止渴，《本草纲目》口其“治男妇一切虚证”，配元鱼能气阴两补，增强滋阴益气作用。诸料相配，既有滋阴益血之力，又具补气养阴之效，且营养丰富，故对阴液不足的虚弱病人有良效，适用于病后体虚、年老体弱及气阴不足、热病后阴津未复、肺结核、癌症化疗后白细胞减少；亦可用于癌症、消渴及各种慢性消耗性疾病的调理。若气虚阴亏较甚者，可以养阴益气、清火生津的西洋参代人参，其清润之功尤佳。常人食用可强身健体，提高抗病能力。', '本膳宜于气阴两虚、津液亏少的虚弱患者。若阴虚火旺、阴虚阳亢者，本方力有未及，不甚相宜。湿热内盛，阳虚内寒之体慎、勿用。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/清蒸人参元鱼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (197, '益寿鸽蛋汤', '《四川中药志》', '枸杞子10g，龙眼肉10g，制黄精10g，鸽蛋4枚，冰糖30g。', '枸杞子洗净，龙眼肉、制黄精分别洗净，切碎，冰糖打碎待用。锅中注入清水约750ml，加入上3味药物同煮。待煮沸15分钟后，再将鸽蛋打入锅内，冰糖碎块同时下锅，煮至蛋熟即成。每日服1剂，连服7日。', '滋补肝肾，益阴养血。', '补阴类，适用于肝肾阴虚的腰膝软弱，面黄赢瘦，头目眩晕，耳鸣眼花，燥咳少痰，虚热烦躁，心悸怔仲。', '本方所治之证，为肝肾阴亏，精血不足所致，治宜滋补肝肾、益阴养血。方中枸杞子甘平，入肝肾经，善滋阴补血、益精明目，用于眼目昏花、眩晕耳鸣、腰酸膝软等症。黄精甘平，入脾、肺、肾经，有补脾益肺、养阴润燥的作用。古以黄精为益寿延年的佳品，如李时珍引《神仙芝草经》云：“黄精宽中益气，使五脏调良，肌肉充盛，骨髓坚强，其力倍增，多年不老，颜色鲜明，发白更黑，齿落更生”，在益精气、补阴血方面具有较好作用，常用于体虚乏力，心悸气短，肺燥千咳，消渴等。龙眼肉功善益心脾、补气血，用于心悸、健忘、贫血等症。3药相配，能大补五脏之阴，润燥生津。鸽蛋为蛋中上品，能补虚强身。再以冰糖甘甜清润辅之，使全方具有滋补肝肾、益阴补血、生津润肺的良好作用，故可用于肝肾阴虚，肺虚燥咳等。', '阴虚内热而见潮热骨蒸，烦热盗汗之阴虚重者，本方力有不及。湿热壅盛者不宜服用。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/益寿鸽蛋汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (198, '生地黄鸡', '《肘后方》', '生地黄250g，乌雌鸡1只，饴糖150g。', '鸡宰杀去净毛，洗净治如食法，去内脏备用；将生地黄洗净，切片，入怡糖，调拌后塞入鸡服内。将鸡服部朝下置于锅内，于旺火上上笼蒸约2~3小时，待其熟烂后，食肉，饮汁。', '滋补肝肾，补益心脾。', '补阴类，适用于肝肾阴虚，盗汗，虚热，骨蒸潮热，烦躁，以及心脾不足，心中虚悸，虚烦失眠，健忘怔忡。', '本方所治之证，为肝肾阴虚，心脾不足所致，治宜滋肝肾阴血、益心脾之气。方中以生地黄独重，生地甘寒人肾，专能滋阴凉血，清.张瑞谓生地“味厚气薄，内专凉血滋阴，外润皮肤索泽，病人虚而有热者，咸宜用之”；《本草经疏》日生地为“补肾家之要药，益阴血之上品”，膳中意在以生地滋阴为主而大补肝肾之阴液；更以血肉之体的乌雌鸡滋补精血，《本草纲目》云其“补虚劳赢弱“，与诸药配伍，既能以其鲜美可口而益脾胃，更以补精血而助滋肝肾之阴，故本膳配伍的药食能相辅相成，大滋阴精，益养气血，对属阴虚之体的积劳虚损，或病后产后患者，是一首味、效俱佳的膳方。', '凡肝肾阴虚、心脾精血亏损者均可食用，但脾气素弱，入食不化，大便糖薄者，因本膳偏于滋腻，不甚相宜。外感未愈，湿盛之体，或湿热病中不宜本膳，恐致恋邪益湿。原方并日：“勿啖盐。”', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/生地黄鸡_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (199, '秋梨膏', '《医学从众录》', '秋梨3200g，麦冬32g，款冬花24g，百合32g，贝母32g，冰糖640g。', '梨切碎，榨取汁，梨渣加清水再煎煮1次，过滤取汁，两汁合并备用；麦冬、冬花、百合、贝母加10倍量的水煮沸1小时，滤出药液，再加6倍量的水煮沸30分钟，滤出药汁，两液混合，并兑入梨汁，文火浓缩至稀流膏时，加入捣碎之冰糖末，搅拌令溶，再煮片刻。每服10~15ml，每日2次，温开水冲服。', '养阴生津，润肺止咳。', '补阴类，适用于阴虚肺热，咳嗽无痰，或痰少粘稠，甚则胸闷喘促，口于咽燥，心烦音哑等。', '本方所治之证，为肺热伤津耗液所致，治宜养阴生津、润肺止咳。方中秋梨质润而多汁，性味甘、微酸而凉，功能生津润燥、清脾化痰，可生食，也可蒸煮、榨汁或熬膏食用，但生食、熟用功用有别，《本草通玄》云：“生者清六腑之热，熟者滋五脏之阴。”麦冬、百合均为清润之品，功擅滋燥泽枯、养阴生津，对燥热伤肺，津枯阴耗者，可配伍应用。川贝母性凉而有甘味，止咳化痰，兼能润肺，肺虚久咳、痰少咽燥者甚宜。款冬花功能润肺下气、化痰止嗽，其药性虽温，但润而不燥，《药品化义》认为“久嗽肺虚，尤不可缺。”以上诸物与润肺止咳化痰的冰糖，炼膏服用，尤宜于阴虚肺燥之证。', '梨性寒凉，凡脾胃虚寒，大便溏泄及肺寒咳嗽者不宜使用。且不宜与蟹同食，否则易伤脾胃而致呕吐、腹痛、腹泻。', 1, 'null', '补益类', '其它', '其它', '/static/images/medicinaldiet/秋梨膏_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (200, '淮药芝麻糊', '《中国药膳》', '淮山药15g，黑芝麻120g，粳米60g，鲜牛奶200g，冰糖120g，玫瑰糖6g。', '粳米淘净，水泡约1小时，捞出沥干，文火炒香；山药洗净，切成小颗粒；黑芝麻洗净沥干，炒香。三物同人盆中，加入牛奶、清水调匀，磨细，滤去细茸，取浆液待用。另取锅加入清水、冰糖，烧沸溶化，用纱布滤净，糖汁放人锅内再次烧沸后，将粳米、山药、芝麻浆慢慢倒入锅内，不断搅动，加玫瑰糖搅拌成糊状，熟后起锅。早晚各服1小碗。', '滋阴补肾。适用于肝肾阴虚，', '补阴类，病后体弱，大便燥结，须发早白等。', '本方所治之证，为肝肾不足、病后体虚所致，治宜滋补肝肾。方中淮山药为健脾补肾益肺的亦食亦药之品，性味甘、平，养阴益气，对脾胃虚弱，消化不良，形体瘦削者，既能补脾气，又能养胃阴；对肺气肺阴不足，咳喘少气，或虚劳咳嗽乏力者，既能补肺气，又能益肺阴，且又入肾而益肾阴，故为补脾肺肾三脏之佳品。方中重用之黑芝麻性味平和，补肝益肾，滋润五脏，其所含脂肪中，大部分为不饱和脂肪酸，对老年人有重要意义。与淮山药配伍同用，对肝肾阴虚，病后体弱，及中老年肝肾不足，大便燥结，须发早白者，尤为适宜。若长期服食，可强健身体，有延缓衰老，延年益寿之功。', '方中芝麻重用，但芝麻多油脂，易滑肠，脾弱便溏者当慎用。', 1, 'null', '补益类', '其它', '其它', '/static/images/medicinaldiet/淮药芝麻糊_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (201, '龟肉炖虫草', '《四川中药志》', '龟肉250g，冬虫夏草30g，沙参90g，葱、盐、油、味精各适量。', '制法与用法1将龟宰去头、足，除去内脏，洗净，放入瓦罐内；再把洗净的冬虫夏草、沙参放入龟肉罐中，加水适量。先用武火煮沸，然后以文火慢煮至龟肉熱透，加入油、盐、葱、味精调味。饮汤吃肉。', '补肾益肺，滋阴养血。', '补阴类，适用于肺肾两虚的久咳咯血，潮热骨蒸，头晕耳鸣，腰膝酸软，盗汗遗精，或肺痨咯血等。', '本方所治之证，乃肺肾阴虚所致，治宜补益肺肾、滋阴养血。方中龟肉性味甘成而平，能益阴补血，有治骨蒸痨热，吐血衄血，肠风血痔，阴虚血热之功能，《日用本草》谓其“大补阴虚”。凡阴虚骨蒸、咳嗽痰血及久疟等属于阴虚者，可选用之。沙参，即北沙参，性味甘而微寒，功能养阴润肺，养胃生津，善补五脏之阴，尤专补肺阴，故《本草从新》日：“专补肺阴，清肺火，治久咳肺痿”，宜用于老年人久咳而有阴虚肺热及热病后期，燥热伤阴，肺阴、胃阴不足者。冬虫夏草既养肺阴，又补肾阳，为平补阴阳之品，虽然性味甘温，却甚和缓，《本草从新》日：“保肺益肾，止血化痰，已痨嗽”，对肺肾两虚的喘咳气急，久咳不愈，或痨嗽痰中带血者皆宜。方中以乌龟肉与虫草、沙参文火炖用，补肾益肺、滋阴养血功用更著。', '本方功能滋补阴血，凡肝肾虚寒、食少便溏，外感、痰湿咳嗽者不宜服用。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/龟肉炖虫草_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (202, '黄精天冬龟肉汤', '《疾病饮食疗法》', '乌龟1只(约240g)，黄精30g，天门冬24g，五味子9g，红枣少许。', '将乌龟放在盆中，倒入热水令其排尿并烫死，洗净，剖开，去肠杂、头、爪；黄精、天冬、五味子、红枣(去核)洗净。把全部用料一齐放入锅内，加清水适量，武火煮沸后，文火煮2小时，调味即可。随量食用。', '滋肾填精，益智安神。', '补阴类，适用于肾精不足年老耳聋，伴耳鸣失眠、神疲乏力、头目眩晕、腰酸腿软、盗汗咽干、形体消瘦、舌光少苔、脉沉细数。', '本方所主之证，为肾精亏耗，虚火内生，阴精无以奉养所致，治宜滋肾填精、益智安神。方中黄精性味甘平，质地柔润，善于补肾益精，《滇南本草》称其有“补虚填精”之功。据报道，黄精有降血脂、减轻动脉硬化、增加冠脉血流量等作用。天门冬性味甘苦寒而多液，善于滋养肾阴，并能清心除烦。《本草纲目》日：“润燥滋阴，清金降火。”五味子性味酸温，有滋肾补阴、宁心安神作用。龟肉性味平，善于滋补肾阴。《名医别录》云：“肉做羹藿，大补。”方中以龟肉与黄精、天冬、五味子滋补阴血诸药作羹食用，滋肾补精之功更佳。可用治肾精亏耗之证。', '脾肾阳虚而致纳呆便溏，舌苔白腻者总饮用本汤。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/黄精天冬龟肉汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (203, '鳖鱼补肾汤', '《补药与补品》', '鳖鱼1只，枸杞子30g，淮山药30g，女贞子15g，熟地15g。', '将鳖鱼去肠杂及头、爪，洗净，与诸药共煮至肉熟，弃药调味。食肉饮汤。', '滋补肝肾。', '补阴类，适用于肝肾阴虚所致的腰膝酸痛、遗精、头晕眼花等。', '本方所治之证，乃肝肾阴虚所致，治宜滋补肝肾之阴。方中鳖鱼与滋补肝肾中药同用。鳖鱼鱼肉鲜美，营养丰富，为著名的滋补水产品，性平味廿，有滋阴、凉血、益肾、健骨等功效，《随息居饮食谱》谓其“滋肝肾之阴，清虚劳之热”，《日用本草》则认为其“大补阴之不足”。枸杞子性味甘平而质润，善滋补肝肾之阴，《本草经疏》谓其“为肝肾真阴不足，劳气内热补益之要药。”淮山药，性味甘平，既养阴，又补气，既补肾精，又益肺脾。熟地甘温滋润，入肝肾而补阴血，为治肝肾阴虚之要药，且能填精益髓，《本草纲月》谓其“填骨髓，长肌肉，生精血，补五脏。”女贞子味甘性凉，善补肝肾之阴，为清补之品，《本草备要》称：“益肝肾，强腰膝，明耳日。”枸杞子、淮山药平补肝肾，熟地廿温，女贞清补，诸药相合，与滋阴凉血的鳖肉煮汤食用，功擅滋补肝肾，凡慢性久病见肝肾阴虚，腰膝酸软，或年老体虚见有阴虚症状者均宜。', '本药膳功专养阴，滋腻粘滞，凡脾胃虚寒，便溏食少者总服用。', 1, 'null', '补益类', '菜肴类', '煮', '/static/images/medicinaldiet/鳖鱼补肾汤_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (204, '养肝明目汤', '《实用食疗方精选》', '枸杞子30g，蒺藜子12g，女贞子12g，车前子15g，菟丝子15g，白菊花15g，猪肝90g。', '将以上各药分别洗净、干燥、研为粗末，混合均匀，装入瓶中备用。每用取药末I5g煎取汤液，猪肝切为薄片，煮汤服或蒸服。服时加盐少许调味。佐餐食或食后服均可。', '补益肝肾，清热明目。', '补阴类，适用于肝肾不足所致视物昏暗。', '本方所治之证，为肝肾阴虚，以致肝热上扰所致，治宜补养肝肾、清热明目。方中枸杞子性味甘平，功能滋补肝肾、益精明目，用于肝肾不足，精血不能上济于目的眼目昏花、视力减退。单用即有一定疗效，如与其他清肝明目或养肝明目药同用，则奏效更为明显。菟丝子味甘、辛而性平，有补养肝肾、平补阴阳、益精养血明目的作用，为治疗肝肾不足，精血枯竭，目暗不明的常用药。女贞子性味甘、苦而凉，功能补养肝肾、清热明目，对肝肾阴虚有热的视物昏花、视力减弱，有较好疗效，常与枸杞子、菟丝子等补肝肾药配伍应用，以补肝肾之阴，清热明目。车前子味甘而性寒，有清热明目之功，与补养肝肾的枸杞子、菟丝子及与清热明目的菊花同用，以治阴虚肝热之目暗不明。蒺藜，又名刺蒺藜、白蒺藜，味苦辛而性平，有祛风明目之效，《本草逢原》说其“为治风明目之要药”，适用于风热目赤多泪、头目疼痛等症。白菊花辛、甘、苦而微寒，善疏风清热，义能平肝明目，对肝肾阴虚的眼暗昏花，可与枸杞子、菟丝子配伍。猪肝营养丰富，有补肝养血明目作用，用于血虚体弱或视力不足以及夜盲目暗等。若无猪肝，其他动物肝脏如羊肝、鸡肝也可应用。以诸药与猪肝配伍，相得益彰，对肝肾阴虚或兼有肝热上扰的视物昏暗、迎风流泪等，均有一定疗效。', '服食本药膳者，宜少食辛辣刺激、肥腻油甘之品，并忌烟、酒。', 1, 'null', '补益类', '菜肴类', '蒸', '/static/images/medicinaldiet/养肝明目汤_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (205, '洋参雪耳炖燕窝', '《疾病饮食疗法》', '西洋参片15g，雪耳15g，燕窝30g。', '将西洋参洗净；雪耳浸开洗净，摘小朵；燕窝用清水泡浸，捡去羽毛杂质，洗净。把全部用料一齐放入炖盅内，加开水适量，炖盅加盖，文火隔水炖2小时，调味即可。随量饮用。', '补气润肺，滋阴润燥。', '补阴类，适用于阴虚肺燥，咳喘少气，或咳痰带血，咽干口燥等。', '本方所治之证，乃肺阴受伤，肺燥所致，治宜滋肺阴、润肺燥。方中西洋参性昧甘寒，功能补肺阴、润肺燥、清肺热，《药性考》认为其能“补阴退热”，《医学衷中参西录》日：“西洋参，性凉而补，凡欲用人参而不受人参之温补者，皆可以此代之。”雪耳即白木耳，性味甘淡平，功能滋阴润肺、养胃生津，《增订伪药条辩》用“治肺热、肺燥，干咳痰嗽，衄血，咯血，痰中带血。”燕窝性味甘平，功能养阴润燥、益气补中，《本草从新》说它能“大养肺阴，化痰止嗽，补而能清”。合而同用，共奏补气养阴、滋润肺燥之功。', '凡中焦虚寒，湿盛或风寒咳嗽者，不宜饮用本品。', 1, 'null', '补益类', '菜肴类', '炖', '/static/images/medicinaldiet/洋参雪耳炖燕窝_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (206, '荷叶减肥茶', '《华夏药膳保健顾问》', '荷叶60g，生山植10g，生惹苡仁10g，橘皮5g。', '将鲜嫩荷叶洗净晒干，研为细末；其余各药亦晒干研为细末，混合均匀。以上药末放入开水瓶，冲人沸水，加塞，泡约30分钟后即可饮用。以此代茶，日用1剂，水饮完后可再加开水浸泡。连服3~4个月。', '理气行水，化食导滞，降脂减肥。', '健美减肥类，适用于单纯性肥胖、高血脂症。', '本方所主，为痰气交阻，脾不健运所致的脂肪堆积，形体肥胖，治宜健脾消食、升清降浊、降脂碱肥。方中荷叶味甘性平，入肝、脾、胃经，有利水湿、升清阳、清热解暑等作用，《本草纲目》谓其能“生化元气，裨助脾胃，涩精浊，散瘀血”，因其有利水湿、健脾胃之力，故现代多用其为降脂减肥主药。茯苓、薏苡仁长于健脾利湿，为脾虚湿停者常用之药，可与荷叶共建健脾利湿、降脂减肥之功。山楂酸甘而微温，入脾胃，消食积，长于消肉食积滞，用之佐荷叶，助其化湿降脂。橘皮辛香温散，能开脾气，助运化。诸药合用，共成理气利水、化食导滞、降脂碱肥之效，故能达到湿去肥减之目的。根据上述组方原理，本膳不仅能用于单纯性肥胖、高血脂症，也可作为糖尿病、脂肪肝、胆石症等病症的日常饮料。', '肥胖患者见有阴虚征象者不宜食用本膳，恐利水更伤阴津；若阳虚较重，则本方温阳乏力，亦不宜用。', 1, 'null', '养生保健类 ', '饮料类', '泡', '/static/images/medicinaldiet/荷叶减肥茶_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (207, '茯苓豆腐', '《家庭中医食疗法》', '茯苓粉30g，松子仁40g，豆腐500g，胡萝卜、菜豌豆、香菇、玉米、蛋清、盐料酒、原汤、淀粉各适量。', '豆腐用干净棉纱布包好，压上重物以沥除水；干香菇用水发透，洗净，除去柄上木质物，大者撕成两半；菜豌豆去筋，洗净，切作两段；胡萝卜洗净切菱形薄片，清打入容器，用起泡器搅起泡沫。将豆腐与茯苓粉拌和均匀，用盐、酒调味，加蛋清混合均匀，上面再放香菇、胡萝卜、菜豌豆、松仁、玉米粒，入蒸笼用武火煮8分钟，再将原汤200g倒入锅内，用盐、酒、胡椒调味，以少量淀粉勾芡，淋在豆腐上即成。作佐餐食用。', '健脾化湿，消食减肥。', '健美减肥类，适用于肥胖病、糖尿病等。', '本方所主，为痰湿停聚，浊气不化所致的形体肥胖，治宜利水化痰、消脂减肥。全方以茯苓、松子仁、豆腐为主组成。其中茯苓味甘淡，功能健脾和中、淡渗利湿，常用于治疗痰饮停聚，水湿潴留所致的小便不畅、浮肿、食欲不振、消化不良等症。松子仁甘而微温，能滋补强身、润肠通便。豆腐甘凉，能益气和中、生津润燥、清热解毒，《食物本草》谓其“宽中益气，和脾胃，下大肠浊气，消胀满”。三物配伍，有减肥降脂之效。茯苓得豆腐，能健中气而复脾之运化；松子仁配茯苓，则宽肠胃而促大便下行，由此水湿化于脾胃健运，水湿利于二便通畅，故能减肥消脂。', '本膳偏于寒凉，故阳虚肥胖者不宜。', 1, 'null', '养生保健类 ', '菜肴类', '蒸', '/static/images/medicinaldiet/茯苓豆腐_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (208, '参芪鸡丝冬瓜汤', '《中医临床药膳食疗学》', '鸡脯肉200g，党参6g，黄芪6g，冬瓜200g，黄酒、精盐、味精各适量。', '先将鸡脯肉洗净，切成丝；冬瓜削去皮，洗净切片；党参、黄芪用清水洗净。砂锅置火上，放入鸡肉丝、党参、黄芪，加水500ml，小火炖至八成熟，再氽入冬瓜片，加精盐、黄酒、味精，仍用小火慢炖，待冬瓜炖至熟烂即成。单食或佐餐用。', '健脾补气，轻身减肥。', '健美减肥类，适用于脾虚气弱型肥胖，症见体倦怠动，嗜睡易疲，食少便溏，或见头面浮肿，四肢虚胖者。', '本方所主，属中气不足，脾失健运所致的气虚型肥胖，治宜补气健脾、利水轻身。方中以补气药为主，辅以利水渗湿之品，故有益气减肥之功。方中党参、黄芪为健脾益气要药，党参不温不燥，平补中气。《本草正义》谓其“补脾养胃，润肺生津，健运中气，本与人参不甚相远。其尤可贵者，则健脾运而不燥，滋胃阴而不湿，润脾而不犯寒凉，养血而不偏滋腻，鼓舞清阳，振动中气，而无刚燥之弊”。黄芪补气升清，走表而利水湿，《本草正义》谓其“补益中土，湿养脾胃，凡中气不振，脾土虚弱，清气下陷者最宜”。参、芪相配，力能健中补脾，运化水湿而减肥。鸡脯肉能补益气血，补脾和胃，与参、芪相合，则补力益彰；冬瓜甘淡而凉，长于利水消痰，清热解毒，常用于水肿、胀满、脚气、喘咳等病症。与健脾补气药食相伍，既能利湿而助脾，又能祛水而减肥。诸药配伍，有平补中焦、益气除湿之效，故可用于气虚肥胖之证。', '本膳力缓效平，应较长时间服用方有佳效。本膳减肥原理在于益气健脾，对于脾气尚健，食欲较好，或阳虚湿盛之肥胖患者不甚适宜。', 1, 'null', '养生保健类 ', '菜肴类', '炖', '/static/images/medicinaldiet/参芪鸡丝冬瓜汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (209, '麻辣羊肉炒葱头', '《中华临床药膳食疗学》', '瘦羊肉200g，葱头100g，生姜10g，素油50g，川椒、辣椒各适量，精盐、味精、黄酒、醋各少许。', '先将瘦羊肉洗净，切成肉丝；生姜洗净，刮去皮，切成姜丝；葱头洗净切片。以上配料加工好备用。将炒锅置火上，放入素油烧热，投入适量川椒、辣椒(因人耐辣口味而定用量)，炸焦后捞出；再在锅中放入羊肉丝、姜丝、葱头煸炒，加入精盐、味精、黄酒、醋等调味，熟透后收汁，出锅即成。佐餐食用。', '温阳化湿，利水减肥。', '健美减肥类，适用于阳虚水停所致的肥胖症，症见畏寒肢冷，怠动嗜卧，尿清便溏，肢腹虚浮者。', '本方所主，为阳气不足，温化无力，水湿难化，停聚而成的阳虚型肥胖症，治宜温补阳气、散寒利水，以消肥胖。方中主料羊肉味甘性温，功能益气养血，温中补虚，用于虚劳羸瘦，虚冷腹痛，中虚反胃等证，在本膳中起温阳减肥作用。葱头辛温，能温通经脉、通阳宣肺、祛风达表。生姜辛热，能温化寒饮、健胃止呕、发散风寒，治疗阴冷诸疴及寒湿内蓄之证。加以川椒辛热，辣椒辛热，与羊肉、生姜共用，更能温阳散寒、除湿化水。诸料均为辛热之品，诸热相煽，如日照当空，阴霾为之四散，水温蒸腾而化散于无形，肥胖自可渐减。', '本膳为热性食品，阴虚火旺者不宜。', 1, 'null', '养生保健类 ', '菜肴类', '炒', '/static/images/medicinaldiet/麻辣羊肉炒葱头_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (210, '冬瓜粥', '《药粥疗法》引《粥谱》', '新鲜连皮冬瓜80~100g (冬瓜子亦可，干者10~15g，鲜者30g)，粳米100g。', '先将冬瓜洗净，切成小块，同粳米一并煮为稀粥。用子者则先用冬瓜子煎水，去渣取汁，再以汁同米煮粥。粥成后随意服食。', '利尿消肿，清热止渴，降脂减肥。', '健美减肥类，适用于痰热型肥胖症，症见小便不利、浮肿肥胖、口干胸闷等。', '本方所主，为痰湿蕴热所致之形体肥胖，治宜清化热痰、利尿除温、消肿减肥。本膳主料为冬瓜或冬瓜子，两者均味甘，性微寒，有利小便、止烦渴之效，《食物本草》称其“益气耐老，除满，去头面热“；因其性寒，故又谓：“热者食之佳，冷者食之瘦......轻健者食之，欲肥胖者勿食”；可知有清热除湿、轻身减肥功效。配合粳米熬粥，则可养胃肠而消减其寒凉之性，是痰热型肥胖者合适的膳食。亦可用于急慢性肾炎所致之水肿，及暑热烦闷，口干作渴，肺热咳嗽等。此外，冬瓜和冬瓜子还是传统美容药食，古代常琪内服或外用，“合面药令人美颜色”。《荆楚岁时记》记载：“7月采瓜，犀为面药，光泽华采”。可知其具有减肥、美容双重功效。', '丹溪云：冬瓜性走而急，久病及阴虚者忌食之。', 1, 'null', '养生保健类 ', '粥食类', '煮', '/static/images/medicinaldiet/冬瓜粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (211, '茯苓饼子', '《儒门事亲》', '白茯苓120g，精白面60g，黄蜡适量。', '将茯苓粉碎成极细末，与白面混合均匀，加水调成稀糊状，以黄蜡代油，制成煎饼，当主食食用。每周食用1~2次。', '补气健脾，饱腹减食。', '健美减肥类，适用于单纯性肥胖，食欲旺盛者。', '本方所主，为脾胃运化失调，胃强脾弱之证，多食而难化，宜健脾抑胃、减食减肥。方中重用茯苓，其味甘淡、性平，《神农本草经》谓其：“久服安魂养神，不饥延年”，具有健牌和胃、宁心安神、渗湿利水之功用，《普济方》载有“茯苓久服，令人长生”之法。茯苓的有效成分为茯苓多糖，不仅能增强人体免疫功能，还可以提高抗病能力，历代医家均将其视为常用的延年益寿之品，因其药性缓和，可益心脾、利水湿，补而不峻，利而不猛，既可扶正，又可去邪，在本方中起健脾助运、运转水湿脂肪的作用。所用黄蜡，颇有创意，制饼本应油煎，此膳以蜡代油，不含任何营养素，食后反而有饱腹感，有抑制食欲作用。此方原为古人“辟谷绝食”之用，盖黄蜡有饱腹作用。白面合茯苓，可维持人体必须养分，使不食而不致缺乏营养。3味配合，实为精思妙想，有健脾消食、抑胃减肥作用。', '本方原为“辟谷”而设，食后可致食欲降低，凡营养不良、贫血、脾虛食欲不振、神经性厌食等禁用。食用本膳后食欲下降，可任其自然，但必须防治胃肠空虚，原书嘱常用少许芝麻汤、米汤等“小润肠胃，无令涸竭”。有饥饿感时再进正常饮食。老年人脱肛和小便多者不宜服食。', 1, 'null', '养生保健类 ', '其它', '煎', '/static/images/medicinaldiet/茯苓饼子_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (212, '鲤鱼汤', '《备急千金要方》', '鲤鱼1条(重500g)，白术15g，生姜、白芍、当归各9g，茯苓12g。', '鲤鱼去鳞片、肚肠，洗净，备用。将后5味切成黄豆大小碎块，加水熬取汁，去药痒，以药汁煮鱼，鱼熟后加入调味品，食鱼喝汤，1日内分3~5次服完。', '健脾养血，利水减肥。', '健美减肥类，适用于妇人肥胖，小便不利、头晕，四肢浮肿者。', '本方所主，为肝脾两虚，血少而水气不化所致的痰湿型肥胖。治宜健牌利水，疏肝养血。方中鲤鱼下气利水，当归养肝血以营经，白芍敛阴以柔肝，白术健脾以制湿，茯苓清肺而和脾。熬鱼汁以煮药，使肝血充，肝气调和；脾气化，水湿得运。肝脾气调，小便通利，痰湿水气自小便而去，则浮肿肥胖得消。本方出自《干金要方》，原用于妇人妊娠水气，腹部肿大，小便不利等，其功效历千年而不衰。历代医家对本方的运用范围均有扩展，近年来用于减肥，适用于肝脾不足，水气不化的痰湿型肥胖患者。', '暂无', 1, 'null', '养生保健类 ', '菜肴类', '煮', '/static/images/medicinaldiet/鲤鱼汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (213, '健美茶', '《家庭药茶》', '普洱茶、乌龙茶、莱服子、茯苓。', '有市售成药。每次1小袋，放入茶杯中用开水冲泡，2~3分钟后即可饮用。每日饮用2袋。', '升清降浊，祛脂减肥，能使人轻健苗条、皮肤细腻。', '健美减肥类，适用于身体肥胖，皮肤粗糙者。', '本方所主，为痰浊壅盛，停聚不化所致之膏脂型肥胖症。治宜利水化痰、消脂减肥。本方中普洱、乌龙等茶均是消脂减肥之佳品。《茶经》等书记载：“茶能清热止渴，下气除痰，醒睡，消食解腻，清头目，利小便。热饮宜人。久饮损人，去人脂，令人瘦”，其消脂减肥、醒神利尿功效早已被人们所认识。配伍莱菔子、茯苓，则增加了健脾消食功效，则减肥疗效更著。', '本膳以茶为主料，据《三元参赞延寿书》等养生书记载：“茶饮者，宜热，宜少，饥则尤不宜，令人不眠。同韭食身重。冷饮聚痰，久饮损人。”', 1, 'null', '养生保健类 ', '饮料类', '泡', '/static/images/medicinaldiet/健美茶_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (214, '蟠桃果', '《景岳全书》', '猪腰2只，芡实60g，莲子肉(去心)60g，大枣肉30g，熟地30g，胡桃肉60g，大茜香10g。', '将猪腰洗净，去筋膜；大茴香为粗末，掺入猪腰内。猪腰与莲子、芡实、枣肉、熟地、胡桃肉同入锅，加水，用大火煮开，改为文火炖，至猪腰烂熟为止。加盐及其他调味品食用，饮汤。1口内服完。连用7日。', '补脾滋肾，美颜乌发。', '美发乌发类，适用于脾肾亏虚，精气不足，须发早白，腰酸腿软，男子遗精，女于带下。', '本方所主，为脾肾虚损造成的须发早白、容颜枯憔，治宜健脾益气、补肾填精、滋养须发。方中以猪腰、莲子肉、胡桃肉等药食为主料。其中用猪肾是取“以脏补脏”之意；核桃仁自古以来就是美容佳品，《开宝本草》谓其“令人肥健，润肌，黑须发“，唐代医家孟诜认为“常服令人能食，骨肉细腻光滑，须发黑泽，血脉通润”；两味合用，可使皮肤润泽细腻光滑，富有弹性。对头发早白，于枯不荣者则有乌发、润发作用。莲子肉、芡实、大枣均为健脾之品，有滋补后天、益气生血作用。茴香则温煦下焦，蒸腾肾精，散布津液。诸药合用，有强肾健脾之效，从根本上消除毛发枯槁、肌肤失荣的病理。坚持服用，有乌发美容之效。', '凡属阳虚气弱者，可加人参、制附子。', 1, 'null', '养生保健类 ', '其它', '炖', '/static/images/common/暂无图片.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (215, '玉柱杖粥', '《医便》', '槐子10g，五加皮10g，枸杞子10g，破故纸10g，怀熟地黄10g，胡桃肉20g，燕麦片100g。', '将槐子、破故纸、胡桃肉炒香，研末；将五加皮、熟地加水煎煮，去滓，留取药液；再用药液和枸杞子、麦片共熬粥，粥成后，撒入槐子、破故纸、胡桃肉末，随量食用。食用时可加入适量白糖调味。', '填精益肾，乌须黑发，延年益寿。', '美发乌发类，适用于毛发枯焦，脱发落发，皮肤干燥，大便干结等。', '本方原名“玉柱杖”，剂型为蜜丸。本膳在原方基础上减去没石子、沉香、大苘香，并以麦片加工成粥。不仅保留了原方功效，且味香爽口；更改药为食，易于接受。肾为先天，所藏之精是生命的原动力，精亏则寿减，毛发肌肤自然枯憔不泽。方中熟地、枸杞、胡桃肉、破故纸、枸杞均为滋补肝肾之品，久食能养益精血。槐子又名槐角，《抱朴子》谓其“主补脑，久服令人发不白而长生”。由于槐子含蛋白质和胶质，服后有饱腹感，且有足够营养维持生理活动，故又是瘦身减肥通便的佳品。燕麦一味，古人已经发现其“久食甚宜人，头发不白，补虚劳，壮血脉，益颜色，实五脏，止泄，令人肥白滑肌”，更是现代乌须黑发、降脂减肥的必用之品。诸料合为一方，是古为今用，推陈出新之范。', '本膳健脾之力不足，凡食欲不振、嗳气泛酸者不宜。', 1, 'null', '养生保健类 ', '粥食类', '熬', '/static/images/medicinaldiet/玉柱杖粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (216, '七宝美髯蛋', '《本草纲目》卷十八引《积善堂经验方》', '制何首乌90g，白茯苓60g，怀牛膝30g，当归30g，枸杞子30g，菟丝子30g，补骨脂40g，生鸡蛋10个，大茴香6g，肉桂6g，茶叶3g，葱、生姜、食盐、白糖、酱油各适量。', '将上述诸料一齐放入砂锅内，加适量水。用武火煮沸，再改用小火慢煮10分钟，取出鸡蛋，剥去蛋壳，再放回汤内用小火煮20分钟即可。每日食2~3只鸡蛋。鸡蛋食完后，含药的卤水可重复使用3~4次，每次加入鸡蛋10只同煮。但卤水需冷藏防腐，每次煮蛋需稍加调味品。\r\n', '益肝肾，乌须发，壮筋骨。', '美发乌发类，适用于肝肾不足所致的白发，脱发，不育等。', '本方所主，为肝肾不足所致的毛发早白，或脱发、发桔，治宜滋补肝血和肾精。本膳来源于著名乌发方剂“七宝美髯丹”，采用民间制作茶叶蛋的方式而改制成药膳，使治病方剂变成美味可口的膳食。方中何首乌补肾气而涩精气，是传统乌发泽发药物；茯苓交通心肾而渗脾湿；牛膝强筋骨面益下焦；当归辛温以养血；枸杞子甘寒而补水；菟丝子益三阴而强精气；补骨脂助命火而暖丹田；七味均属固本强肾之药，合用能使荣卫调适、精血充沛，共成补肾养肝、乌须黑发之功。其余大茜香、肉桂之类，均是民间制作茶蛋所需调味品，但亦有暖火强肾之效，可与诸药相辅相成。加上鸡蛋本身的补益作用，则本膳作用更加明显。', '据《本草纲目》、《本草衍义》等记载：服何首乌者，食萝卜则髭发白。故服用本膳期间忌食萝卜及动物血、蒜、葱等食物。', 1, 'null', '养生保健类 ', '其它', '煮', '/static/images/common/暂无图片.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (217, '花生米大枣炖猪蹄', '《中华临床药膳食疗学》', '猪蹄1000g，花生米(带红衣)100g，大枣40枚，料酒、酱油、白糖、葱、生姜、味精、花椒、大茴香、盐各适量。', '猪蹄刮去毛，洗净，剖开砍成段块；花生米、大枣洗净；葱切段，姜切片备用。用砂锅先将猪蹄煮至四成熟后捞出，用酱油搽涂均匀，放入植物油内炸成黄棕色，再放入洗净之砂锅内，注入清水，放入花生米、枣及其他佐料。在旺火上烧开后，改用文火炖至熟烂。分4顿佐餐食用，连服10~15日。', '补益气血，养发生发。', '美发乌发类，适用于气血亏虚所致的毛发枯黄，容易脱落，稀少而早白者，并伴有面色不华，心悸气短，自汗乏力等。', '本方所主，为气血不足所致的须发不荣，枯槁早白，脱落稀少等，治宜补养气血、美发生发。方以猪蹄、花生、大枣为主料。猪蹄能和血脉、润肌肤、益气通经，《医林纂要》谓：“猪蹄，为全身筋力所在，味甘咸平，能补气血，养虚赢，润肌肉”，“水畜也，故善通经隧，能通乳汁”。《随息居饮食谱》则称其“填肾精而健腰脚，滋胃液以滑皮肤，长肌肉，助血脉，较肉尤补”，以其善补气血、通血脉、润肌肤面用于毛发枯黄失荣者。花生米养血和血、和胃润肺，尤以花生衣功效更著。大枣为益气健脾的常用药。故本方以花生、大枣两味健脾和胃，益气补中之品配伍猪蹄，共奏益脾胃、生气血、滋肾精的作用。精血充盛，则毛发渐生渐黑，故可治发枯发脱。此外，本膳还可用于妇人产后乳计不下，属气血不足者。', '本膳用于气血虚少者，若阳虚较重，或痰湿内蓄等病证所至的毛发不荣，不适宜用本方治疗。脾虚肠滑，大便稀糖者，忌用本膳。', 1, 'null', '养生保健类 ', '菜肴类', '炖', '/static/images/medicinaldiet/花生米大枣炖猪蹄_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (218, '煮料豆', '《增补内经拾遗方论》', '制首乌、枸杞子各24g，生地、熟地、当归、炒杜仲、牛膝各12g，菊花、甘草、川芎、陈皮、白术、白芍、丹皮各3g，黄芪6g，盐18g，黑豆500g。', '上药同黑豆煮透，晒干。去药，将黑豆当消闲零食食用。每天约30~50g左右。', '乌须黑发，固齿明目。', '美发乌发类，适用于血虚白发，头晕心悸，面色、口唇、爪甲淡白。', '本方所主，为血虚所致的白发，治宜养血生发。方首鸟、枸杞、牛膝、杜仲能滋补肝肾精血；生地、熟地、当归、川芎、白芍为四物汤基本成分，伍以丹皮，能养血补血；黄芪益气以资气血之源。菊花散风清热，盐能引便人肾。诸药合用，共成补肝肾、益精血之方。黑豆为本膳主料，色黑人肾，养血而润燥，得诸药相助，使肝肾精血足，毛发筋骨得其所养，自能乌须黑发。', '暂无', 1, 'null', '养生保健类 ', '其它', '煮', '/static/images/medicinaldiet/煮料豆_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (219, '瓜子芝麻糊', '《千金翼方》', '甜瓜子、白芷、当归、川芎、炙甘草各60g，松子仁30g，糯米150g，黑芝麻500g。', '先用白芷、当归、川芎、炙甘草煎煮取汁，再用药液浸泡糯米、甜瓜子、松子仁，晒干，再浸，直至药液用完。再将糯米、瓜子、松仁和芝麻一起炒香，研为细粉。每服30g，用沸水冲成糯食用。1日2次。', '活血补血，养发润肤。', '美发乌发类，适用于头发早白稀少；亦可防衰抗老，预防头发早白。', '本膳来源于《千金翼方》“瓜子散”。原方为散剂，方中无糯米、芝麻。经加工制成药膳，防治白发作用明显增强。方中甜瓜子活血散瘀、清肺润肠，松子仁润燥滑肠，两味能润肠解毒；当归、川芎活血养血，血充则毛发自润；白芷祛风洁肤，是古代常用的美容药物；甘草、糯米、芝麻能益气健脾，养胃润燥，有一定的补益作用。诸药食合用，功在养血涧燥、清肠解毒，故对美发生发有一定效果。', '本膳有通利大便作用，故肠虚便溏者慎用。', 1, 'null', '养生保健类 ', '粥食类', '其它', '/static/images/medicinaldiet/瓜子芝麻糊_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (220, '玫瑰五花糕', '《赵炳南临床经验集》', '干玫瑰花25g，红花、鸡冠花、凌霄花、野菊花各15g，大米粉、糯米粉各250g，白糯100g。', '将玫瑰、红花、鸡冠、凌筲、野菊诸干花揉碎备用；大米粉与糯米粉拌匀，糯用水溶开。再拌人诸花，迅速搅拌，徐徐加糖开水，使粉均匀受潮，并泛出半透明色，成糕粉。糕粉湿度为手捏一把成团，放开一揉则散开。糕粉筛后放人糕模内，用武火蒸12~15分钟。当点心吃，每次30~50g， 1日1次。', '行气解郁，凉血活血，疏风解毒。', '润肤养颜类，适用于肝气郁结，情志不舒所致的胸中郁闷，面上雀班、黄褐斑等。', '所主之证，为肝郁血热所致，治宜行经解郁、凉血消瘀。本膳原名凉血五花散，治疗红斑性皮肤病初期，偏于上半身者。因对颜面皮肤有很好的保健治疗作用，故加上食料，制成米糕食用，使之更加易于服用。方中玫瑰花疏肝理气，益肝胆，活血化瘀，食之芳香甘美，令人神爽，为方中主料；凌霄花凉血活血泻热，红花理气活血化瘀，鸡冠花疏风活血，野菊花清热解毒；大米、糯米粉滋阴补益中气。药食合用，则能活血解毒、消瘀积、洁颜面，久服则精神爽快，益智延年。又因花性轻扬，故用于面部及身体上部皮肤疾患更为相宜。', '本膳行气活血作用较强，故气虚、血虚、经期、孕期、哺乳期等患者忌用。', 1, 'null', '养生保健类 ', '粥食类', '蒸', '/static/images/medicinaldiet/玫瑰五花糕_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (221, '小龙团圆汤', '《中国传统性医学》', '活甲鱼1只(约250g)，活泥鳅5~6条。', '泥鳅故人清水中，滴入少量菜油，使泥鳅吐出肚内泥沙，水浑即换；再滴油，至水清为止。甲鱼去硬壳，取肉。砂锅内加足水，滴入适量植物油，放人活泥鳅和鳖肉，加盖，用小火慢煮。待泥鳅死后加入少许生姜片、龙眼肉，煮至半熟时滴入少量米酒及少许醋、盐，再慢火煮熬3小时以上，至色白似乳汁时撤火。趁热连汤服食。1天之内连汤带肉分2次趁热食完。每天1次，连用10天。', '滋阴补肾，润肤养颜。', '润肤养颜类，适用于日常皮肤美容保养。', '本膳有滋阴补肾功效，含大量优质蛋白和胶原物质，对皮肤的细胞代谢有补益作用。方中泥鳅、甲鱼都是属阴的动物，生活于水底泥中。中医认为此两物得天地间阴气最为充盛，有滋阴补肾之效。用之美容养颜，亦是取其滋阴润肤之意。', '脾胃虚寒者不宜服用。', 1, 'null', '养生保健类 ', '菜肴类', '熬', '/static/images/medicinaldiet/小龙团圆汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (222, '红颜酒', '《万病回春》', '核桃仁、小红枣各60g，甜杏仁、酥油各30g，白蜜80g，米酒1500g。', '先将核桃仁、红枣捣碎；杏仁去皮尖，煮4~5沸，晒干并捣碎，后以蜜、酥油溶开入酒中；随后将3味药入酒内，浸7天后开取。每日早晚空腹饮用，每服10~20ml。', '滋补肺肾，补益脾胃，滑润肌肤，悦泽容颜。', '润肤养颜类，适用于面色憔悴，未老先衰，皮肤粗糙等。', '本方所主，为肺肾两虚，脾胃不足所致的皮肤憔悴、粗糙等症，治宜补肺以润皮毛，滋肾以填元精，健脾以化其源。方中核桃，味甘，性平温，李时珍在《本草纲目》中记载其“能使人健壮，润肌，黑须发，通润血脉，骨肉细腻，补气养血”；小红枣补脾胃，滋养阴血；杏仁富含油脂，能润泽皮肤，孙思邈谓杏仁“肥白易容，人不识“，可见其养颜润肤之功。酥油、白蜜润养肌肤以除皱纹，配合上药，则使颜面娇美，细嫩如玉。', '阴虚火旺，容易上火者忌服。', 1, 'null', '养生保健类 ', '饮料类', '其它', '/static/images/medicinaldiet/红颜酒_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (223, '沙苑甲鱼', '《中华临床药膳食疗学》', '活甲鱼1只(约750g)，沙苑蒺藜15g，熟地10g，生姜15g，葱10g，料酒30g，精盐2g，酱油10g，胡椒1g，肉汤500ml，味精1g。', '活甲鱼斩头，沥净血水，在沸水中烫约3分钟，取出用刀刮去背部及裙边黑膜，再刮去脚上白衣，剁去爪和尾，剖开腹腔，取出内脏不用，洗净甲鱼肉备用；生姜切片，葱切成小段；沙苑蒺藜、熟地用纱布包好。锅内放清水，放入甲鱼，煮沸后，再用文火炖约半小时，捞出放温水内剔去背壳和腹甲，洗净，切成3cm见方的肉块。再将甲鱼块装入蒸钵内，注人肉汤，再加姜片、葱段、料酒、精盐、酱油、胡椒粉和药包，用湿棉纸封严钵口，上蒸笼，置旺火上蒸2小时取出。拣去药包、姜片、葱，放入味精调味即成。作佐餐食用。', '滋养肝肾，补益精血，强腰固精，美容润肤。', '润肤养颜类，适用于肝肾虚损，年老体衰，容颜憔悴，早衰体弱。', '本方所主，为身体精气不足，肝肾虚损，年老体衰等所致的容颜苍老憔悴，早衰体弱等，治宜滋补肝肾精血、润肤抗皱、增加皮肤弹性。方中主料甲鱼，昧咸平，性寒，为血肉有情之品，长于补养精血，甲鱼肉含蛋白质、脂肪、糖类，以及钙、磷、铁等微量元素和多种维生素，久服可以强身延年，润泽皮肤，增加皮肤的弹性，减少皱褶。沙苑蒺藜人肝肾之经，能补益肝肾、固精明目，《本草从新》谓其“补肾益精，明目悦颜”，具有延缓衰老、减缓皮肤老化、抗肿瘤等药理作用，还有轻身健体、润肤美颜功效。熟地为滋阴补血要药，能增强本方的润肤抗皱作用。诸药食合用，共成补养肝肾精血、滋润皮肤、美容泽颜之方。经常食用，可保持姣好容颜，减缓皮肤衰老，增强皮肤弹性，增强身体抵抗力，延缓衰老。对于中老年美容抗衰，病后滋补，强壮健身，调养体质衰弱者有良好效果，是延缓衰老的有效膳方。', '本膳以补阴养血见长，适用于阴虚体质。若阳虚有寒，或病湿素盛等，则不宜用。', 1, 'null', '养生保健类 ', '菜肴类', '炖', '/static/images/medicinaldiet/沙苑甲鱼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (224, '真珠拌平菇', '《家庭中医食疗法》', '真珍珠粉4g，红花2g，平菇200g，豆腐200g，芝麻、白糖、酱油、精盐、绍酒各适量。', '红花置细漏勺内，用清水冲洗干净，沥干水；平菇去柄，洗净，撕成条丝，放入容器内加酱油、白糖、绍酒浸拌入味；豆腐用洁净纱布包好，压上重物，挤压干水分备用。豆腐放容器内拌碎，加入芝麻粉、白糖、酱油拌和，再将已备好之平菇加人，充分拌匀，装于盘内，撒上珍珠粉和红花即成。进食时再调拌均匀。作佐餐食用。', '养血活血，滋润肌肤，泽丽容颜，祛斑美容。', '润肤养颜类，适用于面色淡白无华及黄斑、蝴蝶斑等皮肤色素病症；对粉刺类皮珍亦有作用。', '本方所主，为经脉瘀阻，血循不畅，肝经郁热所致的皮肤色素病变，治宜活血养血、清肝泄热。方以珍珠、红花、平菇、豆腐为主料。其中珍珠咸甘而寒，是传统润肤美颜之品，功能：泻热潜阳，安神定惊，磨翳明目，涂面能令人皮肤润泽，颜色姣好。面生褐斑，多为血行不畅，污腻滞于面部，故以红花养血活血，通行面部血脉，与珍珠之润肤泽颜功效相配合，有互相促进之效。平菇、豆腐，均营养丰富，色鲜味爽，清凉可口，富含各种维生素、微量元素，清凉甘鲜，能和肾调中、清泄肝热、润泽肌肤，可增强上药的作用。', '本膳味偏清凉，用于色素斑或面部血循较差者。而对于面部皮肤感染、癜痕等无甚作用，不宜服食。', 1, 'null', '养生保健类 ', '菜肴类', '其它', '/static/images/medicinaldiet/真珠拌平菇_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (225, '苡仁茯苓粥', '《家庭中医食疗法》', '薏苡仁200g，茯苓10g，粳米200g，鸡胸脯肉100g，干香菇4个。', '将薏苡仁用热水浸泡1夜，次日捞出沥干水；香菇泡发，去除木质部分，洗净，切成丁；鸡脯肉去皮洗净，入锅煮30~40分钟后，捞出切为肉丁；粳米洗淘干净，茯苓研粉。备用。薏苡仁用7倍清水在武火上煮沸后，移于文火慢煮，至能用手捏烂故米为度。粳米用5倍的清水煮1小时。然后将两粥合在一起，加入香菇、鸡肉丁、茯苓粉再煮，至煮稠为止。服食时可酌加调料。', '健脾利湿，润肤美容。', '润肤养颜类，适用于皮肤虚肿、面色暗淡，及皮肤褐班、面部扁平疣。', '本方所主，为脾虚痰饮，气血不足，肌腠失养所致的虚肿、褐斑等皮肤疾患，治宜健脾利湿、补益气血、润肤退斑。方中惹苡仁味甘性凉，能上清肺热，下渗脾湿，是健脾利湿的良药，用于扁平疣、浮肿等具有良好作用；茯苓甘平，为健脾胃、祛痰湿的常用药物，又能宁心安神，与薏苡仁合用，可加强健脾利湿功效，促进疣子斑块的消除；香菇营养丰富，能健脾开味，含有多种人体必需的氨基酸、多糖类物质，有抗菌、降血糖、抗癌作用；粳米健脾和胃，益气补中；鸡脯肉益气和中，补养精血。全方组合，既有健脾利湿、退斑消疣的功效，又有和胃益气、滋养精血的作用。精血充盛，内能滋脏腑，外能润肌肤，使容颜润泽，精神健旺。', '本膳作用平和，须常服、久服，方见显效。主要用于脾虚湿重患者，若肾阳虚弱所致面色黧黑，或阴虚火旺所致的面部红斑疹，或面部扁平疣而见阴虚较重的患者，均不宜服用本膳。服膳期间总食辛辣燥热及肥厚油腻之物。', 1, 'null', '养生保健类 ', '粥食类', '煮', '/static/images/medicinaldiet/苡仁茯苓粥_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (226, '胡椒海参汤', '《中华临床药膳食疗学》', '水发海参750g，鸡汤750g，香菜20g，酱油、精盐、味精、胡椒粉、香油各少许，料酒15g，葱20g，姜末6g，猪油25g。', '将已发好的海参放入清水中，轻轻刮去腹内黑膜，洗净，用刀将海参片裁成大抹刀片，放入沸水锅中氽透，捞出沥干水分；葱洗净切碎，生姜洗净切成末，香菜洗净切为寸段。猪油放锅中，上火烧热，入葱段、胡椒粉稍加煸炒，再注入料酒，加入鸡汤、精盐、酱油、味精和毛姜水，然后把海参片放入汤内，煮沸后撇去浮沫，调好口味，淋入香油，盛入大汤碗内，撒上葱花和香菜郎成。作佐餐食用。', '补肾益精，养血和血，润燥美颜。', '润肤养颜类，适用于肝肾亏损，精血不足，不能滋润营养皮肤容颜所致的皮肤干燥、皱纹过多、弹性减弱等皮肤衰老过快、过度干燥者。', '本方所主，为肾虚精亏，津液不足，肌肤失其滋养而皮肤枯燥、憔悴、皱纹等，治宜滋养精血、补益肝肾，俾血足津润，则肌肤自荣。方中海参甘咸而温，入肝、肾、肺、脾等经，有补虚损、和血络、填精益肾、滋阴润燥、延年益寿之效。《温病条辨》谓“海参者，咸能化坚，甘能补正，其液数倍于其身，其能补液可知。且蠕动之物，能走络中血分。”鸡汤营养丰富，具有补气养血作用。两料相配，能益气血、补肾肝，精血充足，则能滋荣皮肤，润泽容颜。本膳鲜香适口，经常食用能延缓皮肤衰老，保持皮肤弹性。', '本膳用于肝肾不足的皮肤早衰或病后皮肤于燥，功偏滋润，故肾气不足，阳虚内寒所致的面色黧黑等不宜食用。', 1, 'null', '养生保健类 ', '菜肴类', '煮', '/static/images/medicinaldiet/胡椒海参汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (227, '黄精煨肘', '《中华临床药膳食疗学》', '猪肘500g，黄精10g，桑椹10g，玉竹10g，调料适量。', '先将黄精、桑椹、玉竹包于纱袋内备用；猪肘子洗净，入沸水内焯去血水捞出，与纱袋内药物同煮，加入调料，武火烧沸，去浮沫，文火煨至汁浓、肘子熟烂时，取出纱布药包，将肘、汤、大枣同时装入碗内即成。佐餐食用。', '滋阴润燥，健肤养血。', '润肤养颜类，适用于气血津液不足，肌肤不荣，血虚生风所致的皮肤干燥粗涩，瘙痒皮屑，易生褐斑等。', '本方所主，为血虚生风，精枯不润所致的皮肤不荣、燥涩瘙痒诸症，治宜养血生精、滋阴润燥、祛风止痒。方中猪肘味甘咸，性平，功能滋阴养血、润燥嫩肤，所含胶质蛋白有增加皮肤弹性、延缓皮肤老化的作用；黄精甘平，补中益气，养阴润肺；桑椹甘酸性寒，滋阴养血、健肤润燥；玉竹甘平，滋阴润燥，养益肌肤。诸药共用，共奏滋阴养血，润肤熄风之效。', '本膳偏于滋阴养血，味厚而重，凡脾胃虚弱，食不消化者，不宜食用。', 1, 'null', '养生保健类 ', '菜肴类', '其它', '/static/images/medicinaldiet/黄精煨肘_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (228, '清蒸哈什蟆', '《中华临床药膳食疗学》', '干哈什蟆油15g，火腿10g，鸡汤1500g，白糖50g，精盐、味精、料酒各适量。', '将哈士蟆油用温水泡发3小时，使其涨发，挑出黑筋，洗净；将火腿蒸熟，切成1~2cm长的薄片；将涨发好的哈土嫫油放人钵里，加满鸡汤，下料酒、盐，上笼蒸1.5小时；最后放味精、白糖，把火腿片撒在上面，即可食用。单食或佐餐。', '滋阴润肺，补肾强精，养颜美容。', '润肤养颜类，适用于肝肾不足，元气亏损所致的衰老憔悴，面色枯憔，四肢软弱、消瘦乏力；亦可作为产后体虚及年老体弱者的滋补保健调养品。', '本方所主，为肺肾阴虚，脏腑气虚，皮毛失养所致的虚损证候。精气不足，颜面肌表随之失荣而憔悴枯槁。治宜大补元气，滋填肾精，养益肺气，恢复容颜。方中哈士蟆油是东北特产林蛙雌蛙怀卵成熟期的输卵管，含有丰富的氨基酸、维生素和多种复合多肽等生物活性因子，尤其富含雌二醇、睾酮、孕酮3种性激素，所含氨基酸超过东北野参的十几倍。因此有补肾益精、润肺养阴、益寿延年和延缓老化作用，集药用、滋补和美容于一体，是理想的滋补强壮剂。', '暂无', 1, 'null', '养生保健类 ', '菜肴类', '蒸', '/static/images/medicinaldiet/清蒸哈什蟆_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (229, '燕窝粥', '《本草纲目拾遗》', '燕窝10g，糯米100g，冰糖10g。', '先将燕窝放入开水中闷泡，水冷后换入清水，摘去绒毛和污物，洗净，盛入碗中，加清水100ml，上笼蒸30分钟，致燕窝完全胀发。再将糯米浸泡24小时，洗净入锅，煮沸，待米粒煮开时加入燕窝、冰糖，文火煮熬至熟烂，即可食用。每日1次，连服7~10天。', '润肺补脾，养阴润燥，延年驻颜。', '润肤养颜类，适用于元气虚损，痨瘵，面色不华，颜容憔悴，咳嗽爽喘，咯血吐血等症。', '本方所主，为元气大亏，肺胃牌肾俱虚，阴伤液枯所致；治宜大补元气，俾肺气足而充皮毛，肾气足而精养神，胃气足而盈血脉，因而容颜芳泽细腻，形神俱足。燕窝味甘、性平，功效养阴润燥，益气补中，《本草求真》谓其“人肺生气，人肾滋水，人胃补中。俾其补不致燥，润不致滞，而为药中至平至美之味者也”。可知重点在于补肺，补肾、补脾胃。肺、肾、脾气盛，则皮毛润泽，容颜长驻。加以冰糖补阴，糯米益气，制成燕窝粥，即成为营养价值极高的滋补药膳。', '本膳以小量常服为佳。肺胃虚寒、湿痰停滞及有表邪者忌用。', 1, 'null', '养生保健类 ', '粥食类', '煮', '/static/images/medicinaldiet/燕窝粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (230, '枸杞子酒', '《延年方》', '枸杞子200g，60°白酒500ml。', '将枸杞子用清水洗净，剪碎放入细口瓶中，加白酒约350ml，瓶口密封，每日振摇1次，浸泡1周以后即可供饮用。每日晚餐或临睡前饮用10~20ml。瓶中酒可边饮边加(约共加150ml)，枸杞子可拌糖食用。', '养阴补血，长肌肉，益颜色。', '润肤养颜类，适用于日常养颜美容。', '本膳是日常养颜美容所用的药酒。面色红润光泽，富有弹性，需要脏腑精气充盛，血脉疏通畅达，肌肤毛窍才能得到滋养。本膳能补肝肾、益精血，故可作为养颜膳方。方中主料为枸杞子，其味甘，其性平，可以养阴补血、益精明目。枸杞含有人体所必须的蛋白质，粗脂肪，糖，胡萝卜素，玉蜀黍黄素，烟酸，维生素A、B、C，酸浆红素及锌、磷、铁等微量元素，因此具有较强的补益功能。制成酒剂，能通达经络，助行药力。本方历千年而不衰，可知其功效确实。', '外邪实热，脾虚有湿及泄泻者忌服。不耐酒力者，亦可用黄酒浸泡服用。', 1, 'null', '养生保健类 ', '饮料类', '其它', '/static/images/medicinaldiet/枸杞子酒_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (231, '补虚正气粥', '《圣济总录》', '炙黄芪30g，人参3g(或党参15g)，粳米100g，白糖少许。', '先将黄芪、人参(或党参)切成薄片，用冷水浸泡半小时，入砂锅煎沸后改用小火炖成浓汁，取汁后，再加水煎取二汁，去滓。将一二煎药液合并，分2份于每日早晚同粳米加水适量煮粥。粥成后，入白糖少许，稍煮即可。人参亦可制成参粉，调人黄芪粥中煎煮。每日服1剂，3~5天为1疗程，间隔2~3天后再服。', '补正气，疗虚损，健脾胃。', '延年益寿类，适用于劳倦内伤，五脏虚衰，年老体弱，久病贏瘦，心慌气短，体虚自汗，慢性泄泻，脾虚久痢，食欲不振，气虚浮肿等一切气衰血虚之证。', '本膳所主，为全身正气虚损，身体衰弱，治宜补益五脏、调养气血，使正气复而精神得养。本方原名“补虚正气粥饮”，治疗“诸痢疾、水泄霍乱，并泄血后，困顿不识人”，是健脾补气、加强中焦之方。脏腑皆弱者，求之于中，故补益中焦，恢复和加强脾胃功能，是抗衰延年之关键。其中黄芪味甘、微温，可补气升阳，益卫固表。《名医别录》称其“补丈夫虚损，五劳羸瘦。”《日华子本草》则谓其“助气，壮筋骨，长肉补血。”凡劳倦内伤，脾虚泄泻，脱肛，气虚血脱，妇女崩带等一切气衰血虚之证，均可用之。方中人参，味甘性平，可大补元气，《神农本草经》称其“主五脏不足，五劳七伤，虚损瘦弱”，用于一切气血津液不足之证。本方将黄芪、人参合用，同粳米煮粥，加强了两者的补气强壮作用。且粳米亦有补脾胃、养气血的作用，熬煮为粥，不仅补气壮力，更能和胃养气，有助于虚损之证的恢复。', '服药期间，忌食萝卜、茶叶。热证、实证者忌服。', 1, 'null', '养生保健类 ', '粥食类', '煮', '/static/images/medicinaldiet/补虚正气粥_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (232, '长生固本酒', '《寿世保元》', '枸杞子、天冬、五味子、麦冬、怀山药、人参、生地黄、熟地黄各60g，白米酒3000ml。', '将人参、山药、生地、熟地切片，枸杞子、五味子拣净杂质，天冬、麦冬切分两半。全部药物用绢袋盛，扎紧袋口；将酒倒人净坛中，放人药袋，酒坛口用混棉纸封固加盖。再将酒坛置于锅中，隔水加热蒸约1小时，取出酒坛，候冷，埋于土中以除火毒，3~5日后破土取出，开封，去掉药袋，再用细纱布过滤1遍，贮人净瓶中，静置7日即可饮用。每日早、晚各1次，每次饮服视人酒量大小，一般50~100ml。', '乌须发，养心神，益年寿。', '延年益寿类，适用于腰腿酸软，神疲体倦，四肢无力，唇燥口于，心悸健忘，失眠多梦，头晕目眩，须发早白等气阴两虚证候。', '本方所主，为脾气亏虚，阴液干涸所致的虚损不足，治宜益气养阴、补肾健脾、固本延年。方中人参大补元气，山药补脾益气，五味子安神养心，枸杞子平补肝肾，亦能助脾益气，四味相合，能补元气、益中气，有助气血生化。天冬、麦冬、生地、熟地、枸杞子等能补肝肾、益精血、大补肾中元阴，与诸补气之品配伍，即成气阴两补之方，有补元气、生气血、滋肾肝、助元阴的作用。诸药制酒，酒助药势，使先天之本得滋，后犬之本得调，脏腑安和而气机调和，身体键康，中老年人坚持少服、常服，可以达到益寿延年的目的。', '凡证属阴盛阳衰，痰湿较重者，或久患滑泄便溏者，不宜服用本膳。', 1, 'null', '养生保健类 ', '饮料类', '其它', '/static/images/medicinaldiet/长生固本酒_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (233, '乌须延年豆', '《集验良方》', '何首乌(赤、白各半)、早莲草汁各90g，枸杞子60g，陈皮、生地各45g，桑椹汁90g，槐角45g，破故纸30g，当归身60g，乌骨老母鸡1只，黑豆1kg。', '将乌骨鸡宰杀，去毛、内脏，洗净，煮汤2大碗。将以上各药和黑豆一起用鸡汤、老酒入砂罐内文武火缓煮干为度，去药存豆。每日早晨吃豆50~100g，饮酒1杯。', '乌须黑发，延年益寿。', '延年益寿类，适用于日常养生。', '本方功效为滋补肾阴、养生延年，在补养精血的基础上达到延年益寿的目的。方中首鸟、旱莲、枸杞、桑椹，为滋补肝肾阴血之品，阴血足则根基强壮，须发、骨骼得其滋养，则体健而须发黑泽；陈皮芳香行气，运行气血，使补而不滞；故纸补阳，取阴生阳长、化气散布之效；槐角通利肠道，运行糟粕，畅出人之道路；乌鸡、黑豆为方中主料，前者养血补肾，后者补肾润燥。合用成方，则补中有行，阴阳平调，符合脏腑动态平衡的养生之旨，故可用于延年益寿。', '服药期间忌食萝卜。', 1, 'null', '养生保健类 ', '其它', '煮', '/static/images/common/暂无图片.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (234, '珍珠鹿茸', '《中医饮食疗法》', '鹿茸2g，鸡肉100g，肥猪肉50g，油菜100g，熟火腿15g，鸡蛋清50g，绍酒10g，味精2.5g，精盐10g，鸡汤500g。', '鹿茸研为细末；火腿切为薄片；油莱洗净，切成小片，用开水烫片刻，放凉水中过凉各用鸡肉与肥猪肉均剁成肉泥，加人蛋清、精盐、味精、绍酒、适量鸡汤，调搅均匀，再加入鹿茸粉拌搅和匀。锅内放入鸡汤，置火上烧开后，用小勺将拌好的鹿茸肉泥作小团块徐徐下入沸汤内，煮成珍珠球状。然后再放入火腿片、油菜、味精、精盐、绍酒，汤开后打去浮沫，略淋数滴香油出锅即成。佐餐食用。', '补气养血，生精益髓，调养五脏，滋补强壮，延年益寿。', '延年益寿类，用于脏腑功能衰退，气血不足的虚劳证，症见形体消瘦、腰膝酸软、面色萎黄或产后缺乳等。', '本方所主，为脏腑虚损、精髓不足所致的形神亏乏诸证，治宜补肾健脾，滋填精微物质，以充根基。方中主料为鹿茸，其味甘而咸，性温，咸能人肾，以生精髓、壮元阳、补督脉、强筋骨，能治疗元气不足，畏寒乏力，四肢萎软，小儿发育不良、五迟五软等病症。该药峻补元阳，有增进体力、强健筋骨的功效，自古以来都被认为是血肉有情的峻补之品。鸡肉、鸡蛋清含丰富的蛋白质、脂肪及其他营养成分，能益五脏、补虚损、健脾胃、强筋骨，是补虚益寿的良好肉食，与鹿茸配伍，能增强功效。故本膳既有鹿茸生精壮阳，又有鸡肉、蛋、猪肉等补充大量营养物质，以生气血精髓，故能补虚强体，延年益寿。本膳加工精细，肉香汤鲜，是滋补面适口的佳品。亦可用于病后体弱，康复调养。中老年人可作为保健药膳食用。', '鹿茸性温，对阴虚火旺，五心烦热，夜热盗汗者不宜。', 1, 'null', '养生保健类 ', '菜肴类', '煮', '/static/images/medicinaldiet/珍珠鹿茸_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (235, '八宝饭', '《方脉正宗》', '芡实、山药、莲子肉、茯苓、党参、白术、薏苡仁、白扁豆各6g，糯米150g，冰糖适量。', '先将党参、白术、茯苓煎煮取汁；糯米淘洗干净，将芡实、山药、莲子、茯苓、薏苡仁、扁豆打成粗末，与糯米混合；加入党参、白术、茯苓煎液和冰糖，上笼，蒸熟。亦可直接加水煮熟。作主食食用。', '益气健脾，养生延年。', '延年益寿类，用于脾虚体弱，食少，便溏乏力者。', '本方所主，为脾虚体弱之人，宜加强脾胃吸收运化功能，俾后天得健，生化有源，气血自能充盈，而得长生。方中所用药食，均为平补脾胃之物。党参、白术、茯苓，为益气健牌祖方“四君子汤”的基本成分，能调补脾胃；山药平补脾肾；芡实、莲子肉健脾涩精；白扁豆、薏苡仁健脾滲湿；糯米润养脾阴。诸药制成饭食，共成补脾益气之方。食之日久，可望脾胃健运，气血生化有源，形神得养，天年颐和。', '阴虚津枯者不宜久服。本膳亦可制成其他剂型，如《中华临床药膳食疗学》“长寿粉”，即是将本方药研为细末，沸水冲成糊状服用。此外，还可以熬粥食用。八宝饭是广泛流行于民间的健康膳食，有多种不同配方，但偏甜偏膩，胃弱腹胀者不宜。', 1, 'null', '养生保健类 ', '粥食类', '蒸', '/static/images/medicinaldiet/八宝饭_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (236, '延年草', '《养老奉亲书》', '青橘皮120g，甘草60g，小茴香30g，盐75g。', '先将甘草研为细末；盐炒过，加水溶解成浓盐水；再洗浸橘皮，去苦水，微焙。将橘皮、甘草、茴香、盐水混合拌匀，密闭10小时，每小时摇晃1次。然后慢火炒干，不得有炒焦气，去甘草、茴香不用。服食青皮，每日服1~2片。老人小儿皆可服，尤宜老人，清晨食后嚼数片，有养生之效。如伤生冷及果实蔬菜之类，即嚼数片，气通即无恙。', '通滞气，益脾胃。', '延年益寿类，适用于脾胃不足者日常调养。', '本膳是为脾胃虚滯型入而设的理气健脾方。原方中本无茴香，清代《奇效良方》加入此药，使青皮口感变好，故本膳从之。全方以橘皮、甘草、小茴香、食盐四味制成。青橘皮辛苦而温，功能理气健脾、燥湿化痰、开胃消食，善治食、气停滞胃院引起的心腹气痛、胀满、食欲不振、呕吐泄泻，以及咳嗽痰多等症，以其理气消食而不伤正，最宜老人食用；甘草补脾胃，润心肺，清火解毒，调和诸药；与食盐相合，共成顺气进食强壮之品，对于老人腹胀少食者，可收和胃却病、益寿延年之效。', '本膳偏于香燥，阴虚火旺者慎用。', 1, 'null', '养生保健类 ', '其它', '其它', '/static/images/common/暂无图片.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (237, '九仙王道糕', '《万病回春》', '莲子肉12g，炒麦芽、炒白扁豆、芡实各6g，炒山药、白茯苓、薏苡仁各12g，柿霜3g，白糖60g，粳米100~150g。', '以上药食共为细末，和匀，蒸制成米糕。酌量服食，连服数周。', '健脾胃，进饮食，补虚损。', '延年益寿类，用于年老之人元气不足，脾胃虚衰，虚劳瘦怯，泄泻腹胀等。', '本方所主，为脾胃虚弱，元气不足等人。盖年高之人，肾气已亏，全赖脾胃运：化以维持脏腑运动，脾胃健运，则气血有源，生化有序，能得长生。本膳实为补充根本之方。方中麦芽、扁豆健脾养胃，襄助磨化，能使米谷肉蔬得以消化；莲子、芡实、山药脾肾两补，固气涩精，能使精气内藏以养神；茯苓、薏苡仁健脾渗湿，通利水道，能使湿浊外出以除邪；加以柿霜润肺以利气，粳米养胃以生津；诸药药性平和，不温不燥，对老人最为适宜，故以“王道”名之。', '暂无', 1, 'null', '养生保健类 ', '粥食类', '蒸', '/static/images/medicinaldiet/九仙王道糕_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (238, '决明子鸡肝', '《医级》', '决明子10g，鲜鸡肝200g，黄瓜10g，胡萝卜10g，精盐3g，白酒2g，绍酒5g，香油3g，淀粉5g，味精3g，鲜汤20ml。', '将决明子焙干，研成细未；鸡肝洗净切片，放于碗内，加精盐1g，香油1g，腌渍3分钟，然后加一半淀粉拌和均匀；黄瓜、胡萝卜洗净切片。炒锅内注油500g，烧至6~7成热时，把肝片放入油内冲炸片刻，捞出用漏勺沥干油，锅内留少许油，放入胡萝卜、黄瓜、葱、姜、绍酒、白糖、精盐、味精、决明子未，用鲜汤、淀粉调失入锅，再将鸡肝片倒入锅内，翻炒均匀，加蒜末、香油，出锅装盘即成。作佐餐食用。', '清肝明目，补肾健脾。', '明目增视类，用于肝血亏虚所致的各种目疾，如目翳昏花、雀目夜盲、风热目赤肿痛、青盲内障及肠燥便秘等；亦可用于高血压属肝阳上亢者。', '本方据《医级》“鸡肝散”改造而成。原方仅决明子、鸡肝两昧，为制成药膳，本膳加人黄瓜、胡萝卜以及各式佐料，使原方在功能得以保持的基础上，变成色、香、味俱佳的膳食，更加受到患者欢迎。膳方所主，为肝肾不足所致的眼目功能衰减，治宜滋补肝血、凉肝明目。方中决明子甘苦而寒，入肝胆经，长于清肝明目，常用治肝胆郁热而致的目赤涩痛、羞明多泪，为眼科常用药，《体草求真》谓其“除风散热，为治目收泪止痛要药”。鸡肝甘温，人肝肾之经而生精补血，补肝明目，《本草汇言》称“鸡肝补肾安胎，消疳明目之药也”。胡萝卜能人脾肺而养肝明目，健脾消食。黄瓜甘寒，能清热生津、祛风利水。决明子得黄瓜以生津养阴，能清肝经风热而兼以滋阴；鸡肝得胡萝卜相伍，能增强生精化血之力而养肝血以明目。4料相配，肝经风热得清则阴血不致妄耗；肝肾精血得补，则明血充而虚风自灭，全方荤素相合，有相辅相成之妙，为目疾良膳。', '实热火气，上攻所致的目疾不宜食用。', 1, 'null', '养生保健类 ', '菜肴类', '炒', '/static/images/medicinaldiet/决明子鸡肝_0.png', 4, NULL);
INSERT INTO `medicinal_diet_table` VALUES (239, '猪肝羹', '《太平圣惠方》', '猪肝100g，葱白15g，鸡蛋2枚，豆豉5g。', '将猪肝切成小片，加盐、酱油、料酒、淀粉，抓匀；葱白切碎；鸡蛋打散。备用。先以水煮豆豉至烂，下入猪肝、葱白，临熟时将鸡蛋倒入。佐餐食之。', '补养肝血，护晴明目。', '明目增视类，适用于老人视物昏花，以及青年近视，远视无力。', '本方所主，为肝血不足所致视物昏花，治宜补养肝血、明目护睛。方中猪肝、鸡蛋，均是血肉有情之物，营养丰富，能补益人体精血，其中猪肝能以脏补脏，滋养肝血；葱白温通阳气，豆豉中含有丰富的卵磷脂，对视神经有营养作用。诸食料合用，共同发挥补益肝脏、明亮眼目的作用，不仅对老人视力减退有效，即使是儿童、青年，也有很好的保护视力作用。', '暂无', 1, 'null', '养生保健类 ', '菜肴类', '煮', '/static/images/medicinaldiet/猪肝羹_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (240, '杞实粥', '《眼科秘诀》', '芡实21g，枸杞子9g，粳米75g。', '上3味，各自用滚开水泡透，去水，放置1夜。次日五更用砂锅一口，先将水烧滚，下失实煮四五沸；次下枸杞子煮三四沸；又下大米，共煮至浓烂香甜。煮粥的水1次加足，中途勿添冷水。粥成后究腹食之，以养胃气。或研为细末，滚水冲泡服用亦可。', '聪耳明目，延年益寿。', '明目增视类，适用于老人视力、听力减退，眼目昏花。', '本方所主之证，为肝肾不足所致，治宜滋肾益精、养肝护目。方中荧实，功兼补脾益肾，以益肾固糖为主；枸杞子功兼滋肾补肝，以养血明目为主。肝肾同源，年老眼目昏花，肾糖肝血亏虚是主要根源。本膳肝肾双补，加以粳米熬粥，又能养益脾胃。《眼科秘诀》称服用本膳后“四十日皮肤润泽，一百日步履壮健，一年筋骨牢固”。杞实粥属保健膳食，但从药物组成和收载书目看，终是养肝护目之品，年高之人，最宜常服。', '暂无', 1, 'null', '养生保健类 ', '粥食类', '煮', '/static/images/medicinaldiet/杞实粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (241, '芝麻羊肝', '《中医饮食疗法》', '生芝麻50g，鲜羊肝250g，鸡蛋50g，面粉10g，绍酒5g，精盐3g，味精3g，白胡椒粉2g。', '将鸡蛋打入碗中，搅匀；羊肝切成2分厚的大片，放入盘内，加绍酒、精盐、胡椒面、味精，腌渍片刻，再取一干净平盘，盘内撒一层面粉，然后将肝片裹上鸡蛋液，放在芝麻上，使芝麻充分粘于肝片之上，置于平盘内的面粉上。炒锅置火上，内放油750g(实耗油75g)，烧至5~6成熟时，把芝麻肝片放入油炸，略炸后再裹蛋液粘芝麻，逐片作业，待芝麻全部粘完，将肝片重入油锅炸熟，捞出装盘即成。佐餐食用。', '养血明目，滋补肝肾。', '明目增视类，适用于肝肾不足，肝血亏虚，不能上荣于目所引起的目暗昏花、夜盲、青盲、翳障等疾，以及肝肾精血不足所致的眩晕、须发早白、腰膝酸软、步履艰难、肠燥便秘等症。', '本方所主，为肝肾不足，精血亏虚，眼目失养所致的各种弱视、视力障碍，治宜补血养肝、明目增视。年老之人，肝肾功能随年龄减退，故更需此类药膳作日常保健，方中芝麻，性味甘平，入肝肾脾肺诸经，多脂而色黑，长于滋养肝肾、乌须黑发，《神农本草经》谓其“主伤中虚赢，补五内，益气力，长肌肉，填髓脑”，《随息居饮食谱》称其“充胃津，明目，熄风”。羊肝苦寒，能以脏补脏，养肝肾而明日，《随息居饮食谱》谓其“补肝明目”。芝麻长于滋肾，羊肝长于养肝，两相配合，则肝肾双补，填精益血。精血得补，上润两目而愈目疾，增视力，防衰老；精盛髓充，可止眩晕，乌须发。故合用以成明目增视之方。也可作为老年性白内障、青光眼、夜盲症、营养性弱视等患者的保健药膳。', '阳虚偏重，见有畏寒肢冷、小便清长等寒象者，不宜食用。', 1, 'null', '养生保健类 ', '菜肴类', '炒', '/static/images/medicinaldiet/芝麻羊肝_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (242, '归圆杞菊酒', '《摄生秘剖》', '当归身(酒洗)30g，圆眼肉240g，枸杞子120g，甘菊花30g，白米酒3500ml，好烧酒1500ml。', '诸药用绢袋盛之，悬于坛中，再入二酒，封固，贮藏1月余即可饮用。不拘时候随意饮之。', '补肾滋精，益肝补血，养心安神。', '明目增视类，适用于精血不足而致的目暗不明，头昏头痛，成色萎黄，心悸失眠，腰膝酸软。', '本方所治之证，为肝肾不足，精亏血虚所致，治宜补肝肾、益精血、安心神。本方名“养生主”、“养生酒”。方中当归甘辛温，入肝心脾诸经，能补血和血、养肝调经。《本草经百种录》称“当归辛香而润，香则入脾，润则补血，故能透人中焦营分之气“，为血家必用之圣药，故古今皆谓当归为补肝血之圣药。龙眼肉甘温入心脾，能够养血益脾、大补气血，适用于体虚老弱，气血不足者，与当归相配，以加强补血养肝的作用。枸杞子甘平入肝肾，能滋补肝肾、益精明目，多用于肝肾不足的头晕口疾。甘菊花甘苦微寒，善疏风除热、养肝明目，于枸杞相配伍，滋补肝肾而益肝肾之体；疏风散热，而散肝经之邪；两相配合，补肝明目之力益强。白酒活血行气，推导药力。如原载此方之书所谓：“当归，补血奇珍；圆眼，养生佳果；枸杞子扶弱，谓之仙人杖；甘菊花益寿；酒浆之甘，厚肠胃而润肌肤，烧酒之辛，行药势而通血脉。且其配合，性纯和、味甘美，诚养生之主也。”故全方以补养肝肾为主，佐以疏风散邪，能治疗肝肾精血不足而致的目暗不明等。', '本酒益肝肾补精血，用于精亏血虚之证，若为阳气不足所致的上述各症，或崽湿热、痰饮等疾，则不宜服用。', 1, 'null', '养生保健类 ', '饮料类', '其它', '/static/images/medicinaldiet/归圆杞菊酒_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (243, '首乌肝片', '《华夏药膳保健顾问》', '首乌液20ml，鲜猪肝250g，水发木耳25g，青菜叶少许，绍酒10g，醋5g，精盐4g，淀粉l5g，酱油25g，葱、蒜、姜各15g，混合油500g(实耗75g)。', '首乌用煮提法制成浓度为1:1的药液，取20ml备用；猪肝切成肝片；葱切成段，蒜切成片，姜切成姜末，青菜叶洗净备用。将猪肝片中加入10ml首乌汁，入盐少许，用湿淀粉一半拌和均匀。另将余下的首乌汁、湿淀粉及酱油、绍酒、盐、醋和汤兑成滋汁。炒锅胃武火上烧热放入油，烧至七八成热，放入拌好的肝片滑透，用漏勺沥去油。锅内余油50g，下入蒜片、姜末略煸，后下入肝片，同时将青菜叶下入锅内，翻炒数下，倒入滋汁炒匀，淋入明油少许，下入葱丝，起锅即成。佐餐食用。', '补肝肾，益精血，乌发明目。', '明目增视类，适用于肝肾亏损，精血不足，或年老体裒，病后体弱者，症见头晕眼花、视力减退、须发早白、腰酸腿软等。', '本方所主，为肝肾不足所致的各种虚损证候，尤以眼目昏花、耳聋失聪等为典型症状，治宜滋肾养肝、填补精血。方中何首乌苦澀微温，入肝肾经，能补血益精、乌须黑发，也是延年益寿的要药。木耳生于朽木，甘辛微温，《食物本草》谓其“益气，轻身强志”，能滋阴润燥、通利血脉，富含各种营养成分。与首乌合用，能增强补血润燥荣发之力。猪肝补血养肝，治疗肝肾亏损，与首乌、水耳相合，共同补肝血、益肝阴，使肝肾精血充盛，精血充沛，则外窍得养，视物光明。并可作为老年性白内障、青光眼、冠心病、高血压、高血脂症、神经衰弱等患者的保健膳食。常人食之则能健身益寿。', '本膳平补肝肾，日久方能见功，须1周2~3次，经常食用。', 1, 'null', '养生保健类 ', '菜肴类', '炒', '/static/images/medicinaldiet/首乌肝片_0.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (244, '人参枸杞酒', '《家庭药膳》', '人参20g，枸杞子350g，熟地100g，冰糖400g，白酒10kg。', '将人参、枸杞、熟地装入布袋，扎口备用。冰糖放入锅中，用适量水加热溶化至沸，炼至色黄时，趁热用纱布过滤去渣备用。白酒装入酒坛内，将装有人参、枸杞的布袋放入酒中，加盖密闭浸泡10~15天，每日搅拌1次，泡至药味尽淡，取出药袋，用细布滤除沉淀物，加入冰糖搅匀，再静置过滤，澄明即成。根据酒量，每次饮10~30ml。', '补阴血，强视力，乌须发，壮腰膝。', '明目增视类，适用于病后体虚，头昏眼花，视物不明目生翳障，无病常饮，亦有强身益寿之效。', '本方所主，为气血不足，肝阴亏损所致的体虚目昏、视力减退诸症，治宜补气养血、柔肝养阴、明目增视。方中人参大补元气，熟地滋阴补血，枸杞子养肝明月，白酒温通血脉，冰糖调味。诸药合用，则补血益阴之力更强，可使肝血得充，肝窍得养，是肝虚目视不明诸症养生保健的有益饮品。亦可用于贫血、营养不良、神经衰弱等。无病者饮用，亦有强身益寿之功。', '本品为酒精之剂，少用则养血和血，多饮则伤肝损日。', 1, 'null', '养生保健类 ', '饮料类', '泡', '/static/images/medicinaldiet/人参枸杞酒_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (245, '磁石粥', '《寿亲养老新书》', '磁石60g，猪腰子1个，粳米100g。', '磁石打碎，于砂锅中煮1小时，滤去滓；猪腰子去筋膜，洗净，切片，以粳米加磁石药汁煮粥食。', '补肾平肝，益阴聪耳。', '聪耳助听类，用于老年肝肾不足，耳聋耳鸣，两目昏花，视力模糊等。', '本方所主，为肝肾不足，年老精亏所致的听力失聪、视力减退，治宜补益肝肾、育阴聪耳。方中磁石，味咸而寒，功能益肾平肝，故能用于肝肾阴虚，虚阳上浮诸证，《本草衍义》谓其“肾虚耳聋目昏者皆用之”，但多与熟地黄、枸杞子、山萸肉等补养药物同用；猪腰味咸性平，以脏补脏，能填补肾中精气，合粳米调养脾胃；全方即成补肾养肝、益阴聪耳之方，对听力有较好的保健和康复作用。', '本膳偏于寒凉，脾胃虚弱者慎用。膳中所用磁石，为氧化物类矿物尖晶石族天然磁铁矿的矿石，内服过量或长期服用易发生铁剂中毒。', 1, 'null', '养生保健类 ', '粥食类', '煮', '/static/images/medicinaldiet/磁石粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (246, '鹿肉粥', '《景岳全书》', '鹿鞭5g，鲜鹿肉30g，鹿角胶5g，肉苁蓉20g，菟丝子10g，山药15g，橘皮3g，楮实子10g，川椒1.5g，小苗香1.5g，大青盐3g，粳米150g。', '将鹿鞭用温水发透，刮去粗皮杂质，洗净，细切；鹿肉剁成肉糜；鹿角胶用黄酒蒸化；楮实子煎煮取汁；肉苁蓉用酒浸1宿，刮去皱皮切细；其余药物按常法制成细末。粳米淘净，与鹿鞭、鹿肉同煮稀稠，半熟时加入肉苁蓉、菟丝子、山药末，将熟时加入鹿角胶汁和楮实子汁，稍煮，再加入橘皮末、川椒末、茴香末、盐等调味。再稍煮即成。佐餐食用，连服数日。', '补益元阳，滋补精血。', '聪耳助听类，适用于老年体衰，耳鸣耳聋，头晕目眩，腰膝无力，形寒肢冷，小溲余沥等。', '本方所主，为肾阳不足，精血亏虚所致的耳聋耳鸣、眼目昏花等，治宜壮阳填精。本方的组成，取材于《景岳全书》全鹿丸方，系从该方选取精华，加以药膳工艺设计而成。方中鹿肉、鹿鞭、鹿角胶，味甘咸而性温，均是中医所谓“血肉有情之品”，功效补肾、壮阳、益精，配伍苁蓉、菟丝子、山药、楮实子等植物补肾药，则补益肝肾之力更足。用以熬粥食用，适合年高之人养生之用。据原书论全鹿丸功效云：“此药能补诸虚百损，五劳七伤，功效不尽述。人制一料服之，可以延寿一纪”。改制药膳，虽然药力趋缓，但经常服食，亦可作为年老体弱肾虚阳痿、女子宫冷等性功能减退患者的保健药膳。', '阴虚火旺所致的耳聋耳鸣禁用本膳。肥胖痰多之人、内蕴湿热者忌服，否则有引发痈疽之弊。患有感染性疾病、发热、风寒感冒患者不宜服。服药期间忌生冷食物。孕妇忌服。', 1, 'null', '养生保健类 ', '粥食类', '煮', '/static/images/medicinaldiet/鹿肉粥_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (247, '磁石酒', '《圣济总录》', '磁石30g，木通、菖蒲各15g，白酒500ml。', '将磁石打碎，菖蒲用米泔浸1、2日，与木通一起装入纱布袋中，用酒浸，冬季浸7日，夏季浸3日。每饮30~50ml，1日2次。', '平肝清热，祛痰通窍。', '聪耳助听类，适用于耳聋耳鸣，如风水之声。', '本方所主，为肝经郁热，痰湿壅闭之耳窍不通、耳聋耳鸣，治宜平肝泄热、祛痰开窍。方中磁石益肾平肝潜阳，能抑制过亢肝阳；木通利水通淋，使湿热白小便而出；菖蒲祛痰利湿，能开通闭塞之神窍；白酒活血通络，以助药力。诸药合用，清除肝胆湿热，通窍聪耳，故可用于耳聋耳鸣证属肝经湿热者。', '肝肾阴虚之耳聋耳鸣不宜饮用。', 1, 'null', '养生保健类 ', '饮料类', '其它', '/static/images/medicinaldiet/磁石酒_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (248, '气虚狗肉汤', '《嵩崖尊生》', '狗肉250g，石菖蒲、人参、甘草各3g，当归、木通、骨碎补各6g，黑豆50g，小茴香3g。', '狗肉刮净皮，洗净切成块，先入沸水中烫去血水，捞出备用；黑豆用清水淘洗干净，其余药料用干净饮片。砂锅置火上，放入狗肉块和各种药料，加水适量煮熟。再放入茴香及少许食盐、姜片、五香粉同炖，炖至狗肉熟烂即成。煮好后趁热饮汤食肉，其量酌情而定。每周食1~2料。', '温肾壮阳，补气强身。', '聪耳助听类，适用于肾气虚损，阳气不足所致的耳鸣耳聋、阳痿阴冷等。', '本方所主，为肾气、肾阳俱不足，耳窍失养所致的耳聋耳鸣，治宜补益肝肾之气、温阳散寒、聪耳通窍。全方由《嵩崖尊生》“气虚散”、《食医心镜》“狗肉粥”合方改制而成。方中狗肉味咸性温，能补中益气、温肾助阳。唐.孟诜《食疗本草》中说：“狗肉补五劳七伤，益阳事，补血脉，厚肠胃，实下焦，填精髓“，是温养下焦的有效食品。人参、甘草补气，当归养血活血，补骨脂补肾壮骨，木通、菖蒲通络开窍。黑豆性味甘、平，《随息居饮食谱》谓其能“补脾肾，行水，调营，祛风邪，善解诸毒”，《本草汇言》称其“能润肾燥”，且内其色黑人肾，故亦为补脾肾的佳品，且能引导诸药食直达肾经。小茴香调中和胃，散寒理气。诸味相合，肾气足，肾阳旺，气血精髓上行以润耳窍，故本方为益耳助听的佳肴。中老年听力卜降，年聋耳鸣，或病后听力未复，并宜服食。又因本方有滋补强壮、延年益寿作用，故对年老体弱，病后未复，或体质虚弱者，均有良好的补养强壮作用。', '素体多火，阴虚内热证明显者，或兼有外感症状者，或证属阳热者，均不宜服食。服用本膳期间，总食蒜、菱及中药杏仁、商陆。', 1, 'null', '养生保健类 ', '菜肴类', '炖', '/static/images/medicinaldiet/气虚狗肉汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (249, '鱼鳔汤', '《中华临床药膳食疗学》', '鱼鳔25g，枸杞子、女贞子、黄精各25g，调料适量。', '将鱼鳔等诸味洗净，与水共煮汤，煮沸后，改用文火煎熬20分钟，加调料即成。药滓加水再煎。内服，1日2~3次。', '滋补肾阴，滋养肝血。', '聪耳助听类，适用于肝肾不足所致的各种耳疾，症见年鸣耳聋、头晕眼花、腰腿酸软等。', '本方所主，为肝肾阴虚所致的各种耳疾，听力下降，甚则耳聋，治宜补益肝肾精。方中以鱼鳔为主料。鱼鳔亦名鱼肚，味甘，性平，补肾益精，滋养筋脉，含高粘性的胶体蛋白和粘多糖，是滋补性很强的食品；枸杞子、女贞于、黄精皆为滋补阴精之味。诸料合用，不仅适用于肾虚耳疾，又可作为肾阴虚损诸证之保健膳食。', '本膳偏于滋腻，脾虚少食者不宜食之，阳虚、痰湿等所致的耳疾，总食本膳。', 1, 'null', '养生保健类 ', '菜肴类', '熬', '/static/images/medicinaldiet/鱼鳔汤_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (250, '熘炒黄花猪腰', '《家庭药膳》', '猪腰500g，黄花菜50g，姜、葱、蒜、素油、食盐、糖、芡粉各适量。', '将猪腰切开，剔去筋膜臊腺，洗净，切成腰花块；黄花菜水泡发，撕成小条；炒锅中置素油烧热，先放入葱、姜、蒜等作料煸炒，再爆炒猪腰，至其变色熟透时，加黄花菜、食盐、糖煸炒，再入芡粉，汤汁明透起锅。顿食或分顿食用，也可佐餐服食。', '补肾益损，固精养血。', '聪耳助听类，适用于肾虚所致的耳鸣耳聋、头晕乏力。', '本方所主，为肾气不足，阴血虚少所致的耳鸣，以及其他生殖机能减退证候，治宜补益阴血，加强肝肾功能。方中以猪腰、黄花菜为主料。猪腰味咸，性平，有补肾养阴作用，《日华子本草》称其能“补水脏，治耳聋”。黄花菜味甘性平，功效养血平肝、利尿消肿，但民间以其治疗肾虚耳鸣、腰痛、产后乳汁不下，有很好疗效。两味合用，治疗肾虚耳聋耳鸣效果更加突出。亦可用于男子阳痿、产妇乳少、产后身痛等肾精亏损者。', '本膳性偏渗利，肾气虚寒，小便过多者不宜食。', 1, 'null', '养生保健类 ', '菜肴类', '炒', '/static/images/medicinaldiet/熘炒黄花猪腰_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (251, '琼玉膏', '《洪氏集验方》引铁瓮先生方', '人参60g，白茯苓200g，白蜜500g，生地黄汁800g。', '将人参、茯苓制成粗粉；与白蜜、地黄汁一起搅拌均匀，装入瓷质容器内，封口。再用大锅一口，盛净水，将瓷器放入，隔水煮熬，先用武火，再用文火，煮3天3夜，取出；再重新密封容器口，放冷水中浸过，勿使冷水渗人，浸1天后再入原锅内炖煮1天1夜即可服用。每次服10ml，每天早晚各服1次。', '补气阴，填精髓。', '益智健脑类，用于气阴精髓不足所致的心悸，疲倦乏力，记忆力低，注意力不集中等。', '本方所主，为气阴虚衰所致的智力衰减，治宜滋养气阴、填补精髓。元气之出人盈虚，责之肺脾肾三脏，故以益脾、滋肾、补肺为调养大法。本膳以地黄为主料，补肾阴以生水，水盛则精血生，心火自息。人参补益肺气，肺为气之大主，得人参可以鼓生发之元。虚则补其母，故用茯苓健脾，以培万物之本。白蜜为百花之精，味甘归脾，性润悦肺。全方皆温良和厚之品，是著名的补益方剂，对智力有很好的促进作用。《古今名医方论》引郭机之论：本方“珍赛琼瑶，故有琼玉之名”。尤其适用于身体虚弱或久病之后的智力减退者。', '本膳用于阴虚火旺者较为适宜，阳虚畏寒、痰湿过盛者不宜多食。', 1, 'null', '养生保健类 ', '其它', '熬', '/static/images/medicinaldiet/琼玉膏_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (252, '水芝汤', '《医方类聚》引《居家必用》', '莲子60g，甘草12g。', '莲子不去皮，不去心，炒香，碾成细粉；甘草炒后也制成细粉；再将莲子粉与甘草粉混匀。每次服用12g，加少许盐，滚开水冲服。', '养心宁神，益精髓，补虚助气。', '益智健脑类，适用于调节心智，可作为智力保健的常用食品。', '本膳为调养心神，助益智力而设。方中莲子，功善补脾止泻、益肾固精、养心安神。《神农本草经》称其“补中养神，益气力”；《本草纲目》论其功效为“交心肾，厚肠胃，固精气，强筋骨，补虚损，利耳日，除寒湿”。在本膳中，不去皮，不去心，因此又有清心泄热之效，与甘草配伍，益气之中寓泄热安神之效，针对耗神心疲，虚火易升的智力疲劳，实有良效。《遵生八笺》指出：读书人勤奋过度，废寝忘食，夜间常常会精神疲乏，不欲饮食，此时可饮服1小碗水芝汤，有补虚益智的效果。该方简单而实用，是各个年龄阶层的养生佳品。', '暂无', 1, 'null', '养生保健类 ', '菜肴类', '其它', '/static/images/medicinaldiet/水芝汤_0.png', 2, NULL);
INSERT INTO `medicinal_diet_table` VALUES (253, '神仙富贵饼', '《遵生八笺》', '炒白术、九节莒蒲各250g，山药1kg，米粉适量。', '白术、菖蒲用米泔水浸泡1天，切片，加石灰一小块同煮熟，以减去苦味，去石灰不用；然后加入山药共研为末，再加米粉适最和少量水，做成饼，蒸熟食之。服食时可佐以白糖。', '健脾化痰，开窍益智。', '益智健脑类，适用于痰湿阻窍所致的记忆力减退，神思不安，悲忧不乐，头昏头晕，口中粘腻，痰多腹胀，胃纳不佳，恶心胸闷，神情恍惚，或耳中轰响，或呵欠连天等。', '本方所主，为痰湿壅阻，心窍蒙蔽所致的健忘、情志不安诸症，治宜健脾祛湿、化痰开窍。方中用白术健脾补气，燥湿化痰，《本草崇原》谓：“凡欲补脾，则用白术”。菖蒲则为治心神要药，《神农本草经》称菖蒲“开心孔，补五脏，通九窍，明耳目，出音声。久服轻身，不忘，不迷惑，延年。”可知益智之功在其他药物之上。山药则平补肺脾肾三脏，对智力活动也有很好的促进作用，如《神农本草经》所说的“主伤中，补虚，除寒热邪气，补中益气力，长肌肉，久服耳目聪明“。诸药合用，制成米糕，调、治两宜，老人、儿童皆可食用。', '暂无', 1, 'null', '养生保健类 ', '其它', '蒸', '/static/images/medicinaldiet/神仙富贵饼_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (254, '神仙鸭', '《验方新编》', '乌嘴白鸭1只，黑枣49枚，白果49个，建莲49粒，人参3g，陈甜酒300ml，酱油30ml。', '将鸭子去净毛，破开，去肠杂，鸭腹内不可见水；黑枣去核，白果去壳，建莲去心。然后将各料放鸭子腹内，装人瓦钵(不用放水)，封紧，蒸烂。陈酒送服。', '健脾益精。', '增力耐劳类，适用于劳伤虚弱。', '本方所主，为气阴两虚所致的体虚羸瘦、体力不支、行动虚喘等，治宜补益脾气、滋养阴血、方中以白鸭为主料，古书记载，白鸭补虚、强精、除热、和脏腑、利水道、消水肿、解毒。如无乌嘴白鸭，可以白毛老鸭代之。人参(可用玉竹15g代)、莲子黑枣，均为补气健脾、润养气阴之品。白果滋肾润肺，固涩阴精，甜酒和血通络。合为膳方，可健脾益气、填补阴液，经常食用有增强体力之功。无病者食之则增力耐劳。', '古人认为白鸭补虚，黑鸭滑中，性偏寒，故不宜用。服用本膳期间，忌食木耳、胡桃、豆豉、鳖肉等。', 1, 'null', '养生保健类 ', '菜肴类', '蒸', '/static/images/medicinaldiet/神仙鸭_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (255, '肉桂肥鸽', '《中国传统性医学》', '肉桂3g，肥鸽1只。', '将鸽子去毛及内脏，与肉桂一起加人清水，置大汤碗内，加盖，隔水炖，去肉桂滓，饮汤，食鸽肉，隔日1次。', '补益肝肾，强筋壮骨。', '增力耐劳类，适用于脑力劳动者因活动较少而出现的体力衰退。', '本方所主，为肝肾不足而导滞的体力衰减，宜补肝肾、强筋骨。方以鸽肉为主料，味廿咸，性平，有补肝肾、补精血的作用，《食物本草》谓其“无毒，调精益气，解一切药毒，食之益人”，临床治疗可用于体虚、消渴、妇人血虚闭经；由于其脂肪少，味鲜美，放多用于食补。肉桂温肾化气，有化精气为气力的作用。两者合用，可加强补益肝肾、强壮筋骨的功能。除了用于增进体力外，还可用于性欲低下、男子少精、死精等。', '古书记载，鸽肉能消解药力，故生病治疗用药期间不宜服食。不宜与猪肉同食。', 1, 'null', '养生保健类 ', '菜肴类', '炖', '/static/images/medicinaldiet/肉桂肥鸽_0.png', 1, NULL);
INSERT INTO `medicinal_diet_table` VALUES (256, '牛骨膏', '《济众新编》', '黄犍牛骨(带骨髓者)500~1000g，怀牛膝20g。', '大锅中加足水，放入牛骨、牛膝熬煮，煮沸后加黄酒150ml，煎至水耗至半，过滤，去牛骨、牛膝不用，放入容器中，待其凝固。凝后去除表面浮油，只取清汤。然后上火熬化，煮沸后用小火煮30分钟，入姜、葱、精盐少许。随量饮用。或佐餐饮用。', '滋补肝肾，强壮筋骨、益髓填精。', '增力耐劳类，适用于肝肾不足，腰膝酸软。或用于骨损伤者的辅助治疗。', '本方所主，为补髓壮骨而设，用于強壮筋骨，增强体力。方中以带髓牛骨为主料，据《食物本草》记载，牛骨髓“味甘温，主安五脏，平三焦，温骨髓，补中，续绝伤，益气“，方用之，亦是以骨补骨、以髓填髓之意。辅以牛膝，入肝肾二经，有滋补肝肾、强筋健骨之功，又善下行，长于治疗下半身的腰膝筋骨酸痛，是治疗肝肾不足，腰膝酸软的要药。两味熬制成浓膏，有强壮精力的功效。体力劳动者常服，可增强体力。可用作体力劳动者的饮料，既可解渴，义能强壮筋骨。', '暂无', 1, 'null', '养生保健类 ', '其它', '煮', '/static/images/common/暂无图片.png', 3, NULL);
INSERT INTO `medicinal_diet_table` VALUES (257, '桑菊杏仁茶', '《百病饮食自疗》', '桑叶、菊花、杏仁各10克，白砂糖适量。', '将杏仁捣碎与前二味共置保温瓶中，用沸水适量冲泡，盖闷15分钟，再加入白砂糖适量，代茶频频饮用。每日1剂。', '疏散风热，宣肺止咳。', '主治外感风热，咽痛喉痒，咳嗽音哑，痰稠微黄，口渴，身热恶风，舌苔薄黄。', '方中桑叶、菊花能疏散肌表风热，一般风热感冒、初起发热、微恶风寒、头痛、咽痛者多用之。本方配以苦杏仁祛痰止咳，砂糖甘寒凉润，共奏疏风清热、宣肺止咳之功效。近代药理研究表明，桑叶对金黄色葡萄球菌、乙型溶血性链球菌、白喉杆菌均有较强的抗菌作用。菊花对多种致病菌以及流感病PR8和钩端螺旋体均有一定抑制作用。临床研究亦表明，鲜杭菊制剂及桑菊复方，治疗上述病症总有效率约为80%，并具有预防意义。', '慢性咳嗽，痰黄调厚者忌用。', 1, 'null', '其他', '饮料类', '其它', '/static/images/medicinaldiet/桑菊杏仁茶_0.png', 13, NULL);

-- ----------------------------
-- Table structure for physique_table
-- ----------------------------
DROP TABLE IF EXISTS `physique_table`;
CREATE TABLE `physique_table`  (
  `physique_id` int(11) NOT NULL AUTO_INCREMENT,
  `physique_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `physique_characteristic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `physique_principle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `physique_diet_recommend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phy_key_a` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phy_key_b` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phy_key_c` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phy_key_d` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`physique_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of physique_table
-- ----------------------------
INSERT INTO `physique_table` VALUES (1, '平和质', '体形匀称健壮。饮食正常、睡眠好、二便通畅、性格开朗，社会和自然适应能力强', '调养气血，协理阴阳', '平和体质日常养生应采取中庸之道，吃得不要过饱，也不能过饥，不吃冷，也不吃得过热。多吃五谷杂粮、蔬菜瓜果，少食过于油腻及辛辣之物', '冬瓜', '甲鱼', '补血', '调养气血');
INSERT INTO `physique_table` VALUES (2, '气虚质', '肌肉松软不实。经常出虚汗，容易呼吸短促，疲乏无力，性格内向，易患感冒', '益气健脾，培补元气', '多吃具有益气健脾作用的食物，可以吃一些如黄豆、白扁豆、鸡肉、泥鳅、香菇、大枣、桂圆、蜂蜜等', '蜂蜜', '鸡', '补气', '益气健脾');
INSERT INTO `physique_table` VALUES (3, '阳虚质', '肌肉松软不实。比较怕冷，总是手脚发凉，不敢吃凉的东西，精神不振，性格多沉静', '温补脾肾，化湿通阳', '可多吃容易有甘温益气的食物，比如牛羊狗肉、葱、姜、蒜、花椒、鳝鱼、韭菜、辣椒、胡椒等。少食生冷寒凉食物，比如黄瓜、藕、梨、西瓜等', '生姜', '羊肉', '补阳', '温补脾肾');
INSERT INTO `physique_table` VALUES (4, '阴虚质', '体形偏瘦。经常感到手脚心发热，皮肤干燥，大便干结，性格比较外向好动，容易失眠', '养阴降火，滋补肝肾', '多吃甘凉滋润的食物，比如瘦猪肉、鸭肉、龟、鳖、绿豆、冬瓜、芝麻、百合等。少食羊肉、狗肉、韭菜、辣椒、葱、蒜、葵花子等性温燥烈的食物', '豆腐', '鸭', '降火', '滋补肝肾');
INSERT INTO `physique_table` VALUES (5, '痰湿质', '体形肥胖。腹部松软肥胖，皮肤出油，汗多，容易困倦。性格温和稳重，善于忍耐', '健脾利湿，化痰降浊', '饮食清淡为原则，少食肥肉及甜、黏、油腻的食物。可多食葱、蒜、海藻、海带、冬瓜、萝卜、金橘、芥末等食物', '薏苡仁', '鲫鱼', '化痰', '健脾利湿');
INSERT INTO `physique_table` VALUES (6, '湿热质', '形体中等或偏瘦。口苦口干，容易大便黏滞不爽，小便发黄，性格多急躁易怒', '清化湿热，分消走泄', '饮食清淡，多吃甘寒、甘平的食物，如绿豆、空心菜、苋菜、芹菜、黄瓜、冬瓜、藕、西瓜等。应戒除烟酒，少食辛温助热的食物', '绿豆', '海带', '清热', '利湿');
INSERT INTO `physique_table` VALUES (7, '血瘀质', '胖瘦均见。眼睛经常有红丝，皮肤常干燥，容易烦躁，记忆力不太好，性情急躁', '活血化瘀，疏通经络', '可多食黑豆、海带、紫菜、萝卜、胡萝卜、金橘、橙、李子、山楂、醋、玫瑰花、绿茶，因此这些物质有活血、散结、行气、疏肝解郁的作用，少食肥猪肉等', '萝卜', '玫瑰花', '疏通经络', '活血化瘀');
INSERT INTO `physique_table` VALUES (8, '气郁质', '形体瘦者为多。多愁善感，食欲不振，容易心慌，容易失眠，性格忧郁脆弱', '疏肝理气，调畅气机', '多吃小麦、蒿子杆、葱、蒜、海带、海藻、萝卜、金橘、山楂等，因为这些食物具有行气、解郁、消食、醒神的作用。睡前避免饮茶、咖啡等提神醒脑的饮料', '小麦', '山楂', '健脾胃', '疏肝理气');
INSERT INTO `physique_table` VALUES (9, '特禀质', '过敏体质。对不同的物质有过敏现象，如花粉过敏或者某种食物过敏，适应能力差', '益气固表，养血消风', '饮食宜清淡、均衡，粗细搭配适当，荤素搭配合理。通常容易发生过敏反应的食物也要尽量避免，比如蚕豆、虾、蟹、茄子、酒、辣椒、浓茶、咖啡等辛辣之品', '小麦', '粳米', '养血', '益气固表');

-- ----------------------------
-- Table structure for recommend_table
-- ----------------------------
DROP TABLE IF EXISTS `recommend_table`;
CREATE TABLE `recommend_table`  (
  `recommend_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `medicinal_diet_id` int(11) NULL DEFAULT NULL,
  `recommend_base` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`recommend_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend_table
-- ----------------------------
INSERT INTO `recommend_table` VALUES (1, 1, 156, 1);
INSERT INTO `recommend_table` VALUES (2, 1, 45, 1);
INSERT INTO `recommend_table` VALUES (3, 1, 45, 1);
INSERT INTO `recommend_table` VALUES (4, 1, 156, 1);
INSERT INTO `recommend_table` VALUES (5, 1, 11, 1);
INSERT INTO `recommend_table` VALUES (6, 1, 70, 1);
INSERT INTO `recommend_table` VALUES (7, 1, 156, 1);
INSERT INTO `recommend_table` VALUES (8, 1, 57, 1);
INSERT INTO `recommend_table` VALUES (9, 1, 11, 1);
INSERT INTO `recommend_table` VALUES (10, 1, 70, 1);
INSERT INTO `recommend_table` VALUES (11, 1, 156, 1);
INSERT INTO `recommend_table` VALUES (12, 1, 57, 1);
INSERT INTO `recommend_table` VALUES (13, 1, 206, 3);
INSERT INTO `recommend_table` VALUES (14, 1, 207, 3);
INSERT INTO `recommend_table` VALUES (15, 1, 208, 3);
INSERT INTO `recommend_table` VALUES (16, 1, 209, 3);
INSERT INTO `recommend_table` VALUES (17, 1, 210, 3);
INSERT INTO `recommend_table` VALUES (18, 1, 206, 3);
INSERT INTO `recommend_table` VALUES (19, 1, 207, 3);
INSERT INTO `recommend_table` VALUES (20, 1, 208, 3);
INSERT INTO `recommend_table` VALUES (21, 1, 209, 3);
INSERT INTO `recommend_table` VALUES (22, 1, 210, 3);
INSERT INTO `recommend_table` VALUES (23, 1, 77, 1);
INSERT INTO `recommend_table` VALUES (24, 1, 70, 1);
INSERT INTO `recommend_table` VALUES (25, 1, 156, 1);
INSERT INTO `recommend_table` VALUES (26, 1, 57, 1);
INSERT INTO `recommend_table` VALUES (27, 3, 206, 3);
INSERT INTO `recommend_table` VALUES (28, 3, 207, 3);
INSERT INTO `recommend_table` VALUES (29, 3, 209, 3);
INSERT INTO `recommend_table` VALUES (30, 3, 211, 3);
INSERT INTO `recommend_table` VALUES (31, 3, 208, 3);
INSERT INTO `recommend_table` VALUES (32, 3, 206, 3);
INSERT INTO `recommend_table` VALUES (33, 3, 207, 3);
INSERT INTO `recommend_table` VALUES (34, 3, 209, 3);
INSERT INTO `recommend_table` VALUES (35, 3, 211, 3);
INSERT INTO `recommend_table` VALUES (36, 3, 208, 3);
INSERT INTO `recommend_table` VALUES (37, 1, 32, 1);
INSERT INTO `recommend_table` VALUES (38, 1, 70, 1);
INSERT INTO `recommend_table` VALUES (39, 1, 156, 1);
INSERT INTO `recommend_table` VALUES (40, 1, 7, 1);
INSERT INTO `recommend_table` VALUES (41, 1, 3, 1);
INSERT INTO `recommend_table` VALUES (42, 1, 45, 1);
INSERT INTO `recommend_table` VALUES (43, 1, 45, 1);
INSERT INTO `recommend_table` VALUES (44, 1, 42, 1);
INSERT INTO `recommend_table` VALUES (45, 1, 206, 3);
INSERT INTO `recommend_table` VALUES (46, 1, 207, 3);
INSERT INTO `recommend_table` VALUES (47, 1, 209, 3);
INSERT INTO `recommend_table` VALUES (48, 1, 211, 3);
INSERT INTO `recommend_table` VALUES (49, 1, 208, 3);
INSERT INTO `recommend_table` VALUES (50, 1, 206, 3);
INSERT INTO `recommend_table` VALUES (51, 1, 207, 3);
INSERT INTO `recommend_table` VALUES (52, 1, 209, 3);
INSERT INTO `recommend_table` VALUES (53, 1, 211, 3);
INSERT INTO `recommend_table` VALUES (54, 1, 208, 3);

-- ----------------------------
-- Table structure for test_question_table
-- ----------------------------
DROP TABLE IF EXISTS `test_question_table`;
CREATE TABLE `test_question_table`  (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NULL DEFAULT NULL,
  `question_cont` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_a` int(11) NULL DEFAULT NULL,
  `answer_b` int(11) NULL DEFAULT NULL,
  `answer_c` int(11) NULL DEFAULT NULL,
  `answer_d` int(11) NULL DEFAULT NULL,
  `answer_e` int(11) NULL DEFAULT NULL,
  `question_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_question_table
-- ----------------------------
INSERT INTO `test_question_table` VALUES (1, 1, '您精力充沛吗？', 1, 2, 3, 4, 5, 1);
INSERT INTO `test_question_table` VALUES (2, 1, '您容易疲乏吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (3, 1, '您说话声音无力吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (4, 1, '您感到闷闷不乐吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (5, 1, '您比一般人耐受不了寒冷（冬天的寒冷，夏天的冷空调、电扇）吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (6, 1, '您能适应外界自然和社会环境的变化吗？', 1, 2, 3, 4, 5, 1);
INSERT INTO `test_question_table` VALUES (7, 1, '您容易失眠吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (8, 1, '您容易忘事（健忘）吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (9, 1, '你容易疲乏吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (10, 1, '您容易气短（呼吸短促，接不上气吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (11, 1, '您容易心慌吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (12, 1, '您容易头晕或站起时晕眩吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (13, 1, '您比别人容易患感冒吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (14, 1, '您喜欢安静、懒得说话吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (15, 1, '您说话声音无力吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (16, 1, '您活动量就容易出虚汗吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (17, 1, '您手脚发凉吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (18, 1, '您胃脘部、背部或腰膝部怕冷吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (19, 1, '您感到怕冷、衣服比别人穿得多吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (20, 1, '您比一般人受不了寒冷（冬天的寒冷，夏天的冷空调、电扇等。）', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (21, 1, '您比别人容易患感冒吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (22, 1, '您吃（喝）凉的东西会感到不舒服或者怕吃（喝）凉东西吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (23, 1, '你受凉或吃（喝）凉的东西后，容易腹泻（拉肚子）吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (24, 1, '您感到手脚心发热吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (25, 1, '您感觉身体、脸上发热吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (26, 1, '您皮肤或口唇干吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (27, 1, '您口唇的颜色比一般人红吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (28, 1, '您容易便秘或大便干燥吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (29, 1, '您面部两潮红或偏红吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (30, 1, '您感到眼睛干涩吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (31, 1, '您活动量稍大就容易出虚汗吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (32, 1, '您感到胸闷或腹部胀满吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (33, 1, '您感到身体学生不轻松或不爽快吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (34, 1, '您腹部肥满松软吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (35, 1, '您有额部油脂分泌多的现象吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (36, 1, '您上眼睑比别人肿（仍轻微隆起的现象）吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (37, 1, '您嘴里有黏黏的感觉吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (38, 1, '您平时痰多，特别是咽喉部总感到有痰堵着吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (39, 1, '您舌苔厚腻或有舌苔厚厚的感觉吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (40, 1, '您面部或鼻部有油腻感或者油亮发光吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (41, 1, '你容易生痤疮或疮疖吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (42, 1, '您感到口苦或嘴里有异味吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (43, 1, '您大使黏滞不爽、有解不尽的感觉吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (44, 1, '您小便时尿道有发热感、尿色浓（深）吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (45, 1, '您带下色黄（白带颜色发黄）吗？（限女性回答）', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (46, 1, '您的阴囊部位潮湿吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (47, 1, '您的皮肤在不知不觉中会出现青紫瘀斑（皮下出血）吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (48, 1, '您两颧部有细微红丝吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (49, 1, '您身体上有哪里疼痛吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (50, 1, '您面色晦黯或容易出现褐斑吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (51, 1, '您容易有黑眼圈吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (52, 1, '您容易忘事（健忘）吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (53, 1, '您口唇颜色偏黯吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (54, 1, '您感到闷闷不乐吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (55, 1, '您容易精神紧张、焦虑不安吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (56, 1, '您多愁善感、感情脆弱吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (57, 1, '您容易感到害怕或受到惊吓吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (58, 1, '您胁肋部或乳房腹痛吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (59, 1, '您无缘无故叹气吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (60, 1, '您咽喉部有异物感，且吐之不出、咽之不下吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (61, 1, '您没有感冒时也会打喷嚏吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (62, 1, '您没有感冒时也会鼻塞、流鼻涕吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (63, 1, '您有因季节变化、温度变化或异味等原因而咳喘的现象吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (64, 1, '您容易过敏（对药物、食物、气味、花粉或在季节交替、气候变化时）吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (65, 1, '您的皮肤容易起荨麻疹（风团、风疹块、风疙瘩）吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (66, 1, '您的因过敏出现过紫癜（紫红色瘀点、瘀斑）吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (67, 1, '您的皮肤一抓就红，并出现抓痕吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (195, 2, '您精力充沛吗？', 1, 2, 3, 4, 5, 1);
INSERT INTO `test_question_table` VALUES (196, 2, '您容易疲乏吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (197, 2, '您说话声音无力吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (198, 2, '您感到闷闷不乐吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (199, 2, '您比一般人耐受不了寒冷（冬天的寒冷，夏天的冷空调、电扇）吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (203, 2, '你容易疲乏吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (204, 2, '您容易气短（呼吸短促，接不上气吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (205, 2, '您容易心慌吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (206, 2, '您容易头晕或站起时晕眩吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (207, 2, '您比别人容易患感冒吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (210, 2, '您手脚发凉吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (211, 2, '您胃脘部、背部或腰膝部怕冷吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (212, 2, '您感到怕冷、衣服比别人穿得多吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (213, 2, '您比一般人受不了寒冷（冬天的寒冷，夏天的冷空调、电扇等。）', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (214, 2, '您比别人容易患感冒吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (217, 2, '您感到手脚心发热吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (218, 2, '您感觉身体、脸上发热吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (219, 2, '您皮肤或口唇干吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (220, 2, '您口唇的颜色比一般人红吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (221, 2, '您容易便秘或大便干燥吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (224, 2, '您感到胸闷或腹部胀满吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (225, 2, '您感到身体学生不轻松或不爽快吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (226, 2, '您腹部肥满松软吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (227, 2, '您有额部油脂分泌多的现象吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (228, 2, '您上眼睑比别人肿（仍轻微隆起的现象）吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (231, 2, '您面部或鼻部有油腻感或者油亮发光吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (232, 2, '你容易生痤疮或疮疖吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (233, 2, '您感到口苦或嘴里有异味吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (234, 2, '您大使黏滞不爽、有解不尽的感觉吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (235, 2, '您小便时尿道有发热感、尿色浓（深）吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (238, 2, '您的皮肤在不知不觉中会出现青紫瘀斑（皮下出血）吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (239, 2, '您两颧部有细微红丝吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (240, 2, '您身体上有哪里疼痛吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (241, 2, '您面色晦黯或容易出现褐斑吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (242, 2, '您容易有黑眼圈吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (245, 2, '您感到闷闷不乐吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (246, 2, '您容易精神紧张、焦虑不安吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (247, 2, '您多愁善感、感情脆弱吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (248, 2, '您容易感到害怕或受到惊吓吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (249, 2, '您胁肋部或乳房腹痛吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (252, 2, '您没有感冒时也会打喷嚏吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (253, 2, '您没有感冒时也会鼻塞、流鼻涕吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (254, 2, '您有因季节变化、温度变化或异味等原因而咳喘的现象吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (255, 2, '您容易过敏（对药物、食物、气味、花粉或在季节交替、气候变化时）吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (256, 2, '您的皮肤容易起荨麻疹（风团、风疹块、风疙瘩）吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (259, 3, '您精力充沛吗？', 1, 2, 3, 4, 5, 1);
INSERT INTO `test_question_table` VALUES (260, 3, '您容易疲乏吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (261, 3, '您说话声音无力吗？*', 5, 4, 3, 2, 1, 1);
INSERT INTO `test_question_table` VALUES (262, 3, '你容易疲乏吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (263, 3, '您容易气短（呼吸短促，接不上气吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (264, 3, '您容易心慌吗？', 1, 2, 3, 4, 5, 2);
INSERT INTO `test_question_table` VALUES (265, 3, '您手脚发凉吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (266, 3, '您胃脘部、背部或腰膝部怕冷吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (267, 3, '您感到怕冷、衣服比别人穿得多吗？', 1, 2, 3, 4, 5, 3);
INSERT INTO `test_question_table` VALUES (268, 3, '您感到手脚心发热吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (269, 3, '您感觉身体、脸上发热吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (270, 3, '您皮肤或口唇干吗？', 1, 2, 3, 4, 5, 4);
INSERT INTO `test_question_table` VALUES (271, 3, '您感到胸闷或腹部胀满吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (272, 3, '您感到身体学生不轻松或不爽快吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (273, 3, '您腹部肥满松软吗？', 1, 2, 3, 4, 5, 5);
INSERT INTO `test_question_table` VALUES (274, 3, '您面部或鼻部有油腻感或者油亮发光吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (275, 3, '你容易生痤疮或疮疖吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (276, 3, '您感到口苦或嘴里有异味吗？', 1, 2, 3, 4, 5, 6);
INSERT INTO `test_question_table` VALUES (277, 3, '您的皮肤在不知不觉中会出现青紫瘀斑（皮下出血）吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (278, 3, '您两颧部有细微红丝吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (279, 3, '您身体上有哪里疼痛吗？', 1, 2, 3, 4, 5, 7);
INSERT INTO `test_question_table` VALUES (280, 3, '您感到闷闷不乐吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (281, 3, '您容易精神紧张、焦虑不安吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (282, 3, '您多愁善感、感情脆弱吗？', 1, 2, 3, 4, 5, 8);
INSERT INTO `test_question_table` VALUES (283, 3, '您没有感冒时也会打喷嚏吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (284, 3, '您没有感冒时也会鼻塞、流鼻涕吗？', 1, 2, 3, 4, 5, 9);
INSERT INTO `test_question_table` VALUES (285, 3, '您有因季节变化、温度变化或异味等原因而咳喘的现象吗？', 1, 2, 3, 4, 5, 9);

-- ----------------------------
-- Table structure for test_result_table
-- ----------------------------
DROP TABLE IF EXISTS `test_result_table`;
CREATE TABLE `test_result_table`  (
  `test_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `physique_id` int(11) NULL DEFAULT NULL,
  `score_a` int(11) NULL DEFAULT NULL,
  `score_b` int(11) NULL DEFAULT NULL,
  `score_c` int(11) NULL DEFAULT NULL,
  `score_d` int(11) NULL DEFAULT NULL,
  `score_e` int(11) NULL DEFAULT NULL,
  `score_f` int(11) NULL DEFAULT NULL,
  `score_g` int(11) NULL DEFAULT NULL,
  `score_h` int(11) NULL DEFAULT NULL,
  `score_i` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`test_result_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_result_table
-- ----------------------------
INSERT INTO `test_result_table` VALUES (1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `test_result_table` VALUES (2, 3, 1, 3, 50, 16, 50, 8, 8, 16, 0, 50, 25);
INSERT INTO `test_result_table` VALUES (3, 3, 1, 2, 83, 41, 0, 8, 8, 83, 16, 16, 50);
INSERT INTO `test_result_table` VALUES (4, 3, 1, 2, 33, 100, 100, 100, 100, 100, 100, 100, 100);
INSERT INTO `test_result_table` VALUES (5, 1, 1, 2, 25, 100, 100, 100, 100, 100, 100, 100, 100);
INSERT INTO `test_result_table` VALUES (6, 1, 1, 2, 25, 100, 100, 100, 100, 100, 100, 100, 100);
INSERT INTO `test_result_table` VALUES (7, 2, 1, 3, 30, 70, 100, 100, 100, 70, 100, 100, 100);

-- ----------------------------
-- Table structure for test_table
-- ----------------------------
DROP TABLE IF EXISTS `test_table`;
CREATE TABLE `test_table`  (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_intro` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`test_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_table
-- ----------------------------
INSERT INTO `test_table` VALUES (1, '全面测试', '中华中医药学会标准 中医体质测试', '测试题目数量：67');
INSERT INTO `test_table` VALUES (2, '详细测试', '中华中医药学会标准 中医体质测试', '测试题目数量：45');
INSERT INTO `test_table` VALUES (3, '快速测试', '中华中医药学会标准 中医体质测试', '测试题目数量：27');

-- ----------------------------
-- Table structure for user_browse_table
-- ----------------------------
DROP TABLE IF EXISTS `user_browse_table`;
CREATE TABLE `user_browse_table`  (
  `browse_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_category` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`browse_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_browse_table
-- ----------------------------
INSERT INTO `user_browse_table` VALUES (1, 1, 1, 1);
INSERT INTO `user_browse_table` VALUES (2, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (3, 1, 6, 1);
INSERT INTO `user_browse_table` VALUES (4, 1, 55, 1);
INSERT INTO `user_browse_table` VALUES (5, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (6, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (7, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (8, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (9, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (10, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (11, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (12, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (13, 1, 5, 1);
INSERT INTO `user_browse_table` VALUES (14, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (15, 1, 57, 1);
INSERT INTO `user_browse_table` VALUES (16, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (17, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (18, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (19, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (20, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (21, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (22, 1, 11, 1);
INSERT INTO `user_browse_table` VALUES (23, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (24, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (25, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (26, 1, 1, 1);
INSERT INTO `user_browse_table` VALUES (27, 1, 23, 1);
INSERT INTO `user_browse_table` VALUES (28, 1, 103, 1);
INSERT INTO `user_browse_table` VALUES (29, 1, 231, 1);
INSERT INTO `user_browse_table` VALUES (30, 1, 42, 1);
INSERT INTO `user_browse_table` VALUES (31, 1, 52, 1);
INSERT INTO `user_browse_table` VALUES (32, 1, 116, 1);
INSERT INTO `user_browse_table` VALUES (33, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (34, 1, 1, 1);
INSERT INTO `user_browse_table` VALUES (35, 1, 1, 1);
INSERT INTO `user_browse_table` VALUES (36, 1, 1, 1);
INSERT INTO `user_browse_table` VALUES (37, 1, 1, 1);
INSERT INTO `user_browse_table` VALUES (38, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (39, 1, 61, 1);
INSERT INTO `user_browse_table` VALUES (40, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (41, 1, 257, 1);
INSERT INTO `user_browse_table` VALUES (42, 1, 257, 1);
INSERT INTO `user_browse_table` VALUES (43, 1, 257, 1);
INSERT INTO `user_browse_table` VALUES (44, 1, 1, 1);
INSERT INTO `user_browse_table` VALUES (45, 1, 257, 1);
INSERT INTO `user_browse_table` VALUES (46, 1, 257, 1);
INSERT INTO `user_browse_table` VALUES (47, 1, 257, 1);
INSERT INTO `user_browse_table` VALUES (48, 1, 40, 1);
INSERT INTO `user_browse_table` VALUES (49, 1, 41, 1);
INSERT INTO `user_browse_table` VALUES (50, 1, 132, 1);
INSERT INTO `user_browse_table` VALUES (51, 1, 42, 1);
INSERT INTO `user_browse_table` VALUES (52, 1, 137, 1);
INSERT INTO `user_browse_table` VALUES (53, 1, 203, 1);
INSERT INTO `user_browse_table` VALUES (54, 1, 256, 1);
INSERT INTO `user_browse_table` VALUES (55, 1, 45, 1);
INSERT INTO `user_browse_table` VALUES (56, 1, 227, 1);
INSERT INTO `user_browse_table` VALUES (57, 1, 193, 1);
INSERT INTO `user_browse_table` VALUES (58, 1, 201, 1);
INSERT INTO `user_browse_table` VALUES (59, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (60, 1, 231, 1);
INSERT INTO `user_browse_table` VALUES (61, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (62, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (63, 1, 45, 1);
INSERT INTO `user_browse_table` VALUES (64, 1, 7, 1);
INSERT INTO `user_browse_table` VALUES (65, 1, 7, 1);
INSERT INTO `user_browse_table` VALUES (66, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (67, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (68, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (69, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (70, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (71, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (72, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (73, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (74, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (75, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (76, 1, 42, 1);
INSERT INTO `user_browse_table` VALUES (77, 1, 42, 1);
INSERT INTO `user_browse_table` VALUES (78, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (79, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (80, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (81, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (82, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (83, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (84, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (85, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (86, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (87, 1, 3, 1);
INSERT INTO `user_browse_table` VALUES (88, 1, 156, 1);
INSERT INTO `user_browse_table` VALUES (89, 1, 3, 1);

-- ----------------------------
-- Table structure for user_search_table
-- ----------------------------
DROP TABLE IF EXISTS `user_search_table`;
CREATE TABLE `user_search_table`  (
  `search_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `search_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`search_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 432 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_search_table
-- ----------------------------
INSERT INTO `user_search_table` VALUES (1, 1, '头痛');
INSERT INTO `user_search_table` VALUES (2, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (3, 1, '粥');
INSERT INTO `user_search_table` VALUES (4, 1, '脱发');
INSERT INTO `user_search_table` VALUES (5, 1, '补血');
INSERT INTO `user_search_table` VALUES (6, 1, '抗衰老');
INSERT INTO `user_search_table` VALUES (7, 1, '感冒');
INSERT INTO `user_search_table` VALUES (8, 1, '防暑');
INSERT INTO `user_search_table` VALUES (9, 1, '风热感冒');
INSERT INTO `user_search_table` VALUES (10, 1, '清热');
INSERT INTO `user_search_table` VALUES (11, 1, '保健');
INSERT INTO `user_search_table` VALUES (12, 1, '生姜粥');
INSERT INTO `user_search_table` VALUES (13, 1, '生姜');
INSERT INTO `user_search_table` VALUES (14, 1, '猪脚');
INSERT INTO `user_search_table` VALUES (15, 1, '失眠');
INSERT INTO `user_search_table` VALUES (16, 1, '盗汗');
INSERT INTO `user_search_table` VALUES (19, 1, '失眠');
INSERT INTO `user_search_table` VALUES (20, 1, '解表');
INSERT INTO `user_search_table` VALUES (21, 1, '止咳');
INSERT INTO `user_search_table` VALUES (22, 1, '口腔溃疡');
INSERT INTO `user_search_table` VALUES (23, 1, '腰痛');
INSERT INTO `user_search_table` VALUES (24, 1, '生姜');
INSERT INTO `user_search_table` VALUES (25, 1, '驱寒');
INSERT INTO `user_search_table` VALUES (26, 1, '搜索');
INSERT INTO `user_search_table` VALUES (27, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (28, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (29, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (30, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (31, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (32, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (33, 1, '头痛');
INSERT INTO `user_search_table` VALUES (34, 1, '头晕');
INSERT INTO `user_search_table` VALUES (35, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (36, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (37, 1, '头痛');
INSERT INTO `user_search_table` VALUES (38, 1, '眼花');
INSERT INTO `user_search_table` VALUES (39, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (51, 1, '减肥');
INSERT INTO `user_search_table` VALUES (52, 1, '减肥');
INSERT INTO `user_search_table` VALUES (53, 1, '头痛');
INSERT INTO `user_search_table` VALUES (54, 1, '头晕');
INSERT INTO `user_search_table` VALUES (58, 1, '头晕');
INSERT INTO `user_search_table` VALUES (59, 1, '头晕');
INSERT INTO `user_search_table` VALUES (60, 1, '抵抗力');
INSERT INTO `user_search_table` VALUES (61, 1, '抵抗力');
INSERT INTO `user_search_table` VALUES (62, 1, '抵抗力');
INSERT INTO `user_search_table` VALUES (63, 1, '抵抗力');
INSERT INTO `user_search_table` VALUES (64, 1, '抵抗力');
INSERT INTO `user_search_table` VALUES (65, 1, '头晕');
INSERT INTO `user_search_table` VALUES (66, 1, '头晕');
INSERT INTO `user_search_table` VALUES (67, 1, '抵抗力');
INSERT INTO `user_search_table` VALUES (68, 1, '清热');
INSERT INTO `user_search_table` VALUES (73, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (74, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (75, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (76, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (77, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (78, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (80, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (81, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (82, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (83, 1, '头晕');
INSERT INTO `user_search_table` VALUES (84, 1, '头晕');
INSERT INTO `user_search_table` VALUES (85, 1, '头晕');
INSERT INTO `user_search_table` VALUES (86, 1, '头晕');
INSERT INTO `user_search_table` VALUES (87, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (88, 1, '壮阳');
INSERT INTO `user_search_table` VALUES (100, 1, '头晕');
INSERT INTO `user_search_table` VALUES (101, 1, '头晕');
INSERT INTO `user_search_table` VALUES (111, 1, '鸡');
INSERT INTO `user_search_table` VALUES (112, 1, '乌鸡');
INSERT INTO `user_search_table` VALUES (113, 1, '鳖');
INSERT INTO `user_search_table` VALUES (114, 1, '降火');
INSERT INTO `user_search_table` VALUES (115, 1, '利湿');
INSERT INTO `user_search_table` VALUES (116, 1, '利湿');
INSERT INTO `user_search_table` VALUES (117, 1, '萝卜');
INSERT INTO `user_search_table` VALUES (118, 1, '玫瑰花');
INSERT INTO `user_search_table` VALUES (119, 1, '苦瓜');
INSERT INTO `user_search_table` VALUES (120, 1, '小麦');
INSERT INTO `user_search_table` VALUES (121, 1, '山楂');
INSERT INTO `user_search_table` VALUES (122, 1, '益气');
INSERT INTO `user_search_table` VALUES (123, 1, '薏苡仁');
INSERT INTO `user_search_table` VALUES (124, 1, '薏苡仁');
INSERT INTO `user_search_table` VALUES (125, 1, '薏苡仁');
INSERT INTO `user_search_table` VALUES (126, 1, '薏苡仁');
INSERT INTO `user_search_table` VALUES (127, 1, '薏苡仁');
INSERT INTO `user_search_table` VALUES (128, 1, '补血');
INSERT INTO `user_search_table` VALUES (129, 1, '活血');
INSERT INTO `user_search_table` VALUES (130, 1, '鱼');
INSERT INTO `user_search_table` VALUES (131, 1, '止咳');
INSERT INTO `user_search_table` VALUES (132, 1, '解表类');
INSERT INTO `user_search_table` VALUES (133, 1, '解表类');
INSERT INTO `user_search_table` VALUES (134, 1, '清热类');
INSERT INTO `user_search_table` VALUES (135, 1, '清热类');
INSERT INTO `user_search_table` VALUES (136, 1, '泻下类');
INSERT INTO `user_search_table` VALUES (137, 1, '温里祛寒类');
INSERT INTO `user_search_table` VALUES (138, 1, '祛风湿类');
INSERT INTO `user_search_table` VALUES (139, 1, '养生保健类');
INSERT INTO `user_search_table` VALUES (140, 1, '清热类');
INSERT INTO `user_search_table` VALUES (141, 1, '清热类');
INSERT INTO `user_search_table` VALUES (142, 1, '养生保健类');
INSERT INTO `user_search_table` VALUES (143, 1, '炖');
INSERT INTO `user_search_table` VALUES (144, 1, '菜肴类');
INSERT INTO `user_search_table` VALUES (145, 1, '饮料类');
INSERT INTO `user_search_table` VALUES (146, 1, '养生保健类');
INSERT INTO `user_search_table` VALUES (147, 1, '消食解酒类');
INSERT INTO `user_search_table` VALUES (148, 1, '消食解酒类');
INSERT INTO `user_search_table` VALUES (149, 1, '消食解酒类');
INSERT INTO `user_search_table` VALUES (150, 1, '消食解酒类');
INSERT INTO `user_search_table` VALUES (151, 1, '消食解酒类');
INSERT INTO `user_search_table` VALUES (152, 1, '消食解酒类');
INSERT INTO `user_search_table` VALUES (153, 1, '培补元气');
INSERT INTO `user_search_table` VALUES (154, 1, '益气健脾');
INSERT INTO `user_search_table` VALUES (155, 1, '调养气血');
INSERT INTO `user_search_table` VALUES (156, 1, '协理阴阳');
INSERT INTO `user_search_table` VALUES (157, 1, '培补元气');
INSERT INTO `user_search_table` VALUES (158, 1, '温补脾肾');
INSERT INTO `user_search_table` VALUES (159, 1, '化湿通阳');
INSERT INTO `user_search_table` VALUES (160, 1, '养阴降火');
INSERT INTO `user_search_table` VALUES (161, 1, '滋补肝肾');
INSERT INTO `user_search_table` VALUES (162, 1, '化痰降浊');
INSERT INTO `user_search_table` VALUES (163, 1, '清化湿热');
INSERT INTO `user_search_table` VALUES (164, 1, '分消走泄');
INSERT INTO `user_search_table` VALUES (165, 1, '疏通经络');
INSERT INTO `user_search_table` VALUES (166, 1, '疏肝理气');
INSERT INTO `user_search_table` VALUES (167, 1, '调畅气机');
INSERT INTO `user_search_table` VALUES (168, 1, '益气固表');
INSERT INTO `user_search_table` VALUES (169, 1, '养血消风');
INSERT INTO `user_search_table` VALUES (170, 1, '养血消风');
INSERT INTO `user_search_table` VALUES (171, 1, '养血消风');
INSERT INTO `user_search_table` VALUES (172, 1, '补血');
INSERT INTO `user_search_table` VALUES (173, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (174, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (175, 1, '补血');
INSERT INTO `user_search_table` VALUES (176, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (177, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (178, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (179, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (180, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (181, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (182, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (183, 1, '哈哈');
INSERT INTO `user_search_table` VALUES (184, 1, '补血');
INSERT INTO `user_search_table` VALUES (185, 1, '葛根');
INSERT INTO `user_search_table` VALUES (186, 1, '便秘');
INSERT INTO `user_search_table` VALUES (187, 1, '便秘');
INSERT INTO `user_search_table` VALUES (188, 1, '山植菊花饮');
INSERT INTO `user_search_table` VALUES (189, 1, '芹菜大枣汤');
INSERT INTO `user_search_table` VALUES (190, 1, '双耳汤');
INSERT INTO `user_search_table` VALUES (191, 1, '双耳');
INSERT INTO `user_search_table` VALUES (192, 1, '山植决明饮');
INSERT INTO `user_search_table` VALUES (193, 1, '决明');
INSERT INTO `user_search_table` VALUES (194, 1, '菊花粥');
INSERT INTO `user_search_table` VALUES (195, 1, '菊花');
INSERT INTO `user_search_table` VALUES (196, 1, '海带绿豆汤');
INSERT INTO `user_search_table` VALUES (197, 1, '海带');
INSERT INTO `user_search_table` VALUES (198, 1, '海带');
INSERT INTO `user_search_table` VALUES (199, 1, '莲子粥');
INSERT INTO `user_search_table` VALUES (200, 1, '莲子');
INSERT INTO `user_search_table` VALUES (201, 1, '葛根粉粥');
INSERT INTO `user_search_table` VALUES (202, 1, '葛根粉');
INSERT INTO `user_search_table` VALUES (203, 1, '葛根');
INSERT INTO `user_search_table` VALUES (204, 1, '菊楂决明茶 ');
INSERT INTO `user_search_table` VALUES (205, 1, '山楂粥');
INSERT INTO `user_search_table` VALUES (206, 1, '山楂');
INSERT INTO `user_search_table` VALUES (207, 1, '山楂决明汤');
INSERT INTO `user_search_table` VALUES (208, 1, '桃仁粥');
INSERT INTO `user_search_table` VALUES (209, 1, '高血压');
INSERT INTO `user_search_table` VALUES (210, 1, '高血压');
INSERT INTO `user_search_table` VALUES (211, 1, '高血压');
INSERT INTO `user_search_table` VALUES (212, 1, '桃仁粥');
INSERT INTO `user_search_table` VALUES (213, 1, '高血脂');
INSERT INTO `user_search_table` VALUES (214, 1, '消渴症');
INSERT INTO `user_search_table` VALUES (215, 1, '糖尿病');
INSERT INTO `user_search_table` VALUES (216, 1, '仙人粥');
INSERT INTO `user_search_table` VALUES (217, 1, '豆腐浆粥');
INSERT INTO `user_search_table` VALUES (218, 1, '豆腐浆粥');
INSERT INTO `user_search_table` VALUES (219, 1, '豆腐');
INSERT INTO `user_search_table` VALUES (220, 1, '玉米粉粥');
INSERT INTO `user_search_table` VALUES (221, 1, '绿豆粥');
INSERT INTO `user_search_table` VALUES (222, 1, '海带排骨汤');
INSERT INTO `user_search_table` VALUES (223, 1, '百合芦笋汤');
INSERT INTO `user_search_table` VALUES (224, 1, '山楂炖肉');
INSERT INTO `user_search_table` VALUES (225, 1, '香菇豆腐汤');
INSERT INTO `user_search_table` VALUES (226, 1, '四生饮');
INSERT INTO `user_search_table` VALUES (227, 1, '花粉粥');
INSERT INTO `user_search_table` VALUES (228, 1, '葛根冬瓜粥');
INSERT INTO `user_search_table` VALUES (229, 1, '葛根');
INSERT INTO `user_search_table` VALUES (230, 1, '五味子煲子鸡');
INSERT INTO `user_search_table` VALUES (231, 1, '合糯米粥');
INSERT INTO `user_search_table` VALUES (232, 1, '糯米粥');
INSERT INTO `user_search_table` VALUES (233, 1, '糯米粥');
INSERT INTO `user_search_table` VALUES (234, 1, '木瓜慈仁粥');
INSERT INTO `user_search_table` VALUES (235, 1, '木瓜粥');
INSERT INTO `user_search_table` VALUES (236, 1, '葵菜粥');
INSERT INTO `user_search_table` VALUES (237, 1, '葵菜');
INSERT INTO `user_search_table` VALUES (238, 1, '鸭梨粥');
INSERT INTO `user_search_table` VALUES (239, 1, '鸭梨');
INSERT INTO `user_search_table` VALUES (240, 1, '梨');
INSERT INTO `user_search_table` VALUES (241, 1, '芝麻粥');
INSERT INTO `user_search_table` VALUES (242, 1, '芝麻');
INSERT INTO `user_search_table` VALUES (243, 1, '生梨白藕汁');
INSERT INTO `user_search_table` VALUES (244, 1, '萝卜');
INSERT INTO `user_search_table` VALUES (245, 1, '高血脂');
INSERT INTO `user_search_table` VALUES (246, 1, '糖尿病');
INSERT INTO `user_search_table` VALUES (247, 1, '风湿病');
INSERT INTO `user_search_table` VALUES (248, 1, '风湿');
INSERT INTO `user_search_table` VALUES (249, 1, '风湿');
INSERT INTO `user_search_table` VALUES (250, 1, '风湿');
INSERT INTO `user_search_table` VALUES (251, 1, '风湿');
INSERT INTO `user_search_table` VALUES (252, 1, '热秘');
INSERT INTO `user_search_table` VALUES (253, 1, '便秘');
INSERT INTO `user_search_table` VALUES (254, 1, '便秘');
INSERT INTO `user_search_table` VALUES (255, 1, '便秘');
INSERT INTO `user_search_table` VALUES (256, 1, '便秘');
INSERT INTO `user_search_table` VALUES (257, 1, '便秘');
INSERT INTO `user_search_table` VALUES (258, 1, '小儿咳嗽');
INSERT INTO `user_search_table` VALUES (259, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (260, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (261, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (262, 1, '风热咳嗽');
INSERT INTO `user_search_table` VALUES (263, 1, '风热');
INSERT INTO `user_search_table` VALUES (264, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (265, 1, '药');
INSERT INTO `user_search_table` VALUES (266, 1, '高血压');
INSERT INTO `user_search_table` VALUES (267, 1, '桑菊');
INSERT INTO `user_search_table` VALUES (268, 1, '桑菊');
INSERT INTO `user_search_table` VALUES (269, 1, '补心');
INSERT INTO `user_search_table` VALUES (270, 1, '补肝');
INSERT INTO `user_search_table` VALUES (271, 1, '补脾');
INSERT INTO `user_search_table` VALUES (272, 1, '补肾');
INSERT INTO `user_search_table` VALUES (273, 1, '补肺');
INSERT INTO `user_search_table` VALUES (274, 1, '补脾');
INSERT INTO `user_search_table` VALUES (275, 1, '心阴虚');
INSERT INTO `user_search_table` VALUES (276, 1, '心阳虚');
INSERT INTO `user_search_table` VALUES (277, 1, '肾阴虚');
INSERT INTO `user_search_table` VALUES (278, 1, '肾阳虚');
INSERT INTO `user_search_table` VALUES (279, 1, '肾气虚');
INSERT INTO `user_search_table` VALUES (280, 1, '肝阴虚');
INSERT INTO `user_search_table` VALUES (281, 1, '心阴虚');
INSERT INTO `user_search_table` VALUES (282, 1, '脾阴虚');
INSERT INTO `user_search_table` VALUES (283, 1, '肺阴虚');
INSERT INTO `user_search_table` VALUES (284, 1, '肝阴虚');
INSERT INTO `user_search_table` VALUES (285, 1, '肾阴虚');
INSERT INTO `user_search_table` VALUES (286, 1, '肝阳虚');
INSERT INTO `user_search_table` VALUES (287, 1, '心阳虚');
INSERT INTO `user_search_table` VALUES (288, 1, '皮阳虚');
INSERT INTO `user_search_table` VALUES (289, 1, '脾阳虚');
INSERT INTO `user_search_table` VALUES (290, 1, '肺阳虚');
INSERT INTO `user_search_table` VALUES (291, 1, '肾阳虚');
INSERT INTO `user_search_table` VALUES (292, 1, '肝气虚');
INSERT INTO `user_search_table` VALUES (293, 1, '肝血虚');
INSERT INTO `user_search_table` VALUES (294, 1, '肝 阴虚');
INSERT INTO `user_search_table` VALUES (295, 1, '肝阴虚');
INSERT INTO `user_search_table` VALUES (296, 1, '肝气郁结');
INSERT INTO `user_search_table` VALUES (297, 1, '肝阳上亢');
INSERT INTO `user_search_table` VALUES (298, 1, '滋阴补肺');
INSERT INTO `user_search_table` VALUES (299, 1, '养心');
INSERT INTO `user_search_table` VALUES (300, 1, '养心');
INSERT INTO `user_search_table` VALUES (301, 1, '养心');
INSERT INTO `user_search_table` VALUES (302, 1, '养心');
INSERT INTO `user_search_table` VALUES (303, 1, '补肝');
INSERT INTO `user_search_table` VALUES (304, 1, '补肝');
INSERT INTO `user_search_table` VALUES (305, 1, '补肝');
INSERT INTO `user_search_table` VALUES (306, 1, '补肝');
INSERT INTO `user_search_table` VALUES (307, 1, '补肝');
INSERT INTO `user_search_table` VALUES (308, 1, '健脾');
INSERT INTO `user_search_table` VALUES (309, 1, '健脾');
INSERT INTO `user_search_table` VALUES (310, 1, '健脾');
INSERT INTO `user_search_table` VALUES (311, 1, '健脾');
INSERT INTO `user_search_table` VALUES (312, 1, '健脾');
INSERT INTO `user_search_table` VALUES (313, 1, '补脾');
INSERT INTO `user_search_table` VALUES (314, 1, '补脾');
INSERT INTO `user_search_table` VALUES (315, 1, '补脾');
INSERT INTO `user_search_table` VALUES (316, 1, '补肺');
INSERT INTO `user_search_table` VALUES (317, 1, '补肺');
INSERT INTO `user_search_table` VALUES (318, 1, '补肺');
INSERT INTO `user_search_table` VALUES (319, 1, '补肺');
INSERT INTO `user_search_table` VALUES (320, 1, '补肾');
INSERT INTO `user_search_table` VALUES (321, 1, '补肾');
INSERT INTO `user_search_table` VALUES (322, 1, '补肾');
INSERT INTO `user_search_table` VALUES (323, 1, '补肾');
INSERT INTO `user_search_table` VALUES (324, 1, '补肾');
INSERT INTO `user_search_table` VALUES (325, 1, '补肾');
INSERT INTO `user_search_table` VALUES (326, 1, '养肝');
INSERT INTO `user_search_table` VALUES (327, 1, '养肝');
INSERT INTO `user_search_table` VALUES (328, 1, '养肝');
INSERT INTO `user_search_table` VALUES (329, 1, '补心');
INSERT INTO `user_search_table` VALUES (330, 1, '养心');
INSERT INTO `user_search_table` VALUES (331, 1, '养心');
INSERT INTO `user_search_table` VALUES (332, 1, '补肝');
INSERT INTO `user_search_table` VALUES (333, 1, '补肝');
INSERT INTO `user_search_table` VALUES (334, 1, '补肝');
INSERT INTO `user_search_table` VALUES (335, 1, '润肺');
INSERT INTO `user_search_table` VALUES (336, 1, '润肺');
INSERT INTO `user_search_table` VALUES (337, 1, '润肺');
INSERT INTO `user_search_table` VALUES (338, 1, '润肺');
INSERT INTO `user_search_table` VALUES (339, 1, '润肺');
INSERT INTO `user_search_table` VALUES (340, 1, '益脾');
INSERT INTO `user_search_table` VALUES (341, 1, '益脾');
INSERT INTO `user_search_table` VALUES (342, 1, '益脾');
INSERT INTO `user_search_table` VALUES (343, 1, '益脾');
INSERT INTO `user_search_table` VALUES (344, 1, '补肝');
INSERT INTO `user_search_table` VALUES (345, 1, '补肝');
INSERT INTO `user_search_table` VALUES (346, 1, '补肝');
INSERT INTO `user_search_table` VALUES (347, 1, '补肝');
INSERT INTO `user_search_table` VALUES (348, 1, '补肝');
INSERT INTO `user_search_table` VALUES (349, 1, '养心');
INSERT INTO `user_search_table` VALUES (350, 1, '补肝');
INSERT INTO `user_search_table` VALUES (351, 1, '养心');
INSERT INTO `user_search_table` VALUES (352, 1, '健脾');
INSERT INTO `user_search_table` VALUES (353, 1, '补肝');
INSERT INTO `user_search_table` VALUES (354, 1, '补肝');
INSERT INTO `user_search_table` VALUES (355, 1, '补肝');
INSERT INTO `user_search_table` VALUES (356, 1, '补肝');
INSERT INTO `user_search_table` VALUES (357, 1, '补肝');
INSERT INTO `user_search_table` VALUES (358, 1, '补肝');
INSERT INTO `user_search_table` VALUES (359, 1, '养心');
INSERT INTO `user_search_table` VALUES (360, 1, '养心');
INSERT INTO `user_search_table` VALUES (361, 1, '养心');
INSERT INTO `user_search_table` VALUES (362, 1, '健脾');
INSERT INTO `user_search_table` VALUES (363, 1, '健脾');
INSERT INTO `user_search_table` VALUES (364, 1, '健脾');
INSERT INTO `user_search_table` VALUES (365, 1, '健脾');
INSERT INTO `user_search_table` VALUES (366, 1, '健脾');
INSERT INTO `user_search_table` VALUES (367, 1, '益气健脾');
INSERT INTO `user_search_table` VALUES (368, 1, '益气健脾');
INSERT INTO `user_search_table` VALUES (369, 1, '润肺');
INSERT INTO `user_search_table` VALUES (370, 1, '润肺');
INSERT INTO `user_search_table` VALUES (371, 1, '润肺');
INSERT INTO `user_search_table` VALUES (372, 1, '润肺');
INSERT INTO `user_search_table` VALUES (373, 1, '润肺');
INSERT INTO `user_search_table` VALUES (374, 1, '补肾');
INSERT INTO `user_search_table` VALUES (375, 1, '补肾');
INSERT INTO `user_search_table` VALUES (376, 1, '补肾');
INSERT INTO `user_search_table` VALUES (377, 1, '补肾');
INSERT INTO `user_search_table` VALUES (378, 1, '补肾');
INSERT INTO `user_search_table` VALUES (379, 1, '补肾');
INSERT INTO `user_search_table` VALUES (380, 1, '补肾');
INSERT INTO `user_search_table` VALUES (381, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (382, 1, '黄芪羊肉汤');
INSERT INTO `user_search_table` VALUES (383, 1, '黄芪');
INSERT INTO `user_search_table` VALUES (384, 1, '黄芪');
INSERT INTO `user_search_table` VALUES (385, 1, '当归羊肉汤');
INSERT INTO `user_search_table` VALUES (386, 1, '羊肉汤');
INSERT INTO `user_search_table` VALUES (387, 1, '黄精');
INSERT INTO `user_search_table` VALUES (388, 1, '枸杞子');
INSERT INTO `user_search_table` VALUES (389, 1, '枸杞子');
INSERT INTO `user_search_table` VALUES (390, 1, '枸杞子');
INSERT INTO `user_search_table` VALUES (391, 1, '冬虫夏草');
INSERT INTO `user_search_table` VALUES (392, 1, '黄氏');
INSERT INTO `user_search_table` VALUES (393, 1, '黄芪');
INSERT INTO `user_search_table` VALUES (394, 1, '仙灵');
INSERT INTO `user_search_table` VALUES (395, 1, '灵仙');
INSERT INTO `user_search_table` VALUES (396, 1, '调养气血');
INSERT INTO `user_search_table` VALUES (397, 1, '协理阴阳');
INSERT INTO `user_search_table` VALUES (398, 1, '益气健脾');
INSERT INTO `user_search_table` VALUES (399, 1, '温补脾肾');
INSERT INTO `user_search_table` VALUES (400, 1, '化湿通阳');
INSERT INTO `user_search_table` VALUES (401, 1, '滋补肝肾');
INSERT INTO `user_search_table` VALUES (402, 1, '健脾利湿');
INSERT INTO `user_search_table` VALUES (403, 1, '清化湿热');
INSERT INTO `user_search_table` VALUES (404, 1, '分消走泄');
INSERT INTO `user_search_table` VALUES (405, 1, '活血化瘀');
INSERT INTO `user_search_table` VALUES (406, 1, '调畅气机');
INSERT INTO `user_search_table` VALUES (407, 1, '疏肝理气');
INSERT INTO `user_search_table` VALUES (408, 1, '养血消风');
INSERT INTO `user_search_table` VALUES (409, 1, '益气固表');
INSERT INTO `user_search_table` VALUES (410, 1, '调养气血');
INSERT INTO `user_search_table` VALUES (411, 1, '培补元气');
INSERT INTO `user_search_table` VALUES (412, 1, '调养气血');
INSERT INTO `user_search_table` VALUES (413, 1, '温补脾肾');
INSERT INTO `user_search_table` VALUES (414, 1, '滋补肝肾');
INSERT INTO `user_search_table` VALUES (415, 1, '健脾利湿');
INSERT INTO `user_search_table` VALUES (416, 1, '化痰降浊');
INSERT INTO `user_search_table` VALUES (417, 1, '清化湿热');
INSERT INTO `user_search_table` VALUES (418, 1, '活血化瘀');
INSERT INTO `user_search_table` VALUES (419, 1, '疏通经络');
INSERT INTO `user_search_table` VALUES (420, 1, '疏肝理气');
INSERT INTO `user_search_table` VALUES (421, 1, '调畅气机');
INSERT INTO `user_search_table` VALUES (422, 1, '调理脾胃');
INSERT INTO `user_search_table` VALUES (423, 1, '健脾胃');
INSERT INTO `user_search_table` VALUES (424, 1, '益气固表');
INSERT INTO `user_search_table` VALUES (425, 1, '养血消风');
INSERT INTO `user_search_table` VALUES (426, 1, '炒');
INSERT INTO `user_search_table` VALUES (427, 1, '解暑');
INSERT INTO `user_search_table` VALUES (428, 1, '咳嗽');
INSERT INTO `user_search_table` VALUES (429, 1, '解表类');
INSERT INTO `user_search_table` VALUES (430, 1, '解表类');
INSERT INTO `user_search_table` VALUES (431, 1, '解表类');
INSERT INTO `user_search_table` VALUES (432, 1, '泻下类');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_age` int(11) NULL DEFAULT NULL,
  `user_aim` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES (1, '18569646989', '123456', '节宙', '运动员', '男', 20, '减肥', NULL, '每天运动一小时,健康生活一辈子');
INSERT INTO `user_table` VALUES (2, '12', '123', 'null', '运动员', 'null', NULL, 'null', NULL, NULL);
INSERT INTO `user_table` VALUES (3, '13973564178', '123', '沙漏', '程序员', '男', 20, '减肥', NULL, '天天向上');

SET FOREIGN_KEY_CHECKS = 1;
