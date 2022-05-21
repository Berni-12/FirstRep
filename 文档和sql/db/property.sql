/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : property

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2020-05-04 20:25:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `file_info`
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `id` varchar(32) NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '物理路径',
  `url` varchar(1024) NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES ('bd2c48a4bc455ef14f6694b96965e1bb', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '21635', 'd:/files/2020/01/12/bd2c48a4bc455ef14f6694b96965e1bb.xlsx', '/2020/01/12/bd2c48a4bc455ef14f6694b96965e1bb.xlsx', '0', '2020-01-12 16:42:47', '2020-01-12 16:42:47');
INSERT INTO `file_info` VALUES ('cbd66802f037a08972f956d9662b90d5', 'image/jpeg', '63047', 'd:/files/2020/01/12/cbd66802f037a08972f956d9662b90d5.jpg', '/2020/01/12/cbd66802f037a08972f956d9662b90d5.jpg', '1', '2020-01-12 16:41:57', '2020-01-12 16:41:57');

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `LOCK_NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('adminQuartzScheduler', 'STATE_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) COLLATE utf8_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('adminQuartzScheduler', 'SD-20191213AXGV1578041426316', '1578043690730', '15000');

-- ----------------------------
-- Table structure for `sys_logs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '成功失败',
  `remark` text COMMENT '备注',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `createTime` (`createTime`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES ('1', '2', '退出', '1', null, '2019-12-31 16:49:45');
INSERT INTO `sys_logs` VALUES ('2', '1', 'web端登陆', '1', null, '2019-12-31 16:49:50');
INSERT INTO `sys_logs` VALUES ('3', '1', 'web端登陆', '1', null, '2020-01-03 16:50:43');
INSERT INTO `sys_logs` VALUES ('4', '1', 'web端登陆', '1', null, '2020-01-03 16:54:15');
INSERT INTO `sys_logs` VALUES ('5', '1', 'web端登陆', '1', null, '2020-01-03 17:01:08');
INSERT INTO `sys_logs` VALUES ('6', '1', 'web端登陆', '1', null, '2020-01-03 17:04:17');
INSERT INTO `sys_logs` VALUES ('7', '1', 'web端登陆', '1', null, '2020-01-03 17:04:32');
INSERT INTO `sys_logs` VALUES ('8', '1', 'web端登陆', '1', null, '2020-01-03 17:05:15');
INSERT INTO `sys_logs` VALUES ('9', '1', '保存公告', '1', null, '2020-01-03 17:05:47');
INSERT INTO `sys_logs` VALUES ('10', '2', 'web端登陆', '1', null, '2020-01-03 17:06:15');
INSERT INTO `sys_logs` VALUES ('11', '2', '删除菜单', '1', null, '2020-01-03 17:10:08');
INSERT INTO `sys_logs` VALUES ('12', '2', '删除菜单', '1', null, '2020-01-03 17:10:19');
INSERT INTO `sys_logs` VALUES ('13', '2', '删除菜单', '1', null, '2020-01-03 17:10:46');
INSERT INTO `sys_logs` VALUES ('14', '1', 'web端登陆', '1', null, '2020-01-03 17:11:08');
INSERT INTO `sys_logs` VALUES ('15', '2', 'web端登陆', '1', null, '2020-01-03 17:11:22');
INSERT INTO `sys_logs` VALUES ('16', '1', 'web端登陆', '1', null, '2020-01-03 17:11:33');
INSERT INTO `sys_logs` VALUES ('17', '1', '删除菜单', '1', null, '2020-01-03 17:12:19');
INSERT INTO `sys_logs` VALUES ('18', '1', 'web端登陆', '1', null, '2020-01-03 17:14:55');
INSERT INTO `sys_logs` VALUES ('19', '1', '删除菜单', '1', null, '2020-01-03 17:15:18');
INSERT INTO `sys_logs` VALUES ('20', '1', 'web端登陆', '1', null, '2020-01-03 17:19:15');
INSERT INTO `sys_logs` VALUES ('21', '1', '根据sql在页面显示结果', '1', null, '2020-01-03 17:20:12');
INSERT INTO `sys_logs` VALUES ('22', '1', '根据sql导出excel', '1', null, '2020-01-03 17:20:20');
INSERT INTO `sys_logs` VALUES ('23', '1', '删除菜单', '1', null, '2020-01-03 17:21:13');
INSERT INTO `sys_logs` VALUES ('24', '1', 'web端登陆', '1', null, '2020-01-03 17:21:55');
INSERT INTO `sys_logs` VALUES ('25', '1', '修改用户', '1', null, '2020-01-03 17:24:57');
INSERT INTO `sys_logs` VALUES ('26', '1', '退出', '1', null, '2020-01-03 17:25:05');
INSERT INTO `sys_logs` VALUES ('27', '1', 'web端登陆', '1', null, '2020-01-03 17:25:36');
INSERT INTO `sys_logs` VALUES ('28', '1', '修改用户', '1', null, '2020-01-03 17:32:33');
INSERT INTO `sys_logs` VALUES ('29', '1', '修改用户', '1', null, '2020-01-03 17:33:01');
INSERT INTO `sys_logs` VALUES ('30', '1', '修改用户', '1', null, '2020-01-03 17:33:31');
INSERT INTO `sys_logs` VALUES ('31', '1', 'web端登陆', '1', null, '2020-01-04 15:01:45');
INSERT INTO `sys_logs` VALUES ('32', '1', 'web端登陆', '1', null, '2020-01-04 15:46:14');
INSERT INTO `sys_logs` VALUES ('33', '1', 'web端登陆', '1', null, '2020-01-04 16:54:52');
INSERT INTO `sys_logs` VALUES ('34', '1', '保存菜单', '1', null, '2020-01-04 16:56:55');
INSERT INTO `sys_logs` VALUES ('35', '1', '修改菜单', '1', null, '2020-01-04 16:57:47');
INSERT INTO `sys_logs` VALUES ('36', '1', 'web端登陆', '1', null, '2020-01-04 16:58:32');
INSERT INTO `sys_logs` VALUES ('37', '1', '保存角色', '1', null, '2020-01-04 16:59:14');
INSERT INTO `sys_logs` VALUES ('38', '1', 'web端登陆', '1', null, '2020-01-04 16:59:49');
INSERT INTO `sys_logs` VALUES ('39', '1', 'web端登陆', '1', null, '2020-01-04 17:21:15');
INSERT INTO `sys_logs` VALUES ('40', '1', 'web端登陆', '1', null, '2020-01-04 18:19:06');
INSERT INTO `sys_logs` VALUES ('41', '1', 'web端登陆', '1', null, '2020-01-06 10:22:28');
INSERT INTO `sys_logs` VALUES ('42', '1', 'web端登陆', '1', null, '2020-01-06 10:26:02');
INSERT INTO `sys_logs` VALUES ('43', '1', 'web端登陆', '1', null, '2020-01-06 10:30:42');
INSERT INTO `sys_logs` VALUES ('44', '1', 'web端登陆', '1', null, '2020-01-06 14:27:01');
INSERT INTO `sys_logs` VALUES ('45', '1', '保存菜单', '1', null, '2020-01-06 14:29:23');
INSERT INTO `sys_logs` VALUES ('46', '1', '修改菜单', '1', null, '2020-01-06 14:29:52');
INSERT INTO `sys_logs` VALUES ('47', '1', '保存菜单', '1', null, '2020-01-06 14:30:27');
INSERT INTO `sys_logs` VALUES ('48', '1', '保存菜单', '1', null, '2020-01-06 14:30:57');
INSERT INTO `sys_logs` VALUES ('49', '1', 'web端登陆', '1', null, '2020-01-06 14:31:39');
INSERT INTO `sys_logs` VALUES ('50', '1', '保存角色', '1', null, '2020-01-06 14:32:32');
INSERT INTO `sys_logs` VALUES ('51', '1', 'web端登陆', '1', null, '2020-01-06 14:33:08');
INSERT INTO `sys_logs` VALUES ('52', '1', 'web端登陆', '1', null, '2020-01-06 14:38:21');
INSERT INTO `sys_logs` VALUES ('53', '1', 'web端登陆', '1', null, '2020-01-06 14:41:07');
INSERT INTO `sys_logs` VALUES ('54', '1', 'web端登陆', '1', null, '2020-01-06 14:47:11');
INSERT INTO `sys_logs` VALUES ('55', '1', 'web端登陆', '1', null, '2020-01-06 14:52:08');
INSERT INTO `sys_logs` VALUES ('56', '1', 'web端登陆', '1', null, '2020-01-06 14:54:51');
INSERT INTO `sys_logs` VALUES ('57', '1', 'web端登陆', '1', null, '2020-01-06 14:55:48');
INSERT INTO `sys_logs` VALUES ('58', '1', 'web端登陆', '1', null, '2020-01-06 14:58:50');
INSERT INTO `sys_logs` VALUES ('59', '1', 'web端登陆', '1', null, '2020-01-06 17:10:41');
INSERT INTO `sys_logs` VALUES ('60', '1', 'web端登陆', '1', null, '2020-01-06 17:13:56');
INSERT INTO `sys_logs` VALUES ('61', '1', 'web端登陆', '1', null, '2020-01-06 17:20:01');
INSERT INTO `sys_logs` VALUES ('62', '1', 'web端登陆', '1', null, '2020-01-06 17:22:09');
INSERT INTO `sys_logs` VALUES ('63', '1', 'web端登陆', '1', null, '2020-01-06 17:23:21');
INSERT INTO `sys_logs` VALUES ('64', '1', 'web端登陆', '1', null, '2020-01-06 17:25:09');
INSERT INTO `sys_logs` VALUES ('65', '1', 'web端登陆', '1', null, '2020-01-06 17:26:37');
INSERT INTO `sys_logs` VALUES ('66', '1', 'web端登陆', '1', null, '2020-01-06 17:27:59');
INSERT INTO `sys_logs` VALUES ('67', '1', 'web端登陆', '1', null, '2020-01-06 17:30:06');
INSERT INTO `sys_logs` VALUES ('68', '1', 'web端登陆', '1', null, '2020-01-06 17:44:43');
INSERT INTO `sys_logs` VALUES ('69', '1', 'web端登陆', '1', null, '2020-01-07 09:53:01');
INSERT INTO `sys_logs` VALUES ('70', '1', 'web端登陆', '1', null, '2020-01-07 10:16:58');
INSERT INTO `sys_logs` VALUES ('71', '1', 'web端登陆', '1', null, '2020-01-09 14:36:33');
INSERT INTO `sys_logs` VALUES ('72', '1', '保存菜单', '1', null, '2020-01-09 14:40:47');
INSERT INTO `sys_logs` VALUES ('73', '1', '修改菜单', '1', null, '2020-01-09 14:41:50');
INSERT INTO `sys_logs` VALUES ('74', '1', '保存菜单', '1', null, '2020-01-09 14:42:35');
INSERT INTO `sys_logs` VALUES ('75', '1', '保存菜单', '1', null, '2020-01-09 14:43:08');
INSERT INTO `sys_logs` VALUES ('76', '1', '保存菜单', '1', null, '2020-01-09 14:43:37');
INSERT INTO `sys_logs` VALUES ('77', '1', '保存角色', '1', null, '2020-01-09 14:43:53');
INSERT INTO `sys_logs` VALUES ('78', '1', 'web端登陆', '1', null, '2020-01-09 14:44:41');
INSERT INTO `sys_logs` VALUES ('79', '1', 'web端登陆', '1', null, '2020-01-09 14:53:58');
INSERT INTO `sys_logs` VALUES ('80', '1', 'web端登陆', '1', null, '2020-01-09 14:57:19');
INSERT INTO `sys_logs` VALUES ('81', '1', 'web端登陆', '1', null, '2020-01-09 15:23:18');
INSERT INTO `sys_logs` VALUES ('82', '1', 'web端登陆', '1', null, '2020-01-09 15:27:44');
INSERT INTO `sys_logs` VALUES ('83', '1', 'web端登陆', '1', null, '2020-01-09 16:04:08');
INSERT INTO `sys_logs` VALUES ('84', '1', 'web端登陆', '1', null, '2020-01-10 16:14:16');
INSERT INTO `sys_logs` VALUES ('85', '1', '保存菜单', '1', null, '2020-01-10 16:15:39');
INSERT INTO `sys_logs` VALUES ('86', '1', '保存菜单', '1', null, '2020-01-10 16:16:19');
INSERT INTO `sys_logs` VALUES ('87', '1', '保存菜单', '1', null, '2020-01-10 16:17:14');
INSERT INTO `sys_logs` VALUES ('88', '1', '保存菜单', '1', null, '2020-01-10 16:18:02');
INSERT INTO `sys_logs` VALUES ('89', '1', '保存角色', '1', null, '2020-01-10 16:18:36');
INSERT INTO `sys_logs` VALUES ('90', '1', 'web端登陆', '1', null, '2020-01-10 16:19:27');
INSERT INTO `sys_logs` VALUES ('91', '1', 'web端登陆', '1', null, '2020-01-11 15:02:37');
INSERT INTO `sys_logs` VALUES ('92', '1', '修改菜单', '1', null, '2020-01-11 15:03:46');
INSERT INTO `sys_logs` VALUES ('93', '1', '保存菜单', '1', null, '2020-01-11 15:05:42');
INSERT INTO `sys_logs` VALUES ('94', '1', '保存菜单', '1', null, '2020-01-11 15:06:18');
INSERT INTO `sys_logs` VALUES ('95', '1', '修改菜单', '1', null, '2020-01-11 15:06:30');
INSERT INTO `sys_logs` VALUES ('96', '1', '保存菜单', '1', null, '2020-01-11 15:07:13');
INSERT INTO `sys_logs` VALUES ('97', '1', '保存菜单', '1', null, '2020-01-11 15:07:48');
INSERT INTO `sys_logs` VALUES ('98', '1', '保存角色', '1', null, '2020-01-11 15:08:05');
INSERT INTO `sys_logs` VALUES ('99', '1', 'web端登陆', '1', null, '2020-01-11 15:09:48');
INSERT INTO `sys_logs` VALUES ('100', '1', '修改菜单', '1', null, '2020-01-11 15:11:05');
INSERT INTO `sys_logs` VALUES ('101', '1', '保存角色', '1', null, '2020-01-11 15:13:42');
INSERT INTO `sys_logs` VALUES ('102', '1', 'web端登陆', '1', null, '2020-01-11 15:16:32');
INSERT INTO `sys_logs` VALUES ('103', '1', 'web端登陆', '1', null, '2020-01-11 15:35:54');
INSERT INTO `sys_logs` VALUES ('104', '1', 'web端登陆', '1', null, '2020-01-11 15:39:01');
INSERT INTO `sys_logs` VALUES ('105', '1', 'web端登陆', '1', null, '2020-01-11 15:41:43');
INSERT INTO `sys_logs` VALUES ('106', '1', 'web端登陆', '1', null, '2020-01-11 15:43:42');
INSERT INTO `sys_logs` VALUES ('107', '1', 'web端登陆', '1', null, '2020-01-11 19:58:41');
INSERT INTO `sys_logs` VALUES ('108', '1', '保存菜单', '1', null, '2020-01-11 19:59:49');
INSERT INTO `sys_logs` VALUES ('109', '1', '保存菜单', '1', null, '2020-01-11 20:00:42');
INSERT INTO `sys_logs` VALUES ('110', '1', '保存菜单', '1', null, '2020-01-11 20:02:39');
INSERT INTO `sys_logs` VALUES ('111', '1', '保存菜单', '1', null, '2020-01-11 20:03:18');
INSERT INTO `sys_logs` VALUES ('112', '1', '保存角色', '1', null, '2020-01-11 20:03:39');
INSERT INTO `sys_logs` VALUES ('113', '1', '保存角色', '1', null, '2020-01-11 20:04:01');
INSERT INTO `sys_logs` VALUES ('114', '1', 'web端登陆', '1', null, '2020-01-11 20:05:32');
INSERT INTO `sys_logs` VALUES ('115', '1', '修改菜单', '1', null, '2020-01-11 20:15:58');
INSERT INTO `sys_logs` VALUES ('116', '1', 'web端登陆', '1', null, '2020-01-12 16:18:19');
INSERT INTO `sys_logs` VALUES ('117', '1', '保存菜单', '1', null, '2020-01-12 16:19:13');
INSERT INTO `sys_logs` VALUES ('118', '1', '保存菜单', '1', null, '2020-01-12 16:19:42');
INSERT INTO `sys_logs` VALUES ('119', '1', '保存菜单', '1', null, '2020-01-12 16:20:10');
INSERT INTO `sys_logs` VALUES ('120', '1', '保存菜单', '1', null, '2020-01-12 16:20:37');
INSERT INTO `sys_logs` VALUES ('121', '1', '保存角色', '1', null, '2020-01-12 16:20:46');
INSERT INTO `sys_logs` VALUES ('122', '1', 'web端登陆', '1', null, '2020-01-12 16:21:38');
INSERT INTO `sys_logs` VALUES ('123', '1', 'web端登陆', '1', null, '2020-01-12 16:34:05');
INSERT INTO `sys_logs` VALUES ('124', '1', 'web端登陆', '1', null, '2020-01-12 16:40:03');
INSERT INTO `sys_logs` VALUES ('125', '1', '文件上传', '1', null, '2020-01-12 16:41:57');
INSERT INTO `sys_logs` VALUES ('126', '1', '文件上传', '1', null, '2020-01-12 16:42:47');
INSERT INTO `sys_logs` VALUES ('127', '1', 'web端登陆', '1', null, '2020-01-13 11:09:54');
INSERT INTO `sys_logs` VALUES ('128', '1', 'web端登陆', '1', null, '2020-01-13 16:06:40');
INSERT INTO `sys_logs` VALUES ('129', '1', 'web端登陆', '1', null, '2020-01-13 16:48:06');
INSERT INTO `sys_logs` VALUES ('130', '1', 'web端登陆', '1', null, '2020-01-16 16:58:15');
INSERT INTO `sys_logs` VALUES ('131', '1', 'web端登陆', '1', null, '2020-01-16 18:50:07');
INSERT INTO `sys_logs` VALUES ('132', '1', 'web端登陆', '1', null, '2020-01-17 16:16:25');
INSERT INTO `sys_logs` VALUES ('133', '1', 'web端登陆', '1', null, '2020-01-21 11:01:10');
INSERT INTO `sys_logs` VALUES ('134', '1', '修改菜单', '1', null, '2020-01-21 11:02:54');
INSERT INTO `sys_logs` VALUES ('135', '1', '保存菜单', '1', null, '2020-01-21 11:03:51');
INSERT INTO `sys_logs` VALUES ('136', '1', '修改菜单', '1', null, '2020-01-21 11:04:26');
INSERT INTO `sys_logs` VALUES ('137', '1', '保存菜单', '1', null, '2020-01-21 11:05:04');
INSERT INTO `sys_logs` VALUES ('138', '1', '保存菜单', '1', null, '2020-01-21 11:05:52');
INSERT INTO `sys_logs` VALUES ('139', '1', '保存菜单', '1', null, '2020-01-21 11:06:41');
INSERT INTO `sys_logs` VALUES ('140', '1', '保存角色', '1', null, '2020-01-21 11:07:14');
INSERT INTO `sys_logs` VALUES ('141', '1', 'web端登陆', '1', null, '2020-01-21 11:09:35');
INSERT INTO `sys_logs` VALUES ('142', '1', 'web端登陆', '1', null, '2020-01-21 14:35:21');
INSERT INTO `sys_logs` VALUES ('143', '1', 'web端登陆', '1', null, '2020-02-01 14:59:00');
INSERT INTO `sys_logs` VALUES ('144', '1', '退出', '1', null, '2020-02-01 14:59:08');
INSERT INTO `sys_logs` VALUES ('145', '1', 'web端登陆', '1', null, '2020-02-01 22:05:22');
INSERT INTO `sys_logs` VALUES ('146', '1', '保存角色', '1', null, '2020-02-01 22:11:56');
INSERT INTO `sys_logs` VALUES ('147', '1', 'web端登陆', '1', null, '2020-02-01 22:14:39');
INSERT INTO `sys_logs` VALUES ('148', '1', '保存角色', '1', null, '2020-02-01 22:16:08');
INSERT INTO `sys_logs` VALUES ('149', '1', '保存角色', '1', null, '2020-02-01 22:17:36');
INSERT INTO `sys_logs` VALUES ('150', '1', '保存角色', '1', null, '2020-02-01 22:18:57');
INSERT INTO `sys_logs` VALUES ('151', '1', 'web端登陆', '1', null, '2020-02-03 10:21:35');
INSERT INTO `sys_logs` VALUES ('152', '1', 'web端登陆', '1', null, '2020-02-03 10:49:02');
INSERT INTO `sys_logs` VALUES ('153', '1', 'web端登陆', '1', null, '2020-02-03 14:09:17');
INSERT INTO `sys_logs` VALUES ('154', '1', 'web端登陆', '1', null, '2020-02-03 15:08:47');
INSERT INTO `sys_logs` VALUES ('155', '1', 'web端登陆', '1', null, '2020-02-03 16:21:59');
INSERT INTO `sys_logs` VALUES ('156', '1', 'web端登陆', '1', null, '2020-02-05 14:26:15');
INSERT INTO `sys_logs` VALUES ('157', '1', 'web端登陆', '1', null, '2020-02-09 15:47:49');
INSERT INTO `sys_logs` VALUES ('158', '1', 'web端登陆', '1', null, '2020-02-09 17:07:13');
INSERT INTO `sys_logs` VALUES ('159', '1', '删除公告', '1', null, '2020-02-09 17:23:57');
INSERT INTO `sys_logs` VALUES ('160', '1', '保存公告', '1', null, '2020-02-09 17:26:23');
INSERT INTO `sys_logs` VALUES ('161', '1', '保存公告', '1', null, '2020-02-09 17:27:28');
INSERT INTO `sys_logs` VALUES ('162', '1', '修改公告', '1', null, '2020-02-09 17:27:37');
INSERT INTO `sys_logs` VALUES ('163', '1', 'web端登陆', '1', null, '2020-02-11 14:35:57');
INSERT INTO `sys_logs` VALUES ('164', '1', 'web端登陆', '1', null, '2020-02-11 22:06:24');
INSERT INTO `sys_logs` VALUES ('165', '1', 'web端登陆', '1', null, '2020-02-11 23:39:59');
INSERT INTO `sys_logs` VALUES ('166', '1', 'web端登陆', '1', null, '2020-02-12 00:19:42');
INSERT INTO `sys_logs` VALUES ('167', '1', 'web端登陆', '1', null, '2020-02-12 00:49:33');
INSERT INTO `sys_logs` VALUES ('168', '1', 'web端登陆', '1', null, '2020-02-12 15:20:40');
INSERT INTO `sys_logs` VALUES ('169', '1', 'web端登陆', '1', null, '2020-02-12 17:11:44');
INSERT INTO `sys_logs` VALUES ('170', '1', 'web端登陆', '1', null, '2020-02-13 15:04:05');
INSERT INTO `sys_logs` VALUES ('171', '1', 'web端登陆', '1', null, '2020-02-13 17:08:04');
INSERT INTO `sys_logs` VALUES ('172', '1', 'web端登陆', '1', null, '2020-02-14 14:53:31');
INSERT INTO `sys_logs` VALUES ('173', '1', 'web端登陆', '1', null, '2020-02-15 17:24:44');
INSERT INTO `sys_logs` VALUES ('174', '1', 'web端登陆', '1', null, '2020-02-16 15:36:36');
INSERT INTO `sys_logs` VALUES ('175', '1', 'web端登陆', '1', null, '2020-02-16 17:09:36');
INSERT INTO `sys_logs` VALUES ('176', '1', 'web端登陆', '1', null, '2020-02-16 17:10:59');
INSERT INTO `sys_logs` VALUES ('177', '1', 'web端登陆', '1', null, '2020-02-16 17:12:27');
INSERT INTO `sys_logs` VALUES ('178', '1', 'web端登陆', '1', null, '2020-02-23 16:09:33');
INSERT INTO `sys_logs` VALUES ('179', '1', '保存菜单', '1', null, '2020-02-23 16:10:00');
INSERT INTO `sys_logs` VALUES ('180', '1', '删除菜单', '1', null, '2020-02-23 16:10:06');
INSERT INTO `sys_logs` VALUES ('181', '1', '退出', '1', null, '2020-02-23 16:15:05');
INSERT INTO `sys_logs` VALUES ('182', '1', 'web端登陆', '1', null, '2020-02-23 16:15:19');
INSERT INTO `sys_logs` VALUES ('183', '1', '保存角色', '1', null, '2020-02-23 16:22:44');
INSERT INTO `sys_logs` VALUES ('184', '1', '删除角色', '1', null, '2020-02-23 16:22:49');
INSERT INTO `sys_logs` VALUES ('185', '1', '保存用户', '0', 'user已存在', '2020-02-23 17:52:03');
INSERT INTO `sys_logs` VALUES ('186', '1', '保存用户', '0', 'user已存在', '2020-02-23 17:53:32');
INSERT INTO `sys_logs` VALUES ('187', '1', '保存角色', '1', null, '2020-02-23 18:01:47');
INSERT INTO `sys_logs` VALUES ('188', '1', '修改用户', '1', null, '2020-02-23 18:21:16');
INSERT INTO `sys_logs` VALUES ('189', '1', '退出', '1', null, '2020-02-23 18:21:19');
INSERT INTO `sys_logs` VALUES ('190', '1', 'web端登陆', '1', null, '2020-02-23 18:21:46');
INSERT INTO `sys_logs` VALUES ('191', '1', '修改用户', '1', null, '2020-02-23 18:21:55');
INSERT INTO `sys_logs` VALUES ('192', '1', '退出', '1', null, '2020-02-23 18:21:58');
INSERT INTO `sys_logs` VALUES ('193', '1', 'web端登陆', '1', null, '2020-02-23 18:22:15');
INSERT INTO `sys_logs` VALUES ('194', '1', '退出', '1', null, '2020-02-23 18:30:28');
INSERT INTO `sys_logs` VALUES ('195', '1', 'web端登陆', '1', null, '2020-02-23 18:31:21');
INSERT INTO `sys_logs` VALUES ('196', '1', '修改用户', '1', null, '2020-02-23 18:31:36');
INSERT INTO `sys_logs` VALUES ('197', '1', '退出', '1', null, '2020-02-23 18:31:39');
INSERT INTO `sys_logs` VALUES ('198', '2', 'web端登陆', '1', null, '2020-02-23 18:31:43');
INSERT INTO `sys_logs` VALUES ('199', '2', '退出', '1', null, '2020-02-23 18:32:29');
INSERT INTO `sys_logs` VALUES ('200', '1', 'web端登陆', '1', null, '2020-02-23 18:32:33');
INSERT INTO `sys_logs` VALUES ('201', '1', 'web端登陆', '1', null, '2020-03-01 12:57:30');
INSERT INTO `sys_logs` VALUES ('202', '1', 'web端登陆', '1', null, '2020-03-01 14:18:29');
INSERT INTO `sys_logs` VALUES ('203', '1', 'web端登陆', '1', null, '2020-03-22 17:13:33');
INSERT INTO `sys_logs` VALUES ('204', '1', 'web端登陆', '1', null, '2020-04-06 17:36:21');
INSERT INTO `sys_logs` VALUES ('205', '1', 'web端登陆', '1', null, '2020-04-06 18:11:11');
INSERT INTO `sys_logs` VALUES ('206', '1', 'web端登陆', '1', null, '2020-04-06 21:12:02');
INSERT INTO `sys_logs` VALUES ('207', '1', 'web端登陆', '1', null, '2020-04-07 20:18:54');
INSERT INTO `sys_logs` VALUES ('208', '1', 'web端登陆', '1', null, '2020-04-07 22:13:55');
INSERT INTO `sys_logs` VALUES ('209', '1', 'web端登陆', '1', null, '2020-04-11 13:55:57');
INSERT INTO `sys_logs` VALUES ('210', '1', 'web端登陆', '1', null, '2020-04-11 15:49:46');
INSERT INTO `sys_logs` VALUES ('211', '1', 'web端登陆', '1', null, '2020-05-04 18:33:07');
INSERT INTO `sys_logs` VALUES ('212', '1', '修改用户', '1', null, '2020-05-04 18:46:00');
INSERT INTO `sys_logs` VALUES ('213', '1', 'web端登陆', '1', null, '2020-05-04 19:02:51');

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css` varchar(30) DEFAULT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', '用户管理', 'fa-users', 'pages/user/userList.html', '1', '', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', '用户查询', 'fa-user', 'pages/user/userList.html', '1', '', '2');
INSERT INTO `sys_permission` VALUES ('3', '2', '查询', '', '', '2', 'sys:user:query', '100');
INSERT INTO `sys_permission` VALUES ('4', '2', '新增', '', '', '2', 'sys:user:add', '100');
INSERT INTO `sys_permission` VALUES ('6', '0', '修改密码', 'fa-pencil-square-o', 'pages/user/changePassword.html', '1', 'sys:user:password', '4');
INSERT INTO `sys_permission` VALUES ('7', '0', '系统设置', 'fa-gears', '', '1', '', '5');
INSERT INTO `sys_permission` VALUES ('8', '7', '菜单', 'fa-cog', 'pages/menu/menuList.html', '1', '', '6');
INSERT INTO `sys_permission` VALUES ('9', '8', '查询', '', '', '2', 'sys:menu:query', '100');
INSERT INTO `sys_permission` VALUES ('10', '8', '新增', '', '', '2', 'sys:menu:add', '100');
INSERT INTO `sys_permission` VALUES ('11', '8', '删除', '', '', '2', 'sys:menu:del', '100');
INSERT INTO `sys_permission` VALUES ('12', '7', '角色', 'fa-user-secret', 'pages/role/roleList.html', '1', '', '7');
INSERT INTO `sys_permission` VALUES ('13', '12', '查询', '', '', '2', 'sys:role:query', '100');
INSERT INTO `sys_permission` VALUES ('14', '12', '新增', '', '', '2', 'sys:role:add', '100');
INSERT INTO `sys_permission` VALUES ('15', '12', '删除', '', '', '2', 'sys:role:del', '100');
INSERT INTO `sys_permission` VALUES ('16', '0', '文件管理', 'fa-folder-open', 'pages/file/fileList.html', '1', '', '8');
INSERT INTO `sys_permission` VALUES ('17', '16', '查询', '', '', '2', 'sys:file:query', '100');
INSERT INTO `sys_permission` VALUES ('18', '16', '删除', '', '', '2', 'sys:file:del', '100');
INSERT INTO `sys_permission` VALUES ('22', '0', '公告管理', 'fa-book', 'pages/notice/noticeList.html', '1', '', '12');
INSERT INTO `sys_permission` VALUES ('23', '22', '查询', '', '', '2', 'notice:query', '100');
INSERT INTO `sys_permission` VALUES ('24', '22', '添加', '', '', '2', 'notice:add', '100');
INSERT INTO `sys_permission` VALUES ('25', '22', '删除', '', '', '2', 'notice:del', '100');
INSERT INTO `sys_permission` VALUES ('26', '0', '日志查询', 'fa-reorder', 'pages/log/logList.html', '1', 'sys:log:query', '13');
INSERT INTO `sys_permission` VALUES ('37', '0', '字典管理', 'fa-reddit', 'pages/dict/dictList.html', '1', '', '17');
INSERT INTO `sys_permission` VALUES ('38', '37', '查询', '', '', '2', 'dict:query', '100');
INSERT INTO `sys_permission` VALUES ('39', '37', '新增', '', '', '2', 'dict:add', '100');
INSERT INTO `sys_permission` VALUES ('40', '37', '删除', '', '', '2', 'dict:del', '100');
INSERT INTO `sys_permission` VALUES ('41', '0', '房屋管理', 'fa-bank', 'pages/house/houseList.html', '1', '', '20');
INSERT INTO `sys_permission` VALUES ('42', '41', '新增', '', '', '2', 'house:add', '100');
INSERT INTO `sys_permission` VALUES ('43', '41', '查询', '', '', '2', 'house:query', '100');
INSERT INTO `sys_permission` VALUES ('44', '41', '删除', '', '', '2', 'house:del', '100');
INSERT INTO `sys_permission` VALUES ('45', '0', '业主管理', 'fa-child', 'pages/owner/ownerList.html', '1', '', '21');
INSERT INTO `sys_permission` VALUES ('46', '45', '新增', '', '', '2', 'owner:add', '100');
INSERT INTO `sys_permission` VALUES ('47', '45', '查询', '', '', '2', 'owner:query', '100');
INSERT INTO `sys_permission` VALUES ('48', '45', '删除', '', '', '2', 'owner:del', '100');
INSERT INTO `sys_permission` VALUES ('49', '0', '访客管理', 'fa-paw', 'pages/visitor/visitorList.html', '1', '', '22');
INSERT INTO `sys_permission` VALUES ('50', '49', '新增', '', '', '2', 'visitor:add', '100');
INSERT INTO `sys_permission` VALUES ('51', '49', '查询', '', '', '2', 'visitor:query', '100');
INSERT INTO `sys_permission` VALUES ('52', '49', '删除', '', '', '2', 'visitor:del', '100');
INSERT INTO `sys_permission` VALUES ('53', '0', '报修管理', 'fa-wrench', 'pages/repair/repairList.html', '1', '', '23');
INSERT INTO `sys_permission` VALUES ('54', '53', '新增', '', '', '2', 'repair:add', '100');
INSERT INTO `sys_permission` VALUES ('55', '53', '查询', '', '', '2', 'repair:query', '100');
INSERT INTO `sys_permission` VALUES ('56', '53', '删除', '', '', '2', 'repair:del', '100');
INSERT INTO `sys_permission` VALUES ('57', '0', '车位管理', 'fa-flag', 'pages/park/parkList.html', '1', '', '24');
INSERT INTO `sys_permission` VALUES ('58', '57', '新增', '', '', '2', 'park:add', '100');
INSERT INTO `sys_permission` VALUES ('59', '57', '查询', '', '', '2', 'park:query', '100');
INSERT INTO `sys_permission` VALUES ('60', '57', '删除', '', '', '2', 'park:del', '100');
INSERT INTO `sys_permission` VALUES ('61', '0', '车辆管理', 'fa-car', 'pages/car/carList.html', '1', '', '25');
INSERT INTO `sys_permission` VALUES ('62', '61', '新增', '', '', '2', 'car:add', '100');
INSERT INTO `sys_permission` VALUES ('63', '61', '查询', '', '', '2', 'car:query', '100');
INSERT INTO `sys_permission` VALUES ('64', '61', '删除', '', '', '2', 'car:del', '100');
INSERT INTO `sys_permission` VALUES ('65', '0', '楼栋管理', 'fa-building', 'pages/build/buildList.html', '1', '', '26');
INSERT INTO `sys_permission` VALUES ('66', '65', '新增', '', '', '2', 'build:add', '100');
INSERT INTO `sys_permission` VALUES ('67', '65', '查询', '', '', '2', 'build:query', '100');
INSERT INTO `sys_permission` VALUES ('68', '65', '删除', '', '', '2', 'build:del', '100');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '系统管理员', '2017-05-01 13:25:39', '2020-02-01 22:11:56');
INSERT INTO `sys_role` VALUES ('2', 'USER', '业主管理和访客管理员', '2017-08-01 21:47:31', '2020-02-23 18:01:47');
INSERT INTO `sys_role` VALUES ('3', 'CAR&PARK', '车辆和车位管理员', '2020-02-01 22:17:36', '2020-02-01 22:17:36');
INSERT INTO `sys_role` VALUES ('4', 'BUILD&HOUSE', '楼栋和房屋管理员', '2020-02-01 22:18:57', '2020-02-01 22:18:57');

-- ----------------------------
-- Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`permissionId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '2');
INSERT INTO `sys_role_permission` VALUES ('1', '3');
INSERT INTO `sys_role_permission` VALUES ('1', '4');
INSERT INTO `sys_role_permission` VALUES ('1', '6');
INSERT INTO `sys_role_permission` VALUES ('2', '6');
INSERT INTO `sys_role_permission` VALUES ('3', '6');
INSERT INTO `sys_role_permission` VALUES ('4', '6');
INSERT INTO `sys_role_permission` VALUES ('1', '7');
INSERT INTO `sys_role_permission` VALUES ('1', '8');
INSERT INTO `sys_role_permission` VALUES ('1', '9');
INSERT INTO `sys_role_permission` VALUES ('1', '10');
INSERT INTO `sys_role_permission` VALUES ('1', '11');
INSERT INTO `sys_role_permission` VALUES ('1', '12');
INSERT INTO `sys_role_permission` VALUES ('1', '13');
INSERT INTO `sys_role_permission` VALUES ('1', '14');
INSERT INTO `sys_role_permission` VALUES ('1', '15');
INSERT INTO `sys_role_permission` VALUES ('1', '16');
INSERT INTO `sys_role_permission` VALUES ('3', '16');
INSERT INTO `sys_role_permission` VALUES ('1', '17');
INSERT INTO `sys_role_permission` VALUES ('3', '17');
INSERT INTO `sys_role_permission` VALUES ('1', '18');
INSERT INTO `sys_role_permission` VALUES ('3', '18');
INSERT INTO `sys_role_permission` VALUES ('1', '22');
INSERT INTO `sys_role_permission` VALUES ('3', '22');
INSERT INTO `sys_role_permission` VALUES ('4', '22');
INSERT INTO `sys_role_permission` VALUES ('1', '23');
INSERT INTO `sys_role_permission` VALUES ('3', '23');
INSERT INTO `sys_role_permission` VALUES ('4', '23');
INSERT INTO `sys_role_permission` VALUES ('1', '24');
INSERT INTO `sys_role_permission` VALUES ('1', '25');
INSERT INTO `sys_role_permission` VALUES ('1', '26');
INSERT INTO `sys_role_permission` VALUES ('1', '41');
INSERT INTO `sys_role_permission` VALUES ('4', '41');
INSERT INTO `sys_role_permission` VALUES ('1', '42');
INSERT INTO `sys_role_permission` VALUES ('4', '42');
INSERT INTO `sys_role_permission` VALUES ('1', '43');
INSERT INTO `sys_role_permission` VALUES ('4', '43');
INSERT INTO `sys_role_permission` VALUES ('1', '44');
INSERT INTO `sys_role_permission` VALUES ('4', '44');
INSERT INTO `sys_role_permission` VALUES ('1', '45');
INSERT INTO `sys_role_permission` VALUES ('2', '45');
INSERT INTO `sys_role_permission` VALUES ('1', '46');
INSERT INTO `sys_role_permission` VALUES ('2', '46');
INSERT INTO `sys_role_permission` VALUES ('1', '47');
INSERT INTO `sys_role_permission` VALUES ('2', '47');
INSERT INTO `sys_role_permission` VALUES ('1', '48');
INSERT INTO `sys_role_permission` VALUES ('2', '48');
INSERT INTO `sys_role_permission` VALUES ('1', '49');
INSERT INTO `sys_role_permission` VALUES ('2', '49');
INSERT INTO `sys_role_permission` VALUES ('1', '50');
INSERT INTO `sys_role_permission` VALUES ('2', '50');
INSERT INTO `sys_role_permission` VALUES ('1', '51');
INSERT INTO `sys_role_permission` VALUES ('2', '51');
INSERT INTO `sys_role_permission` VALUES ('1', '52');
INSERT INTO `sys_role_permission` VALUES ('2', '52');
INSERT INTO `sys_role_permission` VALUES ('1', '53');
INSERT INTO `sys_role_permission` VALUES ('1', '54');
INSERT INTO `sys_role_permission` VALUES ('1', '55');
INSERT INTO `sys_role_permission` VALUES ('1', '56');
INSERT INTO `sys_role_permission` VALUES ('1', '57');
INSERT INTO `sys_role_permission` VALUES ('3', '57');
INSERT INTO `sys_role_permission` VALUES ('1', '58');
INSERT INTO `sys_role_permission` VALUES ('3', '58');
INSERT INTO `sys_role_permission` VALUES ('1', '59');
INSERT INTO `sys_role_permission` VALUES ('3', '59');
INSERT INTO `sys_role_permission` VALUES ('1', '60');
INSERT INTO `sys_role_permission` VALUES ('3', '60');
INSERT INTO `sys_role_permission` VALUES ('1', '61');
INSERT INTO `sys_role_permission` VALUES ('3', '61');
INSERT INTO `sys_role_permission` VALUES ('1', '62');
INSERT INTO `sys_role_permission` VALUES ('3', '62');
INSERT INTO `sys_role_permission` VALUES ('1', '63');
INSERT INTO `sys_role_permission` VALUES ('3', '63');
INSERT INTO `sys_role_permission` VALUES ('1', '64');
INSERT INTO `sys_role_permission` VALUES ('3', '64');
INSERT INTO `sys_role_permission` VALUES ('1', '65');
INSERT INTO `sys_role_permission` VALUES ('4', '65');
INSERT INTO `sys_role_permission` VALUES ('1', '66');
INSERT INTO `sys_role_permission` VALUES ('4', '66');
INSERT INTO `sys_role_permission` VALUES ('1', '67');
INSERT INTO `sys_role_permission` VALUES ('4', '67');
INSERT INTO `sys_role_permission` VALUES ('1', '68');
INSERT INTO `sys_role_permission` VALUES ('4', '68');

-- ----------------------------
-- Table structure for `sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('1', '1');
INSERT INTO `sys_role_user` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `headImgUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '1015ed3b5f1345911198c995f9ad097e', '87e03afa1f0122531f729c9a7453f475', '大总管', null, '18900000009', '', '18990009@qq.com', '1998-07-01', '0', '1', '2017-04-10 15:21:38', '2020-05-04 18:46:00');
INSERT INTO `sys_user` VALUES ('2', 'user', '72c2e62dba72e5f178542313803f33d1', '143292269df8c63e2da1a9ba2aeff43c', '用户', null, '18900000002', '', '18999999@qq.com', '2010-06-08', '1', '1', '2017-08-01 21:47:18', '2020-02-23 18:31:36');

-- ----------------------------
-- Table structure for `tb_build`
-- ----------------------------
DROP TABLE IF EXISTS `tb_build`;
CREATE TABLE `tb_build` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `build_name` varchar(16) NOT NULL,
  `build_area` varchar(16) DEFAULT NULL,
  `build_floor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tb_build
-- ----------------------------
INSERT INTO `tb_build` VALUES ('16', '崇学明楼', '398', '20');
INSERT INTO `tb_build` VALUES ('17', '鸣凤楼', '399', '21');
INSERT INTO `tb_build` VALUES ('18', '揽月楼', '400', '22');
INSERT INTO `tb_build` VALUES ('19', '捞月楼', '401', '23');
INSERT INTO `tb_build` VALUES ('20', '齐云楼', '402', '24');
INSERT INTO `tb_build` VALUES ('21', '穆兴楼', '403', '25');
INSERT INTO `tb_build` VALUES ('22', '岳阳楼', '404', '26');
INSERT INTO `tb_build` VALUES ('23', '镇西楼', '405', '27');
INSERT INTO `tb_build` VALUES ('24', '富贵楼', '406', '28');
INSERT INTO `tb_build` VALUES ('25', '和谐楼', '407', '29');
INSERT INTO `tb_build` VALUES ('26', '敬业楼', '408', '30');
INSERT INTO `tb_build` VALUES ('27', '友善楼', '409', '31');
INSERT INTO `tb_build` VALUES ('28', '林汀苑', '410', '32');

-- ----------------------------
-- Table structure for `tb_car`
-- ----------------------------
DROP TABLE IF EXISTS `tb_car`;
CREATE TABLE `tb_car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车辆ID',
  `car_num` varchar(10) NOT NULL COMMENT '车牌号',
  `park_no` varchar(10) DEFAULT NULL COMMENT '所用车位号',
  `car_flag` int(1) DEFAULT NULL COMMENT '1：小区业主车辆 2：外来车辆',
  `car_type` varchar(10) DEFAULT NULL COMMENT '车辆型号品牌',
  `car_color` varchar(10) DEFAULT NULL COMMENT '车辆颜色',
  `car_owner` varchar(20) NOT NULL COMMENT '车主姓名',
  `car_owner_phone` varchar(11) DEFAULT NULL COMMENT '车主联系电话',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_car
-- ----------------------------
INSERT INTO `tb_car` VALUES ('4', '川A440QC', '23901', '1', '一汽大众', '白色', '赵依波', '15983298450');
INSERT INTO `tb_car` VALUES ('5', '川A5Q2A8', '23902', '1', '兰博基尼', '黑色', '周香巧', '18900908231');
INSERT INTO `tb_car` VALUES ('6', '川AK5678', '23903', '2', '宝马', '红色', '肖友全', '13709083350');

-- ----------------------------
-- Table structure for `tb_fee`
-- ----------------------------
DROP TABLE IF EXISTS `tb_fee`;
CREATE TABLE `tb_fee` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '缴费项目ID',
  `fee_name` varchar(20) DEFAULT NULL COMMENT '缴费项目名称',
  `fee_norm` varchar(128) DEFAULT NULL COMMENT '收费标准',
  PRIMARY KEY (`fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_fee
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_house`
-- ----------------------------
DROP TABLE IF EXISTS `tb_house`;
CREATE TABLE `tb_house` (
  `house_no` varchar(20) NOT NULL COMMENT '房屋编号',
  `owner_id` int(11) DEFAULT NULL COMMENT '业主ID',
  `house_type` varchar(8) DEFAULT '空置' COMMENT '房屋类型 空置，在住',
  `house_area` varchar(16) DEFAULT NULL COMMENT '房屋面积',
  `build_name` varchar(16) NOT NULL COMMENT '楼栋名称',
  `build_id` int(11) DEFAULT NULL COMMENT '楼栋id',
  `owner_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`house_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_house
-- ----------------------------
INSERT INTO `tb_house` VALUES ('22805', '4', '在住', '90', '齐云楼', null, '赵依波');
INSERT INTO `tb_house` VALUES ('22890', '3', '在住', '91', '捞月楼', '19', '赵富民');
INSERT INTO `tb_house` VALUES ('22901', '2', '在住', '90', '鸣凤楼', null, '李艳');
INSERT INTO `tb_house` VALUES ('22903', '2', '在住', '78', '齐云楼', null, '李艳');
INSERT INTO `tb_house` VALUES ('22904', '2', '空置', '95', '穆兴楼', null, '李艳');
INSERT INTO `tb_house` VALUES ('22905', null, '空置', '90', '穆兴楼', null, null);
INSERT INTO `tb_house` VALUES ('22906', null, '空置', '90', '岳阳楼', null, null);
INSERT INTO `tb_house` VALUES ('23901', null, '空置', '80', '岳阳楼', null, null);
INSERT INTO `tb_house` VALUES ('23902', null, '空置', '81', '岳阳楼', null, null);
INSERT INTO `tb_house` VALUES ('23903', null, '空置', '82', '崇学明楼', null, null);

-- ----------------------------
-- Table structure for `tb_notice`
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_date` varchar(64) DEFAULT NULL COMMENT '公告时间',
  `notice_content` text COMMENT '公告详情',
  `notice_title` varchar(32) DEFAULT NULL COMMENT '公告标题',
  `notice_department` varchar(20) DEFAULT NULL COMMENT '发布部门',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_owner`
-- ----------------------------
DROP TABLE IF EXISTS `tb_owner`;
CREATE TABLE `tb_owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业主ID',
  `owner_name` varchar(16) NOT NULL COMMENT '业主姓名',
  `owner_sex` varchar(2) NOT NULL COMMENT '业主性别',
  `owner_phone` varchar(11) DEFAULT NULL COMMENT '业主联系电话',
  `owner_come_time` varchar(64) DEFAULT NULL COMMENT '入住时间',
  `owner_id_card` varchar(64) NOT NULL COMMENT '业主身份证号',
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_owner
-- ----------------------------
INSERT INTO `tb_owner` VALUES ('2', '李艳', '女', '18973838383', '20200109 15:22:39', '512010189812366844');
INSERT INTO `tb_owner` VALUES ('3', '赵富民', '男', '15883129719', '20200109 15:24:23', '520131189910233343');
INSERT INTO `tb_owner` VALUES ('4', '赵依波', '男', '13708054456', '2020-02-16 17:30:03', '511322199712210923');
INSERT INTO `tb_owner` VALUES ('5', '周香巧', '女', '18900908231', '2020-02-16 17:30:56', '512322198901233421');

-- ----------------------------
-- Table structure for `tb_park`
-- ----------------------------
DROP TABLE IF EXISTS `tb_park`;
CREATE TABLE `tb_park` (
  `park_no` varchar(10) NOT NULL COMMENT '车位编号ID',
  `owner_id` int(11) DEFAULT NULL COMMENT '所属业主',
  `expira_date` varchar(64) DEFAULT NULL COMMENT '车位有效期',
  `park_area` varchar(20) DEFAULT NULL COMMENT '车位面积',
  `park_type` int(1) DEFAULT NULL COMMENT '车位类型 1：业主车位  2：公用车位',
  `owner_name` varchar(20) DEFAULT NULL COMMENT '所属业主姓名',
  PRIMARY KEY (`park_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_park
-- ----------------------------
INSERT INTO `tb_park` VALUES ('1220', null, null, '2', '1', '李艳');
INSERT INTO `tb_park` VALUES ('1221', null, null, '4', '2', '李艳');
INSERT INTO `tb_park` VALUES ('23901', null, null, '2.5', '1', '赵依波');
INSERT INTO `tb_park` VALUES ('23902', null, null, '2.5', '1', '周香巧');
INSERT INTO `tb_park` VALUES ('23903', null, null, '2.5', '2', null);
INSERT INTO `tb_park` VALUES ('23904', null, null, '2.5', '1', '张涵易');
INSERT INTO `tb_park` VALUES ('23905', null, null, '2.5', '2', null);
INSERT INTO `tb_park` VALUES ('23906', null, null, '2.5', '1', '陈幻巧');
INSERT INTO `tb_park` VALUES ('23907', null, null, '2.5', '2', null);
INSERT INTO `tb_park` VALUES ('23908', null, null, '2.5', '1', '钟安寒');
INSERT INTO `tb_park` VALUES ('23909', null, null, '2.5', '1', '李白亦');
INSERT INTO `tb_park` VALUES ('23910', null, null, '2.5', '2', null);
INSERT INTO `tb_park` VALUES ('23911', null, null, '2.5', '1', '郑惜玉');
INSERT INTO `tb_park` VALUES ('23912', null, null, '2.5', '2', null);
INSERT INTO `tb_park` VALUES ('23913', null, null, '2.5', '1', '罗碧春');

-- ----------------------------
-- Table structure for `tb_pay`
-- ----------------------------
DROP TABLE IF EXISTS `tb_pay`;
CREATE TABLE `tb_pay` (
  `owner_pay_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '缴费单ID',
  `fee_item_id` int(11) DEFAULT NULL COMMENT '缴费项目ID',
  `owner_id` int(11) DEFAULT NULL COMMENT '业主ID',
  `pay_time` varchar(64) DEFAULT NULL COMMENT '缴费时间',
  `pay_money` decimal(8,0) DEFAULT NULL COMMENT '应缴金额',
  `pay_receive` decimal(8,0) DEFAULT NULL COMMENT '实缴金额',
  `pay_state` varchar(4) DEFAULT NULL COMMENT '缴费状态 已交，未交',
  PRIMARY KEY (`owner_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pay
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_repair`
-- ----------------------------
DROP TABLE IF EXISTS `tb_repair`;
CREATE TABLE `tb_repair` (
  `repair_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '保修ID',
  `repair_time` varchar(64) DEFAULT NULL COMMENT '报修时间',
  `repair_reson` varchar(64) NOT NULL COMMENT '保修事项',
  `repair_state` int(1) NOT NULL COMMENT '维修状态 1:已完成 ，0：未完成',
  `finish_time` varchar(64) DEFAULT NULL COMMENT '完工时间',
  `repair_people_name` varchar(20) NOT NULL COMMENT '报修人姓名',
  `house_no` varchar(10) NOT NULL COMMENT '房间号',
  `phone_num` varchar(11) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`repair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_repair
-- ----------------------------
INSERT INTO `tb_repair` VALUES ('2', '2020-01-11 15:43:54', '马桶坏了', '0', null, '邱一成', '2401', '13547454191');
INSERT INTO `tb_repair` VALUES ('3', '2020-01-11 15:44:56', '下水道被堵', '1', '2020-02-12 17:50:18', '邱义成', '22901', '13547454190');

-- ----------------------------
-- Table structure for `tb_visitor`
-- ----------------------------
DROP TABLE IF EXISTS `tb_visitor`;
CREATE TABLE `tb_visitor` (
  `visitor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '访客ID',
  `visitor_name` varchar(16) NOT NULL COMMENT '访客姓名',
  `visitor_sex` varchar(2) NOT NULL COMMENT '访客性别',
  `visitor_phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `visitor_card_no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `visitor_come_time` varchar(64) DEFAULT NULL COMMENT '来访时间',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_visitor
-- ----------------------------
INSERT INTO `tb_visitor` VALUES ('3', '叶青梅', '女', '13598999999', '521123199809012233', '2020-01-10 16:22:40');
INSERT INTO `tb_visitor` VALUES ('5', '赵全', '男', '18902030450', '510321189810128899', '2020-02-12 17:13:58');
INSERT INTO `tb_visitor` VALUES ('6', '张聪', '男', '15983164346', '511210196702142245', '2020-02-12 17:15:47');

-- ----------------------------
-- Table structure for `t_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `k` varchar(16) NOT NULL,
  `val` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`k`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', 'sex', '0', '女', '2017-11-17 09:58:24', '2017-11-18 14:21:05');
INSERT INTO `t_dict` VALUES ('2', 'sex', '1', '男', '2017-11-17 10:03:46', '2017-11-17 10:03:46');
INSERT INTO `t_dict` VALUES ('3', 'userStatus', '0', '无效', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('4', 'userStatus', '1', '正常', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('5', 'userStatus', '2', '锁定', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('6', 'noticeStatus', '0', '草稿', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('7', 'noticeStatus', '1', '发布', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('8', 'isRead', '0', '未读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('9', 'isRead', '1', '已读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('11', '当官', '刚', 'gas', '2020-01-04 15:51:33', '2020-01-04 15:51:33');

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('2', '封闭管理的公告', '<p>&nbsp;尊敬的各位：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您们好！为准确的掌握返程人员的信息，有效的控制疫情的发展，管理处从今天起（2月7日）关闭东门、西门、北门，所有行人及车辆一律从南门进出，外来返程人员主动到江阳社区登记方可进入，解禁具体时间将另行通知，届时请朋友们提前安排好日常生活，因此带来的不便敬请理解。（联系电话：87638107）</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 谢谢大家的配合！</p><p>&nbsp;</p><p style=\"text-align: right;\"><br>新物业服务有限公司<br>2020年2月7日</p>', '1', '2020-02-09 17:26:23', '2020-02-09 17:26:23');
INSERT INTO `t_notice` VALUES ('3', '统一送快递的通知', '<p>近期新型冠状病毒的传播形势严峻，为避免小区内人员流动而带来传染的风险，管家中心工作人员近日会统一为业主送快递送上门，特此通知！&nbsp;</p><p style=\"text-align: right;\">管家中心<br>2020年2月5日</p>  \n					', '1', '2020-02-09 17:27:28', '2020-02-09 17:27:37');

-- ----------------------------
-- Table structure for `t_notice_read`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_read`;
CREATE TABLE `t_notice_read` (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`noticeId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice_read
-- ----------------------------
INSERT INTO `t_notice_read` VALUES ('1', '1', '2020-01-03 17:06:00');
INSERT INTO `t_notice_read` VALUES ('1', '2', '2020-01-03 17:06:22');
INSERT INTO `t_notice_read` VALUES ('2', '1', '2020-02-09 17:31:04');
INSERT INTO `t_notice_read` VALUES ('3', '1', '2020-02-09 17:30:03');

-- ----------------------------
-- View structure for `infor_owner`
-- ----------------------------
DROP VIEW IF EXISTS `infor_owner`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `infor_owner` AS select `tb_owner`.`owner_name` AS `owner_name`,`tb_owner`.`owner_sex` AS `owner_sex`,`tb_owner`.`owner_phone` AS `owner_phone`,`tb_house`.`house_no` AS `house_no`,`tb_house`.`house_area` AS `house_area` from (`tb_owner` join `tb_house`) ;
