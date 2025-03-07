/*
 Navicat Premium Dump SQL

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 90200 (9.2.0)
 Source Host           : 127.0.0.1:3306
 Source Schema         : javaweb

 Target Server Type    : MySQL
 Target Server Version : 90200 (9.2.0)
 File Encoding         : 65001

 Date: 07/03/2025 10:29:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for airplane
-- ----------------------------
DROP TABLE IF EXISTS `airplane`;
CREATE TABLE `airplane` (
  `aid` int NOT NULL AUTO_INCREMENT COMMENT '飞机ID',
  `aname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '飞机名称',
  `arate` decimal(5,1) DEFAULT NULL COMMENT '评分',
  `f_class_cnt` int NOT NULL COMMENT '头等舱座位数',
  `b_class_cnt` int NOT NULL COMMENT '商务舱座位数',
  `e_class_cnt` int NOT NULL COMMENT '经济舱座位数',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='飞机信息表';

-- ----------------------------
-- Records of airplane
-- ----------------------------
BEGIN;
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (12, 'Fujii Hazuki', 964.8, 786, 148, 613, '2022-11-14 17:59:28', '2013-08-08 07:22:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (13, 'Peggy Patterson', 842.3, 827, 346, 43, '2015-02-14 14:25:57', '2021-05-29 00:51:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (14, 'Larry Black', 151.2, 214, 365, 450, '2021-10-16 00:30:44', '2002-06-22 05:02:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (15, 'Ye Jiehong', 780.0, 966, 365, 269, '2024-10-07 08:36:23', '2015-01-19 13:13:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (16, 'Qian Zhennan', 4.7, 192, 129, 194, '2006-09-07 12:26:12', '2021-03-03 11:09:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (17, 'Yokoyama Yuito', 410.4, 635, 732, 645, '2009-04-02 23:22:55', '2000-05-11 09:33:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (18, 'Yeung Chiu Wai', 943.1, 901, 133, 648, '2009-08-31 04:43:00', '2021-06-29 03:07:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (19, 'Han Yunxi', 634.9, 705, 287, 928, '2020-02-12 03:58:02', '2021-10-19 18:26:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (20, 'Morita Momoka', 5.8, 766, 976, 580, '2003-01-15 16:49:43', '2019-12-06 12:23:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (21, 'Siu Chi Ming', 622.5, 569, 125, 431, '2023-04-11 20:49:19', '2022-11-10 19:15:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (22, 'Edward Cox', 70.9, 583, 151, 133, '2015-05-04 19:28:17', '2022-01-02 08:34:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (23, 'He Anqi', 514.3, 3, 926, 450, '2004-01-28 09:12:27', '2011-04-26 17:01:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (24, 'Tam Ka Keung', 931.1, 467, 520, 861, '2000-11-15 22:23:54', '2017-10-27 09:19:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (25, 'Ren Xiuying', 159.1, 627, 158, 650, '2021-12-08 18:32:34', '2022-09-16 15:37:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (26, 'Yoshida Sakura', 525.4, 647, 6, 779, '2019-05-10 07:25:36', '2005-01-04 04:09:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (27, 'Ogawa Ikki', 201.1, 195, 853, 521, '2014-11-18 14:39:13', '2023-03-23 00:07:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (28, 'Wendy Lewis', 40.3, 595, 902, 879, '2003-06-21 11:20:49', '2017-07-05 22:35:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (29, 'Robert Martin', 374.6, 367, 82, 585, '2017-05-31 20:44:05', '2022-01-04 16:27:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (30, 'Liu Shihan', 351.5, 881, 964, 621, '2007-06-26 17:42:12', '2004-08-09 21:09:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (31, 'Chen Lu', 781.9, 41, 732, 518, '2007-10-31 19:23:20', '2006-12-01 15:52:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (32, 'Yuen Ting Fung', 416.8, 775, 410, 707, '2009-10-30 16:10:37', '2011-08-22 20:28:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (33, 'Kikuchi Yuto', 21.7, 752, 722, 248, '2017-12-16 03:47:13', '2019-04-12 12:10:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (34, 'Wada Ayano', 869.8, 726, 85, 682, '2017-04-02 02:18:00', '2016-11-17 16:54:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (35, 'Loui Chiu Wai', 200.3, 45, 663, 723, '2000-09-09 07:07:28', '2012-08-10 03:30:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (36, 'Fukuda Yuito', 857.3, 131, 281, 42, '2014-09-20 16:23:27', '2010-04-10 09:31:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (37, 'Takada Mio', 120.3, 487, 559, 95, '2005-06-10 15:40:49', '2023-05-31 12:58:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (38, 'Scott Carter', 765.8, 875, 841, 400, '2006-08-08 00:49:16', '2010-12-31 12:58:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (39, 'Loui Hiu Tung', 33.8, 459, 230, 151, '2012-11-27 06:52:50', '2025-02-17 20:59:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (40, 'Joshua Simpson', 155.0, 194, 845, 121, '2010-08-03 21:17:54', '2003-03-22 20:59:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (41, 'Lai Ka Ling', 442.0, 300, 440, 241, '2006-07-13 19:02:41', '2013-11-11 06:51:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (42, 'Matsumoto Daisuke', 572.0, 254, 757, 547, '2023-11-20 10:01:40', '2005-07-23 08:39:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (43, 'Zhong Jialun', 370.6, 12, 431, 802, '2007-12-19 21:50:05', '2024-07-14 23:10:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (44, 'Cao Xiaoming', 108.0, 17, 473, 526, '2015-09-13 13:54:08', '2009-08-24 02:30:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (45, 'Shi Zhiyuan', 566.3, 40, 881, 550, '2018-10-26 17:42:05', '2007-09-12 17:19:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (46, 'Theodore Ward', 806.5, 920, 364, 708, '2015-04-24 09:25:53', '2006-04-15 19:53:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (47, 'Ding Xiuying', 485.1, 391, 681, 667, '2010-12-02 16:09:46', '2012-09-10 01:33:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (48, 'Yang Jialun', 49.7, 153, 508, 339, '2004-12-16 19:06:06', '2017-07-08 00:03:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (49, 'Peng Yuning', 833.0, 527, 10, 252, '2008-08-07 11:40:35', '2014-05-29 05:38:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (50, 'Mok Sze Kwan', 49.3, 831, 559, 535, '2007-09-24 05:09:15', '2022-03-09 01:02:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (51, 'Aoki Itsuki', 264.1, 246, 854, 374, '2016-07-10 00:28:01', '2010-05-07 14:43:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (52, 'Kim Gray', 739.9, 980, 948, 911, '2019-06-25 03:56:32', '2009-03-25 00:40:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (53, 'Willie Warren', 420.9, 745, 279, 851, '2006-12-22 13:23:52', '2013-05-20 14:02:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (54, 'Chin Sze Kwan', 495.8, 600, 905, 774, '2021-05-01 20:24:28', '2019-08-25 09:59:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (55, 'Cheng Sum Wing', 746.7, 322, 804, 871, '2006-07-31 22:29:41', '2024-12-12 04:02:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (56, 'Aoki Miu', 909.2, 800, 176, 34, '2014-03-14 09:25:44', '2000-02-24 01:13:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (57, 'Qiu Jialun', 499.9, 216, 529, 199, '2001-05-06 17:03:54', '2014-11-12 05:09:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (58, 'Yuen On Kay', 919.1, 603, 172, 954, '2022-11-28 21:59:38', '2025-02-01 23:10:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (59, 'Wei Jialun', 259.4, 639, 367, 864, '2021-05-14 19:30:55', '2023-08-07 08:12:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (60, 'Juanita Ruiz', 76.1, 501, 813, 113, '2012-01-18 12:31:07', '2023-08-26 08:47:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (61, 'Wong Wing Sze', 0.0, 894, 396, 529, '2017-03-08 04:50:37', '2021-01-05 20:09:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (62, 'Jacqueline Rodriguez', 638.8, 726, 756, 963, '2008-08-28 22:05:20', '2005-07-30 03:20:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (63, 'Albert Roberts', 405.4, 700, 925, 907, '2001-04-05 02:36:21', '2018-04-30 13:23:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (64, 'Mak Chun Yu', 471.9, 319, 80, 259, '2002-11-25 12:54:28', '2011-11-18 02:40:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (65, 'John Cooper', 745.6, 175, 93, 543, '2021-04-21 16:32:54', '2021-06-10 01:40:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (66, 'Sheh Kwok Kuen', 267.8, 327, 682, 128, '2017-04-03 07:38:56', '2008-10-20 12:50:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (67, 'Zhong Shihan', 899.5, 734, 180, 0, '2016-10-17 14:01:56', '2010-07-20 08:54:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (68, 'Hu Jiehong', 185.8, 278, 226, 845, '2012-03-12 17:19:10', '2024-01-03 00:29:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (69, 'Nakamura Yuna', 179.2, 355, 347, 785, '2021-09-03 22:26:31', '2008-09-02 19:56:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (70, 'Phyllis Mendez', 860.8, 780, 730, 388, '2022-08-10 23:07:54', '2011-07-18 02:04:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (71, 'Han Lan', 998.9, 980, 408, 253, '2008-03-16 05:48:03', '2000-09-09 10:22:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (72, 'Wan Chiu Wai', 942.0, 135, 103, 570, '2017-03-25 02:45:08', '2025-01-12 09:30:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (73, 'Dai Wing Sze', 912.0, 942, 772, 8, '2015-02-02 21:09:40', '2019-03-03 07:56:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (74, 'Choi Tin Wing', 90.1, 943, 146, 977, '2006-09-28 20:22:59', '2008-01-22 13:01:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (75, 'Tanaka Ren', 526.2, 517, 84, 976, '2005-02-09 13:23:28', '2017-04-09 17:28:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (76, 'Billy Olson', 665.0, 296, 878, 341, '2022-05-22 11:12:29', '2022-12-18 19:36:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (77, 'He Ziyi', 969.4, 204, 572, 784, '2010-10-11 08:37:54', '2025-01-15 02:25:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (78, 'To Chun Yu', 160.1, 791, 708, 494, '2001-10-02 17:48:36', '2015-09-24 00:12:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (79, 'Shi Yunxi', 143.5, 635, 458, 15, '2017-12-10 14:38:02', '2003-07-10 21:21:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (80, 'Dai Ling Ling', 926.7, 601, 178, 436, '2023-08-16 02:00:00', '2024-08-21 12:47:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (81, 'Wei Lu', 906.8, 796, 583, 150, '2019-09-29 10:06:06', '2006-03-09 19:54:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (82, 'Nomura Ryota', 627.2, 550, 702, 125, '2008-11-19 09:48:12', '2001-11-09 06:06:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (83, 'Jeff Foster', 853.3, 51, 716, 404, '2018-08-24 12:21:35', '2007-02-18 13:40:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (84, 'Tan Rui', 586.0, 523, 102, 312, '2018-11-10 10:47:37', '2017-08-27 13:26:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (85, 'Jiang Zhennan', 397.9, 193, 64, 133, '2015-08-27 00:22:34', '2011-10-03 13:05:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (86, 'Marjorie Myers', 817.8, 78, 23, 301, '2013-08-01 13:20:45', '2010-10-25 06:06:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (87, 'Mak Ming', 568.4, 692, 473, 206, '2011-02-07 00:21:18', '2005-11-04 18:28:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (88, 'Amy Castro', 40.6, 706, 693, 161, '2021-02-25 17:38:24', '2010-05-12 06:01:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (89, 'Charlotte Perez', 370.4, 397, 432, 398, '2006-07-29 18:40:12', '2000-05-08 23:17:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (90, 'Sugawara Nanami', 894.2, 934, 978, 851, '2000-07-25 01:17:51', '2016-09-08 08:55:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (91, 'David Simmons', 410.2, 260, 806, 147, '2013-11-23 01:52:48', '2015-07-21 09:26:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (92, 'Meng Lan', 708.7, 681, 858, 334, '2018-12-12 15:21:35', '2017-01-22 00:07:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (93, 'Ying Tsz Ching', 758.2, 155, 444, 134, '2014-12-03 21:47:30', '2015-05-12 02:05:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (94, 'Ng Hiu Tung', 264.7, 274, 396, 94, '2024-06-09 01:53:52', '2007-08-17 19:04:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (95, 'Kong Shihan', 340.5, 709, 448, 282, '2021-10-12 04:42:10', '2023-07-08 21:28:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (96, 'Christopher Myers', 713.6, 604, 297, 916, '2022-09-26 10:09:04', '2016-09-14 19:06:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (97, 'Mildred Cruz', 274.3, 589, 889, 282, '2007-09-30 02:14:29', '2002-11-04 17:38:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (98, 'Sano Sara', 742.6, 511, 370, 358, '2024-10-02 07:28:20', '2007-12-21 06:33:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (99, 'Chic Chi Ming', 532.5, 72, 803, 870, '2023-06-09 06:58:33', '2013-02-20 15:11:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (100, 'Ishida Tsubasa', 246.6, 704, 540, 58, '2023-06-20 18:27:44', '2008-07-19 04:16:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (101, 'Martha Martin', 300.9, 151, 454, 662, '2008-10-26 10:42:33', '2017-11-01 03:23:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (102, 'Leroy Mitchell', 386.8, 148, 807, 688, '2023-04-10 07:38:31', '2019-12-02 13:37:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (103, 'Lok Tsz Hin', 982.2, 985, 42, 600, '2003-08-03 23:31:33', '2024-01-24 18:35:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (104, 'Guo Jialun', 470.8, 621, 497, 366, '2013-08-23 07:56:24', '2018-10-24 19:26:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (105, 'Chiba Yuna', 794.1, 509, 552, 216, '2006-01-03 12:51:37', '2000-06-07 20:52:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (106, 'Iwasaki Momoe', 355.0, 271, 763, 516, '2017-05-22 16:43:01', '2021-10-01 23:34:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (107, 'Jonathan Ortiz', 422.1, 569, 699, 103, '2006-05-22 04:54:48', '2015-03-02 01:25:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (108, 'Nishimura Mitsuki', 638.4, 279, 939, 60, '2014-12-31 12:24:25', '2024-10-19 07:37:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (109, 'Takeuchi Hazuki', 537.8, 544, 908, 669, '2000-12-07 11:35:21', '2006-04-23 11:21:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (110, 'Yamashita Sara', 492.3, 862, 307, 883, '2022-09-30 01:18:45', '2016-08-27 03:09:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (111, 'Taniguchi Kaito', 39.0, 149, 630, 545, '2003-02-20 11:28:58', '2022-12-14 06:51:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (112, 'Frank Chavez', 663.4, 830, 281, 755, '2017-10-14 08:54:46', '2020-01-06 02:38:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (113, 'Gerald Collins', 856.3, 467, 854, 143, '2021-03-11 03:33:06', '2022-11-02 03:23:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (114, 'Tin Wing Suen', 399.2, 36, 997, 226, '2019-12-09 07:35:13', '2017-04-10 17:33:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (115, 'Dong Yuning', 543.2, 128, 618, 719, '2011-04-23 12:20:09', '2011-03-10 20:56:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (116, 'Pak Ka Man', 158.0, 356, 315, 831, '2014-12-26 10:54:04', '2013-08-14 22:19:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (117, 'Kong Shihan', 632.0, 631, 693, 571, '2019-04-25 13:48:26', '2009-11-01 19:20:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (118, 'Anita Gomez', 813.1, 982, 399, 803, '2008-07-01 12:34:12', '2018-10-29 02:17:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (119, 'Wong Kwok Kuen', 211.7, 334, 437, 22, '2019-09-16 01:57:28', '2025-02-26 08:55:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (120, 'Tang Yuning', 326.1, 592, 771, 669, '2020-03-22 20:39:12', '2005-05-05 08:05:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (121, 'Miura Hana', 354.2, 586, 237, 237, '2013-10-03 20:39:53', '2007-06-15 10:35:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (122, 'Xia Yunxi', 208.3, 926, 22, 216, '2012-03-25 10:27:38', '2014-01-20 08:37:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (123, 'Kono Kasumi', 234.2, 961, 992, 957, '2019-01-08 00:38:45', '2017-06-12 21:32:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (124, 'Cheng Xiaoming', 864.5, 438, 427, 932, '2016-11-14 07:48:45', '2015-12-18 21:43:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (125, 'Mo Ziyi', 736.3, 882, 143, 511, '2018-01-05 13:51:37', '2001-03-27 22:06:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (126, 'Yam Fu Shing', 375.1, 83, 958, 350, '2003-06-14 03:10:20', '2018-12-03 23:42:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (127, 'Peng Shihan', 696.0, 757, 533, 472, '2000-01-25 04:18:47', '2004-12-08 11:47:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (128, 'Taniguchi Hazuki', 665.4, 472, 904, 150, '2020-11-11 11:36:04', '2003-07-05 02:41:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (129, 'Lok Wai Lam', 944.7, 87, 359, 132, '2019-12-28 20:59:03', '2014-08-12 23:14:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (130, 'Ku Wing Fat', 120.9, 665, 142, 309, '2003-05-19 22:31:10', '2000-06-13 07:24:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (131, 'Wayne Johnson', 236.8, 441, 765, 473, '2012-06-30 00:07:03', '2014-09-08 19:14:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (132, 'Pauline Patterson', 123.2, 917, 264, 50, '2017-04-05 21:18:26', '2017-10-09 10:33:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (133, 'Tao Hiu Tung', 459.7, 560, 826, 495, '2004-06-28 05:15:13', '2007-08-24 01:45:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (134, 'Tang Ho Yin', 931.3, 265, 698, 518, '2011-10-06 09:05:38', '2009-07-11 03:33:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (135, 'Heung Tin Lok', 681.6, 206, 851, 266, '2011-05-02 06:15:13', '2023-04-24 05:53:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (136, 'Wu Lu', 146.3, 839, 110, 475, '2017-08-11 03:46:28', '2024-07-04 04:37:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (137, 'Kong On Na', 921.5, 107, 384, 161, '2006-07-10 20:29:26', '2008-11-10 04:48:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (138, 'Jiang Zhiyuan', 650.3, 996, 634, 182, '2013-07-24 21:52:16', '2017-02-23 18:52:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (139, 'Mo Zitao', 351.5, 846, 892, 771, '2018-02-10 12:35:08', '2014-11-28 15:44:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (140, 'Keith Rivera', 605.0, 215, 27, 142, '2001-06-22 16:01:16', '2003-08-24 20:29:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (141, 'Chen Lu', 509.2, 941, 39, 609, '2023-08-31 19:49:43', '2003-11-03 14:00:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (142, 'Jeff Thomas', 382.1, 736, 505, 903, '2003-10-09 15:03:46', '2007-11-07 12:02:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (143, 'Ku Ching Wan', 45.4, 638, 173, 831, '2021-05-26 15:51:12', '2015-07-19 22:03:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (144, 'Jeff West', 365.1, 622, 794, 958, '2013-08-16 16:48:42', '2009-09-17 11:49:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (145, 'Yau Wai Han', 670.1, 426, 218, 302, '2006-02-20 14:32:08', '2021-06-30 14:03:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (146, 'Yang Anqi', 258.8, 736, 860, 960, '2004-05-27 02:02:08', '2009-03-06 08:58:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (147, 'Yan Zhiyuan', 366.2, 581, 152, 520, '2021-10-15 15:01:59', '2013-07-01 05:35:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (148, 'Theresa Nichols', 932.5, 632, 874, 496, '2019-08-22 13:34:09', '2015-10-20 19:20:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (149, 'Pang Kwok Ming', 539.0, 809, 946, 805, '2016-04-01 17:49:12', '2013-08-12 18:36:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (150, 'Watanabe Momoe', 262.7, 408, 791, 293, '2024-04-07 16:50:52', '2003-11-20 06:36:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (151, 'Willie Mendez', 863.6, 669, 857, 519, '2023-06-18 20:36:10', '2013-01-03 00:53:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (152, 'Yuen Lai Yan', 263.7, 746, 862, 811, '2018-10-30 06:14:18', '2008-06-04 20:45:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (153, 'Christina Burns', 326.5, 601, 712, 416, '2014-04-16 15:09:56', '2010-07-17 09:27:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (154, 'Xu Lu', 359.6, 525, 751, 497, '2022-09-17 11:13:04', '2020-11-17 08:04:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (155, 'Miura Eita', 545.7, 293, 747, 864, '2008-11-06 05:22:04', '2010-09-25 03:37:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (156, 'Henry Dixon', 92.6, 166, 444, 999, '2016-10-23 00:01:55', '2017-05-11 19:24:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (157, 'Tang Ching Wan', 318.5, 486, 446, 650, '2012-05-14 16:13:11', '2013-10-18 12:17:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (158, 'Gladys Lewis', 584.5, 598, 481, 927, '2012-03-16 00:24:02', '2004-11-21 07:05:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (159, 'Annie Parker', 143.7, 308, 422, 44, '2020-01-13 21:07:06', '2015-11-12 04:25:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (160, 'Ueda Mitsuki', 651.5, 250, 751, 460, '2008-02-19 18:33:52', '2003-12-26 13:57:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (161, 'Sasaki Hazuki', 984.7, 686, 39, 143, '2022-01-02 04:43:30', '2001-04-05 09:22:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (162, 'Sakamoto Ayato', 599.2, 498, 780, 229, '2021-01-16 04:23:07', '2000-02-16 01:10:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (163, 'Jiang Jialun', 545.6, 767, 396, 638, '2006-09-25 07:47:08', '2000-08-13 21:53:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (164, 'Tse Yun Fat', 439.9, 616, 996, 798, '2022-05-20 06:52:45', '2013-03-04 15:12:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (165, 'John Castro', 821.1, 175, 60, 65, '2021-04-27 08:40:36', '2022-06-08 10:37:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (166, 'Fukuda Ren', 313.6, 38, 860, 454, '2024-03-30 16:16:32', '2015-11-03 08:10:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (167, 'Kwok Tak Wah', 719.9, 461, 876, 263, '2007-04-24 04:50:05', '2014-08-22 04:50:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (168, 'Ricky Schmidt', 453.5, 823, 869, 465, '2009-11-07 20:51:14', '2009-11-27 10:41:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (169, 'Hara Hina', 379.9, 162, 455, 346, '2019-08-30 18:58:27', '2014-05-04 18:31:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (170, 'Takada Eita', 922.1, 873, 374, 639, '2023-08-03 09:38:23', '2006-07-12 18:06:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (171, 'Che Ting Fung', 849.8, 455, 302, 490, '2022-04-24 08:09:38', '2009-11-29 18:36:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (172, 'Pan Lu', 586.3, 665, 228, 327, '2021-02-01 00:19:49', '2009-10-24 15:57:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (173, 'Kwok Wai San', 356.6, 245, 544, 478, '2008-03-05 14:04:36', '2009-10-06 01:37:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (174, 'Christina Morales', 166.0, 678, 80, 587, '2013-06-28 11:51:05', '2001-02-13 18:08:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (175, 'Jeremy Wallace', 612.1, 431, 175, 277, '2006-02-21 10:27:09', '2014-03-06 12:33:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (176, 'Gloria Fox', 12.9, 284, 165, 610, '2020-08-20 08:16:28', '2022-02-08 09:26:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (177, 'Nishimura Kasumi', 186.1, 818, 278, 129, '2019-04-17 07:37:13', '2013-12-12 18:36:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (178, 'Ding Zitao', 239.2, 935, 157, 882, '2006-07-25 23:09:33', '2003-09-26 11:58:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (179, 'Ota Tsubasa', 397.5, 701, 437, 336, '2019-05-17 08:41:34', '2001-05-24 20:44:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (180, 'Yeow Wing Fat', 764.4, 560, 852, 958, '2009-04-14 15:35:48', '2004-04-03 00:39:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (181, 'Gao Lan', 768.3, 744, 996, 503, '2001-07-12 11:27:29', '2007-04-14 03:30:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (182, 'Ann Collins', 393.4, 748, 73, 330, '2001-06-10 18:11:26', '2014-11-28 11:07:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (183, 'Ricky Sullivan', 785.9, 75, 370, 239, '2020-03-20 17:44:00', '2000-11-18 00:47:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (184, 'Joan Soto', 857.2, 834, 711, 521, '2001-07-04 23:49:08', '2011-09-07 05:23:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (185, 'Lu Zhennan', 335.5, 10, 116, 681, '2023-07-11 06:39:19', '2001-07-23 17:36:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (186, 'George Medina', 841.5, 622, 355, 48, '2005-05-19 16:56:44', '2003-05-29 12:32:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (187, 'Norman Kim', 427.5, 798, 550, 178, '2008-02-04 15:15:35', '2016-04-27 03:40:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (188, 'Robin Reynolds', 161.5, 526, 791, 374, '2003-07-16 17:39:38', '2017-03-21 00:35:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (189, 'Wei Jialun', 871.2, 759, 93, 548, '2003-01-24 03:59:59', '2008-05-28 04:11:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (190, 'Guo Xiuying', 9.1, 34, 902, 130, '2012-07-23 09:54:17', '2011-03-03 21:54:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (191, 'Shao Jiehong', 957.6, 769, 288, 456, '2009-10-01 22:36:21', '2014-12-08 10:24:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (192, 'Yamaguchi Ikki', 981.2, 356, 779, 426, '2005-05-04 08:11:21', '2010-02-02 00:12:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (193, 'Douglas Phillips', 670.1, 809, 82, 467, '2010-10-13 08:46:10', '2023-12-17 11:51:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (194, 'Xiao Yuning', 48.1, 850, 172, 985, '2015-02-07 17:40:32', '2005-04-08 11:07:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (195, 'Fan Ka Keung', 240.3, 136, 769, 122, '2014-07-26 03:57:23', '2012-03-29 18:19:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (196, 'Huang Yuning', 465.0, 351, 323, 686, '2019-04-07 12:03:47', '2021-05-14 12:09:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (197, 'Marvin Boyd', 65.0, 824, 309, 346, '2015-05-09 23:19:21', '2012-03-28 10:09:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (198, 'Ma Xiuying', 223.6, 669, 913, 141, '2008-10-23 04:40:25', '2009-12-11 02:46:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (199, 'Xiong Lan', 83.1, 960, 787, 504, '2015-12-15 00:39:03', '2018-12-21 17:48:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (200, 'Liu Zhiyuan', 124.5, 980, 815, 298, '2005-11-27 10:25:49', '2011-12-07 22:53:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (201, 'Amber Vargas', 585.7, 807, 325, 205, '2017-08-31 05:37:04', '2004-08-14 00:12:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (202, 'Yamazaki Yuito', 581.7, 468, 995, 407, '2004-03-06 12:52:42', '2000-12-12 13:50:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (203, 'Tamura Rena', 238.4, 604, 134, 856, '2014-03-16 14:09:22', '2011-08-20 04:10:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (204, 'Fukuda Ryota', 821.3, 2, 989, 164, '2000-07-16 05:35:42', '2004-04-01 21:34:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (205, 'Evelyn Stephens', 338.5, 511, 16, 200, '2000-09-19 03:48:11', '2019-03-11 14:22:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (206, 'Jimmy Martinez', 75.0, 672, 750, 574, '2011-05-03 20:07:40', '2015-07-12 08:48:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (207, 'Ti Yun Fat', 901.8, 308, 416, 974, '2003-09-06 16:38:46', '2007-02-20 10:20:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (208, 'Ti Chieh Lun', 910.5, 519, 193, 516, '2021-04-27 06:12:06', '2012-05-02 01:28:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (209, 'Sandra Campbell', 719.5, 441, 304, 640, '2012-07-19 03:17:22', '2004-04-19 12:23:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (210, 'Fong Ka Man', 12.3, 350, 141, 73, '2011-03-02 03:22:00', '2016-10-27 11:05:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (211, 'Edna Green', 585.7, 925, 771, 342, '2024-09-20 05:50:27', '2016-03-14 22:39:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (212, 'Jia Jialun', 886.1, 878, 272, 787, '2011-06-25 03:09:11', '2019-07-25 07:01:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (213, 'Emily Perez', 738.4, 846, 975, 699, '2016-01-08 06:10:38', '2006-11-18 20:04:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (214, 'Zheng Xiaoming', 110.5, 916, 794, 438, '2002-11-15 22:54:49', '2013-07-01 02:53:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (215, 'Sun Ziyi', 891.9, 11, 916, 402, '2012-06-01 11:50:33', '2011-08-08 02:12:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (216, 'Kenneth Webb', 534.9, 930, 282, 831, '2017-01-23 02:21:25', '2024-04-18 05:17:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (217, 'Sato Rena', 895.7, 807, 323, 0, '2004-05-10 00:57:09', '2012-05-14 21:52:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (218, 'Fujiwara Sara', 875.1, 849, 235, 594, '2008-09-14 18:01:16', '2000-02-13 15:32:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (219, 'Yin Yun Fat', 553.2, 356, 711, 316, '2008-03-30 18:02:07', '2015-11-25 00:30:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (220, 'Suzuki Yamato', 932.0, 443, 576, 666, '2017-12-05 06:29:52', '2017-05-04 21:01:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (221, 'Virginia Cruz', 681.4, 51, 740, 176, '2005-11-20 00:22:15', '2005-09-04 01:14:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (222, 'Nakayama Yuto', 14.0, 180, 982, 757, '2005-09-19 19:40:16', '2009-09-06 19:36:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (223, 'Shi Xiaoming', 162.0, 384, 261, 809, '2009-08-01 08:11:24', '2004-08-04 20:23:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (224, 'Leonard Gomez', 327.9, 213, 111, 940, '2011-11-18 01:43:15', '2017-05-20 10:39:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (225, 'Heung Siu Wai', 828.0, 132, 516, 365, '2003-08-11 21:53:51', '2019-09-29 02:03:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (226, 'Jiang Anqi', 619.3, 606, 380, 703, '2011-05-11 05:42:46', '2016-03-12 09:49:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (227, 'Josephine Jenkins', 988.2, 606, 115, 595, '2016-02-17 17:23:36', '2015-11-27 07:17:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (228, 'Li Zhennan', 272.9, 468, 332, 876, '2013-03-05 10:49:31', '2007-01-10 21:07:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (229, 'Sato Yuito', 675.5, 671, 726, 993, '2016-08-20 09:31:26', '2013-07-02 04:50:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (230, 'Antonio Miller', 379.4, 937, 588, 407, '2020-06-09 06:20:10', '2009-04-30 05:06:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (231, 'Li Lu', 671.5, 243, 920, 416, '2023-11-07 14:40:46', '2017-05-18 19:09:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (232, 'Qian Lan', 431.9, 827, 836, 398, '2011-04-01 03:50:36', '2005-08-15 17:26:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (233, 'Chu Wing Sze', 777.8, 135, 829, 911, '2009-07-11 21:47:35', '2020-04-11 19:55:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (234, 'Harada Daisuke', 145.1, 726, 933, 803, '2015-11-28 03:24:35', '2017-09-23 18:50:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (235, 'Yip Chi Yuen', 650.3, 908, 274, 716, '2009-07-01 14:04:39', '2015-12-21 15:07:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (236, 'Pak Wai Lam', 673.0, 487, 268, 422, '2016-05-11 20:50:06', '2024-09-05 23:57:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (237, 'Masuda Rena', 416.7, 71, 910, 985, '2001-09-17 08:30:19', '2019-11-12 04:45:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (238, 'Kudo Kasumi', 937.8, 886, 844, 428, '2024-08-22 11:06:21', '2019-08-02 16:24:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (239, 'Lai Ling Ling', 696.7, 56, 138, 556, '2015-07-30 19:02:23', '2007-12-15 08:11:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (240, 'Tse Tsz Ching', 473.6, 974, 953, 175, '2009-04-19 17:48:03', '2021-05-12 11:44:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (241, 'Nishimura Seiko', 978.0, 876, 734, 806, '2002-11-16 23:25:57', '2006-01-08 00:04:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (242, 'Morita Mio', 458.6, 264, 816, 628, '2019-11-04 01:29:10', '2004-12-11 07:16:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (243, 'Xue Lu', 548.4, 574, 158, 163, '2000-12-07 02:26:14', '2019-12-10 04:44:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (244, 'Li Anqi', 424.5, 442, 892, 751, '2011-04-09 16:47:37', '2018-03-15 08:58:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (245, 'Yue Ting Fung', 19.2, 113, 157, 780, '2015-10-05 06:48:47', '2023-03-31 18:22:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (246, 'Amber Stevens', 900.5, 576, 277, 172, '2018-05-13 21:27:27', '2002-01-23 23:38:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (247, 'Yam Wai Lam', 949.9, 863, 446, 254, '2024-12-18 05:45:06', '2005-04-29 03:59:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (248, 'Pang Hok Yau', 658.2, 97, 736, 364, '2017-01-28 02:30:39', '2012-02-23 07:05:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (249, 'Hara Yuito', 583.7, 194, 896, 28, '2001-06-19 17:19:05', '2020-01-31 03:11:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (250, 'Fu Chi Ming', 908.6, 193, 378, 929, '2002-12-02 11:20:53', '2014-07-21 07:25:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (251, 'Chiba Yuto', 466.0, 377, 244, 289, '2007-01-18 00:34:57', '2000-05-28 09:49:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (252, 'Kudo Hana', 382.0, 471, 244, 892, '2023-10-07 22:56:55', '2004-09-15 02:18:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (253, 'Yuen Kar Yan', 311.4, 872, 612, 716, '2009-05-19 06:48:58', '2009-04-26 11:21:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (254, 'Ricky Roberts', 685.8, 133, 230, 614, '2003-03-12 08:27:22', '2008-07-05 01:57:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (255, 'He Xiaoming', 524.9, 502, 179, 365, '2023-05-18 16:40:55', '2014-03-21 05:53:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (256, 'Nishimura Hana', 175.7, 1, 128, 210, '2020-03-27 18:30:20', '2019-08-02 13:26:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (257, 'Tao Xiaoming', 935.2, 389, 423, 10, '2023-06-14 19:17:33', '2003-05-16 23:12:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (258, 'Hashimoto Sakura', 676.7, 438, 253, 754, '2007-08-22 13:30:02', '2001-07-01 21:10:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (259, 'Fukuda Shino', 320.9, 225, 843, 527, '2007-06-08 05:10:07', '2016-05-30 09:03:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (260, 'Hashimoto Kenta', 200.2, 967, 781, 214, '2003-08-14 21:12:57', '2020-03-08 00:17:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (261, 'Wu Ming', 352.0, 704, 838, 884, '2014-06-02 04:19:02', '2014-04-28 17:13:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (262, 'Emma Scott', 634.9, 25, 13, 530, '2024-11-05 22:56:57', '2014-08-09 01:16:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (263, 'Yip Ka Ling', 849.5, 230, 431, 769, '2017-06-02 10:56:57', '2007-08-16 13:24:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (264, 'Mao Lan', 17.1, 909, 464, 60, '2023-10-19 06:24:44', '2010-04-11 07:22:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (265, 'Che Chieh Lun', 759.6, 396, 723, 18, '2017-08-06 03:32:28', '2008-06-24 16:17:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (266, 'Yan Yuning', 816.3, 617, 705, 958, '2017-05-15 10:53:41', '2011-09-30 20:19:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (267, 'Margaret Jimenez', 364.9, 379, 474, 274, '2015-01-23 12:15:16', '2013-12-31 20:05:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (268, 'Ren Jialun', 289.1, 574, 761, 704, '2006-11-20 05:38:01', '2014-08-07 11:45:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (269, 'Gary Perry', 641.2, 109, 335, 870, '2021-09-01 01:27:22', '2013-06-01 02:39:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (270, 'Yung Hui Mei', 942.2, 445, 972, 127, '2015-12-06 20:23:24', '2007-07-25 08:15:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (271, 'Takada Seiko', 990.5, 716, 92, 842, '2003-05-11 09:24:35', '2002-02-25 13:23:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (272, 'Joyce Perry', 683.7, 182, 262, 410, '2018-04-19 20:54:43', '2013-12-01 20:33:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (273, 'Chan Hui Mei', 610.5, 660, 311, 324, '2018-04-03 01:33:29', '2006-04-03 03:57:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (274, 'Tian Ziyi', 88.7, 957, 421, 616, '2019-10-21 05:05:24', '2019-02-06 07:08:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (275, 'Herbert Butler', 310.1, 173, 667, 643, '2020-01-19 17:38:15', '2000-02-21 12:00:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (276, 'Yip Cho Yee', 76.4, 612, 3, 525, '2017-05-08 22:20:57', '2023-05-22 01:08:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (277, 'Suzuki Ren', 44.9, 769, 633, 19, '2023-09-27 03:08:09', '2024-11-10 02:21:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (278, 'Gao Lan', 639.1, 300, 384, 662, '2015-03-18 04:37:15', '2002-08-18 01:01:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (279, 'Wu Zitao', 244.0, 998, 55, 122, '2010-12-03 03:24:11', '2020-07-06 03:18:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (280, 'Shi Shihan', 28.3, 36, 278, 833, '2014-04-04 00:04:45', '2017-01-21 14:37:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (281, 'Jiang Shihan', 62.5, 55, 318, 748, '2002-10-16 01:55:56', '2016-11-29 00:20:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (282, 'Tian Xiuying', 738.5, 753, 680, 11, '2020-09-01 18:44:05', '2022-10-18 23:45:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (283, 'Sakamoto Aoi', 25.3, 489, 417, 72, '2018-02-28 21:45:06', '2002-10-13 21:12:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (284, 'Robert Clark', 542.9, 866, 57, 947, '2001-11-09 04:26:34', '2012-08-18 09:09:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (285, 'Lu Anqi', 78.9, 428, 809, 816, '2005-10-24 03:54:27', '2017-04-17 21:37:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (286, 'Choi Cho Yee', 82.4, 620, 374, 653, '2013-02-04 05:05:29', '2001-09-06 16:45:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (287, 'Qian Jiehong', 518.8, 104, 76, 597, '2015-04-28 08:13:35', '2006-10-01 12:00:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (288, 'Kinoshita Hazuki', 394.3, 807, 973, 981, '2019-01-12 07:51:14', '2007-12-13 22:48:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (289, 'Laura Jimenez', 262.1, 560, 226, 796, '2024-04-05 17:57:03', '2024-08-04 21:22:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (290, 'Kam Yun Fat', 569.8, 619, 689, 93, '2002-11-18 02:47:42', '2012-02-01 11:26:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (291, 'Tsang Wing Fat', 37.5, 171, 262, 624, '2014-05-25 12:32:43', '2002-09-04 03:39:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (292, 'Ishida Nanami', 518.9, 442, 326, 999, '2017-09-18 14:34:56', '2013-02-22 03:41:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (293, 'Sakurai Hana', 862.2, 860, 299, 813, '2023-07-05 15:29:08', '2018-07-07 01:29:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (294, 'Gao Jialun', 566.1, 581, 978, 121, '2010-05-10 00:19:42', '2006-01-06 13:19:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (295, 'Leonard Wagner', 914.4, 470, 597, 779, '2012-11-26 17:11:48', '2000-09-20 04:20:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (296, 'Heather Romero', 295.6, 580, 538, 863, '2017-02-12 06:37:31', '2005-05-23 03:39:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (297, 'Tam Wing Fat', 78.2, 482, 99, 637, '2000-07-04 10:34:17', '2019-10-31 20:57:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (298, 'Cui Rui', 890.9, 847, 284, 732, '2013-05-29 20:27:15', '2020-12-18 14:45:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (299, 'Tang Wai Man', 162.8, 457, 739, 527, '2002-02-25 00:18:44', '2003-07-18 23:48:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (300, 'Sherry Tran', 138.8, 130, 555, 656, '2012-10-20 16:04:47', '2014-08-06 20:57:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (301, 'Shi Zitao', 183.4, 806, 250, 973, '2001-02-09 18:01:30', '2019-08-16 11:31:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (302, 'Xiong Zitao', 401.4, 130, 147, 764, '2010-01-07 11:42:44', '2023-03-04 16:38:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (303, 'Ku Tsz Hin', 921.3, 234, 513, 514, '2017-10-18 01:37:09', '2024-05-07 19:20:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (304, 'Takada Eita', 889.2, 334, 913, 733, '2005-10-30 15:33:42', '2006-04-04 18:24:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (305, 'Michelle Guzman', 161.5, 238, 724, 589, '2015-02-23 04:09:27', '2006-10-17 05:25:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (306, 'Lo Chun Yu', 539.8, 76, 444, 213, '2000-04-18 09:47:23', '2013-03-29 18:33:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (307, 'He Ziyi', 444.8, 361, 353, 56, '2005-12-02 06:50:12', '2009-01-08 12:27:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (308, 'Glenn Martin', 217.9, 126, 473, 388, '2008-08-29 03:42:45', '2004-10-08 09:09:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (309, 'Lam Wai Han', 157.3, 304, 49, 316, '2000-10-03 07:06:11', '2012-02-18 05:34:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (310, 'Tang Kwok Kuen', 688.7, 825, 128, 415, '2021-06-27 08:36:32', '2023-01-21 16:39:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (311, 'Hu Yunxi', 542.3, 672, 119, 790, '2024-12-04 23:04:26', '2008-06-22 16:33:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (312, 'Watanabe Hina', 298.3, 307, 424, 254, '2024-10-20 19:42:21', '2020-03-23 12:58:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (313, 'Tang Xiuying', 358.1, 308, 266, 880, '2009-10-27 15:55:22', '2009-11-18 21:20:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (314, 'Nakagawa Itsuki', 665.2, 657, 117, 757, '2020-12-30 06:44:05', '2017-08-16 17:33:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (315, 'Wong Hiu Tung', 391.1, 261, 443, 394, '2007-06-01 23:35:37', '2020-09-01 11:51:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (316, 'Ann Jenkins', 178.5, 564, 535, 577, '2007-02-06 14:44:59', '2002-12-13 20:58:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (317, 'Tse Wai Yee', 329.5, 467, 802, 902, '2014-02-02 18:51:35', '2017-03-28 03:26:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (318, 'Mo Tin Lok', 189.1, 713, 129, 552, '2016-12-29 18:35:53', '2012-10-30 06:03:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (319, 'Dawn Lee', 914.3, 64, 814, 442, '2022-04-27 06:25:51', '2013-12-04 21:37:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (320, 'Hung Kar Yan', 510.3, 196, 119, 105, '2005-12-12 02:44:13', '2024-05-10 10:12:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (321, 'Fong Wing Sze', 802.0, 991, 845, 847, '2000-04-13 16:43:40', '2007-09-28 12:02:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (322, 'Takagi Hana', 870.9, 562, 46, 727, '2001-09-26 04:07:26', '2023-03-18 18:54:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (323, 'Walter Coleman', 731.6, 131, 486, 929, '2011-09-21 17:13:33', '2019-12-16 05:52:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (324, 'Yokoyama Riku', 691.4, 779, 512, 864, '2013-10-14 12:05:56', '2015-01-27 05:12:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (325, 'Ogawa Hikari', 4.1, 974, 324, 653, '2011-11-01 07:17:21', '2020-05-17 15:57:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (326, 'Jia Jialun', 186.7, 800, 102, 389, '2021-02-10 09:23:57', '2010-03-23 13:20:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (327, 'Dorothy Crawford', 480.9, 542, 694, 824, '2013-04-03 06:23:05', '2016-05-14 19:19:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (328, 'Hung Tin Lok', 59.1, 174, 933, 889, '2023-07-04 04:58:31', '2008-10-21 14:31:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (329, 'Wong Siu Wai', 982.8, 314, 495, 961, '2000-10-24 07:34:28', '2015-01-31 23:59:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (330, 'William Gonzalez', 132.9, 789, 138, 123, '2002-10-12 05:56:27', '2017-04-21 12:18:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (331, 'Sato Aoshi', 451.1, 60, 164, 939, '2017-03-19 05:08:56', '2015-11-01 11:44:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (332, 'Sato Momoka', 346.8, 40, 434, 563, '2019-08-30 13:58:09', '2014-08-29 03:59:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (333, 'Jin Lu', 276.5, 229, 747, 612, '2011-06-23 09:25:28', '2008-01-04 10:02:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (334, 'Lo Ming Sze', 762.6, 162, 919, 98, '2005-02-04 03:14:08', '2010-08-05 01:39:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (335, 'Tao Zitao', 96.8, 427, 78, 551, '2023-05-31 12:54:43', '2015-04-09 19:16:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (336, 'Lu Zhiyuan', 210.6, 648, 279, 206, '2014-04-14 06:30:50', '2005-04-06 15:24:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (337, 'Michelle Chen', 715.3, 628, 156, 419, '2000-11-05 03:22:51', '2006-08-07 09:13:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (338, 'Lo Wing Suen', 665.0, 82, 286, 95, '2019-09-11 23:00:32', '2000-07-27 16:11:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (339, 'Hasegawa Itsuki', 403.7, 2, 18, 233, '2008-08-06 20:50:36', '2012-09-18 17:30:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (340, 'Miura Aoi', 836.4, 914, 412, 149, '2022-05-09 18:57:19', '2016-03-12 05:55:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (341, 'Meng Rui', 119.4, 270, 175, 662, '2013-06-19 07:35:58', '2021-05-17 20:13:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (342, 'Ishikawa Minato', 820.8, 470, 446, 428, '2008-03-29 23:14:58', '2019-11-08 15:33:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (343, 'Saito Daichi', 287.1, 415, 398, 534, '2005-10-24 23:05:25', '2002-09-11 17:34:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (344, 'Joyce Simpson', 143.3, 35, 323, 178, '2002-11-02 22:46:38', '2014-03-06 20:03:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (345, 'Liao Tin Lok', 246.6, 173, 756, 687, '2019-12-06 03:52:39', '2012-03-16 20:22:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (346, 'Dawn Kennedy', 20.1, 312, 371, 756, '2010-06-24 18:55:06', '2023-12-01 15:07:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (347, 'Chu Fu Shing', 391.2, 732, 561, 267, '2015-07-05 18:12:51', '2007-10-10 18:53:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (348, 'Mak Kwok Wing', 246.3, 528, 251, 844, '2021-04-06 07:50:34', '2009-12-27 06:16:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (349, 'Hara Ayano', 876.3, 90, 334, 182, '2006-02-03 00:09:54', '2013-02-10 21:00:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (350, 'Timothy Castillo', 77.0, 391, 114, 703, '2019-11-05 20:59:25', '2000-01-25 21:24:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (351, 'Ota Ryota', 21.7, 32, 652, 97, '2005-12-21 17:28:07', '2011-03-19 08:25:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (352, 'Kao Chi Ming', 503.2, 916, 45, 835, '2022-01-21 23:53:01', '2023-08-12 22:09:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (353, 'Chung Wing Sze', 388.8, 601, 560, 593, '2008-10-11 10:10:31', '2015-08-01 21:57:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (354, 'Fong Cho Yee', 947.9, 82, 890, 155, '2001-03-31 15:56:12', '2008-12-10 14:14:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (355, 'Nakagawa Yota', 177.4, 670, 138, 679, '2000-10-31 07:16:48', '2007-07-22 10:31:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (356, 'Juanita Diaz', 437.2, 133, 791, 324, '2018-12-15 11:46:18', '2012-02-26 13:34:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (357, 'Qian Zitao', 519.2, 104, 904, 220, '2001-01-03 00:31:59', '2004-07-14 01:57:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (358, 'Carrie Cooper', 384.8, 253, 713, 685, '2007-09-26 15:08:23', '2004-05-20 13:02:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (359, 'Chin Chiu Wai', 502.5, 382, 750, 361, '2015-12-02 12:58:59', '2011-02-25 17:57:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (360, 'Michael Jenkins', 954.8, 553, 274, 522, '2000-03-11 11:11:09', '2012-01-22 13:01:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (361, 'Hashimoto Seiko', 863.0, 224, 446, 43, '2000-12-02 08:16:39', '2017-06-11 05:08:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (362, 'Yokoyama Sakura', 248.1, 203, 294, 447, '2019-02-18 15:00:30', '2004-12-17 11:11:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (363, 'Chang Rui', 297.2, 669, 958, 691, '2000-08-25 01:24:06', '2014-03-18 08:15:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (364, 'Tam Siu Wai', 542.3, 677, 208, 223, '2012-02-09 07:07:55', '2016-05-02 04:34:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (365, 'Martin Wilson', 571.0, 235, 380, 980, '2012-05-22 18:15:35', '2015-10-10 07:58:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (366, 'Fong Sum Wing', 695.4, 607, 686, 755, '2020-11-10 22:28:50', '2015-01-08 11:55:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (367, 'Kao Wai Lam', 435.5, 474, 183, 853, '2008-04-14 21:41:37', '2021-05-10 07:27:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (368, 'Mori Takuya', 923.7, 482, 382, 556, '2020-02-03 15:37:57', '2004-05-19 06:28:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (369, 'Melissa Chen', 859.9, 66, 441, 59, '2007-07-04 14:13:31', '2010-07-21 11:09:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (370, 'Maeda Miu', 427.6, 677, 41, 557, '2025-03-06 23:11:09', '2010-11-24 13:20:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (371, 'Hayashi Kasumi', 696.8, 826, 386, 240, '2001-05-18 01:34:18', '2020-07-10 11:32:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (372, 'Dai Rui', 858.2, 744, 23, 555, '2024-08-05 06:57:40', '2008-08-29 15:10:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (373, 'Steven Gonzales', 401.3, 223, 919, 212, '2001-11-14 19:28:46', '2000-06-19 22:30:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (374, 'Johnny Campbell', 580.5, 258, 486, 247, '2010-07-25 14:01:45', '2020-03-20 16:31:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (375, 'Qiu Zhiyuan', 850.2, 477, 236, 595, '2020-04-07 07:16:14', '2018-09-24 14:08:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (376, 'Yuen Yu Ling', 885.3, 2, 688, 98, '2012-04-03 00:09:23', '2015-03-17 06:52:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (377, 'Long Xiuying', 543.4, 830, 123, 564, '2006-10-26 04:59:37', '2010-07-27 13:05:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (378, 'Lui Wing Kuen', 890.9, 30, 488, 756, '2003-04-07 20:27:21', '2019-09-04 18:05:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (379, 'Yuen Ka Fai', 383.9, 690, 709, 991, '2008-09-01 06:34:59', '2003-02-26 12:44:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (380, 'Lui On Kay', 340.6, 897, 199, 321, '2014-02-17 14:18:35', '2022-06-10 12:33:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (381, 'Hasegawa Yuito', 659.1, 987, 63, 3, '2014-01-07 12:56:59', '2008-10-23 19:13:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (382, 'Martha Bennett', 618.0, 592, 284, 593, '2015-06-29 07:45:21', '2013-01-18 15:49:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (383, 'Hasegawa Ayano', 460.5, 502, 144, 851, '2004-02-13 08:12:33', '2002-03-01 05:25:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (384, 'Xia Zhiyuan', 635.4, 423, 810, 999, '2019-04-16 07:49:54', '2014-11-02 21:38:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (385, 'Zhao Lu', 586.5, 163, 269, 570, '2002-04-07 00:13:00', '2007-08-30 18:18:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (386, 'Nishimura Rena', 841.8, 948, 387, 300, '2005-06-25 20:55:46', '2003-03-07 02:45:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (387, 'Elaine Olson', 323.4, 439, 714, 114, '2007-04-04 00:05:11', '2020-09-14 11:32:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (388, 'Joe Crawford', 420.4, 700, 969, 649, '2012-04-01 09:08:37', '2017-10-24 22:25:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (389, 'Wu Shihan', 410.0, 981, 611, 53, '2003-11-23 05:28:50', '2020-12-12 21:38:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (390, 'Yam Kwok Wing', 498.8, 213, 256, 518, '2014-03-10 20:12:29', '2017-06-01 02:42:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (391, 'Sakai Ayano', 10.3, 611, 525, 27, '2006-04-11 00:03:49', '2019-04-25 12:11:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (392, 'Yan Yunxi', 992.4, 213, 812, 139, '2000-08-30 13:16:39', '2006-04-20 19:06:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (393, 'David Warren', 76.8, 819, 21, 786, '2019-12-23 15:03:33', '2024-11-15 00:06:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (394, 'Kono Airi', 477.0, 979, 619, 890, '2018-02-10 22:39:55', '2002-06-24 12:44:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (395, 'Melvin Long', 485.7, 729, 168, 884, '2006-01-21 15:56:02', '2024-04-22 18:09:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (396, 'Xiong Rui', 47.0, 854, 393, 133, '2012-11-25 00:44:55', '2022-04-17 04:41:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (397, 'Fang Xiuying', 124.1, 833, 399, 894, '2018-11-23 12:01:53', '2015-08-08 18:37:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (398, 'Wong Sum Wing', 253.2, 74, 480, 155, '2014-02-22 20:46:35', '2008-04-16 17:37:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (399, 'Nancy Brown', 548.8, 670, 978, 540, '2021-02-09 11:02:03', '2007-12-09 02:04:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (400, 'Peng Xiaoming', 657.9, 952, 113, 949, '2024-12-27 15:14:54', '2020-05-13 04:19:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (401, 'Catherine Stephens', 965.4, 334, 392, 413, '2019-06-25 12:18:59', '2023-07-24 06:04:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (402, 'Deng Jialun', 488.5, 587, 107, 140, '2000-01-26 06:18:29', '2007-12-11 15:51:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (403, 'Mui Wing Sze', 868.6, 271, 576, 522, '2013-06-04 12:04:02', '2017-07-16 12:05:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (404, 'Dong Zitao', 41.9, 630, 177, 37, '2019-05-15 07:01:01', '2017-12-11 23:04:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (405, 'Gloria Moreno', 705.4, 574, 212, 175, '2016-10-19 23:49:01', '2013-05-01 14:49:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (406, 'Tang Anqi', 472.1, 661, 132, 79, '2014-01-18 10:17:10', '2015-05-23 14:20:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (407, 'Leslie Mendoza', 607.9, 893, 455, 741, '2000-06-12 18:41:43', '2011-01-24 15:52:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (408, 'Todd Phillips', 262.4, 390, 209, 312, '2008-03-19 19:22:42', '2006-03-07 16:43:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (409, 'Shibata Yuna', 104.9, 348, 304, 47, '2020-03-14 11:39:32', '2014-01-12 21:43:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (410, 'Ralph Lee', 767.9, 449, 929, 52, '2013-04-11 23:19:19', '2023-07-30 17:17:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (411, 'Mori Sara', 761.5, 875, 369, 564, '2017-02-15 04:43:28', '2009-06-14 00:01:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (412, 'Betty Owens', 346.9, 697, 15, 261, '2018-03-22 19:53:14', '2010-08-01 22:50:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (413, 'Wong Tsz Ching', 625.3, 813, 956, 828, '2014-08-11 22:36:00', '2007-01-04 05:43:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (414, 'Cheng Ching Wan', 665.3, 784, 991, 611, '2018-12-28 01:35:01', '2023-11-12 22:55:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (415, 'Patricia Nguyen', 507.5, 126, 528, 341, '2012-02-19 23:21:40', '2023-11-28 13:47:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (416, 'Mo Jialun', 797.8, 241, 79, 44, '2013-12-27 01:49:34', '2006-12-08 10:27:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (417, 'Watanabe Yota', 805.5, 128, 460, 642, '2022-02-22 13:34:09', '2000-10-06 22:12:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (418, 'Cui Xiuying', 145.3, 877, 913, 94, '2008-06-25 22:21:03', '2008-12-23 13:25:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (419, 'Wei Lan', 568.8, 386, 31, 452, '2019-05-05 17:12:08', '2023-02-01 07:36:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (420, 'Kono Aoshi', 231.5, 108, 850, 344, '2015-06-04 13:18:56', '2005-01-28 10:44:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (421, 'Dorothy Boyd', 371.2, 289, 943, 558, '2002-09-12 04:33:26', '2004-01-14 22:26:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (422, 'Ethel Morgan', 157.7, 982, 45, 234, '2006-06-18 20:37:18', '2022-12-31 14:32:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (423, 'Che Ho Yin', 449.9, 569, 939, 702, '2010-09-03 02:53:32', '2018-03-26 19:12:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (424, 'Wada Ayato', 206.7, 728, 510, 728, '2002-06-21 08:13:35', '2024-04-07 08:56:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (425, 'Mak Tin Wing', 243.1, 475, 594, 915, '2016-07-04 09:26:57', '2007-03-12 18:10:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (426, 'Carrie Herrera', 392.7, 956, 227, 243, '2012-04-27 16:58:50', '2000-01-15 00:01:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (427, 'Wada Sakura', 312.4, 521, 529, 555, '2010-03-13 20:00:48', '2022-12-01 00:03:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (428, 'Murata Hikari', 178.7, 394, 323, 984, '2003-06-13 20:23:47', '2017-05-27 06:46:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (429, 'Sakamoto Minato', 734.6, 370, 556, 196, '2021-12-25 17:32:00', '2002-05-06 05:30:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (430, 'Aoki Yamato', 497.4, 176, 300, 157, '2012-02-04 07:09:45', '2000-09-04 01:13:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (431, 'Hao Jiehong', 647.8, 179, 5, 571, '2017-09-11 18:33:33', '2022-06-22 16:23:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (432, 'Fujita Kenta', 560.6, 808, 134, 393, '2006-09-12 22:58:34', '2008-03-13 18:39:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (433, 'Chan Ka Man', 264.7, 972, 819, 410, '2018-02-04 16:07:23', '2013-06-13 20:03:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (434, 'Elizabeth Mcdonald', 758.9, 184, 437, 469, '2002-03-19 16:45:35', '2004-02-15 21:12:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (435, 'Yamashita Takuya', 949.4, 232, 557, 654, '2012-11-09 23:01:48', '2016-03-20 09:52:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (436, 'Deborah Collins', 492.4, 221, 894, 88, '2007-03-17 08:45:19', '2005-01-11 11:08:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (437, 'So Wai San', 704.9, 426, 568, 220, '2011-06-19 08:25:49', '2001-07-26 02:37:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (438, 'Lok Sai Wing', 335.8, 592, 505, 596, '2021-06-19 20:10:54', '2004-09-20 13:52:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (439, 'Song Xiuying', 742.6, 490, 409, 350, '2020-04-30 13:02:33', '2007-06-15 17:12:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (440, 'Kwok Ka Keung', 751.2, 294, 700, 333, '2015-01-10 13:09:47', '2000-04-10 21:32:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (441, 'Yamada Ryota', 271.3, 285, 634, 680, '2012-11-06 18:35:34', '2008-05-22 01:48:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (442, 'Lui Ka Man', 494.8, 152, 966, 826, '2016-12-18 14:56:48', '2000-01-13 12:00:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (443, 'Taniguchi Airi', 608.9, 28, 574, 299, '2000-09-29 19:18:51', '2022-04-18 05:40:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (444, 'Jiang Rui', 37.9, 367, 504, 541, '2003-04-18 09:46:18', '2002-07-09 11:29:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (445, 'Chic Siu Wai', 707.1, 401, 262, 501, '2009-02-18 16:37:49', '2002-02-04 07:30:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (446, 'Chiba Mio', 461.9, 817, 693, 755, '2009-08-29 03:51:10', '2011-02-02 08:19:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (447, 'Hui Cho Yee', 71.1, 935, 691, 651, '2015-11-16 07:24:00', '2022-01-07 07:21:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (448, 'He Shihan', 534.5, 886, 924, 881, '2021-03-25 20:52:34', '2017-01-07 04:41:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (449, 'Chow Ting Fung', 734.7, 678, 126, 844, '2000-11-15 18:19:50', '2023-03-04 08:51:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (450, 'Fujita Nanami', 803.0, 321, 255, 448, '2013-10-14 14:16:36', '2018-05-11 17:17:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (451, 'Nomura Airi', 817.1, 858, 501, 956, '2009-04-28 04:21:05', '2010-07-02 15:38:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (452, 'Cui Yunxi', 376.7, 359, 808, 597, '2011-06-09 23:34:27', '2006-10-13 15:28:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (453, 'Joyce Vasquez', 889.3, 248, 300, 811, '2011-11-04 04:00:43', '2006-01-02 09:53:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (454, 'Patrick Alexander', 732.8, 149, 941, 836, '2010-01-06 09:58:48', '2010-12-25 08:05:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (455, 'Shimizu Yuito', 486.3, 404, 592, 889, '2001-08-10 17:18:36', '2021-07-07 20:27:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (456, 'Teresa Kennedy', 321.9, 556, 217, 415, '2001-12-06 18:24:46', '2024-04-10 10:03:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (457, 'Hasegawa Misaki', 838.4, 549, 505, 190, '2006-03-19 16:00:56', '2013-07-31 16:52:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (458, 'Hsuan Chi Ming', 657.0, 654, 368, 917, '2022-08-05 12:37:31', '2009-04-22 06:42:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (459, 'Gong Ziyi', 883.1, 88, 91, 389, '2022-06-30 17:01:03', '2021-04-02 02:37:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (460, 'Barbara Foster', 483.8, 367, 493, 40, '2011-06-07 07:53:39', '2015-02-11 13:50:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (461, 'Chung On Na', 485.3, 782, 519, 849, '2008-01-19 23:06:42', '2019-02-25 01:40:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (462, 'He Xiaoming', 126.0, 893, 54, 15, '2019-06-23 20:31:41', '2001-09-14 00:39:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (463, 'Mo Wing Sze', 981.5, 801, 101, 905, '2010-11-06 20:16:56', '2001-04-15 01:51:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (464, 'Koo Kwok Wing', 562.8, 335, 57, 236, '2009-09-29 15:11:53', '2015-12-12 10:41:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (465, 'Liao Yunxi', 239.9, 728, 909, 427, '2020-09-29 16:39:11', '2003-09-22 18:15:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (466, 'Ellen Hawkins', 455.4, 587, 284, 364, '2020-05-11 12:39:51', '2008-08-18 12:26:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (467, 'Jiang Yuning', 891.2, 58, 673, 317, '2017-06-26 20:40:10', '2013-01-07 17:09:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (468, 'Ono Mai', 440.7, 778, 598, 973, '2016-09-01 12:36:10', '2013-09-13 16:35:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (469, 'Melissa Ortiz', 969.0, 611, 296, 504, '2019-02-13 22:50:21', '2012-07-13 18:52:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (470, 'Saito Rena', 890.6, 660, 925, 135, '2009-02-13 03:04:50', '2004-04-01 13:36:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (471, 'Ichikawa Momoe', 410.5, 995, 619, 22, '2023-04-30 16:07:05', '2005-10-09 08:07:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (472, 'Shibata Kasumi', 776.1, 736, 672, 142, '2001-12-29 16:53:09', '2000-09-18 03:17:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (473, 'Xiao Lu', 387.5, 650, 227, 713, '2000-01-22 08:27:31', '2010-06-12 14:47:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (474, 'Tang Lu', 48.8, 603, 442, 114, '2017-12-20 01:51:57', '2018-01-05 07:51:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (475, 'Mak Lai Yan', 299.8, 567, 609, 892, '2020-09-13 14:48:13', '2012-02-17 09:01:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (476, 'Masuda Airi', 916.3, 921, 576, 471, '2018-11-25 01:15:01', '2009-09-27 18:43:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (477, 'Meng Shihan', 991.0, 838, 631, 51, '2003-07-31 03:53:40', '2023-03-18 08:54:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (478, 'Shimada Momoe', 930.2, 569, 911, 714, '2015-10-29 00:48:23', '2009-11-14 19:36:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (479, 'Monica Coleman', 502.1, 604, 786, 901, '2015-03-12 14:57:15', '2009-06-21 06:49:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (480, 'He Lu', 4.3, 822, 680, 671, '2023-04-11 13:28:19', '2002-02-13 02:37:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (481, 'Shibata Mai', 769.2, 988, 207, 197, '2018-08-29 14:25:09', '2004-01-08 03:48:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (482, 'Miyazaki Ayato', 547.2, 253, 893, 432, '2003-12-26 23:56:34', '2017-11-17 21:26:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (483, 'Zou Shihan', 146.2, 540, 800, 515, '2019-02-05 22:20:22', '2006-10-09 01:01:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (484, 'Yamada Yuito', 814.2, 764, 55, 894, '2014-07-17 01:27:22', '2016-03-31 22:06:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (485, 'Justin Perez', 442.3, 285, 156, 460, '2007-12-21 11:31:36', '2005-01-14 11:01:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (486, 'Nakamura Eita', 141.1, 566, 80, 605, '2009-09-02 02:53:25', '2005-06-23 21:16:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (487, 'Barry Henderson', 323.1, 178, 268, 826, '2016-06-17 03:38:47', '2003-10-26 05:34:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (488, 'Anna Reed', 382.9, 805, 837, 625, '2004-02-28 17:29:04', '2021-07-11 08:32:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (489, 'Kobayashi Minato', 218.2, 73, 854, 544, '2001-08-17 22:15:12', '2014-05-03 17:40:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (490, 'Lu Lu', 141.1, 501, 456, 572, '2019-09-05 15:49:18', '2013-04-07 00:32:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (491, 'Tang Wing Kuen', 347.7, 756, 721, 997, '2004-05-26 11:11:13', '2002-02-22 03:53:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (492, 'Meng Xiaoming', 122.5, 136, 118, 283, '2005-05-15 11:13:00', '2022-09-26 15:31:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (493, 'Debra Murray', 756.3, 905, 685, 733, '2017-10-31 13:36:20', '2007-02-27 00:23:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (494, 'Takeda Ayano', 431.2, 101, 973, 508, '2019-07-14 15:59:08', '2001-09-12 17:20:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (495, 'Nakamura Kasumi', 184.0, 588, 840, 503, '2001-12-04 20:29:17', '2020-11-25 08:16:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (496, 'Matsui Shino', 627.2, 528, 763, 770, '2000-04-22 13:09:03', '2018-06-07 12:45:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (497, 'Wu Zitao', 354.5, 775, 33, 273, '2021-02-06 00:05:43', '2003-09-29 02:49:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (498, 'Kong Lu', 427.1, 134, 224, 347, '2011-01-08 21:20:22', '2017-01-16 05:17:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (499, 'Grace Williams', 423.5, 319, 67, 906, '2024-07-14 22:29:33', '2015-01-06 12:50:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (500, 'Jiang Xiuying', 69.8, 936, 808, 369, '2017-08-24 01:03:14', '2021-12-12 08:52:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (501, 'Yao Shihan', 694.9, 181, 686, 16, '2014-11-19 23:36:36', '2008-04-16 05:29:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (502, 'Tian Shihan', 156.6, 610, 694, 635, '2020-06-21 14:47:58', '2004-08-11 20:35:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (503, 'Kwong Ching Wan', 265.6, 927, 90, 932, '2007-02-19 14:39:54', '2004-04-27 08:09:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (504, 'Diane Fernandez', 926.8, 100, 203, 694, '2012-02-09 05:12:35', '2000-06-25 21:15:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (505, 'Virginia Walker', 245.2, 673, 956, 511, '2022-12-06 18:09:47', '2014-11-10 15:56:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (506, 'Shibata Hikaru', 973.0, 817, 737, 905, '2019-05-13 07:47:00', '2004-06-08 10:18:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (507, 'Nakagawa Misaki', 566.3, 255, 61, 522, '2001-04-02 03:26:32', '2003-06-15 02:48:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (508, 'Lillian Harris', 242.9, 107, 866, 180, '2016-09-06 05:13:51', '2009-07-23 06:55:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (509, 'Tang Chiu Wai', 279.3, 367, 327, 376, '2007-08-12 12:04:29', '2004-02-16 03:40:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (510, 'Du Zitao', 292.1, 691, 378, 300, '2016-07-13 08:44:02', '2006-01-29 20:24:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (511, 'Anne Taylor', 961.6, 905, 204, 119, '2008-10-10 11:01:04', '2012-02-20 14:22:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (512, 'Du Rui', 371.5, 754, 402, 963, '2005-04-12 14:21:53', '2012-11-15 00:55:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (513, 'Okamoto Shino', 328.3, 22, 372, 385, '2005-10-27 22:37:21', '2000-02-27 21:28:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (514, 'Aaron Collins', 945.3, 51, 780, 758, '2021-10-22 15:21:40', '2008-04-11 21:20:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (515, 'Ma Yunxi', 594.4, 226, 706, 642, '2011-08-25 17:00:49', '2013-04-23 16:29:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (516, 'Mok Wai San', 554.9, 70, 370, 144, '2011-07-14 11:08:27', '2002-04-19 17:20:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (517, 'Cao Ziyi', 893.5, 827, 319, 535, '2012-03-08 22:22:49', '2015-02-12 03:24:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (518, 'Hu Xiuying', 330.7, 516, 580, 474, '2002-12-23 20:35:40', '2008-12-01 04:19:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (519, 'Saito Kaito', 407.3, 225, 797, 850, '2009-07-16 23:21:14', '2002-11-25 03:27:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (520, 'Robert Chavez', 837.2, 533, 68, 20, '2007-11-21 16:51:40', '2001-07-21 15:27:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (521, 'Yao Lu', 647.0, 810, 947, 477, '2008-09-19 17:05:00', '2023-08-18 22:17:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (522, 'Hashimoto Daisuke', 724.2, 158, 913, 772, '2015-09-05 13:26:32', '2020-05-21 00:14:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (523, 'Hasegawa Minato', 5.5, 773, 311, 275, '2011-07-25 22:02:45', '2000-12-28 23:18:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (524, 'Che Tin Wing', 983.9, 947, 741, 607, '2023-06-23 06:34:52', '2014-01-17 23:49:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (525, 'Qin Zhiyuan', 240.4, 408, 586, 522, '2006-10-23 07:13:24', '2012-01-22 21:34:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (526, 'Angela Gibson', 775.7, 445, 468, 187, '2023-01-28 09:07:11', '2000-03-15 12:26:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (527, 'Xiang Jiehong', 721.5, 43, 578, 46, '2004-05-22 01:31:13', '2012-03-17 01:30:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (528, 'Fong Suk Yee', 591.9, 270, 972, 343, '2010-01-19 17:14:41', '2005-06-21 16:40:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (529, 'Che Wing Fat', 95.3, 869, 328, 903, '2005-11-26 18:45:39', '2014-05-26 16:16:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (530, 'Okada Hikari', 256.9, 620, 888, 173, '2024-12-12 00:47:17', '2010-03-30 00:41:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (531, 'Yao Xiuying', 138.6, 444, 579, 287, '2003-08-31 13:43:43', '2018-11-22 06:41:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (532, 'Dai Jiehong', 323.4, 120, 679, 598, '2013-04-06 23:07:10', '2016-03-14 09:38:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (533, 'Ma Yuning', 551.0, 116, 394, 984, '2007-06-08 08:10:39', '2010-06-17 21:45:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (534, 'Yeow Chung Yin', 60.0, 957, 306, 145, '2017-08-27 20:53:37', '2006-08-19 02:12:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (535, 'Gao Xiuying', 135.5, 692, 741, 986, '2020-08-04 06:38:04', '2018-10-21 14:12:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (536, 'Nakamura Sara', 61.1, 508, 359, 244, '2020-05-26 11:10:43', '2012-04-06 02:42:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (537, 'Wu Yun Fat', 878.9, 604, 685, 936, '2024-08-09 08:19:00', '2023-10-24 23:41:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (538, 'Nakano Riku', 924.0, 351, 136, 635, '2008-04-16 08:37:04', '2018-01-23 14:24:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (539, 'Koo Cho Yee', 645.5, 626, 169, 68, '2016-09-29 17:57:24', '2009-09-12 18:08:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (540, 'Roger Wallace', 260.6, 681, 193, 423, '2005-12-23 20:57:27', '2002-01-28 06:53:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (541, 'Jin Lan', 870.0, 263, 311, 996, '2009-06-03 06:22:13', '2023-11-03 00:48:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (542, 'Jiang Jialun', 40.5, 597, 461, 472, '2011-04-18 06:45:55', '2014-09-22 01:10:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (543, 'Jonathan Foster', 677.6, 368, 773, 860, '2008-02-29 15:42:57', '2021-09-02 09:35:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (544, 'Fujita Yuito', 861.7, 958, 53, 977, '2010-11-01 08:41:30', '2005-09-18 05:17:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (545, 'Yamada Airi', 758.7, 606, 595, 645, '2003-08-06 12:16:52', '2017-11-22 10:08:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (546, 'Loui Ka Fai', 377.3, 304, 417, 337, '2014-12-04 08:14:19', '2002-02-06 07:07:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (547, 'Yokoyama Riku', 7.7, 288, 322, 171, '2018-06-17 22:30:08', '2016-03-29 19:31:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (548, 'Tian Zitao', 305.5, 655, 901, 849, '2005-02-18 18:27:04', '2007-08-29 05:52:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (549, 'Rachel Payne', 907.6, 896, 472, 579, '2003-09-21 06:18:01', '2017-10-23 02:11:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (550, 'Duan Zitao', 507.3, 37, 41, 134, '2015-09-24 07:14:10', '2002-02-20 22:07:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (551, 'Fan Wai Yee', 62.2, 53, 546, 921, '2017-10-20 15:45:43', '2022-06-06 19:54:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (552, 'Peter King', 264.2, 693, 911, 683, '2012-04-04 02:19:59', '2016-12-18 13:05:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (553, 'Kong Xiaoming', 115.3, 675, 48, 857, '2024-05-14 01:12:06', '2007-06-25 09:37:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (554, 'Carolyn Morgan', 19.4, 63, 40, 541, '2015-03-12 07:10:11', '2011-06-06 15:51:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (555, 'Cho Tsz Hin', 831.3, 701, 622, 579, '2006-06-23 17:14:43', '2020-04-25 07:30:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (556, 'Takeda Hikari', 581.2, 748, 208, 337, '2017-05-13 08:18:22', '2025-02-05 09:10:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (557, 'Otsuka Sara', 34.8, 348, 354, 442, '2015-09-23 18:47:47', '2013-01-18 15:52:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (558, 'Luo Zhiyuan', 952.6, 326, 148, 271, '2018-01-12 23:10:37', '2013-06-23 01:54:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (559, 'Liu Jialun', 741.3, 527, 733, 463, '2009-05-27 17:27:50', '2023-04-16 00:45:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (560, 'Fung Ka Ling', 372.9, 635, 291, 798, '2004-01-01 11:36:25', '2017-07-08 22:54:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (561, 'Loui Wai Man', 145.7, 65, 979, 266, '2022-10-03 17:55:19', '2019-09-25 04:02:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (562, 'Guo Zhiyuan', 800.6, 418, 786, 735, '2001-07-29 21:01:12', '2000-01-11 04:02:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (563, 'Hasegawa Ayano', 842.4, 360, 174, 61, '2014-05-28 17:50:07', '2019-10-19 01:33:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (564, 'Tang Xiuying', 495.0, 172, 962, 427, '2002-04-13 05:21:44', '2018-10-03 03:08:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (565, 'Tang Jiehong', 626.8, 708, 27, 968, '2012-10-18 04:43:49', '2021-11-16 11:40:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (566, 'Tao Chi Ming', 85.4, 350, 743, 940, '2016-04-06 03:33:20', '2003-07-22 07:55:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (567, 'Pang Ming Sze', 598.6, 134, 243, 447, '2006-11-08 14:53:22', '2018-11-01 04:44:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (568, 'Takada Hikaru', 842.9, 416, 722, 110, '2013-08-14 21:24:04', '2024-12-20 18:22:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (569, 'Sakurai Rena', 245.8, 324, 326, 590, '2003-11-27 19:07:12', '2021-07-23 15:35:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (570, 'Brenda Mason', 381.5, 613, 866, 184, '2011-04-29 21:44:30', '2013-09-28 07:12:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (571, 'Zhang Jiehong', 98.0, 563, 386, 617, '2022-10-11 04:38:42', '2012-06-22 22:49:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (572, 'Gary Sanchez', 421.3, 127, 889, 457, '2020-06-04 06:56:23', '2000-02-09 10:11:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (573, 'Herbert Watson', 550.2, 791, 661, 252, '2010-02-26 16:20:44', '2005-09-02 12:16:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (574, 'Jennifer Olson', 463.9, 719, 701, 777, '2009-04-25 06:34:44', '2001-04-07 03:47:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (575, 'Mui Tin Wing', 583.8, 616, 73, 618, '2015-01-29 01:12:11', '2003-11-11 03:00:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (576, 'Wong Wai Lam', 892.4, 595, 115, 390, '2010-07-06 05:11:11', '2011-01-21 05:42:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (577, 'Kam Sai Wing', 49.7, 675, 626, 803, '2022-11-22 00:16:17', '2016-04-26 02:45:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (578, 'Du Xiuying', 136.3, 804, 811, 465, '2015-10-04 22:47:42', '2016-09-12 01:29:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (579, 'Yuen Ming', 11.5, 911, 814, 620, '2009-01-09 17:36:52', '2002-04-28 20:10:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (580, 'Ishii Ryota', 963.9, 660, 365, 139, '2007-03-25 11:16:43', '2005-12-16 08:26:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (581, 'Yin Chi Yuen', 595.4, 635, 233, 515, '2011-09-18 04:45:11', '2020-04-22 14:30:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (582, 'Tracy Gonzales', 160.6, 877, 512, 944, '2014-02-17 05:40:23', '2015-10-13 14:07:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (583, 'Hao Yunxi', 929.5, 520, 704, 972, '2009-03-04 01:23:29', '2000-10-02 08:18:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (584, 'Jiang Shihan', 435.5, 92, 26, 69, '2000-01-01 00:39:33', '2018-07-19 04:43:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (585, 'Maeda Kenta', 969.0, 467, 346, 683, '2002-01-02 12:28:20', '2023-05-22 03:40:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (586, 'Fujita Daisuke', 420.1, 131, 603, 95, '2015-06-05 03:05:28', '2001-09-27 00:01:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (587, 'Fan Cho Yee', 402.6, 690, 285, 630, '2006-04-26 05:59:30', '2012-03-02 00:42:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (588, 'Jeremy Ferguson', 351.3, 364, 710, 996, '2008-10-03 18:33:02', '2005-02-15 22:12:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (589, 'Yamamoto Hazuki', 52.3, 203, 38, 373, '2022-08-06 08:01:34', '2014-07-03 13:35:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (590, 'Lo Wai Lam', 209.9, 427, 693, 19, '2006-07-18 19:35:34', '2019-07-25 23:11:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (591, 'Matsuda Ryota', 227.0, 520, 50, 80, '2010-07-18 05:26:28', '2013-02-07 16:03:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (592, 'Lok Tak Wah', 276.7, 534, 355, 624, '2010-10-21 06:46:39', '2007-10-25 03:23:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (593, 'Yu Lu', 761.3, 484, 206, 410, '2010-02-27 04:04:16', '2017-05-15 07:40:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (594, 'Shibata Daisuke', 723.5, 16, 861, 74, '2006-04-02 14:11:11', '2007-02-19 13:31:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (595, 'Manuel Hunter', 915.7, 29, 947, 835, '2011-09-01 06:12:02', '2007-11-25 00:11:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (596, 'Ishii Hina', 307.8, 485, 202, 142, '2024-01-22 05:17:32', '2006-02-21 16:02:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (597, 'Ishii Ren', 829.5, 685, 207, 313, '2021-08-04 14:24:55', '2020-01-03 12:47:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (598, 'Fung Wing Sze', 578.1, 559, 273, 17, '2021-10-18 10:18:05', '2002-11-21 22:56:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (599, 'Nakamori Daisuke', 496.7, 944, 118, 543, '2012-06-15 09:55:58', '2024-06-25 08:38:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (600, 'Jesse Salazar', 526.9, 69, 373, 826, '2008-11-15 17:39:09', '2014-06-02 05:16:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (601, 'Ding Yuning', 159.1, 603, 677, 868, '2009-05-19 11:23:37', '2012-03-03 13:20:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (602, 'Ku Ho Yin', 91.6, 662, 29, 379, '2002-11-19 07:27:55', '2011-08-26 00:13:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (603, 'Gary Watson', 353.4, 56, 247, 923, '2002-06-07 12:56:29', '2020-11-28 17:57:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (604, 'Hirano Ayano', 289.3, 113, 92, 731, '2020-08-11 06:24:42', '2010-06-29 19:51:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (605, 'Mario Mendez', 447.8, 829, 835, 990, '2003-06-10 07:56:50', '2004-11-06 08:08:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (606, 'Saito Ryota', 725.3, 726, 916, 930, '2022-02-08 02:53:16', '2007-04-30 13:10:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (607, 'Shen Zhiyuan', 60.7, 249, 380, 708, '2021-01-31 11:19:45', '2024-01-07 00:58:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (608, 'Gu Lan', 459.1, 139, 464, 250, '2020-12-20 18:04:08', '2020-06-08 20:48:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (609, 'Mo Rui', 562.0, 15, 96, 160, '2007-10-27 00:53:29', '2010-05-10 08:30:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (610, 'Meng Zhennan', 276.0, 401, 847, 416, '2004-01-12 15:07:25', '2004-02-24 17:40:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (611, 'Kimura Minato', 932.9, 457, 344, 862, '2021-02-03 07:40:18', '2002-05-03 11:00:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (612, 'Okada Momoe', 459.9, 293, 243, 94, '2023-09-05 22:31:56', '2016-09-03 07:47:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (613, 'Tse Tsz Hin', 117.0, 668, 141, 310, '2021-06-10 19:26:45', '2005-01-11 23:36:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (614, 'Ishii Kenta', 403.5, 192, 121, 859, '2009-03-29 00:25:10', '2003-09-29 01:42:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (615, 'Yau Chi Yuen', 503.9, 372, 905, 170, '2014-02-22 20:15:22', '2006-06-21 23:40:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (616, 'Watanabe Hikari', 475.1, 765, 368, 757, '2019-01-15 00:08:52', '2022-01-26 01:06:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (617, 'Esther Ross', 874.5, 868, 439, 209, '2010-04-25 15:40:21', '2003-08-21 18:41:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (618, 'He Shihan', 574.0, 903, 106, 706, '2024-02-22 12:21:58', '2001-07-31 09:26:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (619, 'Russell Howard', 717.7, 264, 638, 290, '2023-11-22 20:51:26', '2014-03-17 07:43:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (620, 'Hao Zitao', 133.7, 105, 168, 122, '2012-10-28 20:37:06', '2011-01-09 16:44:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (621, 'Nathan Nichols', 809.3, 309, 701, 467, '2001-10-06 16:52:48', '2022-08-15 22:20:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (622, 'Imai Kazuma', 195.1, 908, 731, 829, '2006-11-05 10:28:17', '2009-12-13 04:45:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (623, 'Nomura Daichi', 386.9, 20, 176, 172, '2019-07-19 13:10:59', '2003-06-07 22:47:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (624, 'Yamazaki Ayato', 876.5, 302, 991, 200, '2025-01-23 21:35:40', '2009-05-31 03:19:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (625, 'Wei Jialun', 429.8, 542, 475, 401, '2001-12-13 01:05:51', '2018-08-06 02:53:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (626, 'Cho Wai Lam', 693.7, 98, 846, 571, '2021-05-31 23:34:06', '2011-12-17 02:42:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (627, 'Lee Ka Man', 623.8, 509, 34, 827, '2006-08-06 02:21:46', '2010-08-03 11:55:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (628, 'Choi Wing Kuen', 270.8, 298, 424, 735, '2016-10-04 08:59:17', '2015-12-22 05:20:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (629, 'Ku Hiu Tung', 427.9, 22, 242, 153, '2005-12-16 08:46:05', '2018-07-05 23:54:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (630, 'Che Chieh Lun', 808.3, 766, 864, 357, '2009-11-21 06:34:52', '2020-03-06 13:00:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (631, 'Tanaka Itsuki', 957.3, 324, 69, 993, '2024-11-10 08:25:01', '2019-10-06 02:26:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (632, 'Ono Tsubasa', 798.8, 502, 355, 294, '2012-09-15 14:32:38', '2011-02-01 14:06:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (633, 'Vincent Mendez', 814.2, 114, 589, 857, '2003-12-30 21:32:20', '2001-09-28 06:33:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (634, 'Chung Fat', 229.6, 582, 597, 451, '2013-12-13 14:20:34', '2024-03-31 16:14:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (635, 'Takeda Hana', 546.1, 472, 140, 17, '2008-12-11 00:35:51', '2002-11-29 07:27:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (636, 'Kong Xiuying', 31.8, 310, 379, 612, '2018-05-23 06:08:49', '2017-06-22 10:44:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (637, 'Yin Zhiyuan', 388.8, 758, 165, 44, '2016-06-30 18:08:56', '2010-09-04 14:51:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (638, 'Ma Hok Yau', 233.1, 436, 739, 451, '2014-09-25 10:38:58', '2022-04-05 05:41:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (639, 'Shimizu Airi', 609.7, 611, 676, 26, '2013-03-04 20:54:21', '2022-08-29 12:12:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (640, 'Wong Sze Yu', 108.3, 327, 886, 550, '2021-10-31 02:43:06', '2022-10-14 11:31:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (641, 'Wang Zhennan', 476.5, 109, 688, 54, '2012-01-27 11:06:56', '2001-04-12 15:38:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (642, 'Sean Griffin', 810.3, 572, 359, 115, '2000-05-26 17:34:17', '2022-04-15 02:46:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (643, 'Takeuchi Kasumi', 778.8, 686, 670, 704, '2006-10-22 13:49:26', '2002-09-21 01:48:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (644, 'Yan Xiaoming', 856.0, 306, 350, 497, '2004-07-03 15:53:04', '2016-06-06 18:49:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (645, 'Kwong On Kay', 359.5, 168, 813, 186, '2016-05-11 16:43:52', '2001-04-27 19:06:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (646, 'Cai Ziyi', 580.3, 369, 455, 396, '2001-11-07 05:16:44', '2008-08-10 00:01:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (647, 'Man Ka Ming', 809.9, 302, 738, 975, '2024-08-28 06:20:59', '2014-07-12 08:42:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (648, 'Lo Chi Ming', 855.0, 178, 716, 752, '2010-01-02 15:08:50', '2010-03-28 21:40:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (649, 'Fan Jialun', 134.5, 900, 874, 940, '2006-07-30 01:14:40', '2011-08-20 12:53:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (650, 'Duan Lu', 594.9, 93, 15, 210, '2010-07-08 04:58:12', '2000-05-10 16:02:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (651, 'He Lu', 776.2, 44, 50, 614, '2007-06-29 19:30:10', '2023-07-11 14:46:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (652, 'Jiang Shihan', 509.7, 147, 90, 441, '2018-08-07 06:24:34', '2011-06-19 06:13:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (653, 'Tong Wing Suen', 806.8, 873, 590, 607, '2003-09-17 08:36:24', '2006-03-29 14:15:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (654, 'Hou Xiuying', 818.3, 530, 901, 682, '2009-11-21 19:58:06', '2018-08-29 10:42:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (655, 'Qin Zhiyuan', 743.9, 904, 931, 919, '2013-06-07 18:44:49', '2015-03-21 21:58:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (656, 'Che Lik Sun', 9.9, 217, 675, 573, '2003-01-26 12:47:31', '2023-03-23 21:11:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (657, 'Hui Chi Yuen', 194.0, 811, 675, 243, '2014-07-04 18:02:42', '2009-04-23 05:05:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (658, 'Ng Sai Wing', 363.7, 174, 425, 121, '2015-03-27 13:18:03', '2006-12-21 06:05:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (659, 'Willie White', 9.9, 981, 822, 686, '2024-08-01 15:05:46', '2000-10-29 11:36:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (660, 'Lo Chun Yu', 951.2, 126, 748, 164, '2019-02-27 10:39:59', '2021-04-11 18:48:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (661, 'Yung Kwok Yin', 815.4, 131, 617, 375, '2005-09-13 14:29:09', '2014-12-14 16:44:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (662, 'Gregory Moore', 483.8, 130, 928, 685, '2001-12-20 19:06:53', '2013-09-06 06:55:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (663, 'Long Xiuying', 441.8, 319, 514, 547, '2015-06-17 19:32:18', '2019-11-25 07:17:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (664, 'Zhao Zhiyuan', 796.1, 583, 63, 569, '2006-09-19 10:26:16', '2006-06-12 19:01:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (665, 'Martin Wilson', 109.1, 449, 961, 793, '2016-07-24 13:20:34', '2008-11-13 03:46:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (666, 'Miyamoto Aoshi', 521.2, 631, 99, 748, '2004-02-12 21:23:39', '2020-07-30 19:33:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (667, 'Bernard Snyder', 411.5, 404, 416, 686, '2018-01-20 22:56:16', '2015-12-17 12:52:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (668, 'Yamada Eita', 430.7, 847, 504, 830, '2010-06-22 13:59:34', '2018-09-23 11:20:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (669, 'Kojima Itsuki', 791.0, 412, 379, 8, '2007-01-31 04:01:42', '2021-01-21 01:27:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (670, 'Murata Seiko', 178.5, 957, 294, 630, '2011-12-09 23:21:17', '2025-02-17 13:56:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (671, 'Uchida Minato', 767.1, 165, 533, 995, '2001-12-09 10:22:12', '2005-09-13 17:04:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (672, 'Sakurai Ryota', 421.3, 861, 42, 901, '2017-02-18 06:28:39', '2019-08-12 11:20:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (673, 'Wong Wing Fat', 976.8, 189, 257, 838, '2011-04-13 05:30:43', '2016-07-02 13:17:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (674, 'Larry Robinson', 681.8, 230, 128, 397, '2009-02-14 01:46:41', '2005-07-19 23:18:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (675, 'Tam Chung Yin', 482.4, 341, 258, 194, '2006-05-29 05:03:58', '2003-07-06 17:41:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (676, 'Mo Xiaoming', 872.5, 926, 965, 199, '2002-02-01 03:05:10', '2021-09-25 15:55:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (677, 'Lau Ching Wan', 317.7, 559, 716, 610, '2013-09-07 02:28:58', '2011-10-12 09:13:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (678, 'Yan Shihan', 258.6, 733, 260, 462, '2011-02-22 14:08:18', '2019-09-03 19:54:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (679, 'Tao Lu', 570.7, 768, 572, 174, '2019-07-09 12:28:16', '2021-02-28 19:49:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (680, 'Tang Ting Fung', 40.5, 189, 618, 996, '2001-11-29 05:30:42', '2004-03-21 19:28:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (681, 'Mo Ka Keung', 360.4, 729, 530, 919, '2006-07-02 20:05:38', '2024-01-12 05:25:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (682, 'Wu Rui', 479.5, 993, 19, 475, '2005-10-10 17:24:07', '2006-12-08 00:22:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (683, 'Benjamin Roberts', 404.3, 336, 962, 57, '2005-03-23 15:35:32', '2019-09-29 08:39:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (684, 'Ray Gray', 479.5, 975, 641, 85, '2024-10-04 04:46:41', '2014-07-22 14:42:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (685, 'Che Sze Kwan', 297.9, 440, 370, 267, '2020-01-18 20:10:16', '2014-03-16 08:13:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (686, 'Steve Snyder', 130.3, 408, 737, 659, '2019-07-21 08:42:40', '2024-10-18 10:45:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (687, 'Gregory Diaz', 208.8, 389, 616, 384, '2025-02-20 21:07:38', '2009-05-21 03:05:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (688, 'Liao Lan', 713.5, 330, 265, 99, '2019-01-06 00:37:05', '2009-12-06 10:49:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (689, 'Huang Ziyi', 257.2, 867, 198, 496, '2007-04-04 13:27:23', '2000-05-11 12:51:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (690, 'Luo Rui', 804.5, 328, 342, 391, '2018-11-17 23:47:54', '2011-03-03 14:12:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (691, 'Lam Hok Yau', 397.8, 592, 986, 968, '2002-03-15 12:16:05', '2018-10-16 03:48:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (692, 'Saito Akina', 712.8, 247, 200, 331, '2019-11-03 21:13:36', '2001-08-15 17:22:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (693, 'Endo Ren', 812.3, 354, 295, 944, '2021-06-24 23:08:12', '2007-06-30 14:58:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (694, 'Ruby Stephens', 865.9, 416, 268, 785, '2010-08-28 18:26:33', '2012-04-01 10:20:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (695, 'Juanita Simmons', 92.6, 484, 381, 160, '2014-02-24 17:23:30', '2008-10-11 15:13:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (696, 'Mui Wai Lam', 271.9, 191, 131, 569, '2017-08-09 01:33:16', '2022-11-06 22:39:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (697, 'Koyama Kenta', 656.0, 665, 463, 999, '2008-05-22 19:09:07', '2012-03-17 05:41:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (698, 'Yamazaki Yuito', 868.4, 306, 358, 935, '2016-10-06 21:17:49', '2010-10-31 06:03:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (699, 'Hirano Kenta', 618.3, 934, 468, 643, '2015-05-21 23:35:25', '2018-09-08 07:58:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (700, 'Choi Hiu Tung', 570.7, 948, 441, 914, '2009-06-17 01:37:31', '2021-12-19 02:59:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (701, 'Curtis Foster', 135.2, 369, 239, 202, '2019-07-28 02:06:06', '2013-12-29 20:13:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (702, 'Matsumoto Riku', 749.0, 758, 44, 945, '2022-02-26 17:53:13', '2009-11-02 22:06:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (703, 'Kono Kaito', 643.8, 61, 715, 653, '2020-07-25 19:18:04', '2015-06-14 00:02:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (704, 'Russell Rogers', 908.3, 68, 511, 750, '2014-09-10 03:06:01', '2008-11-14 01:38:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (705, 'Lok Wing Fat', 312.7, 983, 406, 716, '2004-01-04 11:23:09', '2007-10-20 00:55:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (706, 'Rhonda Cox', 128.6, 363, 713, 923, '2000-12-05 09:21:25', '2001-12-09 12:16:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (707, 'Tamura Itsuki', 984.3, 663, 695, 322, '2023-04-10 11:16:23', '2008-10-28 00:37:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (708, 'Daniel Bryant', 773.4, 407, 391, 82, '2007-02-01 20:05:15', '2004-05-27 16:04:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (709, 'Koo Kwok Ming', 977.8, 806, 267, 942, '2009-12-12 18:08:42', '2004-07-23 21:11:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (710, 'Watanabe Yamato', 276.7, 800, 427, 479, '2013-10-11 09:47:17', '2003-11-02 09:54:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (711, 'Cheung Tin Wing', 42.9, 92, 196, 444, '2007-03-20 03:28:48', '2011-01-01 09:04:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (712, 'Imai Takuya', 229.7, 488, 711, 527, '2015-08-15 13:01:47', '2018-12-15 01:33:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (713, 'Sandra Rodriguez', 85.8, 407, 597, 241, '2022-04-28 10:05:03', '2005-07-25 01:50:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (714, 'Roger Alvarez', 325.8, 976, 48, 988, '2002-01-06 13:45:48', '2006-12-16 20:14:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (715, 'Meng Lan', 132.5, 525, 16, 651, '2000-03-08 20:51:24', '2004-09-07 14:22:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (716, 'Norma Gutierrez', 806.7, 401, 81, 238, '2021-01-14 10:37:05', '2003-01-13 15:56:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (717, 'Xue Xiaoming', 902.5, 60, 565, 976, '2019-01-06 05:00:39', '2021-07-22 08:20:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (718, 'Hou Yunxi', 319.1, 626, 489, 813, '2023-11-09 00:24:51', '2012-12-18 08:25:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (719, 'Fong Ho Yin', 209.5, 956, 947, 437, '2017-09-08 15:18:12', '2020-01-23 00:21:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (720, 'Gu Zhiyuan', 487.2, 593, 62, 220, '2012-03-19 01:50:26', '2020-06-27 10:36:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (721, 'Takeda Yuto', 592.2, 219, 280, 557, '2001-04-24 07:03:43', '2005-08-09 05:34:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (722, 'Joe Reynolds', 395.0, 418, 170, 422, '2018-04-06 09:28:36', '2020-07-06 01:44:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (723, 'Tao Xiuying', 911.8, 43, 357, 119, '2014-10-11 21:56:36', '2004-04-22 12:24:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (724, 'Jiang Anqi', 784.8, 264, 781, 497, '2010-12-01 18:19:10', '2006-09-23 03:56:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (725, 'Tang Yunxi', 929.0, 521, 543, 370, '2010-06-04 04:41:10', '2024-12-11 18:48:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (726, 'Tsui Ming', 873.9, 299, 122, 727, '2000-12-01 03:49:40', '2018-08-06 22:41:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (727, 'Sato Mitsuki', 489.8, 615, 55, 23, '2023-07-23 22:18:05', '2001-05-26 12:09:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (728, 'Arthur Payne', 274.3, 512, 87, 869, '2009-11-02 23:35:51', '2022-03-14 03:50:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (729, 'Chiba Aoi', 528.4, 84, 595, 900, '2003-03-10 05:12:43', '2022-05-09 04:39:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (730, 'Mak Fu Shing', 385.8, 54, 506, 376, '2015-07-07 06:13:53', '2023-09-29 21:06:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (731, 'Joel Tucker', 132.9, 174, 923, 249, '2024-11-03 15:48:09', '2004-06-04 13:44:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (732, 'Lok Hui Mei', 696.8, 461, 311, 584, '2016-06-02 07:54:28', '2017-06-27 01:41:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (733, 'Shen Yuning', 275.0, 615, 21, 990, '2006-03-15 06:28:44', '2010-05-07 17:48:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (734, 'Yung Siu Wai', 448.8, 16, 696, 961, '2007-10-15 19:26:07', '2015-02-16 20:20:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (735, 'Xiao Xiuying', 747.3, 762, 316, 334, '2007-02-23 03:17:50', '2010-12-28 11:48:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (736, 'Goto Mitsuki', 957.2, 601, 810, 509, '2004-02-15 17:46:55', '2008-07-26 16:10:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (737, 'Scott Harris', 950.2, 481, 843, 9, '2012-12-11 04:39:50', '2020-06-14 17:09:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (738, 'Wu Xiaoming', 426.4, 809, 845, 996, '2004-01-07 20:41:49', '2008-06-24 19:48:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (739, 'Kam Sau Man', 743.3, 319, 239, 25, '2005-01-11 00:44:38', '2019-12-04 09:46:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (740, 'Arimura Yamato', 581.0, 879, 827, 275, '2010-06-27 04:36:34', '2008-03-06 17:46:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (741, 'Cao Lan', 848.3, 164, 443, 48, '2009-05-30 04:09:50', '2019-03-04 08:45:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (742, 'Duan Yuning', 998.6, 977, 527, 478, '2017-12-03 03:48:32', '2018-08-30 12:43:22');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (743, 'Steve Reed', 133.1, 622, 271, 9, '2015-01-29 03:45:48', '2020-05-18 03:29:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (744, 'Martha Tucker', 375.4, 966, 884, 611, '2013-08-30 15:06:40', '2001-01-23 08:21:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (745, 'Matsui Mitsuki', 886.7, 113, 719, 313, '2005-06-05 14:57:11', '2019-03-31 02:56:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (746, 'Fu Hui Mei', 500.0, 14, 796, 174, '2008-09-19 03:07:55', '2021-07-28 07:43:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (747, 'Yan Lu', 313.3, 646, 343, 269, '2014-02-09 04:37:03', '2021-09-19 10:40:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (748, 'Kato Kazuma', 888.5, 509, 478, 484, '2015-11-03 09:57:17', '2000-11-08 17:28:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (749, 'Ding Rui', 930.4, 672, 761, 518, '2008-08-16 00:05:00', '2015-05-17 00:31:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (750, 'Paula Edwards', 94.5, 529, 28, 478, '2016-02-12 00:28:23', '2007-07-17 20:20:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (751, 'Hara Mai', 567.3, 485, 810, 798, '2003-07-19 01:15:26', '2002-09-13 14:14:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (752, 'Wei Zitao', 530.6, 46, 332, 616, '2003-09-08 20:08:45', '2019-07-23 06:28:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (753, 'Kaneko Kazuma', 412.9, 125, 876, 55, '2020-03-11 02:56:43', '2002-02-17 02:18:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (754, 'Mike Lopez', 590.3, 28, 25, 696, '2018-06-13 06:53:29', '2007-03-28 23:38:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (755, 'Hsuan Ho Yin', 679.3, 379, 285, 308, '2022-10-09 02:37:00', '2002-10-16 03:19:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (756, 'Yamada Momoe', 923.6, 853, 398, 823, '2025-01-13 15:33:40', '2001-12-27 05:35:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (757, 'Zheng Zitao', 440.9, 735, 185, 670, '2009-05-15 15:33:58', '2020-10-16 14:34:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (758, 'Kato Riku', 634.3, 553, 338, 170, '2010-12-25 15:22:45', '2014-09-24 09:30:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (759, 'Shao Jiehong', 685.2, 739, 654, 283, '2003-07-16 12:18:36', '2007-06-30 22:26:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (760, 'Ho Wing Kuen', 641.9, 126, 172, 164, '2011-02-28 17:54:54', '2003-03-05 15:39:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (761, 'Au Sum Wing', 460.7, 418, 247, 428, '2020-09-28 06:49:12', '2019-02-17 11:44:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (762, 'Aaron Mason', 995.1, 126, 177, 784, '2006-10-01 20:04:59', '2015-02-16 11:25:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (763, 'Kong Hui Mei', 774.9, 938, 653, 317, '2008-06-05 16:53:38', '2001-05-31 04:17:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (764, 'Yau Lik Sun', 552.9, 357, 302, 5, '2006-10-14 13:46:55', '2012-01-02 15:30:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (765, 'Otsuka Yamato', 657.4, 190, 160, 590, '2024-04-11 08:10:45', '2008-01-11 09:01:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (766, 'Fong Ming', 961.8, 308, 484, 558, '2023-11-17 23:30:55', '2005-04-23 13:42:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (767, 'Charlotte Mills', 749.3, 423, 584, 649, '2005-08-06 01:30:44', '2017-06-03 14:30:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (768, 'Yan Rui', 681.3, 293, 857, 9, '2008-08-16 14:13:26', '2012-12-23 04:59:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (769, 'Tang Rui', 165.8, 810, 769, 632, '2013-01-18 17:38:02', '2014-10-13 11:40:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (770, 'Nishimura Sakura', 48.2, 9, 415, 589, '2006-09-08 22:04:39', '2004-05-07 19:04:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (771, 'Hou Zhennan', 344.5, 661, 339, 811, '2010-01-01 15:55:24', '2000-01-14 09:28:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (772, 'Liang Yunxi', 859.9, 717, 933, 474, '2014-03-25 04:13:08', '2003-07-18 01:58:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (773, 'Xiong Jiehong', 654.8, 820, 624, 34, '2003-07-12 00:56:25', '2008-05-21 05:21:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (774, 'Tanaka Rin', 861.2, 483, 915, 430, '2015-06-29 00:08:24', '2011-01-23 23:49:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (775, 'Ando Aoi', 490.0, 273, 33, 492, '2009-02-20 19:23:25', '2007-01-22 06:37:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (776, 'Hou Zhennan', 166.9, 751, 601, 464, '2017-01-04 06:43:52', '2023-03-21 11:20:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (777, 'Zhang Shihan', 911.8, 375, 515, 589, '2024-04-16 03:35:36', '2018-10-02 11:15:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (778, 'Mao Zhiyuan', 220.7, 21, 236, 180, '2010-10-27 06:38:19', '2005-08-03 12:08:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (779, 'Aoki Yamato', 497.1, 464, 629, 206, '2015-06-24 21:13:44', '2021-10-03 19:27:25');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (780, 'Kojima Mio', 967.3, 24, 278, 727, '2005-02-05 13:55:26', '2012-12-30 11:10:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (781, 'Rebecca Sanchez', 237.8, 505, 247, 635, '2003-11-05 06:43:24', '2011-12-04 03:44:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (782, 'Long Zhiyuan', 250.7, 940, 342, 97, '2020-08-21 00:25:32', '2000-02-03 14:28:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (783, 'Du Ziyi', 188.1, 350, 977, 544, '2020-01-14 01:32:34', '2021-06-27 06:38:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (784, 'Hsuan Ming', 886.9, 267, 670, 383, '2000-03-05 18:48:49', '2013-10-20 04:24:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (785, 'Kondo Hikari', 211.6, 38, 712, 548, '2023-06-28 09:33:09', '2008-10-13 06:04:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (786, 'Hara Rin', 702.8, 122, 520, 800, '2011-10-15 15:17:50', '2004-05-08 12:31:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (787, 'Anna Cox', 646.5, 3, 943, 735, '2024-08-06 18:18:47', '2012-09-07 02:06:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (788, 'Ishida Ayano', 984.5, 272, 267, 496, '2007-10-04 05:50:24', '2021-01-13 19:37:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (789, 'Yuen On Na', 925.8, 388, 385, 720, '2018-05-10 23:45:21', '2008-01-12 18:21:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (790, 'Andrew Hunt', 761.8, 277, 427, 47, '2016-08-16 03:25:54', '2003-12-14 04:22:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (791, 'Patricia Flores', 533.7, 397, 360, 894, '2016-08-04 16:25:59', '2012-09-05 20:41:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (792, 'Li Shihan', 34.6, 749, 914, 121, '2004-06-04 17:49:36', '2002-02-23 08:44:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (793, 'Susan Fernandez', 819.1, 778, 778, 748, '2001-11-26 12:44:08', '2002-04-19 14:28:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (794, 'Cheng Wing Fat', 324.4, 764, 584, 604, '2006-03-13 18:23:40', '2006-02-25 09:32:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (795, 'Nicole Shaw', 517.0, 462, 925, 482, '2009-11-21 07:32:36', '2008-07-25 13:54:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (796, 'Maruyama Kenta', 777.0, 310, 640, 778, '2015-08-30 19:35:19', '2006-09-09 18:32:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (797, 'Manuel Crawford', 276.9, 854, 523, 137, '2003-02-23 16:08:46', '2018-06-26 10:32:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (798, 'Rodney Garcia', 606.6, 12, 964, 118, '2006-08-27 03:47:24', '2009-04-19 14:04:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (799, 'Michelle Ryan', 321.6, 589, 601, 45, '2020-04-25 21:36:17', '2002-02-02 21:41:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (800, 'Zhou Zhiyuan', 643.6, 860, 374, 995, '2018-06-30 21:39:34', '2004-04-17 08:50:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (801, 'Pang Chung Yin', 194.2, 657, 354, 304, '2009-11-01 06:32:20', '2009-11-26 05:39:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (802, 'Mo Kar Yan', 750.7, 249, 664, 84, '2004-02-09 15:04:41', '2013-10-25 08:50:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (803, 'Ma Xiaoming', 668.9, 732, 391, 35, '2002-12-15 07:05:16', '2022-04-07 05:23:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (804, 'Joanne Hamilton', 804.4, 154, 330, 57, '2016-07-12 06:12:50', '2020-12-20 19:21:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (805, 'Endo Hina', 40.0, 586, 308, 564, '2019-03-24 03:58:12', '2013-09-08 00:46:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (806, 'Sugawara Mitsuki', 597.7, 477, 622, 227, '2022-12-18 11:43:22', '2014-01-30 06:02:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (807, 'Kwok Chiu Wai', 650.6, 601, 125, 437, '2022-05-27 15:51:59', '2009-10-20 12:11:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (808, 'Sasaki Kenta', 347.2, 356, 286, 91, '2016-01-03 07:39:55', '2015-03-29 20:56:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (809, 'Arai Hana', 732.1, 985, 919, 370, '2009-01-24 07:17:31', '2014-10-30 16:24:17');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (810, 'Fujii Shino', 503.5, 299, 341, 260, '2002-09-12 15:55:28', '2002-07-01 22:43:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (811, 'Nakamori Kazuma', 144.8, 487, 964, 473, '2010-12-18 14:18:50', '2002-09-18 22:17:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (812, 'Lei Zhiyuan', 247.3, 358, 584, 95, '2018-11-28 10:27:47', '2015-09-19 05:28:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (813, 'Miura Kazuma', 46.2, 131, 145, 57, '2020-03-04 11:29:53', '2005-07-31 14:56:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (814, 'Ti Sum Wing', 42.5, 351, 526, 836, '2002-03-18 08:25:05', '2020-11-13 20:06:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (815, 'Pan Zhennan', 485.6, 239, 542, 340, '2014-01-23 21:41:03', '2011-08-16 04:52:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (816, 'Yuen Wing Suen', 310.2, 603, 938, 175, '2021-07-23 00:42:01', '2000-11-02 08:53:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (817, 'Leung Sau Man', 52.8, 197, 779, 454, '2024-08-14 13:05:28', '2016-02-12 09:25:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (818, 'Heung On Kay', 339.3, 52, 714, 167, '2016-01-23 00:02:18', '2007-08-23 07:17:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (819, 'Mao Yuning', 913.4, 595, 67, 524, '2010-04-26 08:00:45', '2013-08-26 23:53:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (820, 'Nomura Ren', 483.5, 915, 941, 200, '2023-06-17 10:55:22', '2003-10-28 15:26:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (821, 'Bonnie Wright', 114.6, 561, 909, 319, '2013-01-16 07:24:12', '2004-01-05 21:49:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (822, 'Tong Tin Lok', 831.5, 40, 372, 25, '2018-09-03 12:51:55', '2014-11-11 05:26:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (823, 'Kwok Sai Wing', 597.3, 697, 151, 720, '2012-10-24 05:48:46', '2006-12-19 04:30:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (824, 'Lucille Gutierrez', 260.5, 36, 256, 186, '2025-03-04 03:41:42', '2014-04-11 21:45:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (825, 'Justin Morales', 419.1, 980, 255, 520, '2024-08-30 03:54:36', '2001-08-25 02:27:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (826, 'Hashimoto Hazuki', 773.2, 611, 606, 680, '2006-09-20 16:31:23', '2021-03-06 22:51:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (827, 'Kelly Moore', 14.0, 183, 698, 905, '2024-07-04 13:32:33', '2001-02-10 14:04:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (828, 'Fu Zhiyuan', 452.7, 170, 217, 335, '2022-10-11 20:32:02', '2009-08-21 15:42:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (829, 'Takeda Itsuki', 485.1, 870, 41, 174, '2002-11-09 22:03:59', '2018-09-21 18:52:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (830, 'Roger Clark', 834.5, 788, 794, 574, '2001-12-12 18:37:18', '2010-05-17 14:18:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (831, 'Takada Seiko', 501.0, 115, 452, 495, '2014-08-30 00:19:23', '2018-07-15 07:19:30');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (832, 'Zhao Zitao', 171.0, 467, 289, 818, '2015-05-24 01:02:59', '2023-08-29 14:42:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (833, 'Tao Ziyi', 890.2, 285, 231, 965, '2019-03-19 23:33:01', '2015-01-22 21:08:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (834, 'Jiang Lu', 702.7, 270, 728, 967, '2013-06-07 18:22:16', '2020-05-05 19:33:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (835, 'Irene Lee', 602.2, 124, 92, 156, '2013-06-16 00:28:24', '2014-04-28 03:55:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (836, 'Larry Campbell', 845.7, 7, 172, 236, '2004-11-30 18:39:34', '2011-05-26 11:10:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (837, 'Sakai Shino', 429.7, 3, 611, 107, '2020-05-16 10:59:48', '2007-03-08 06:02:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (838, 'Hayashi Seiko', 615.9, 732, 226, 994, '2007-08-30 04:26:55', '2001-05-11 05:05:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (839, 'Lucille Reed', 191.3, 679, 711, 524, '2003-02-25 00:55:50', '2022-01-09 21:51:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (840, 'Uchida Akina', 940.7, 932, 328, 438, '2017-07-22 13:07:50', '2003-11-19 14:25:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (841, 'Takada Momoe', 823.9, 766, 8, 302, '2010-11-23 02:17:47', '2002-01-17 08:14:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (842, 'Wang Anqi', 428.9, 402, 954, 563, '2009-05-28 21:27:37', '2002-09-20 06:33:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (843, 'Patrick Green', 752.7, 962, 834, 893, '2000-07-24 03:16:56', '2008-04-12 04:49:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (844, 'Tong Tak Wah', 950.3, 191, 847, 169, '2004-05-31 21:07:03', '2012-07-26 01:01:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (845, 'Lo Wing Fat', 507.3, 460, 263, 910, '2018-10-21 22:34:12', '2024-12-30 01:48:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (846, 'Che Wing Sze', 840.9, 748, 938, 41, '2015-10-03 10:13:25', '2003-11-26 17:08:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (847, 'Fung Chung Yin', 375.3, 162, 523, 986, '2013-04-26 16:10:10', '2005-05-30 03:07:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (848, 'Terry Cruz', 477.9, 372, 457, 194, '2014-03-07 18:57:13', '2003-05-16 13:05:26');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (849, 'Taniguchi Miu', 195.1, 165, 934, 205, '2003-02-05 21:01:00', '2022-12-27 19:35:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (850, 'Jiang Zitao', 191.7, 251, 17, 602, '2003-07-05 18:57:28', '2001-11-28 09:31:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (851, 'Kathy Collins', 891.3, 785, 133, 271, '2009-02-26 06:19:22', '2023-10-29 23:03:16');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (852, 'Yau Chiu Wai', 740.5, 999, 917, 257, '2015-06-20 14:34:29', '2017-07-15 09:51:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (853, 'John Nguyen', 653.6, 728, 444, 347, '2021-09-01 08:31:12', '2005-11-12 04:54:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (854, 'Cai Ziyi', 943.6, 430, 501, 62, '2002-07-10 13:12:24', '2002-10-02 15:54:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (855, 'Zhong Xiuying', 41.0, 862, 281, 4, '2019-03-19 18:24:50', '2010-04-08 21:42:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (856, 'Cheng Sau Man', 468.5, 339, 909, 712, '2003-03-06 19:12:47', '2010-08-21 04:34:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (857, 'Chen Rui', 715.3, 696, 117, 241, '2009-12-19 02:25:11', '2002-12-06 23:30:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (858, 'Mo Zhiyuan', 726.6, 48, 83, 929, '2006-09-27 01:15:56', '2020-12-18 06:09:00');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (859, 'Carolyn Harrison', 522.6, 405, 767, 123, '2021-11-13 16:09:59', '2003-04-07 17:42:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (860, 'Fu Lik Sun', 49.7, 302, 445, 255, '2022-12-06 15:25:46', '2004-01-15 07:44:41');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (861, 'Tamura Ayato', 842.5, 339, 678, 83, '2022-03-11 21:27:18', '2024-07-12 13:37:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (862, 'Saito Aoshi', 54.8, 193, 426, 158, '2021-12-11 20:53:53', '2022-03-08 21:33:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (863, 'Xie Xiuying', 329.8, 989, 620, 608, '2001-05-09 15:18:23', '2005-12-03 17:58:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (864, 'Long Zhiyuan', 634.3, 776, 464, 873, '2025-03-02 11:55:54', '2012-02-04 17:25:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (865, 'Robert Munoz', 942.8, 168, 886, 755, '2021-04-26 09:36:49', '2006-02-05 12:36:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (866, 'Pang Ka Ling', 336.9, 588, 862, 2, '2012-03-10 13:20:27', '2004-05-02 08:59:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (867, 'Chung Siu Wai', 781.7, 139, 618, 185, '2003-02-28 17:31:00', '2017-08-13 05:35:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (868, 'Kato Yota', 742.9, 622, 806, 722, '2024-12-18 14:16:22', '2011-02-19 18:03:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (869, 'Debbie Olson', 747.2, 80, 413, 110, '2005-04-02 23:25:12', '2015-04-30 08:25:05');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (870, 'Chow Hui Mei', 568.6, 521, 569, 585, '2008-10-26 17:34:28', '2016-07-29 12:34:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (871, 'Lui Tsz Hin', 234.0, 632, 191, 335, '2018-12-21 11:36:58', '2001-08-17 22:45:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (872, 'Bonnie Weaver', 243.2, 171, 95, 397, '2016-10-24 04:17:00', '2005-04-04 21:36:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (873, 'Hao Xiaoming', 244.5, 851, 988, 481, '2007-05-18 21:52:52', '2011-12-16 01:02:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (874, 'Wayne Ward', 862.8, 20, 498, 28, '2018-11-18 02:59:13', '2022-11-18 14:20:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (875, 'Kwong Siu Wai', 295.1, 50, 823, 167, '2018-07-20 09:55:41', '2019-01-08 02:08:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (876, 'Uchida Daisuke', 781.7, 622, 341, 694, '2012-10-17 12:46:17', '2011-06-21 22:19:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (877, 'Lori Ellis', 609.8, 128, 227, 891, '2022-08-30 19:38:45', '2021-10-06 08:14:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (878, 'Yau Yu Ling', 35.6, 253, 234, 364, '2020-11-01 02:15:29', '2013-09-19 13:57:36');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (879, 'Siu Ching Wan', 19.7, 218, 846, 903, '2001-02-04 08:10:49', '2015-08-17 18:18:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (880, 'Han Kwok Yin', 273.3, 176, 567, 839, '2003-07-12 10:58:23', '2001-02-07 22:16:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (881, 'Randall Kennedy', 613.9, 173, 871, 476, '2020-12-27 12:10:57', '2020-05-31 23:55:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (882, 'Taniguchi Seiko', 45.9, 155, 315, 313, '2014-11-22 21:12:53', '2016-10-20 10:38:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (883, 'Yeow Ho Yin', 372.9, 714, 172, 37, '2015-01-24 01:18:10', '2001-11-27 19:22:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (884, 'Jia Jiehong', 256.0, 174, 348, 964, '2001-05-09 00:45:10', '2010-11-07 16:55:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (885, 'Ueda Tsubasa', 536.4, 139, 856, 855, '2022-12-29 01:07:04', '2000-09-05 20:35:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (886, 'Koyama Misaki', 385.1, 525, 652, 241, '2010-10-23 22:44:00', '2001-10-11 02:30:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (887, 'Han Lan', 147.2, 109, 704, 531, '2006-02-14 12:49:36', '2014-06-01 10:53:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (888, 'Chen Zhiyuan', 423.3, 145, 640, 195, '2007-12-24 04:18:47', '2009-01-25 18:09:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (889, 'Huang Shihan', 980.9, 463, 935, 400, '2011-08-29 08:28:49', '2012-09-10 16:39:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (890, 'Yeow Ling Ling', 516.1, 848, 700, 399, '2013-11-01 17:49:00', '2020-02-28 08:40:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (891, 'Han Anqi', 565.9, 57, 326, 434, '2016-12-22 17:47:42', '2019-12-25 05:49:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (892, 'Mori Momoka', 315.0, 483, 613, 277, '2001-05-07 02:36:52', '2007-08-08 21:00:34');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (893, 'Mo Shihan', 499.1, 247, 316, 131, '2001-10-05 16:54:11', '2023-05-26 15:31:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (894, 'Nicholas Mitchell', 329.2, 214, 389, 345, '2016-05-26 21:27:14', '2016-03-19 15:42:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (895, 'Lu Yunxi', 487.7, 504, 0, 54, '2012-01-05 07:58:53', '2007-06-26 10:14:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (896, 'Christopher Hall', 157.8, 391, 165, 339, '2008-07-15 22:09:30', '2020-09-12 14:09:52');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (897, 'Zhong Yunxi', 828.3, 588, 982, 927, '2003-06-08 02:15:19', '2006-05-01 11:14:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (898, 'Arai Minato', 667.6, 454, 983, 33, '2021-02-02 21:03:55', '2019-09-24 15:15:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (899, 'Yu Xiaoming', 884.3, 272, 998, 578, '2024-09-08 16:19:29', '2012-12-24 20:33:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (900, 'Xiao Lu', 244.5, 291, 759, 524, '2024-02-19 05:52:48', '2021-06-12 01:15:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (901, 'Sit Wing Sze', 747.1, 757, 47, 231, '2002-07-12 16:42:34', '2002-04-16 04:28:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (902, 'Wong Lai Yan', 290.4, 133, 515, 245, '2018-10-14 18:42:49', '2000-01-13 19:57:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (903, 'Lok Wai Lam', 470.6, 619, 705, 918, '2002-10-21 11:23:38', '2023-12-18 08:21:02');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (904, 'Amanda Schmidt', 626.7, 945, 318, 532, '2003-08-05 22:14:43', '2002-08-25 14:02:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (905, 'Debbie Hamilton', 453.9, 357, 541, 164, '2004-01-20 14:06:26', '2004-11-06 16:41:28');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (906, 'Nancy Rice', 503.2, 244, 945, 257, '2009-06-24 10:12:07', '2017-01-18 17:50:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (907, 'Kondo Rena', 853.7, 473, 44, 601, '2017-04-23 00:03:35', '2015-07-10 10:18:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (908, 'Dennis Morales', 792.8, 632, 323, 542, '2013-07-17 18:53:26', '2003-08-16 20:53:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (909, 'Leung Kwok Yin', 132.1, 205, 4, 20, '2015-07-19 12:13:48', '2009-06-22 09:12:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (910, 'Tang Shihan', 64.4, 179, 140, 693, '2021-10-10 08:01:14', '2019-02-11 00:58:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (911, 'Fu Xiuying', 370.2, 971, 850, 501, '2009-01-01 14:23:44', '2012-09-13 15:10:56');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (912, 'Hui Ching Wan', 351.5, 13, 503, 658, '2014-10-08 02:40:11', '2002-04-02 22:48:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (913, 'Meng Lai Yan', 975.8, 307, 272, 251, '2016-06-26 03:42:22', '2017-02-08 01:05:23');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (914, 'Ding Lan', 280.1, 488, 980, 812, '2011-09-17 06:18:50', '2010-10-17 10:08:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (915, 'Ti Wing Sze', 805.4, 985, 996, 839, '2011-08-19 18:22:31', '2018-11-03 11:12:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (916, 'Frederick Meyer', 997.2, 157, 230, 457, '2001-07-30 04:34:28', '2011-09-16 15:27:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (917, 'Ishikawa Rin', 638.9, 897, 288, 836, '2019-03-21 14:23:27', '2015-04-04 00:08:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (918, 'Lam Sze Kwan', 46.9, 785, 27, 5, '2015-08-12 23:17:11', '2008-08-25 19:33:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (919, 'Wendy Reyes', 8.0, 755, 559, 84, '2021-09-11 00:27:41', '2011-06-07 21:15:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (920, 'Yip Ka Man', 239.8, 212, 977, 193, '2023-07-03 14:19:37', '2021-08-22 09:15:31');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (921, 'Maeda Ikki', 815.0, 486, 426, 851, '2022-07-23 00:17:53', '2003-01-22 11:23:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (922, 'Cheung Tsz Hin', 462.1, 424, 788, 171, '2005-11-15 21:28:32', '2001-06-29 18:19:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (923, 'Carmen Dixon', 605.1, 673, 762, 948, '2001-08-17 00:19:03', '2013-02-22 13:44:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (924, 'Amanda Jordan', 856.2, 195, 128, 238, '2013-11-05 19:45:32', '2006-11-28 14:05:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (925, 'Lok Ho Yin', 301.5, 729, 231, 393, '2021-08-08 02:35:06', '2013-01-24 13:33:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (926, 'Mario Henderson', 570.2, 841, 19, 799, '2016-02-28 23:01:49', '2009-06-27 00:57:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (927, 'Matsumoto Yamato', 547.4, 817, 551, 90, '2002-05-24 12:52:44', '2007-02-12 19:28:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (928, 'Nakano Hazuki', 673.2, 271, 900, 798, '2024-04-11 11:58:15', '2024-02-16 02:45:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (929, 'Travis Porter', 106.5, 308, 349, 763, '2016-03-06 04:46:46', '2024-04-16 12:23:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (930, 'Li Shihan', 334.8, 277, 731, 611, '2015-03-01 08:26:49', '2003-02-22 14:44:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (931, 'Deng Zitao', 896.6, 796, 42, 791, '2000-05-05 03:22:53', '2022-01-23 15:14:59');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (932, 'Phillip Hunter', 88.3, 942, 551, 836, '2008-08-19 20:43:55', '2012-03-12 12:39:18');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (933, 'Chang Wai Yee', 972.9, 713, 510, 570, '2019-08-26 18:34:59', '2006-07-13 15:44:37');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (934, 'Ma Cho Yee', 58.0, 721, 201, 105, '2013-08-06 19:19:26', '2017-12-17 00:37:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (935, 'Liao Hok Yau', 223.9, 429, 225, 699, '2014-03-14 13:29:50', '2010-09-14 22:56:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (936, 'Hui Kwok Kuen', 152.0, 533, 674, 436, '2022-01-29 17:53:17', '2002-07-05 19:58:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (937, 'Katherine Snyder', 96.2, 705, 338, 769, '2023-05-26 06:16:25', '2020-11-22 16:03:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (938, 'Arimura Hikari', 752.3, 604, 545, 332, '2019-09-05 20:48:29', '2006-09-14 23:33:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (939, 'Hashimoto Akina', 425.4, 574, 86, 410, '2008-03-18 06:00:09', '2020-05-16 17:47:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (940, 'Wei Ziyi', 762.3, 720, 526, 811, '2023-01-19 08:59:57', '2006-05-17 19:32:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (941, 'Otsuka Shino', 210.5, 976, 839, 456, '2008-05-27 14:03:05', '2024-02-05 09:19:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (942, 'Dale Howard', 326.3, 724, 883, 838, '2018-02-25 21:42:14', '2009-07-05 14:48:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (943, 'Nancy Dunn', 783.7, 951, 266, 525, '2024-08-12 13:38:34', '2019-10-27 00:14:04');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (944, 'Ng Lik Sun', 927.2, 205, 217, 606, '2003-04-23 17:40:14', '2006-09-16 17:41:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (945, 'Imai Sakura', 543.1, 27, 354, 945, '2005-01-25 07:02:50', '2011-12-11 01:48:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (946, 'Sherry Gonzales', 882.0, 57, 364, 186, '2010-07-11 00:51:17', '2008-11-04 10:29:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (947, 'Jiang Yuning', 429.2, 55, 583, 537, '2001-09-18 21:38:06', '2021-08-22 20:08:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (948, 'Huang Lu', 939.2, 303, 539, 573, '2006-04-13 17:00:58', '2000-09-09 12:22:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (949, 'Shibata Minato', 775.1, 372, 14, 260, '2017-05-26 01:47:29', '2022-01-31 21:29:21');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (950, 'Yin Xiuying', 94.7, 209, 780, 869, '2018-11-15 23:06:10', '2015-10-19 05:20:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (951, 'Lok Fat', 790.0, 10, 811, 647, '2005-04-03 01:25:28', '2017-01-24 11:36:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (952, 'Diana Clark', 381.2, 411, 181, 92, '2021-07-21 05:17:06', '2006-01-23 22:39:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (953, 'Adam Hicks', 30.9, 720, 869, 439, '2002-08-22 19:08:34', '2021-06-30 04:24:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (954, 'Ren Lu', 304.5, 589, 733, 833, '2011-10-20 05:12:52', '2003-10-30 07:50:44');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (955, 'Pang Siu Wai', 952.1, 546, 729, 190, '2021-11-12 10:12:05', '2004-04-25 04:16:55');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (956, 'Denise Gomez', 495.4, 720, 128, 398, '2008-06-11 12:55:47', '2008-07-03 18:14:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (957, 'Nicholas Spencer', 669.6, 315, 512, 306, '2020-05-10 12:03:46', '2022-07-23 16:33:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (958, 'Kathleen Hunter', 469.5, 542, 814, 395, '2016-12-22 07:14:35', '2000-03-08 03:16:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (959, 'Yin Wai Man', 633.1, 850, 283, 433, '2022-12-02 04:14:34', '2008-09-10 12:44:45');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (960, 'He Zhennan', 948.9, 980, 461, 553, '2018-07-15 00:49:48', '2012-07-01 17:45:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (961, 'Miyamoto Nanami', 707.6, 804, 853, 369, '2017-11-20 04:47:16', '2005-09-29 14:44:14');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (962, 'Yokoyama Airi', 279.5, 199, 378, 331, '2021-11-15 10:39:37', '2011-09-19 12:39:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (963, 'Heung Wing Sze', 98.4, 727, 464, 580, '2021-05-26 06:52:37', '2016-02-14 20:32:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (964, 'Kimura Kasumi', 754.3, 467, 713, 24, '2012-09-17 19:24:05', '2010-08-15 12:08:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (965, 'Luo Yuning', 607.8, 357, 770, 546, '2009-11-18 17:18:56', '2016-07-09 19:22:27');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (966, 'Takeda Yota', 304.8, 203, 32, 906, '2010-12-24 18:09:14', '2016-02-28 09:15:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (967, 'Xu Zitao', 446.8, 439, 219, 664, '2000-10-20 23:35:18', '2001-08-09 22:03:06');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (968, 'Kondo Ikki', 524.8, 771, 4, 413, '2001-12-02 21:07:56', '2021-11-28 22:45:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (969, 'Susan Nichols', 642.7, 958, 372, 647, '2003-11-30 23:55:22', '2022-07-18 00:12:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (970, 'Saito Ryota', 884.3, 895, 47, 270, '2024-05-03 22:45:11', '2016-11-07 01:34:54');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (971, 'Takeda Eita', 982.7, 7, 669, 783, '2024-11-10 15:07:13', '2023-04-06 08:04:09');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (972, 'Yamamoto Aoshi', 735.3, 78, 731, 133, '2021-12-18 20:21:10', '2020-03-08 17:26:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (973, 'Xia Xiaoming', 413.0, 706, 45, 406, '2004-03-31 07:56:47', '2007-09-10 15:41:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (974, 'Dai Xiuying', 166.5, 207, 581, 458, '2018-10-31 08:24:22', '2020-06-17 16:37:15');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (975, 'Fu Ming Sze', 966.2, 602, 578, 12, '2003-02-05 19:45:22', '2017-12-03 05:48:01');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (976, 'Takada Shino', 996.2, 868, 426, 268, '2004-08-02 18:39:11', '2017-01-02 07:22:43');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (977, 'Lui Ka Ming', 707.4, 763, 886, 174, '2004-11-26 16:19:11', '2017-05-12 14:51:49');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (978, 'Chang Yunxi', 770.3, 961, 588, 326, '2013-05-15 16:05:43', '2020-09-13 19:43:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (979, 'Yam Lai Yan', 818.4, 278, 634, 216, '2017-05-02 15:08:32', '2010-05-24 03:11:57');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (980, 'Huang Shihan', 592.5, 239, 864, 318, '2016-01-25 12:16:53', '2010-04-16 08:08:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (981, 'Curtis Ward', 481.8, 377, 620, 52, '2011-04-21 20:36:08', '2024-12-21 10:27:08');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (982, 'Zhou Xiaoming', 92.4, 234, 960, 366, '2005-03-04 05:04:56', '2019-03-28 10:48:47');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (983, 'Chen Jiehong', 908.4, 438, 312, 915, '2017-08-26 07:23:34', '2015-07-13 12:07:35');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (984, 'Michelle Collins', 183.2, 89, 591, 75, '2024-03-12 15:08:52', '2005-06-11 14:53:46');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (985, 'Fong Tin Lok', 222.7, 185, 738, 908, '2023-07-16 20:28:09', '2009-01-31 14:46:12');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (986, 'Kong Chieh Lun', 21.1, 335, 814, 297, '2010-09-08 08:03:55', '2024-04-20 20:38:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (987, 'Hou Yunxi', 815.6, 621, 346, 106, '2007-11-22 02:36:52', '2024-07-22 04:21:39');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (988, 'Iwasaki Sakura', 25.4, 946, 557, 749, '2014-09-15 07:17:00', '2006-04-06 00:44:33');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (989, 'Rachel Evans', 677.8, 58, 352, 488, '2017-06-13 15:00:55', '2018-05-05 11:54:19');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (990, 'Shao Rui', 41.3, 126, 835, 540, '2022-04-08 07:31:08', '2017-01-29 07:29:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (991, 'Koyama Airi', 49.9, 390, 770, 989, '2011-05-10 17:39:17', '2001-11-10 22:34:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (992, 'Xiao Lu', 491.1, 764, 788, 371, '2016-11-08 04:47:20', '2011-10-22 13:28:07');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (993, 'Tao Tin Lok', 749.6, 87, 406, 705, '2002-07-05 23:56:19', '2003-10-23 15:19:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (994, 'Tin Hiu Tung', 839.4, 406, 365, 44, '2009-12-02 01:39:59', '2010-09-15 20:56:53');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (995, 'Yoshida Miu', 736.7, 268, 902, 854, '2015-11-14 06:34:48', '2002-09-21 14:12:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (996, 'Josephine Gonzalez', 35.3, 990, 1, 997, '2025-02-14 18:02:20', '2014-08-26 01:28:58');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (997, 'Kobayashi Kaito', 540.2, 381, 416, 920, '2007-10-25 03:17:40', '2011-05-26 10:55:51');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (998, 'Maeda Daichi', 940.3, 956, 383, 393, '2018-10-01 11:56:07', '2017-12-16 08:14:11');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (999, 'Fukuda Kenta', 729.2, 722, 994, 817, '2020-07-28 18:15:46', '2005-05-08 10:19:24');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1000, 'Ren Zhennan', 430.7, 43, 54, 604, '2015-03-08 10:20:00', '2021-08-24 16:33:03');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1001, 'Ku Yu Ling', 302.0, 494, 909, 765, '2017-03-13 02:32:03', '2003-04-27 09:10:42');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1002, 'Hayashi Hikari', 916.3, 564, 262, 616, '2021-03-24 20:51:08', '2008-06-08 20:25:29');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1003, 'Sugawara Akina', 5.2, 256, 852, 440, '2004-01-01 17:34:57', '2007-06-07 04:35:48');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1004, 'Kong Rui', 598.0, 605, 788, 772, '2004-01-13 00:14:53', '2018-06-10 20:54:20');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1005, 'Amber Mitchell', 560.7, 951, 362, 53, '2011-01-22 23:36:41', '2006-11-21 14:15:32');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1006, 'Timothy Baker', 697.7, 413, 189, 779, '2018-06-30 06:56:49', '2004-02-19 20:22:40');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1007, 'Samuel Grant', 975.5, 697, 2, 942, '2001-10-31 16:45:40', '2018-01-10 05:13:50');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1008, 'Amy Hawkins', 630.7, 245, 522, 419, '2006-05-25 19:31:10', '2019-10-07 06:35:10');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1009, 'Nakano Miu', 301.0, 476, 940, 521, '2010-10-30 08:41:57', '2022-10-18 08:02:13');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1010, 'Yao Xiaoming', 443.4, 613, 920, 969, '2010-12-08 17:19:42', '2024-10-05 22:32:38');
INSERT INTO `airplane` (`aid`, `aname`, `arate`, `f_class_cnt`, `b_class_cnt`, `e_class_cnt`, `created_at`, `updated_at`) VALUES (1011, 'Ishida Daisuke', 5.8, 868, 969, 894, '2004-11-05 09:06:04', '2024-01-26 01:20:28');
COMMIT;

-- ----------------------------
-- Table structure for baggage
-- ----------------------------
DROP TABLE IF EXISTS `baggage`;
CREATE TABLE `baggage` (
  `bid` int NOT NULL AUTO_INCREMENT COMMENT '行李记录ID',
  `uid` int NOT NULL COMMENT '用户ID',
  `flight_id` int NOT NULL COMMENT '航班ID',
  `baggage_count` int NOT NULL COMMENT '行李件数',
  `total_weight` decimal(6,2) NOT NULL COMMENT '行李总重量（kg）',
  `extra_fee` decimal(10,2) DEFAULT NULL COMMENT '超重费用',
  PRIMARY KEY (`bid`),
  KEY `uid` (`uid`),
  KEY `flight_id` (`flight_id`),
  CONSTRAINT `baggage_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `baggage_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`fid`) ON DELETE CASCADE,
  CONSTRAINT `chk_baggage_count` CHECK ((`baggage_count` between 0 and 10)),
  CONSTRAINT `chk_baggage_weight` CHECK ((`total_weight` between 0 and 100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='行李信息表';

-- ----------------------------
-- Records of baggage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `fid` int NOT NULL AUTO_INCREMENT COMMENT '航班ID',
  `aid` int NOT NULL COMMENT '飞机ID',
  `start_point` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '起飞地点',
  `end_point` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '降落地点',
  `start_time` datetime NOT NULL COMMENT '起飞时间',
  `end_time` datetime NOT NULL COMMENT '降落时间',
  `distance` int NOT NULL COMMENT '飞行距离（km）',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`),
  KEY `fk_flight_airplane` (`aid`),
  KEY `idx_route` (`start_point`,`end_point`),
  CONSTRAINT `fk_flight_airplane` FOREIGN KEY (`aid`) REFERENCES `airplane` (`aid`) ON DELETE RESTRICT,
  CONSTRAINT `chk_flight_time` CHECK ((`start_time` < `end_time`))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='航班信息表';

-- ----------------------------
-- Records of flight
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `mid` int NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员姓名',
  `account` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员账号',
  `passwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员密码',
  `role` enum('超级管理员','普通管理员','财务') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '普通管理员' COMMENT '管理员角色',
  `status` enum('正常','禁用') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '正常' COMMENT '账号状态',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_login` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `operation_log` text COLLATE utf8mb4_unicode_ci COMMENT '操作日志',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员信息表';

-- ----------------------------
-- Records of manager
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status` (
  `code` int NOT NULL COMMENT '状态编码',
  `name` varchar(20) NOT NULL COMMENT '状态名称',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单状态字典表';

-- ----------------------------
-- Records of order_status
-- ----------------------------
BEGIN;
INSERT INTO `order_status` (`code`, `name`) VALUES (0, '待支付');
INSERT INTO `order_status` (`code`, `name`) VALUES (1, '已支付');
INSERT INTO `order_status` (`code`, `name`) VALUES (2, '已取消');
INSERT INTO `order_status` (`code`, `name`) VALUES (3, '已完成');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `status` int NOT NULL COMMENT '订单状态（引用order_status表）',
  `fid` int NOT NULL COMMENT '航班ID',
  `uid` int NOT NULL COMMENT '用户ID',
  `prices` decimal(10,2) NOT NULL COMMENT '票价',
  `days` date DEFAULT NULL COMMENT '出行日期',
  PRIMARY KEY (`oid`),
  KEY `orders_ibfk_1` (`uid`),
  KEY `fk_orders_flight` (`fid`),
  KEY `idx_order_status` (`status`),
  CONSTRAINT `fk_orders_flight` FOREIGN KEY (`fid`) REFERENCES `flight` (`fid`) ON DELETE CASCADE,
  CONSTRAINT `fk_orders_status` FOREIGN KEY (`status`) REFERENCES `order_status` (`code`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单信息表';

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `role` enum('用户','管理员') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '用户' COMMENT '用户角色',
  `status` enum('待审核','已激活','禁用') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '待审核' COMMENT '账号状态',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `idx_user_contact` (`email`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
