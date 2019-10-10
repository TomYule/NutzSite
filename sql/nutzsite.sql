/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : nutzsite

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 10/10/2019 15:05:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章内容',
  `copyfrom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章来源',
  `allow_comment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否允许评论',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `relation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '相关文章',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_time`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
BEGIN;
INSERT INTO `cms_article` VALUES ('0c320165ec1341cf94da15a9a06039fb', '7', '产品质量太差', '', NULL, '', '产品质量太差', '产品质量太差', '<ol><li><b>产品质量太差</b></li><li><b><br></b></li><li><b><br></b></li></ol>\r\n', '', '', 0, NULL, 1, '', '', '', '1', '2019-06-13 10:54:00', '1', '2019-10-10 10:39:20', '', '0', '');
INSERT INTO `cms_article` VALUES ('1', '3', '文章标题标题标题标题', NULL, 'green', NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('10', '4', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('11', '5', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('12', '5', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('13', '5', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('14', '7', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('15', '7', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('16', '7', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('17', '7', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('18', '8', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('19', '8', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('2', '3', '文章标题标题标题标题', NULL, 'red', NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('20', '8', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('21', '8', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('22', '9', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('23', '9', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('24', '9', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('25', '9', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('26', '9', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('27', '11', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('28', '11', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('29', '11', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('3', '3', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('30', '11', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('31', '11', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('32', '12', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('33', '12', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('34', '12', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('35', '12', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('36', '12', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('37', '13', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('38', '13', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('39', '13', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('4', '3', '文章标题标题标题标题', NULL, 'green', NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('40', '13', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('41', '14', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('42', '14', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('43', '14', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('44', '14', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('45', '14', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('46', '15', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('47', '15', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('48', '15', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('49', '16', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('5', '3', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('50', '17', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('51', '17', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('52', '26', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('53', '26', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('6', '3', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('7', '4', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('8', '4', '文章标题标题标题标题', NULL, 'blue', NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
INSERT INTO `cms_article` VALUES ('9', '4', '文章标题标题标题标题', NULL, NULL, NULL, '关键字1,关键字2', NULL, '文章内容内容内容内容', '来源', '1', 0, NULL, 0, NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0', '1,2,3');
COMMIT;

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
BEGIN;
INSERT INTO `cms_category` VALUES ('1', '0', '0,', '0', '1', NULL, '顶级栏目', NULL, NULL, NULL, NULL, NULL, 0, '1', '1', '0', '0', '1', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('10', '1', '0,1,', '1', '4', 'article', '软件介绍', NULL, NULL, NULL, NULL, NULL, 20, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('11', '10', '0,1,10,', '1', '4', 'article', '网络工具', NULL, NULL, NULL, NULL, NULL, 30, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('12', '10', '0,1,10,', '1', '4', 'article', '浏览工具', NULL, NULL, NULL, NULL, NULL, 40, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('13', '10', '0,1,10,', '1', '4', 'article', '浏览辅助', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('14', '10', '0,1,10,', '1', '4', 'article', '网络优化', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('15', '10', '0,1,10,', '1', '4', 'article', '邮件处理', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('16', '10', '0,1,10,', '1', '4', 'article', '下载工具', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('17', '10', '0,1,10,', '1', '4', 'article', '搜索工具', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '2', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('18', '1', '0,1,', '1', '5', 'link', '友情链接', NULL, NULL, NULL, NULL, NULL, 90, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('19', '18', '0,1,18,', '1', '5', 'link', '常用网站', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('2', '1', '0,1,', '1', '3', 'article', '组织机构', NULL, NULL, NULL, NULL, NULL, 10, '1', '1', '0', '0', '1', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('20', '18', '0,1,18,', '1', '5', 'link', '门户网站', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('21', '18', '0,1,18,', '1', '5', 'link', '购物网站', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('22', '18', '0,1,18,', '1', '5', 'link', '交友社区', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('23', '18', '0,1,18,', '1', '5', 'link', '音乐视频', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('24', '1', '0,1,', '1', '6', NULL, '百度一下', NULL, 'http://www.baidu.com', '_blank', NULL, NULL, 90, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('25', '1', '0,1,', '1', '6', NULL, '全文检索', NULL, '/search', NULL, NULL, NULL, 90, '0', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('26', '1', '0,1,', '2', '6', 'article', '测试栏目', NULL, NULL, NULL, NULL, NULL, 90, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('27', '1', '0,1,', '1', '6', NULL, '公共留言', NULL, '/guestbook', NULL, NULL, NULL, 90, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('3', '2', '0,1,2,', '1', '3', 'article', '网站简介', NULL, NULL, NULL, NULL, NULL, 30, '1', '1', '0', '0', '1', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('4', '2', '0,1,2,', '1', '3', 'article', '内部机构', NULL, NULL, NULL, NULL, NULL, 40, '1', '1', '0', '0', '1', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('5', '2', '0,1,2,', '1', '3', 'article', '地方机构', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '0', '1', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('6', '1', '0,,1', '1', '3', 'article', '质量检验', '', '', '', '', '', 20, '1', '1', '1', '1', '0', '', '', '', NULL, NULL, '1', '2019-06-11 17:17:20', '', '0');
INSERT INTO `cms_category` VALUES ('7', '6', '0,1,6,', '1', '3', 'article', '产品质量', NULL, NULL, NULL, NULL, NULL, 30, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('8', '6', '0,1,6,', '1', '3', 'article', '技术质量', NULL, NULL, NULL, NULL, NULL, 40, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_category` VALUES ('9', '6', '0,1,6,', '1', '3', 'article', '工程质量', NULL, NULL, NULL, NULL, NULL, 50, '1', '1', '0', '1', '0', NULL, NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
COMMIT;

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Table structure for cms_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Table structure for cms_link
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of cms_link
-- ----------------------------
BEGIN;
INSERT INTO `cms_link` VALUES ('1', '19', 'JeeSite', NULL, NULL, 'http://thinkgem.github.com/jeesite', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('10', '22', '58同城', NULL, NULL, 'http://www.58.com/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('11', '23', '视频大全', NULL, NULL, 'http://v.360.cn/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('12', '23', '凤凰网', NULL, NULL, 'http://www.ifeng.com/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('2', '19', 'ThinkGem', NULL, NULL, 'http://thinkgem.iteye.com/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('3', '19', '百度一下', NULL, NULL, 'http://www.baidu.com', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('4', '19', '谷歌搜索', NULL, NULL, 'http://www.google.com', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('5', '20', '新浪网', NULL, NULL, 'http://www.sina.com.cn', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('6', '20', '腾讯网', NULL, NULL, 'http://www.qq.com/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('7', '21', '淘宝网', NULL, NULL, 'http://www.taobao.com/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('8', '21', '新华网', NULL, NULL, 'http://www.xinhuanet.com/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_link` VALUES ('9', '22', '赶集网', NULL, NULL, 'http://www.ganji.com/', 0, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
COMMIT;

-- ----------------------------
-- Table structure for cms_site
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of cms_site
-- ----------------------------
BEGIN;
INSERT INTO `cms_site` VALUES ('1', '默认站点', 'JeeSite Web', NULL, NULL, 'JeeSite', 'JeeSite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `cms_site` VALUES ('2', '子站点测试', 'JeeSite Subsite', NULL, NULL, 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
COMMIT;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL,
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父节点',
  `ancestors` text COMMENT '祖节点',
  `citycode` varchar(255) DEFAULT NULL COMMENT '城市编码',
  `adcode` varchar(255) DEFAULT NULL COMMENT '区域编码',
  `name` varchar(255) DEFAULT NULL COMMENT '行政区名称',
  `level` varchar(255) DEFAULT NULL COMMENT '行政区划级别',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
BEGIN;
INSERT INTO `sys_area` VALUES ('0038jp3mn4hreog8tvetkdfo2e', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330212', '鄞州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('004iajjj82gb7rtl0hdnvtmt41', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610423', '泾阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('00f8d86ja2jghpkgeu3s7kasvn', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511823', '汉源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('00fts3qk08j2bqu2lmo8j24jmk', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '抱罗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('00lj273gnqigpptje2m18ltd73', '6vk98tiersiibq2sg2fnfpckn3', NULL, '0933', '620821', '泾川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('00q16vnuegi6drsjkbuqg4hehc', 'ul67q7c7fsjhrq25s0lg9j9t26', NULL, '0563', '341824', '绩溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('00ubdslgdqij7obepe7b3812h0', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230221', '龙江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0109mnshqij7bqkuk7g5cssmgk', '4si9r8ohrsi0urh25a84pugj6r', NULL, '0434', '220382', '双辽市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('015jnalmqkj9vp3m749u56mhoq', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411330', '桐柏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('019318277qj7brf0jmovihfr4o', 'pma35v8v3aggbobuot73v69lpj', NULL, '0917', '610300', '宝鸡市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('01k4l9u3esgd2plrsvsp87g423', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '国营中建农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('01q3eq7r2si88ot6pp6knlg52r', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360735', '石城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0208smrnuagearuco09suljf96', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230305', '梨树区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('020cp85s70g97p92kblmvqlo28', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150925', '凉城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('029591qr12gsep4uke38tf88fb', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '大朗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('02ed286q2ej03r7sn5kq2guv7d', 'oli0hjs3akg2ppb6umjeru4rc9', NULL, '0564', '341502', '金安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('02hd285s0qibpo71od86d6ah0k', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '三更罗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('02qam04nuij4nrfovl1eg2l3cn', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150926', '察哈尔右翼前旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('030mitvs7oherp71fpeh14ea41', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511826', '芦山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('034tpv3c30jatq11ep9j9sjd8s', '37mr9n7p10gf0otrgdqkl3mfdh', NULL, '0419', '211021', '辽阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('036mjqj04mj7lp5u97mf2r2pvg', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '文罗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('037lh9pp1kit0oqek7jt9bnq57', '60plvbc5tqhjcrsj5hfv8ads5n', NULL, '0392', '410621', '浚县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('03f4j1vl48gf2qe2snupl61ag9', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653123', '英吉沙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('03k654fk2oinqpl1b99284pjp6', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371325', '费县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('03p6j8097chmoqr9oqpjeqb924', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371721', '曹县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('03uk3emoqujtjrrj5f00oillln', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371522', '莘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('04d3vbdaikgu2rmmohov7df8sl', 't3i3jj4066gniomc1nimc5a67r', NULL, '0456', '231181', '北安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('04hkhdmv3gg9jrhqijaeg8eqms', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411327', '社旗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('04lk5t0f8mju5r30i2um8bgrb2', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '540000', '西藏自治区', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('04o03gk244g9mq4mk1q6p424j9', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '国营西联农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('04r10vu5h0gb2rj8o1ivktr1su', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '国营东红农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('04uaif88s0j4aqs89dsr3udkcq', '6keq61sajoj4tpj2n3romnires', NULL, '1935', '620602', '凉州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('04vr1qejk6jafr29ejtu8a7rp3', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140429', '武乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('053tnpvnuojisrkpre7l2g29nc', 'unburmmpauiapo2temd5r01tgn', NULL, '0572', '330503', '南浔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0567knr96sgddrc1plstq0ta7p', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0754', '440500', '汕头市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('059ke23aamjovrhnprlb2cqc84', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360821', '吉安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('05c6oe0nighvkp1ri22japs1v8', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130730', '怀来县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('05e5n3f9fcjisrtqkrrgn4nbpq', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '620000', '甘肃省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('05o7d19vn4i12pph26p73m2sdl', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510722', '三台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('063085qkqihg4oputt0liidht6', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230207', '碾子山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('064mgbrve4h91qlg98ctb0mtmk', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532929', '云龙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('065j0qsgksi7spsqvnghgnsra9', 'rs8ei9p6gcg7lp9dphe1qcvunl', NULL, '0971', '630123', '湟源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06780i9emkjt5p8u8kndjokr2e', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150723', '鄂伦春自治旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0685vr8on4h1eqpf7oeqbt898c', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420581', '宜都市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06cnv7kbtcidmparlol89fb16n', '6kn0cvsr1qg15qd9jtkuj5s9kv', NULL, '0756', '440402', '香洲区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06f376fi3ci8co9th7e0ne13eo', 'p28gk7ufc6jegq9isgpdgkdghp', NULL, '0374', '411002', '魏都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06fkg56m70g3jr22bdr7qrtdim', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150522', '科尔沁左翼后旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06l4onpd1qj5eqibe4i2ua2jsj', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '1755', '450800', '贵港市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06qqbenggsh75oeplbem66mc0b', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540525', '曲松县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06rn62r4tggd8o95iltccc53ms', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0594', '350300', '莆田市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('06uo69gv7ciptrtunvnqfborkd', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520323', '绥阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('070st864qugs0r8875b70ta8v4', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230230', '克东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('073po02o36i70oluh70jgn91ik', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130602', '竞秀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('078c579n9mguoqjfe8fdepn6hh', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '龙华山街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('078fo4dacqif0of5jf5knqo9fd', 'q04gvg77l6g58r9c0mrbe6cdl1', NULL, '0552', '340322', '五河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07glniftq8hc3orvm5m0urpe1d', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0993', '659001', '石河子市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07j33c64ocjpdptfjmin0c16oa', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320303', '云龙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07jc2c5vlugl3oi8n28okmrt0v', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '兵团一五二团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07m8i7q24ch0vofv2bbin20n35', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140427', '壶关县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07mj9r700mjmjqgpr7go2ok09j', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152502', '锡林浩特市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07sgn8e77mgs5p1fg84tfi4t26', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '隆广镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07td0bndregp7pvg3l0n3d8q5d', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530802', '思茅区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('07uq3gf82cj1mp98u3qld93u4h', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530181', '安宁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('086dict3gkihqqar19ln1dafa0', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130629', '容城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('088b89tg84j44r822f36v329gi', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140221', '阳高县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('08dc71gluqgi7ofhklkt64imhh', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '本号镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('08e2hn42a0h0uo0132utjqbbo7', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150525', '奈曼旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('08g39d1g8qj3irifbvehiuko4l', 'prkb4lm02ugakrv39cjkl86hn9', NULL, '0832', '512002', '雁江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('08j154pofmjl1qsp8sr0inei9i', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220104', '朝阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('08l31ngefsjr4pratcearqrj7i', 'pah4e89c2egpbp9laj391prtek', NULL, '0766', '445322', '郁南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('093fu97mtmionr2l92b9536hod', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0394', '411600', '周口市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('094tkf07lkhrspg5386u1nnik7', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '光坡镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('096705m2teg2orf0q6bblau5cu', '7hk2dikcooh2dou1jbi2qq3jdv', NULL, '0752', '441322', '博罗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('09doh5lno0is8qmgc90fj8noib', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '竟陵街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('09hh8jg30ai6ooj734aem4c8au', 'v322g4tjqsifgosda4e76glpkd', NULL, '0482', '152222', '科尔沁右翼中旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('09n2godtughikrqfsqirfbhdnn', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610102', '新城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('09q9q92i7ei9lp6fgrtimm848l', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '三乡镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('09tiabbjsehn0rer8a5vlbi6vg', 'ub0dk32t6igiuo0ugm6jfdjsn5', NULL, '0750', '440704', '江海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('09uk2rereqj74q2fssj50ti73f', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410181', '巩义市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0a0efs855ein8q5gc6v323jk83', 'ov5d4q3dgajrnqgofjig0p6pa7', NULL, '0538', '370921', '宁阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0a2a8pgvgqhk5rgf0lfgsla98m', '7mi7t9c2gojcur0an0g8le8svu', NULL, '0573', '330424', '海盐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0a2o0b2u4kjsfqmtj6ej31pu6o', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530827', '孟连傣族拉祜族佤族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0a5ml7sd3iisspap8vf6anm232', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540237', '岗巴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0a649c2gbqhb2o2tlaa0no4rn4', 'qopnqkjitqggfob4d7vlbasbrr', NULL, '0335', '130322', '昌黎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0a9bm5g0k0gltptcrg2r2s77sp', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130205', '开平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0abgmckebainsokvnv8rqpcn7e', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320922', '滨海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0apnhi4i9sjm0qq8blhahgk1jp', '4rb1a283l2ht9r37qbp67ot2cf', NULL, '0511', '321182', '扬中市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0apt8dp0ichjpra5925r88b5js', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '波莲镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0b14s8sloggtloor40rtnbbjsb', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '松山湖管委会', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0b1hnc8d6shdfo9igcqj36r33a', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231223', '青冈县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0b8bquf7guhj5o3jgk2ipv6g21', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513201', '马尔康市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0bnvjp8a2gircq1r7va4ab6rqu', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610926', '平利县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0budf8d2b6gnhq22l070nv0bq4', 'ul67q7c7fsjhrq25s0lg9j9t26', NULL, '0563', '341802', '宣州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0bv91shjesjghqjvm1mvu1b01d', '71s5tgjdeig0gp5uiqtjak9c53', NULL, '0429', '211421', '绥中县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0c08vd1dm0hejo91ajpj5ddlr9', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513223', '茂县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0cneommh20hkkoeb6ej4o84ovq', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0757', '440600', '佛山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0cqcr6bbrmhflpkv261sntc94t', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431024', '嘉禾县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0cvi2rriu0itbqpor79a1pfi39', 'p47mt63pg2hempalq3mqvr7rsi', NULL, '0412', '210311', '千山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0d3n0vpiisjhsqgbburdcainuj', '4c470m8mi4hj9poerdko8hultd', NULL, '0555', '340504', '雨山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0d4al64d0agpeogj5t90m8gb54', '68scvtd0piilsrv0gqgime32q6', NULL, '1953', '640522', '海原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0da7ve46koh3tottec5dmfmrrp', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市王屋镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0dbmbvopqojhaql77f0otfn7db', '4si9r8ohrsi0urh25a84pugj6r', NULL, '0434', '220381', '公主岭市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0dhfukvq1ggc2pvalnni7tp6rh', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120106', '红桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0dn8eqeqpgjntrbfimfv4m13vi', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532327', '永仁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0dpfrfunqgj5brn1isrkmt5l8g', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522301', '兴义市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0e0e91drrahesp6npondps4gch', '06rn62r4tggd8o95iltccc53ms', NULL, '0594', '350322', '仙游县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0e1kk0tcfkgftqmfls9aeqokek', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '华南热作学院', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0e22kv1cfeiesoggptd34ph20q', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610403', '杨陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0e2opbd95khdvq0ibcsm3f4g5a', '4c470m8mi4hj9poerdko8hultd', NULL, '0555', '340523', '和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0e3vofpadojc2pgos3gmaqll0s', '39a8hm29gmj9aonigro0dl6h7v', NULL, '1833', '511400', '眉山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0e64gaugd0jkbrdsr3d260oc6k', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '2935', '621200', '陇南市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0eb43h99duhhjr9fekpcplcitg', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231283', '海伦市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0eeoj8k63uhg0r7l1u4q3mse77', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130726', '蔚县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0fagprbb9oj38qlmr0ri2ffq9p', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '国营东升农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0feh973j6ug41qinr64enikrcu', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '国营新中农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0fkqp02rlmj89r3o4fnb5evtjg', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0662', '441700', '阳江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0fn12itqrsjn2qhkulo0ucbm3g', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '礼纪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0fo4u6m20mjkqrdrkjgqq9ihvs', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130724', '沽源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0g7it0nch0jhsr76i675cauf41', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430112', '望城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0g87dibh2eickoef8ocps7htf7', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513230', '壤塘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0gi85nkihsibsqru6pih5g6mcb', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210112', '浑南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0gopp4afk2ja3p7i7p29thls6d', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441823', '阳山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0gpon6d2ach1kq3ij9kh1crbaf', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '八所镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0grb8v1j1qivjpc38qpqo913q6', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '什玲镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0h4hrmc8jij42qj86vtkcvlr89', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522632', '榕江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0i2or1lrk4i9apvm0vj1o9dvof', 's0lr6tduqaimerh4v7krl8njqq', NULL, '0519', '320413', '金坛区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0i2v0ur2vog18p1bbaqelvpn5a', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610328', '千阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0i9f34it8uiudorcfvipoopnlg', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220204', '船营区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0ih8m7k99mg06rijarh3gooveq', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140928', '五寨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0illpha5naj5cqe457qgsu10oh', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341282', '界首市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0j0195ugs4hf4r43g4mpmpd5tt', 'shc3fh151oje0phuaqshgfndhb', NULL, '0413', '210400', '抚顺市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0j0a6pt9s8jicpv41tpk8jjj9c', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350603', '龙文区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0j1euvbicqib2o43qih23hvtnf', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520326', '务川仡佬族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0j4ij0b9hqid0qhashn2mmtjai', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511523', '江安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0j5adm0e68g82otmsta8rsgq5b', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410304', '瀍河回族区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0jelm0k1ukjrkp3ceve7fhbpcq', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532301', '楚雄市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0jn3fdcjdcimtpaaticnp43lfk', 'p28gk7ufc6jegq9isgpdgkdghp', NULL, '0374', '411082', '长葛市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0jr6s6i8gkh4jqvgsin4pdmdap', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340123', '肥西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0k05udvrrej17qk6jvtoarbcv5', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152530', '正蓝旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0kacp6p0j6hliq10968lui2apq', 'vqd8pkelpkj84o1g0hhs719s7r', NULL, '0517', '320804', '淮阴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0kd3m7p7qggmpon6b2vfhv9iki', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '光村镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0khm9lnt0agtaru5uibs1quoln', '7b9t411baujtgruqa9vn99tr68', NULL, '0457', '232701', '漠河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0kr6ahifsui6fo30msc0blelhm', '5qoh0u5taait1oag7c3ar2a914', NULL, '0972', '630225', '循化撒拉族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0krm73ugpeij2oa4ma0erd876f', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431221', '中方县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0kv9890bh4jejpnbecsps9c0t3', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '国营红林农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0lbko3696uj21r0nl956ekdjrk', 'p9uptib1nki2hrjanf1sdk0qoh', NULL, '1832', '511025', '资中县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0ldn5ea0n0jm5ofgmev1mef1fs', '62rq1jvhi0in3o6uv0ofm3t026', NULL, '0417', '210881', '盖州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0lh2sojps6j9hqn6kn1pifkv3i', 'v5uqtd9116h7to3gunfm82b7sg', NULL, '0393', '410928', '濮阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0lldbb4jtujarpdat7kqqbk76g', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '国营中坤农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0loms4thq6g3np8mg1gja3tmcd', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110116', '怀柔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0luuhirknagv6oacpjvh6jqvqb', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513335', '巴塘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0m429d7pisjguo2a1jg48lrvp2', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '南丰镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0m8140k5pgje7pa1t948v34ciq', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500238', '巫溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0m8r1l84dgjrmrc8rae3vvkrs0', 'rplo4obrmkgudqlmm6a37hu0pl', NULL, '0558', '341621', '涡阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0mgs502mnagtfovkbdhlcr9s40', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0759', '440800', '湛江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0mit0ss6qgjumrtorburkseofj', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370827', '鱼台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0mooihst3cgdroe1v82n9nsubt', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '港口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0mqsm1gnp0iasp27vjoisf8a73', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '石家河镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0mvtbe7p12hgcq76m3f3dga0ak', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130225', '乐亭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0n40r7mk6iir2oscfnqmd7n9kp', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141027', '浮山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0n5rsit2l4jcdq35rm35b7a1fc', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350421', '明溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0n8t4op31cg4fptn86d2hllp8d', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360922', '万载县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0n9nnkq64sgucqvpelgkr6uokd', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '新村镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0na7cf8um0g8goabpnmebtftkk', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421125', '浠水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0nab0hco0sjtbpfcv836ujoehq', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522628', '锦屏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0nbfa3p2j6idjqtm9m1au8tvro', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620102', '城关区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0nrpsa7ltii9qqctle5p2bflj5', 'ptrk71a2c6ir5o5s0d6lp1ldje', NULL, '0768', '445103', '潮安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0o3h2vtlhogq5p19fksnrq552p', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540227', '谢通门县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0o40a0vavijhnrvg2thvsah9a8', '0j0195ugs4hf4r43g4mpmpd5tt', NULL, '0413', '210421', '抚顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0o9cerlsv0jn3p9h2ilus8u9vc', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0851', '520100', '贵阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0obkup2p1kh96r4os47r2dri93', '33980i4d8qg5opdbrbl17k22t4', NULL, '0975', '632621', '玛沁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0obl4ae0esh3tpmng9cqe0qo34', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0530', '371700', '菏泽市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0p0gq4ptr4ifirki384qrja2en', 'ultj2le7dogcvrhrl50rosc3j2', NULL, '0908', '653024', '乌恰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0p30i6a75sgqipvqplebfcm94e', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0751', '440200', '韶关市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0p496qui2qileponu3n4s3n4m2', '7bcc03f61airsoutkvi76ekboa', NULL, '010', '110100', '北京城区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0p6cd60ooagi9q1mbsssnqggfu', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430407', '石鼓区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0p89tva6u0gq8q35j316b1b1co', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '熊口管理区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0pf0ufnrm0g1br63ir643jp6jn', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130533', '威县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0q500l3imuidgo3h8rjqnc3vbo', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520329', '余庆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0q5rluds50gj5pe9h9bba2jlei', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621226', '礼县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0q71os76ioguur8eka5a5cnt17', 's0lr6tduqaimerh4v7krl8njqq', NULL, '0519', '320481', '溧阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0qbd755u2eg0uocph7ja5aldhs', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331124', '松阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0qdu5ljfu6gi3rel0307898gpd', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610526', '蒲城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0qlkhl8q1sjubqif19nc93b0mj', 'p84u1jr0m8jcdqckqm7u2cim9f', NULL, '1771', '451481', '凭祥市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0r3fmtsu7qgvtopmafpqg73a1q', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410403', '卫东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0r41l45b9ui32osq54eij5geb0', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421083', '洪湖市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0r5lvordtagvvqhri4bh57qrr6', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140122', '阳曲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rd8b747ugjcjqbe107th3kbtj', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450110', '武鸣区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rj9rutp82gfbppe1m297cs9tk', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371525', '冠县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rkh05q5lkhonq4k8u29f5fdt2', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '英州镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rm619d1iijjfreogqjvn0plke', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360123', '安义县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rnsqm4mqsi7fqqu2p2ga6p83k', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522723', '贵定县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rpen5qdq2gb2qtcicjqq2ggjo', 'pop6evjn9gjk0pf4c9oaf7p8jl', NULL, '0478', '150822', '磴口县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rqnl9d68mjn6pkiral9ogec09', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610924', '紫阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rsngussmshrop8eat1pcnniv7', '0sdp7nv87uh54q41apsqi25pte', NULL, '0795', '360900', '宜春市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0rsrjobva2gsirdn4hpfqj6d33', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532530', '金平苗族瑶族傣族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0sdp7nv87uh54q41apsqi25pte', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '360000', '江西省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0sekmo06m2irhr9nu690ajf6d4', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230606', '大同区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0sgnh3c7o0h37rd13459anid1s', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '兵团图木舒克市永安坝', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0sh732c7saglcqaktuna9frole', 'o3ikr5lpcqjbqop5pier801urs', NULL, '023', '500100', '重庆城区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0sl8ljhdcqjppoe89q79cag5b1', '30adoqbjicg3ao8gd2scth10ct', NULL, '0777', '450721', '灵山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0soefi8n10g67o4cf5rl5j2c1v', 'v5uqtd9116h7to3gunfm82b7sg', NULL, '0393', '410923', '南乐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0sqofglhqijm7qbslk7p4mk5us', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361127', '余干县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0t07ngm086gp4q18hbuuu7jucg', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410122', '中牟县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0t5av04mr6i7mq9onbluvpc7bf', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150205', '石拐区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0t6ftpeonkjnmpuh7btutf5odo', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610302', '渭滨区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0t77tkvui6hs5ql0ivm6lrcidf', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120101', '和平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0t9ggqgv24jvipffec0dopj3e0', '6vk98tiersiibq2sg2fnfpckn3', NULL, '0933', '620825', '庄浪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0tb3s69ffggjlrruhb11chdl93', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0577', '330300', '温州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0tbo1ks6tejnbq3vkktvas70k0', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150781', '满洲里市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0tch126f7ch9rohg07djo5bvas', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0744', '430800', '张家界市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0tgcn5k2j2jshqm2os26doqco6', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441202', '端州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0tglui8rlog5ooktme66lejqnu', '359to4v1uairqrfitlfigenk27', NULL, '1996', '659006', '农二师三十团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0tsk8gbja2h15pfohqfotasa6c', '6vjtnufp2eiqip75uek05pm3a4', NULL, '1999', '659008', '都拉塔口岸', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0u500d8hhcifno9mgdo969o2b4', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130984', '河间市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0u5kcsb1ucgfooel7tuc8ehadf', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '石岐区街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0u6opa58g6glnq95jar7nepjpc', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '龙河镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0u992kollqiukr0l1npebcho75', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511381', '阆中市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0uiugugm0aiovoea66fabimbl0', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513331', '白玉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0una3hsltoh88o4tp8tpnhf9kj', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433126', '古丈县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0uqar0b9a4jtmpocg39aah706c', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450126', '宾阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0v3kic5m9ogjroq4egrt8109kq', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150623', '鄂托克前旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0v5q4bd422jmooj251r99bvj5d', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '感城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0v5ujsavqqifnrdivn9jooj7up', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0432', '220200', '吉林市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0vd1a16udai35qii2f1pgki9tv', '5ronu5iaiugd9p6ubj28usjc0c', NULL, '0937', '620923', '肃北蒙古族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0vjljf311ijocp78vqu97etnce', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370202', '市南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0vt189j90mhv5pr2nfhjkiia3k', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0714', '420200', '黄石市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('0vv81tjjjgj5cq643vnl897e03', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530926', '耿马傣族佤族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('103ld8f3j4hjhooqk8qjvf43cu', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110101', '东城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1057p66pkshscom8447hh8sorc', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140426', '黎城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('105l5tk2n6iq3r76uuolnmuein', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370704', '坊子区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('10n8v6tlegh05qaodoptlu8c97', 'rrrrrbqoomgkjpn813qk4fa2pf', NULL, '0356', '140581', '高平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('10pm3es8sqj50rpqmub8jiimrv', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '440000', '广东省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('118ajuac0eg4tr100bq5chrsef', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130607', '满城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('118o6gnu1cj69qk4msiush4276', '0j0195ugs4hf4r43g4mpmpd5tt', NULL, '0413', '210411', '顺城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('11if4i0qg6iluqo0sdfa6ra5ch', '338gdrsv2aj8srrsd83k0rehe0', NULL, '0631', '371003', '文登区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('11rrcmoc28ivopd7eti8hrnv68', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610330', '凤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('11uod98uq4jdorfkucmqrtd20k', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513221', '汶川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('123r16t4hohv6qtbnd9vopp0te', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '长坡镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1263gict4ejc8rp4mqmrthpuc3', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340825', '太湖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('12g7k30mmgio8q1im617amsemq', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320321', '丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('12h2iccls0hloqunr0vjq32e90', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140214', '云冈区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('12ib68o8dehdqqtijmd4fm21cs', 'uo2dukpvluh0uoimsanur95la4', NULL, '0954', '640402', '原州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('12jet0sggsh55qql16brq1d36d', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市思礼镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('12jol6k87iic6oskufrra8qd75', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '叉河镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('12u7cgieo6h78oiq55pjg0mrmh', '0sdp7nv87uh54q41apsqi25pte', NULL, '0792', '360400', '九江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('12ucvef3vghieq6j2nt9a82lbi', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410704', '凤泉区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1304gbjinujgbo70oh05d2k3uu', '3l0uf7h9nah2frg2h1udh9eaea', NULL, '0435', '220523', '辉南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('139plt8keagssp3l9ep1u4hg4t', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130402', '邯山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('13h7lc6caiikurqenucvacm6hl', '0sdp7nv87uh54q41apsqi25pte', NULL, '0793', '361100', '上饶市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('13iua6kbpcgiopmd3podsgr40n', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532901', '大理市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('13k076u276ie3q2cj1cqefotlj', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210113', '沈北新区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('13m9lhi03cj45qoqatrhfoqugg', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '黄圃镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('13uefcmkugifpq6rhj816gumip', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451002', '右江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('13vl67nkkgh1srcb1k7v08jmiv', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370112', '历城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('14kjdk1376jtcqechjmk7sit9a', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371428', '武城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('14m88pru3ej56qdpgc2h55hq0l', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810003', '东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('14rsmnklf0gt8r56gmbf2289k3', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513325', '雅江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('14veujc0i8jktqvt04mted1utb', 'rjpdu8e1bqjh8oolsa6mi7urd9', NULL, '0899', '460202', '海棠区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1530os4r0ai78o4a8j7bkce62v', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421122', '红安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('155688aq8iidsod48djpaaqcli', '6n7d2g7a0ajhnrn6157cin88j0', NULL, '0514', '321002', '广陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('155qrtip2qj99qg686a2en0psl', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '130000', '河北省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15akkg1en0jiapujtki7jildd9', '33980i4d8qg5opdbrbl17k22t4', NULL, '0975', '632623', '甘德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15g0vsoke0j17rpme9146fa8h1', 't8fhi5nj6ahr2qll2e8cqg081v', NULL, '0543', '371622', '阳信县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15gc239haujs6qli0a2sldfd3p', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '千家镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15hb8ecmuaih2q5t0ugoj1o46c', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230523', '宝清县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15hvv9uv0qjmio23pe08rbmoh4', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610525', '澄城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15lpm925loh4ao7c6mutuo9i38', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360726', '安远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15o9hen2fagsbphcb3prfq5tm0', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '利国镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15q1j8o146jdbpamd76mqfv1g2', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350926', '柘荣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15rrpfpbgcg10q36nvq77kud46', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320116', '六合区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('15vmnk3fpehnrr4649v24qc666', 'pd43976vcgi4fqbihmbdvhcd82', NULL, '0894', '540402', '巴宜区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('161or2grpiifaoukm5v71mmq94', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360111', '青山湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('166v8lhrpejciqc0oqed07kqpo', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '木鱼镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('16fs7ph8f2ha1rkekbfag2cpjr', '73074v4qq0g5ars2cec58gpq94', NULL, '0550', '341100', '滁州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('16i66a22r8gt7pns3lq7439kqb', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350105', '马尾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('16odfsdtcaighqgqau06fg9on3', 'r401ektu6ohcuo5la91f317ved', NULL, '0932', '621124', '临洮县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('16qev9hst0ijtrk7bbu0n9l3k0', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150923', '商都县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('16vot8b674ie9o7cbp1a2am6qv', '0sh732c7saglcqaktuna9frole', NULL, '023', '500120', '璧山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('170ruicenkg07qtet8rkdu43ok', '0sdp7nv87uh54q41apsqi25pte', NULL, '0798', '360200', '景德镇市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('17b9bk9uhehhip0orn7vac874b', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652928', '阿瓦提县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('17ff95tqiihknrhomkju081skm', 'qopnqkjitqggfob4d7vlbasbrr', NULL, '0335', '130324', '卢龙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('17gdg88rqmhk7o3olkrctfrion', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360423', '武宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('17j3nc15fsj8co6ei5utevlp7t', 'vcvi1q7disif5o2cn23iminacv', NULL, '0663', '445224', '惠来县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('17kdbr60l2i6hrfa50ck95ioac', 'obeq7331cuijjqrs6ir5huudtd', NULL, '0712', '420981', '应城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('17m12umjmki7lppvmi61g42pke', '73074v4qq0g5ars2cec58gpq94', NULL, '0556', '340800', '安庆市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1865sikioghi0reca89vk4l7ac', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370830', '汶上县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('189urtereojqqpn9rdaufu068a', '7clv6jucsug1docf6sia80h0g6', NULL, '0936', '620722', '民乐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18c2gueigogueqmuoigq9s6j4v', 's01ev31uaaii5o2c20akaigmi1', NULL, '0724', '420882', '京山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18dbenjlqcgatro0s8mjbpsnpv', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340824', '潜山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18dpbv0gukha6qk0dje59226mn', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610831', '子洲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18jrs40h2qhh4p53orf2velsv5', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230281', '讷河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18k0pnjthsgqopuc1o8htdihkh', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150105', '赛罕区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18k22d2iiuid6q4onssdhvbrid', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410311', '洛龙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18monpqoi8i64qfm368e4e8lc2', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532624', '麻栗坡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18smdinc7qi7sormfccc9dq7sd', '4u3v24knm2i0hq3rfss8a7v6kh', NULL, '0953', '640302', '利通区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18tisqc14ei57pd9q3ohe2dmdf', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513427', '宁南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('18v06gf4cqhsbpnif3u8dppqk2', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350125', '永泰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('198ndcdtlei3gqe542r0ibomca', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511324', '仪陇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('199kfk51qshmrpc5fl37a5ukcj', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '泰丰街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('19c2ihm2kej7mqr5pf2541i91r', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '龙湖镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('19cl20o0e8hk6ojcp7ch97sbne', 'rs8ei9p6gcg7lp9dphe1qcvunl', NULL, '0971', '630122', '湟中县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('19g4h4a49cinbrnsl94n95gjs9', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '阜龙乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('19h2gn5bjqjn2oa7o5jp1u5lgn', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540202', '桑珠孜区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('19ke4lljhajirrue9i9ic5tvq8', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222426', '安图县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('19qgg7905igjdrbg2njhsrjsj5', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530114', '呈贡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1a2rnt9072icup41r5lqnoqu1s', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540324', '丁青县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1a8a4f5jdgi5cpsu8enrcjut96', 'spcl2traagiofrum521umd4mei', NULL, '028', '510116', '双流区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ap9i2j4r4hulqfl845j14t4k4', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141123', '兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1auf78of2sh07o24da3ggpp8mr', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231282', '肇东市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1b3ggqfj1ujf6qm95a4h9j3ohe', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440882', '雷州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1b6ctq3fukju6rvi7kac7fgcf7', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230711', '乌马河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1bbs3btv14jd4qdi7ei1d1gq47', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210104', '大东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1bdhsid1s6igir2pvb8pc0r28f', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810016', '沙田区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1bgm1k02g2gbjqnsbulrbfkieg', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530325', '富源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1bl3m8tuaqjc3qppim0r929dqf', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0715', '421200', '咸宁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1bmb5fb1eii55qjm4ccvrd34sb', '3pl0iskkj6j2voi3qb1u15fnap', NULL, '0974', '632525', '贵南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1bsrhdrsqmgldpn0bg2t69k2i6', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0576', '331000', '台州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1c8hhusuiej5koaf0r8vt66c0d', '0e3vofpadojc2pgos3gmaqll0s', NULL, '1833', '511402', '东坡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ctcjktn5sjiurn43n2ft326ht', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360482', '共青城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1d6icjpo7uhs4rmqdkrdu2i1h0', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '桥头镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1de5s4jfqgid1q5irp3jnc4gnk', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330327', '苍南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1dg8g09i2ohf8pm00dlsdpjl12', 'ojubqkbsvch66q0otd5vajml16', NULL, '0437', '220403', '西安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1di6a2qjvch3hovidsp9g6f2b5', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141002', '尧都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1dibbdp4rggauofsd0ead8gmic', 'spcl2traagiofrum521umd4mei', NULL, '028', '510117', '郫都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1dphemi4iqi84p0pi76var8pqh', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141028', '吉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ds7v4lt9khb1rfdp95tc83oa2', 'rnkr9c7ecehuopr9arv698rfol', NULL, '0660', '441521', '海丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1e4uv65nbgjbqr5b587uv9do8e', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '板桥镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1e8r20fthgg24ojpil83dqq93h', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411721', '西平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1eb83omv1mg9gqt1nscm443ame', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450108', '良庆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ehpm8brb0j6fqu5bmhu0e6ric', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0539', '371300', '临沂市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1f3j7tf7megdbph99c421e7ja2', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231005', '西安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1f8np96rbmj6srfg1u54diutr9', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130427', '磁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ffols5g16j72p4autoca46fqc', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522328', '安龙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1fju2rsat0hlipd8eqcr6otj1l', 'prkb4lm02ugakrv39cjkl86hn9', NULL, '0832', '512021', '安岳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1fnthan7l0gg2om5g64un1bs56', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511111', '沙湾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1fovln5odmhnupm4asp7cgrkvv', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130722', '张北县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1fpg6ijfq4hgoo2u9if8hiuse9', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652924', '沙雅县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1fqr2bdkn6h06pt7b3km61ec8a', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532626', '丘北县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1fqt2g9ei2g31oej8oh90c07h9', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340124', '庐江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1fs7pvsi9qi30o2o3m58belecl', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610104', '莲湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ft59ifrjsiohrn4pau5ag83nh', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230702', '伊春区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1g0s3k51loj88pod8jbk69vong', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110107', '石景山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1g1524jq64ghuqamc15kn2npdo', '06rn62r4tggd8o95iltccc53ms', NULL, '0594', '350304', '荔城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1g1or5510qgvtr8iu77i3j6ns9', 'odfe2v16akileq13dls31adite', NULL, '0718', '422802', '利川市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1gidcgi24aimgoq3u112m5ilr9', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '博鳌镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1gjp81r5p6gkso8q3uibghnhku', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130822', '兴隆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1gptis09u2if0psf9d436gj4sq', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150603', '康巴什区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1h18jfsptchroqdqqmnfmd18tb', 'spcl2traagiofrum521umd4mei', NULL, '028', '510115', '温江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1h6fd7o046h38qg73l5c8j68m6', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500243', '彭水苗族土家族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1hbu7m469kic9ruogs8ft0109q', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '沙溪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1he7amt8gchk4p5lv62mmumd67', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650104', '新市区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1hg08s3u8gh0qpnqmgu9n5jh3n', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120112', '津南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1hi8ar7mb4hfbq9lg7qb15491r', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '国营乌石农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1hsol142auje2rhmegnl8diagj', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653224', '洛浦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1i0vorqc9og08ojvj10gna7hkk', 't8fhi5nj6ahr2qll2e8cqg081v', NULL, '0543', '371602', '滨城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1iarf62bc0hr0o1qa04b54susr', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130434', '魏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1iifhd7m6uj28r2vcj2bnpb2q5', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '中平镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1im3gsh5rujcsoqshh30110r6v', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540527', '洛扎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ioscb6usei87ore1ehp32d9l8', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510781', '江油市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1is48410g2iunpbt9fdsp4sh81', '73074v4qq0g5ars2cec58gpq94', NULL, '0553', '340200', '芜湖市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1j0ocnof2kh0epm1kicb6r9sl3', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '黄潭镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1j1qhml9mgikgolfttgdk412bq', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150202', '东河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1jb81c6jb2h7crvhe3gio2pvh0', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451030', '西林县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1jbmod9sl8j6grm4tu2r488rfk', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140226', '左云县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1jcmlsouc6h7rpqlrhok0gdbob', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540629', '尼玛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1jdc0f8j9mh7vpuopgd8tn9qah', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511527', '筠连县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1jf25ek6g0itcqsvmll7ch64ab', '27snrp1n9aj30p6nf2sfcc8j24', NULL, '0938', '620503', '麦积区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1jh0nj63q6gdqraehf3h66ardm', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513326', '道孚县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1jspm3an64gfpptt4bmr4t1cca', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350981', '福安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1k4qr77mt6jd0prp9l13cr0del', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '兵团皮山农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kaoa0j1gui3ko1r2t5g3nmnbu', 'ttrfngqcagjlrruiq3uvtd6e9u', NULL, '0738', '431321', '双峰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kcfgk6dbggrir7j1kf1qo3m1e', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '毛道乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kcp54tdl8hn5q9dnpj5mdu3s4', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411621', '扶沟县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kf9b22j0kinsp0h69ibb20gn4', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0570', '330800', '衢州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1khqkbfu36i0fr0v6q0aec6evm', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340111', '包河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kjeg28h9ki9vqmu14dh9h1ovl', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410725', '原阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kme6q292uikpplckhuqv4js4m', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '吊罗山乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1knb5p1un0jurp12ldg4h035kj', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652826', '焉耆回族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1knipscfccg64pej7f4uocduto', '37mr9n7p10gf0otrgdqkl3mfdh', NULL, '0419', '211005', '弓长岭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ko9oolniig9ape5qu7k58pd8u', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130706', '下花园区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kt1cd433khn3q8jbimled5qva', 'pgbho69sn8idkq1bkddd4rhl3i', NULL, '0416', '210711', '太和区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ktug1ipo4gfbqt5q1p7qd2plc', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430121', '长沙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kuq9kes1cjp2q7qeajn3o4eu6', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0898', '460100', '海口市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1kvri5qvtginpo5ecj7dgm64qa', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530128', '禄劝彝族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1l4c0omq06jovpgba0ulvtcgvc', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610922', '石泉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1l7shckllah7aoh3h8csrn6e47', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '阜沙镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1lcn0pu1bgg2oq5k8i8f7ngenr', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130630', '涞源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1lcuu37c3sjllod05j8u9opjp5', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320105', '建邺区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1lnrrr87ikjdvqjo2tt6g18r75', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141032', '永和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ltds9cnr8gp4pn9jvuri5envl', '5ronu5iaiugd9p6ubj28usjc0c', NULL, '0937', '620902', '肃州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1m8ua639g8ieerqaos11psocf7', '6vjtnufp2eiqip75uek05pm3a4', NULL, '1999', '659008', '兵团六十八团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1m9j9amib2hk4pkjgfq7o22g9p', '4h85ig3mruhk8plgdokttalo7h', NULL, '0459', '230600', '大庆市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1mcvmolbi4iplqme1k5os4jnn3', 's18hnm2dhmhbqr9pfapopra4jh', NULL, '0464', '230904', '茄子河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1me4vsato4hc0rs8g4ak20kokb', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210103', '沈河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1me9mbdds0g44osb6nblp7rq0j', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370117', '钢城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1mf2bc1bbeg5ep0lo93qfh942h', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130981', '泊头市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1mfedseemuic0qrr3pqti7dlrr', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130133', '赵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1mkptma98qi1tpt3qr5j9f92np', '6n7d2g7a0ajhnrn6157cin88j0', NULL, '0514', '321012', '江都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1mm3a28lbih0drfpa5hobbjspa', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0355', '140400', '长治市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1mvvuf9pm4jq8rasb56hak8m0u', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330203', '海曙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1n9n51tbgshobqs90qlodjf0ku', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '乌尔其乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1nfbfkn1aoisur2s61t4b3rp7e', '4qdrdicvvag2co7ik7c60gs09j', NULL, '2801', '460323', '中沙群岛的岛礁及其海域', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1nj91s8d62hv1qq402530sukma', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320104', '秦淮区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1nri779cfajjfqv4427mpiut6d', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370702', '潍城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1nsj57386mghkq6a7f26qvjbal', '58i0mts36qhv5rbhjfp25gbscp', NULL, '0994', '652325', '奇台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1o18gq0h18g7vo60gtfho0ula5', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '五桂山街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1oasf8gj84go5putr9ukpa7dfh', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0909', '652700', '博尔塔拉蒙古自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ocelb68rsi7qr0akavsmmt752', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540531', '浪卡子县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1oki9a4igqgq3rcllh1dmt8f3b', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431227', '新晃侗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1oklm5ariahl0r5u2lmfkh0ln3', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130426', '涉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1oopdol0psjh6q7rnuv7o7mbk5', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441424', '五华县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1p13edju6ih0cqnadnftkq4egu', '1bl3m8tuaqjc3qppim0r929dqf', NULL, '0715', '421221', '嘉鱼县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1p3ld5tvvags9o4t3i98ngfk7p', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0352', '140200', '大同市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1p4h9ufnuehihr62ki5flj99vq', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0439', '220600', '白山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1p5c09j6nmi20obqdrf4ssm3rc', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '蒋场镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1p5s8kstp8gljrg69lpe2mh975', '5qoh0u5taait1oag7c3ar2a914', NULL, '0972', '630222', '民和回族土族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1p9v5f1h0ij6mqdndq609ln3g1', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市大峪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1pcqa5eb66jm8p9873h8moui7d', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0719', '420300', '十堰市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1pdupbu03ahlrrnbs9e5srjjjc', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130803', '双滦区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1ple7rcrq2jh2prksjdelmqknc', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150784', '额尔古纳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1pm4rms2aqgvapntv00au9pjma', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '多祥镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1po0fl6r7ei9kq3mr8g0takon0', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610828', '佳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1q291hjf2egb1o9vsq37jutrk4', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430406', '雁峰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1q33pq2fhmhpgolm51snglcf23', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360828', '万安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1q3fui58mcgi8p0b39jgsu3cec', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350921', '霞浦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1q8eqci3boju4r9emmd7mj1a1a', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230206', '富拉尔基区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1qg5k7c4rci9crkk2fff5p4ais', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130406', '峰峰矿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1qlvajb74ci1uopj5a3fdar4s0', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320583', '昆山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1qmjnv8f48jt1od1kc4sbjagvp', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130407', '肥乡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1qnirqnf48ifhojdsh7lonno5e', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511133', '马边彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1qpjv9rm7mgjnq0a679lkec81t', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340221', '芜湖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1r7915e8g0jalrr5vst5cfuiol', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '1774', '451100', '贺州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1raqpjop70hqgrn4amnmbh5b2e', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610827', '米脂县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1rcmevotj2g3npteqjfp6p1cl6', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370705', '奎文区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1rcpjeq2e0i2opoe5j361el384', '3bdk3fa2jsg4mp5uj5t958lubb', NULL, '0546', '370505', '垦利区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1rdgd20vjqj83r1vtinq7csjgr', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '永安坝街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1rlu5hkqqsgs5rbevb4ts9t2ra', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0996', '652800', '巴音郭楞蒙古自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1rnf5v4j9aj4uq7a38i70p9ghj', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361030', '广昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1rvded9teuib8qs1amkihnmhic', '0sh732c7saglcqaktuna9frole', NULL, '023', '500101', '万州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1s1t8ocutqjl2q3uhmh1epnbi6', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652926', '拜城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1s46oqclqojdlrn2hs74jf2vu0', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '350000', '福建省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1s7ue38u7ah6no53st12q49vo1', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500231', '垫江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1seoklbbocipjof0h223ggg1rq', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0976', '632700', '玉树藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1svnut6em0iecpcoirlo1v9iq3', '37lkb4uoschrorvo11dt8af060', NULL, '0977', '632825', '海西蒙古族藏族自治州直辖', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1t232jo5pch34prqa4899hji2e', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0775', '450900', '玉林市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1tg88kekeshe7ofh92s889rtaq', '4h85ig3mruhk8plgdokttalo7h', NULL, '0455', '231200', '绥化市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1tmtbltj9ej0jqafa4rrgaaef6', 'rrrrrbqoomgkjpn813qk4fa2pf', NULL, '0356', '140502', '城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1tpqg86r0mhjjrm5d4uf6l9umh', '7qlqlaae00iiqqidb7lrulifjk', NULL, '0427', '211104', '大洼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1tr2q49qoejooq6p2sch29iuko', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '高埗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1tsflakf3ij06ptj1019nqfuso', '51jm31pu5sgtuoplndgclh1oat', NULL, '0398', '411221', '渑池县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1tutfeg6e2gaaqrig8554nf9ig', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530125', '宜良县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1tvaec46qcjf1qhqebgmm312jl', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371422', '宁津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1u0pcnbj16hj2rvrfqpp07nnbg', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '文儒镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1u4pjb9tfchpjresn3s3d28h47', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350427', '沙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1uegog7pmmjifo8fciilr45sk0', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320302', '鼓楼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1v0cqiqhqegmlqugop3g4i503o', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360926', '铜鼓县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1v0r028u46g31o27u4pmh4u0nm', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532924', '宾川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1v8a25ihbuhofqmhumnet5lsdl', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610326', '眉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1vb4aat564ifqpvtkje61qa8ds', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440224', '仁化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1vfhf1l2aeienrh3lidot5jlad', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530129', '寻甸回族彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1vkp2qpenmgr0p6t148hqjf6jt', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441422', '大埔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('1vorn06hkmh7kr4cuicj1e33k6', '37kd80t5ksg98rljq1o2rt6eq9', NULL, '0592', '350212', '同安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2051oaiqo2hp2pt9pnt2org0jd', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0839', '510800', '广元市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('20d9lccd8ag0vre8qr9cnrkvr2', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511303', '高坪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('20ksadof7mj4mqm7kr1e0ko0ui', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '通什镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('20lgforipairgqekedt6rf15e3', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '嘉积镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('20rdr8oqrujn1p30tvp9q91t4u', 'ultj2le7dogcvrhrl50rosc3j2', NULL, '0908', '653001', '阿图什市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('20rm1436oeh1fpvvr1b9d2cidg', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433123', '凤凰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('20seq8lbpuhjno98aggn9f22p4', 'ov5d4q3dgajrnqgofjig0p6pa7', NULL, '0538', '370982', '新泰市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('20tnns9dgig31rm3qc37ehmsi4', 's01ev31uaaii5o2c20akaigmi1', NULL, '0724', '420804', '掇刀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('21564p1o2ijner7vvkhh5gfme6', '4c470m8mi4hj9poerdko8hultd', NULL, '0555', '340521', '当涂县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('218av1kvqeh2uokchagtugh5ud', 'vjd4qgm2jcj61qspc4t5g9n8lb', NULL, '0701', '360681', '贵溪市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('21ern1s4migubrn0gpi218vb4b', 'rplo4obrmkgudqlmm6a37hu0pl', NULL, '0558', '341622', '蒙城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('21evdeil3ighgqp5u3poqpu11p', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420626', '保康县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('21f4kslnq4jgdppcccjn7fp2oo', 'rnkr9c7ecehuopr9arv698rfol', NULL, '0660', '441502', '城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('21pe2bgl0chaupduomr8tpis4v', '0e3vofpadojc2pgos3gmaqll0s', NULL, '1833', '511425', '青神县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2285k06nhuifbqluoa1secjsh6', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540523', '桑日县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('22e7op1i0qiojrkvamm074ga1u', '4u3v24knm2i0hq3rfss8a7v6kh', NULL, '0953', '640303', '红寺堡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('22gukrmo7mhero5r7fhjqnahiu', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0762', '441600', '河源市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('22gviv8avqjlbq7o9hjqchk1ug', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441825', '连山壮族瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('22p0i94042ihfo9hh743jtriom', '4vn6hgsekehjhpq3mlturrsul1', NULL, '0825', '510903', '船山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('22ukj7imhmjj1ral13vcda7fo3', '73074v4qq0g5ars2cec58gpq94', NULL, '0562', '340700', '铜陵市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('22v93hr6bmgtnqhjkhug78ac1s', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410205', '禹王台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2344mqbf4sgpvo47c4o7b1urbl', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320923', '阜宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('23b4kkl5l8jj2r1g42um7vq5jr', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230715', '红星区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('23bp6ce7ooi6qq4n4v2f0d4fdm', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '陈场镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('23ircset9uis0q3pofk8a4aiql', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440309', '龙华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('23rkvnld44i0rosgoha0g7anub', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '寮步镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('242946er10ia2qruau3adq7mkl', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230124', '方正县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2434c9gs3uh9poa9rq2ikit86m', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370212', '崂山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('24aa84gu9uhlgod02rrhs2g04b', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '650000', '新疆维吾尔自治区', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('24bmhbn9qiig8q69vedsi5tqq1', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '1391', '419001', '济源市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('24ek4jjegkginq47tl6e6veu9d', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '东凤镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('24hjdqv4igitrrt3p9nf371tfj', '79aet5qpkij7uov01h5hagemhj', NULL, '0737', '430923', '安化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('24tasc7pq2jtkpp3a2imt4abqe', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451028', '乐业县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('252sv42q00g4opce3pggevqfv4', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361025', '乐安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('257lntojo0in7o9forjocoo6jk', 'unburmmpauiapo2temd5r01tgn', NULL, '0572', '330502', '吴兴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('25a28v33geicoquibuu4bpjkun', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130203', '路北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('25fp0fv31og87pb0rk6ikjuhca', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131003', '广阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('25itgaapjog1hr2tn2dmogbdct', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411329', '新野县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('25qscguer2ij8rfmhl8ffj7jd2', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520623', '石阡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('26081g86fuhaoomql91v8pc1nm', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '石碌镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2613a501ekgffplgqd2tkb0fsn', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511123', '犍为县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2628m7qg3ogohrjpo7iaq79rb5', 't3i3jj4066gniomc1nimc5a67r', NULL, '0456', '231121', '嫩江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('263thstsdsgnvpcv08ivs5p15t', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '重兴镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2652ct6jpui00p1pncn9h9hlrs', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110114', '昌平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('265rgpbk1eho9qfsj0ve76d3h7', '4vn6hgsekehjhpq3mlturrsul1', NULL, '0825', '510922', '射洪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('267umj69doh47qfpka0u55qtfb', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653124', '泽普县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('26bm4kcmpojvuopfg8elg84r88', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411602', '川汇区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('26cbn2g90si8drfdo9d48600mp', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500236', '奉节县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('26iiq4gf82gbar73992s7qg7a4', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520102', '南明区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('26rpk1amtsho5rt7bqd1olpbjq', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331122', '缙云县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('26ts6mieesiuuovmkrolb98rd6', '71s5tgjdeig0gp5uiqtjak9c53', NULL, '0429', '211422', '建昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('26vndjkg4khaqr0o62500jg4g2', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511524', '长宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('271kd4u9bcjjeo2q4sb0p20enu', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450105', '江南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('275tepm95air2ruge0mk7sc7m2', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350902', '蕉城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('278pucnao8g5gp87356ghcl0ik', 'r401ektu6ohcuo5la91f317ved', NULL, '0932', '621126', '岷县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('27fm5cu7i2ijirs12gdnse24m8', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520304', '播州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('27fqaj5knki55qntf9gshdfqod', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411325', '内乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('27or7tc4o4jmdrmssdar48nkoa', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530923', '永德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('27snrp1n9aj30p6nf2sfcc8j24', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0938', '620500', '天水市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2803leo8pkh0hrt0i0gmgnc6dr', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350526', '德化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('280ajs1j8eii6qga1r4v4hib2v', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410726', '延津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28a15lpkqsiuqoudp6cqi4md3g', '2m8o56kpboi95php7scrtplfqj', NULL, '0518', '320703', '连云区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28c9fap0nmjt7qv3mro876tmlb', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330211', '镇海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28ctbps424i14p386dsrim8ul0', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511822', '荥经县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28hs4riecojkeq7ppg8h3ikhrg', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, '1886', '710000', '台湾省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28jr3car5sio3oqe0oicm92rlv', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371403', '陵城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28ko9vkr6sggfp71570928lspi', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513429', '布拖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28rqfuuqi0id5p471qbotg173f', '6bg0fght3mj72q0b86qnedbd5p', NULL, '021', '310100', '上海城区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28t94hm0qihshrbrfb1hnjl914', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '五湖渔场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28ubkgbjm0ibor87c0t74gjcio', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371481', '乐陵市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('28vjf1s0mohs0pp7m1garhji11', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '1898', '469006', '万宁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2936ihkvsoitkpaj8umcr9s94a', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141122', '交城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('293e77jdhqjokqtre0lq4np77o', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市梨林镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('296072mjfei98r7od16qlqbai4', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610425', '礼泉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('29brv9t8qoj8uo102aghqrsl3k', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131126', '故城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('29d3io4g84i2mof3f6u230kv99', '6vjtnufp2eiqip75uek05pm3a4', NULL, '1999', '659008', '兵团六十三团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2a0810dvlqh9dp288a7p5mptr5', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532930', '洱源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2a664m2meug3sr82cr3s938tqj', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532502', '开远市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2abitfiktohaeqounh3dom6440', '42ktkqnbeshqtobfaj036hf0bs', NULL, '1772', '451381', '合山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2afdaqbfnqjv7o0kt0n8hf5adk', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622924', '广河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2aivu69idajb4rmm2egcqu92u4', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411426', '夏邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2aoodh91ruiklqmrmo4c1tmalv', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411729', '新蔡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2aquuink92i2mo1h88g719rpgh', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410203', '顺河回族区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2atvvic3hoikmo4k9l2qelvbc1', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330782', '义乌市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2b7srlh538hk9qo6u2p7iil7ai', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532331', '禄丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ba92ijhc6ih1rl82mfocdp8pk', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350424', '宁化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2bb7f1lj42g62o78ev8rj2lckf', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430511', '北塔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2bbid5mcgejk6p07viemos22hk', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331024', '仙居县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2bc0uo4mskg4bp9ubu6eimm4jo', 'vef8djerl0iorr8qsm85uh6u5p', NULL, '0415', '210604', '振安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2be5gm53pihh8olcdiota82b9v', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411681', '项城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2besn1epumj86rpmf7in771iot', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341202', '颍州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2bg35v80jkj89rr4hjmqrrb78p', '0sh732c7saglcqaktuna9frole', NULL, '023', '500112', '渝北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2bs2omtgasijoq25d0tttc9bej', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433122', '泸溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2bt9godatmiv2rii92gpou9flo', 'rnkr9c7ecehuopr9arv698rfol', NULL, '0660', '441581', '陆丰市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2c110hln94johopdepff8d89nm', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360426', '德安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2c7btqsafqht4rfdmorrth6rkk', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530425', '易门县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2cadhtjda0g2bpcgbmbeviuli2', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0578', '331100', '丽水市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ceu3muumcg8irrr1uuqtbjpi8', '713abj07d6jguq4ruatgsjhp2h', NULL, '0919', '610222', '宜君县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2cfsm5ue74h1proqiukkvccbee', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '畅好乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2cj280e2a0j9voi7sq6beequlm', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '南圣镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2cjc5qt7j2hooqorkqe6jakgp8', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652827', '和静县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2cjloefhrchvhotsfbmcd489p2', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441284', '四会市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2cr5g1a280g3lqjk623js8ji35', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360803', '青原区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2crsfp1gsiivnqbddt5srgsr6h', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330110', '余杭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2cs7q1mlaojbfrkcjev6jv5114', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440111', '白云区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2dba124vr6jnsrc0bnbvv72jvo', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140726', '太谷县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2dh45ncfl8jc8r69gnl43plp3j', '713abj07d6jguq4ruatgsjhp2h', NULL, '0919', '610204', '耀州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2dm9a9a6vmhvppumpfr828buh9', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130502', '桥东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2dok7opsdehuhpr315ppcq04gq', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420505', '猇亭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2dpflph2isidnqraih0o6bndqe', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430405', '珠晖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ds7t397j4h00refl8v1k412jr', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450225', '融水苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ecobfnkpkh3ernl8nkuv98bn8', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511112', '五通桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2eqn3499b8gbnogb7h4o7b9mnk', '338gdrsv2aj8srrsd83k0rehe0', NULL, '0631', '371083', '乳山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2evn9d4rkogobrjqvt4so9m52l', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451203', '宜州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2fa9fjr8o4g8iokl9mp9j0hol2', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350982', '福鼎市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2fbf062edsjf1rrf1i3pl6n4jo', '37mr9n7p10gf0otrgdqkl3mfdh', NULL, '0419', '211002', '白塔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2fcjkkos28j51o363gvc4l64di', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0533', '370300', '淄博市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2fd55i0c42gbprgmqubdi4hmbt', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411481', '永城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2fpfrpokm0ie3qstrtij1bm264', '0sh732c7saglcqaktuna9frole', NULL, '023', '500117', '合川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2g2d2srf3ugmnp7cb1qetpn209', 'ph5b69fq9aioeolk65ov8ahe88', NULL, '0523', '321281', '兴化市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2g89v6t6jkha3rf2i28l70vbmj', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530621', '鲁甸县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2gdd63j2rih9lohk0nmlct3m29', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340208', '三山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2gflcgpprsje9r850tr0h84ei0', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610430', '淳化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2gjkmkghmkg51pd2tdfjhdg0j5', 'pma35v8v3aggbobuot73v69lpj', NULL, '0916', '610700', '汉中市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2gp0irs25sicsqlvd0k4fr1kug', '22ukj7imhmjj1ral13vcda7fo3', NULL, '0562', '340722', '枞阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2gpg82ralqh4kqmhol9fn6kg6f', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350521', '惠安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2gqp5sf8l2jcar2ok2omlr8hlt', 'q4pj7russoio3pgias2lqe2r50', NULL, '0632', '370481', '滕州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2h5feoelmgjmcp52coqiri71mf', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361130', '婺源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2hbtairp80htjovd3ruiib3lrv', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350626', '东山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2hjuf70kasj4gqa34ikt26c3g5', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430204', '石峰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ho518b7sgj9pr23dvkcd9ohk6', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '国营东和农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2hr95masqqhapoo797nd3euvpc', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371425', '齐河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2hs08m71e8j30re3h6aenum25v', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150523', '开鲁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2hugbe5f52gahre2lr59r6236o', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230710', '五营区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2i3720h5i4gabp2jvq97abdje9', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513425', '会理县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2i6p75larujv4qeoolje44kskl', '37lkb4uoschrorvo11dt8af060', NULL, '0977', '632801', '格尔木市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ihl7g3t42j2upaohog0qd9nl3', '37kd80t5ksg98rljq1o2rt6eq9', NULL, '0592', '350205', '海沧区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2iqb5d9940j3oqtcss9ll3l9lf', '0cneommh20hkkoeb6ej4o84ovq', NULL, '0757', '440608', '高明区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2j5ni0ss7ih0sr3uqa528n587f', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222402', '图们市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2jb3bm0kjuiorqiufks4npu65c', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120116', '滨海新区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2jqv30grt8g2kq7bgcbmgtlq74', '6ojqaof4i6hriq6i40nmo3118a', NULL, '1909', '659007', '兵团八十一团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2jrcq2nsfcgudon68uclhqmf03', 'r49o263llihbqqhn2sj6rohn01', NULL, '0566', '341723', '青阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2jrlau2pl4j7qomgurlr8ab7qp', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622921', '临夏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ju4je230ki8mpgfj14sn0k58s', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610329', '麟游县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2jv676d23uh1ip418a2io5214g', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540322', '贡觉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2jveljmpamho5q0bkevcu8r214', 'tnotu917v4iojo2esidl11v6ed', NULL, '0887', '533423', '维西傈僳族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2k7j1187jejhopai4284mbj8pu', '5ijfthkv36gfcr3g07s6umq73v', NULL, '0830', '510524', '叙永县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2kesaq6qfgj2bp0cihhagpcjqo', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152525', '东乌珠穆沁旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2kfqsad10qj3uqp3o0ctvgo1sv', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520181', '清镇市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2kug0umr4ijhgof00e62pdevsk', '73k659jq2ah6fppa6qe6rlojmd', NULL, '0692', '533122', '梁河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2l1ffsl886h22ru60e8rdcepau', '4rslmb3lhqin7ots9deq3lppkl', NULL, '0349', '140622', '应县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2l3gci9diijd9opvja7brim7l9', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421123', '罗田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2l7d75phf0ipao9vnqht5mfq70', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '翰林镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ld9829v8cj3oo4qdk8dae69c3', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222406', '和龙市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2lnr03m6asis2relaq3n13qtsi', 'u5g0dqtknogkbo5u5r0fatdic9', NULL, '0438', '220723', '乾安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2lqhh2edkijg3rlrt4a7b8qucb', '62rq1jvhi0in3o6uv0ofm3t026', NULL, '0417', '210811', '老边区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2m2ibf7pi4jdqqbutd65oedma5', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150922', '化德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2m439p0na8j9ure927n1kdervr', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360702', '章贡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2m4rsovhc0gvaquf41dlqr2776', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410502', '文峰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2m7ggc0ogug2br14bahme1a0tk', 't6ts7rgoi8gapp256goa0olvun', NULL, '0995', '650402', '高昌区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2m7p2boj5qiibo0isrhuv9g3q5', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410302', '老城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2m8o56kpboi95php7scrtplfqj', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0518', '320700', '连云港市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2mhpu6gaiggtgqntv2459c376k', '0vt189j90mhv5pr2nfhjkiia3k', NULL, '0714', '420205', '铁山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2mispm5mj2g4oqdnfe08nvcvth', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610724', '西乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2mq3c1sbdohdfoqntoi3doktjm', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '金波乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2mr05m5ks4hj2pjopq4pjv3m0j', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540224', '萨迦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2mvak78ftui4ir7bvfhkpabjlv', 'q4pj7russoio3pgias2lqe2r50', NULL, '0632', '370406', '山亭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2nlv5na38uhmoofbpfurhllj7n', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530324', '罗平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2nmb7kmqs2glvr0l04dunm4coc', 'shc3fh151oje0phuaqshgfndhb', NULL, '024', '210100', '沈阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2noa5h27deg9nqn2m41oauembe', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620103', '七里河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2nrrjg4j2igkhrdqvo885ckl3i', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520121', '开阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2nu07qrplkhq8r0aaehelrtt2o', '0vt189j90mhv5pr2nfhjkiia3k', NULL, '0714', '420281', '大冶市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2o1puaat4aiqmru0e4rrehn4di', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1998', '659003', '图木舒克市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2o3v7hm6vaj4ircvv33u9453po', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610481', '兴平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ob13hgfeqivrofmek3fmptjdf', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331003', '黄岩区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2oc5caqrv8gcbppcg7l8mqt7va', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330703', '金东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ogad99elkim6ools4kfc3k10q', 'uuv8fjp592idaok8uh3vkbahon', NULL, '0813', '510321', '荣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2okqpl2ceeh5voen13r7bv8qtn', 'oc9qu4fkt6h4lq8ju4qh6b43s7', NULL, '0580', '330921', '岱山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2onpanpelgjg5qh993660ekh3i', '488ldusspkgm4opgolg1s39t80', NULL, '0970', '632223', '海晏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2oqvchr8juihuqhfi0ef4juefv', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361181', '德兴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2p22f868seiiconl39m82qqr97', '0567knr96sgddrc1plstq0ta7p', NULL, '0754', '440513', '潮阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2p250cjp8qg9jro6qphbp34ucd', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360924', '宜丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2p4svna6g4jk2rqb8poq0dracj', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652923', '库车县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2p78a58oreh05qhnhs2ksrtag3', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410482', '汝州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2p7e6m67eiilaooag5dlv9l0q8', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340203', '弋江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2pfk8hls2mh0tr0nefs477smc0', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150724', '鄂温克族自治旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2phoimh0bgg9frkjqa3eidfibt', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431124', '道县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2pni0182e2i0kpkqoe5rs13d42', '3dcrfhnm1egf1pf369o247jtj1', NULL, '0559', '341004', '徽州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ppva0on50jeurj6bp65vfkede', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130924', '海兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2pr3h87qt0i8eo8h0dh5h7dk7a', 'ub0dk32t6igiuo0ugm6jfdjsn5', NULL, '0750', '440705', '新会区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2pu7mtjrnejp9ooiotf0o1b7hs', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231226', '绥棱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2pvlblpk46ipfopu50but86mn0', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0997', '652900', '阿克苏地区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2qar1qeon6galoijdv2mo2j94s', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140981', '原平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2qhskf2o0ujg1obp054mgu6me0', '0sh732c7saglcqaktuna9frole', NULL, '023', '500105', '江北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2qm2mcmt52jdap1036ltv9pa38', '1seoklbbocipjof0h223ggg1rq', NULL, '0976', '632722', '杂多县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2qvhdrcp9ejv2r5p3b8v3d5733', 'p9uptib1nki2hrjanf1sdk0qoh', NULL, '1832', '511002', '市中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2r1qhatk5oivhqgi1go6jijhqt', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150421', '阿鲁科尔沁旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2r492dqn2qgmsrruljqntr7v75', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520112', '乌当区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2r62dfje16j8lpvm35ni0d34a1', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230224', '泰来县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2r6ot3gqmsh5io4moi9vqrfdej', 'qe9qqc9ih2i7nrjb1p28g7ssae', NULL, '0436', '220802', '洮北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2r77urc5tohtoqitlarefimcfo', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620122', '皋兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ra9facmgmiuios9mel3sdd2s7', '7clv6jucsug1docf6sia80h0g6', NULL, '0936', '620725', '山丹县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rantih66agnooj3vop2aqfpoe', 'pap05ht94mhc2ppr8m66v2ibpe', NULL, '0886', '533324', '贡山独龙族怒族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rckih58gsjocperqjdkjfput7', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '赵西垸林场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2re0is7n2qjjcpi8al6aotgqbv', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522629', '剑河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2revrmgqp8ipno2fmluh5fmppk', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150221', '土默特右旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rf520somgg8orfdul5bvjqvv4', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230705', '西林区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rffojf1cgjhvqfvbrrfd5sn3v', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610928', '旬阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rnnbnai7kiubq3m66cc1dgivc', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150524', '库伦旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rorql35pag8tq3j8nhmbpsuho', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522601', '凯里市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rrvkndd76jklp62mlvmcae1t0', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421023', '监利县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rsiala982hbhq2d9i2gllsn58', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440883', '吴川市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2rtvaanhlmggdq03srp8bvu6b1', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140702', '榆次区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2s1inl7cqahsvo7gfnd9mapgnm', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0816', '510700', '绵阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2scocmmj58ha1qinnmln6vdva5', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310109', '虹口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2sfp9nv1pgi7qqqcbvc6913aid', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430611', '君山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2snjmptiaehheqjcecfcuh0k73', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500233', '忠县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2sphsp3oqoicootq010vtkfa3r', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440881', '廉江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ssaoo4chsj0congc53mcrqvvk', '0fkqp02rlmj89r3o4fnb5evtjg', NULL, '0662', '441721', '阳西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2tcc2tt4eqhsjokt90nn393jao', '1t232jo5pch34prqa4899hji2e', NULL, '0775', '450902', '玉州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2tg8sgngcojelqt67r6s03jthi', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410184', '新郑市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2tmjmohi0ej8br6s3bhp2v64g5', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '白鹭湖管理区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2tu1r81ipegfkr1ahsj1i2fl53', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610627', '甘泉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2u09hltemcga6od1tp6l3p3cgq', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654021', '伊宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2u1qt19rd2gbuqc091dqvur5i4', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市天坛街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2u6cr9vgseia9r29k336push5o', '22gukrmo7mhero5r7fhjqnahiu', NULL, '0762', '441623', '连平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2uaqka503gjkgojuesrjlkovca', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230103', '南岗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ucjim2s7agfipulosopris74j', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0809', '469028', '陵水黎族自治县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2uh1tkm84kjs7p370uokr55h4h', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0856', '520600', '铜仁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2ulvaafh2gjh0quk8dgtsu4e6d', 'p84u1jr0m8jcdqckqm7u2cim9f', NULL, '1771', '451424', '大新县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2v2t7s7io0hvkr2nqk6g5ejpn2', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653125', '莎车县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2vi5j3mmsmh7nofecvpdagku4i', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610331', '太白县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('2vo02irefsh6brcurqa6ebhsl0', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420527', '秭归县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3048cb339qiqdrkpf9otq94ga2', 'r8kfk45og6gjcp9c2gnsrfp22e', NULL, '0691', '532822', '勐海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('30adoqbjicg3ao8gd2scth10ct', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0777', '450700', '钦州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('30bk8r5gbqg97r9g9d1nroo0p7', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440232', '乳源瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('30g00jejeaghqrbos1qh62ir64', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130284', '滦州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('30t7hlg8a6gi6om3dsidfdmb09', '4ohfo84880jgqquoscofhr3sdi', NULL, '0414', '210521', '本溪满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('30uc76012eit6qg7fm50f70lfk', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530624', '大关县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('30uuh54kp8j71olegr5cg0pnhl', 'r6gk1pnptmhbtpfuscpet5g6m1', NULL, '0597', '350823', '上杭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3100rhfnmcin9p0o4em0jpokvq', 'q04gvg77l6g58r9c0mrbe6cdl1', NULL, '0552', '340304', '禹会区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('317dor3h4agqirj8qj1l65g3ps', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '园林街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('319v0otkj2jqhpjbtabujikv6e', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310104', '徐汇区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('31eq3skk7kinspau5dcn4uqfg3', '3dtgolo3qmgjvpvprumtbedvq6', NULL, '0353', '140322', '盂县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('31hnmsr4hajg0qbp3dvnjhiem0', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0901', '654200', '塔城地区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('31lp5fgrrej62rra6scph600c9', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440804', '坡头区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('31ojlemvqaillo52rdtnad161h', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421081', '石首市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('31rp0rlj1sglvpacbt545ujdbq', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410222', '通许县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('31sdk4el0eiirronmm5lkvlnnf', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141124', '临县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320r6g5ad2ia4pgh7bt03079l6', '06l4onpd1qj5eqibe4i2ua2jsj', NULL, '1755', '450803', '港南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3241uqir80iuvqicosu87lsqoj', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410223', '尉氏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('327hs8jsssi1kqdehfm3tu1kvu', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130827', '宽城满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('32bq6rq25chi0obbjegbdmj8b8', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530322', '陆良县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('32c7ihdn72g1er0vo3cti6jd82', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0354', '140700', '晋中市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('32i6lj349ogm4odu2a591rl6re', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430111', '雨花区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('32kp0i83vaigrp6vpsd1d2qjg9', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530112', '西山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('32qkh05ogig19ospin0ojjtrev', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340181', '巢湖市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('32vj5vmlqkglpp6r62fiiqpuih', 'tcp6tkb5q6jd1re0qtde5sms1a', NULL, '0818', '511725', '渠县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('335alcup0mgp2ppqhb5hn3dqm8', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '国营东太农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3383lp3oq8gcdoh8flfidgaja1', 'ov5d4q3dgajrnqgofjig0p6pa7', NULL, '0538', '370902', '泰山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('338gdrsv2aj8srrsd83k0rehe0', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0631', '371000', '威海市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('33980i4d8qg5opdbrbl17k22t4', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0975', '632600', '果洛藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('33e01ltkgajdlp574cnpf12gcm', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330122', '桐庐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('33e2asqr3migsrqf3lqecnc5o6', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360105', '湾里区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('33nam1brjcjs5q02d1rkfq07ju', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '国营龙江农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('33ov7q8r3kgcdpavg3b4pm3c9n', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451229', '大化瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('346gs0up5ijimodf6v5hpdgit1', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130433', '馆陶县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34aegfs9sign3q9m02ptctei57', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220281', '蛟河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34cr3ur5uqhioqinnnll0n4njn', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371524', '东阿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34csmulmuqioeq307oibe3tkju', '0sh732c7saglcqaktuna9frole', NULL, '023', '500116', '江津区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34ds5a2lauiklo3diktnrfepbp', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '国营加钗农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34j1o114cshjqo3bk7b8pqu6d9', 'spcl2traagiofrum521umd4mei', NULL, '028', '510183', '邛崃市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34j9hnca28hrareup7m4g6boog', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130503', '桥西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34jfqej686h2jqompjpcbce3rp', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150921', '卓资县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('34lh76f9cggsap3fevu86iqd2d', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540222', '江孜县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('357uefru2cjivojnpvlvau04vv', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140824', '稷山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('358350vfhshsnrijvu3niq84nu', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532923', '祥云县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('359to4v1uairqrfitlfigenk27', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1996', '659006', '铁门关市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('35dig9ss9sgper2gkatjflnbab', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '龙门镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('35ehi67tigjsaqp5mqcg3cilb9', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131127', '景县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('35krdl8obmgh7plflr5ghd004i', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230204', '铁锋区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('35mu92nlkcjmdorn583mskam7d', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370124', '平阴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('35thu7lq2cht6qh9qab1apji60', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230202', '龙沙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('365l0gcokgjmuquv0jgki1ck10', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130126', '灵寿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('368sr5522ijo4qnit0sptirncm', 'ul67q7c7fsjhrq25s0lg9j9t26', NULL, '0563', '341881', '宁国市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('36guobmauchjiq3hk05eqfpnuo', 'tj70a6cm7giiopralk6q924g3a', NULL, '0474', '150900', '乌兰察布市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('36ts1sbn08j7iqrgc0c878s9s7', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210123', '康平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37534s8kdchnrpv2obujj6nks6', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0537', '370800', '济宁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37b0hedboij6oqvvdta8sn472d', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0859', '522300', '黔西南布依族苗族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37kd80t5ksg98rljq1o2rt6eq9', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0592', '350200', '厦门市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37kv5n6ujchicoo3qt8420o5p4', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0771', '450100', '南宁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37lkb4uoschrorvo11dt8af060', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0977', '632800', '海西蒙古族藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37mr9n7p10gf0otrgdqkl3mfdh', 'shc3fh151oje0phuaqshgfndhb', NULL, '0419', '211000', '辽阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37uimd2bvqjo6pj0vr708sgc2n', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150402', '红山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('37vuhtuhc4gtjp2tetfl9qgaqb', 'srnkeeffdkildqtd63kerd32c4', NULL, '0732', '430382', '韶山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('380crpac5gg8sob0qe7pjkrp3n', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230102', '道里区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('38ecfsubbgiveokghoqkpkmj85', '0cneommh20hkkoeb6ej4o84ovq', NULL, '0757', '440605', '南海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('38lr8f1klqh6kpulupfuf4qkj1', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450102', '兴宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('38nt6v80gqikmr4fuor4kmf57v', '4h85ig3mruhk8plgdokttalo7h', NULL, '0469', '230500', '双鸭山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('390eb6d0q8ju6q92njo5kpirsu', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331125', '云和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('390q3h0b8ii9mosq6has4okdsj', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '调楼镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('393uuoq6n6jjsptflgt7cvk0e0', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440103', '荔湾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('394jtedfeqgnao2tmo6vcg4t91', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350425', '大田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3966gphj5cineocscfsk01th26', '0sh732c7saglcqaktuna9frole', NULL, '023', '500106', '沙坪坝区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3972491hruhbiq1fi1ggsogggl', '5ijfthkv36gfcr3g07s6umq73v', NULL, '0830', '510521', '泸县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('39a8hm29gmj9aonigro0dl6h7v', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '510000', '四川省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('39amo6jvjghl4ro99ufkqkfjr1', 'rbqf56oep4idgptb103sspscso', NULL, '0914', '611023', '商南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('39q963pndmi8mo43ipadpohims', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0774', '450400', '梧州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3a38bfrnh0gisqn54788d314h6', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621022', '环县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3aa2dvtqleg9nrumirqqap1n5m', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430211', '天元区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3agmt8pq5cg9tof9ca1ktjl677', '66bmbfmu26gh9ptr5d7dlpl58c', NULL, '0418', '210903', '新邱区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3agvv9jkgija8q8el20siq268a', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350502', '鲤城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ahjjgbp28j06p8qvj1ana7c5u', 'vef8djerl0iorr8qsm85uh6u5p', NULL, '0415', '210603', '振兴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3akbe5vmuajqcr216dasutqju3', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '530000', '云南省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3am3pg0rtqi3crbbo3gl5jt3s8', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370285', '莱西市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3b3r91pkt6j3uoftq8ot3djhge', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '龙楼镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3bbqigkv52i7dofgda750nq83d', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430426', '祁东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3bdk3fa2jsg4mp5uj5t958lubb', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0546', '370500', '东营市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3bjb8lh27gitsro0vq2vqnugbf', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350121', '闽侯县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3bkuk01g4ah2dq6jkj4cnminr3', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140212', '新荣区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3bo64h14digtmq2okfhcd39u46', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130627', '唐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3br92es66kiihpaorae53ehn5h', 'rrq8bgaor8hpfp7co2fma05haa', NULL, '0633', '371122', '莒县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3bu0p0amu2igcrc55lap7o4app', '7r0holo3doj4ho0ru95ke08dgq', NULL, '0527', '321324', '泗洪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3burv35t2aiaaq6gjnim2bo07u', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370826', '微山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3c3stsc4r6gfboo9pvbfo5a0pc', '5unjn99lu4iuvps5n94sjcescj', NULL, '0779', '450503', '银海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3c4lu9cgaiihfod3ggtklvjieg', 'vcvi1q7disif5o2cn23iminacv', NULL, '0663', '445202', '榕城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3c5gmn3k48jb1rj51j330rgnvr', '7r0holo3doj4ho0ru95ke08dgq', NULL, '0527', '321322', '沭阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3c68h0oflci7lqc46aioj7rb2p', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '什运乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3c8amd8qsegrip5fl61ju92fbi', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513329', '新龙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3c9nv8s060in6ravri75hjn9cd', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430421', '衡阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ca1ohjjtkivuppsu3gfs7fui2', '58i0mts36qhv5rbhjfp25gbscp', NULL, '0994', '652324', '玛纳斯县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3cj5hm6i6ujbao6rv885jlf3rv', 'spcl2traagiofrum521umd4mei', NULL, '028', '510112', '龙泉驿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3cleb1p6p0iahqrsatpn2msaes', '7mi7t9c2gojcur0an0g8le8svu', NULL, '0573', '330402', '南湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3cp73t1f8eg1vpicunnge64s3q', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230706', '翠峦区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3cqg0vs1gsjj0r7b4ot5ddp5j8', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810005', '油尖旺区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3d4r9hfrqojdarj3p15vsbekmf', '5ronu5iaiugd9p6ubj28usjc0c', NULL, '0937', '620922', '瓜州县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3d69uffqcgihmq0lgdafdpblib', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371723', '成武县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3d7dp8g5veioaq5g2r03e2h182', 'r49o263llihbqqhn2sj6rohn01', NULL, '0566', '341721', '东至县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3d9195lh1ug0poimgs01q1g877', 't93et4kmlkh5sqhpg0iqonnvja', NULL, '0853', '520425', '紫云苗族布依族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3dcrfhnm1egf1pf369o247jtj1', '73074v4qq0g5ars2cec58gpq94', NULL, '0559', '341000', '黄山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3djap1fqk0hcdrho4llgbcle6d', '155qrtip2qj99qg686a2en0psl', NULL, '0315', '130200', '唐山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3dn915os3egutordse4s3c97cq', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610703', '南郑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ds3ro62hoijpraal4s4glksbj', '1seoklbbocipjof0h223ggg1rq', NULL, '0976', '632726', '曲麻莱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3dtgolo3qmgjvpvprumtbedvq6', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0353', '140300', '阳泉市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3e660ukqekimhpk2f21ab4k4ok', '1t232jo5pch34prqa4899hji2e', NULL, '0775', '450923', '博白县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3eaq3bovkchbkok05pfavbiolm', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410481', '舞钢市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ebslcon2kimqqsvmsf9bbluu7', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '塔洋镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3em9aidsqahmeoeg3ql9u7hch8', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430603', '云溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3engmfjbq0jtaqu8i5f1njiggd', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431081', '资兴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3eq2kaq14eglhq8tjlqt55bgad', '0sh732c7saglcqaktuna9frole', NULL, '023', '500151', '铜梁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3es9037u1sin4o9v0johjpoh4h', '4ohfo84880jgqquoscofhr3sdi', NULL, '0414', '210503', '溪湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3f6o85os06ipjo6k9tv7iego3h', '4h85ig3mruhk8plgdokttalo7h', NULL, '0458', '230700', '伊春市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3f8drtagckj3iqe3cc980cj0s1', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810007', '九龙城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fa9k3lnaqh7eo68029hlp3lqr', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360704', '赣县区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fbj0tfov8hj0qfsqttojica44', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0770', '450600', '防城港市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fg6so95aiihepobj9ujqhmeba', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330702', '婺城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fgindo292jgrohrk47jonvo78', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '兴隆华侨农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fih92r1vkgfepgq5l1qlate5v', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团十一团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fk83jf0mggo3qoe7dne228m5u', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '蓬莱镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fqnktgrpkgokquv8ju48bqo41', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370784', '安丘市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3fqs7phhu2h76op70f2m9468li', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '东澳镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3gaauv1luihgjopqg9e9tf8n5s', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371703', '定陶区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3gsg08cppejc8o9h0t2v8egl5k', 'shc3fh151oje0phuaqshgfndhb', NULL, '0410', '211200', '铁岭市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3gt4albikigfkoiou3c7ud3djg', 'pd43976vcgi4fqbihmbdvhcd82', NULL, '0894', '540425', '察隅县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3gv061dc1uj1aog49pmgtshrc2', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370283', '平度市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3h20smv5jmiu0pkdv3lmv8bl9l', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350504', '洛江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3h5jd7q5akgifr86e7sigmvoq9', 'q04gvg77l6g58r9c0mrbe6cdl1', NULL, '0552', '340311', '淮上区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3h8kvl0qvmhfar2l68d0ibpo5a', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513423', '盐源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3hedrjk2juhrmo8frq13qus29f', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150782', '牙克石市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3hfsbsegb0gusr2lotb6lmh17c', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370215', '即墨区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3hrjfvm73qi4oo31rp83qkiltd', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450325', '兴安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3hs9pcuhbgj0sqqrr5ga50462t', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152527', '太仆寺旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ie46sjntcijaq53372v7jnc98', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540102', '城关区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3iio43pbu4j8gr7kilo5t83r3n', '0vt189j90mhv5pr2nfhjkiia3k', NULL, '0714', '420202', '黄石港区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ir8lfdlsoiq8q69bn0c092sd4', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610323', '岐山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3is971t7giirbrhv1dthmoecn3', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '向阳街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3j0i8gvvjqin5p4p3v38a1qhj4', '6vjtnufp2eiqip75uek05pm3a4', NULL, '1999', '659008', '兵团六十六团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3j0njhl736h01qbb30r3s6fhbi', '6vk98tiersiibq2sg2fnfpckn3', NULL, '0933', '620823', '崇信县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3j248rn36ijc4p2o66tclnlh2a', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220284', '磐石市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3j67n8mjh8ideqkmpv6f9dh1fi', '60plvbc5tqhjcrsj5hfv8ads5n', NULL, '0392', '410602', '鹤山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3j7lq6bi42hdfpcnlodul7t798', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320612', '通州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3j7sl71h1mg8vq2c4ivntgmnrb', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210114', '于洪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3j8gnhh0eggjloab8i592jq66f', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610112', '未央区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3jho177j0gi9nrloigp980ua5a', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331002', '椒江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3jhp4me7mqgaapes7e37fts716', '73k659jq2ah6fppa6qe6rlojmd', NULL, '0692', '533124', '陇川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3jj689j96sh8tqlpgjavg4cbtu', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410724', '获嘉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3k380jq5umgsnrnb4382tsv8fu', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140215', '云州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3k4pvp6gvohijrs5per1b61lb6', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511322', '营山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3k9n9tis54j6jpbken5mh26b9l', 'v8b6b2s9tmh62pkqq7ov005euv', NULL, '0421', '211303', '龙城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3kgqj43hn2gunpj1pesjrsc7qr', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370114', '章丘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3kluctdq50hb4qmjgclbvma5jk', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430702', '武陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ko99pmtpkgjors8u4d5s7oc6j', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '大丰镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3krbjgg258j2ipmj1h5ihu1lgm', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330382', '乐清市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3krvgrrtrkgf7pogkevkvt9p6q', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540626', '索县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3l0uf7h9nah2frg2h1udh9eaea', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0435', '220500', '通化市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3l4nc5ass4jberkio0d5abn447', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511528', '兴文县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3l5h3b6be6jnhqkp07053bm7l9', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610426', '永寿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3l85cvroisgd1q8f5al8r2aou7', '1oasf8gj84go5putr9ukpa7dfh', NULL, '0909', '652702', '阿拉山口市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3lbpcqk9d8jf6q1c08cggqa058', '4si9r8ohrsi0urh25a84pugj6r', NULL, '0434', '220303', '铁东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3m2n3v45auhtup5htoiobt0jud', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '麻涌镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3m35qi43rchq4rflj2q09g6kv2', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410108', '惠济区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3m3iu0f68ehegqgf4v3eoqfg7n', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110115', '大兴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3m6viu1lgmgi7q23ea03lgsj13', '66bmbfmu26gh9ptr5d7dlpl58c', NULL, '0418', '210911', '细河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3m75bfkfjojhfo6kdu9o5s0qiq', '488ldusspkgm4opgolg1s39t80', NULL, '0970', '632222', '祁连县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3m7ot7nb0gg83o8csj5kseq7qk', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131103', '冀州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3m81u6khecgfnptl04liq01vqr', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230602', '萨尔图区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3mgf50b09ght1pc6biatkc1k77', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350426', '尤溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3mh5s5hstkhieo2a1rfe2iktc2', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532623', '西畴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3mklhamvsmi10p92ti7n62fm6f', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230703', '南岔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3n3g53lppqhl2rvapa7flse3k4', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '通海口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3nea9eue0ii59quu8ee91ibv0e', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420683', '枣阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ngvp26vo8iqnql8trac6767qb', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210105', '皇姑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3nhd1ee29ggtdodo307ajg3f1q', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '沙田镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3nj44rh2hii83qpj3afptkoseu', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '志仲镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3njmf4aihkgplru2egnic5keg7', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320505', '虎丘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3nlm1efs22jcgr24a5lj9hc2e5', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520527', '赫章县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3npro45f78i57pt4rc8ik2dbc2', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130425', '大名县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3nr1e1154kh69opa7ck8o59kjv', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420602', '襄城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3o6ll7cve2i71pgq6pg0he95j0', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410702', '红旗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3o77nf6kdmgieqp422673gquio', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '南坤镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3o8h8gghqei7nra7v2h9892tlc', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '潭牛镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3o8hn53i3qj5bq4ep4r1sbb8d0', 'trhctuqokoiisrgk64kuvlneeu', NULL, '0561', '340603', '相山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3obh73qq68jtfq61tviih3pm9r', 'th7rt6on12hjoprhum3ui6hk3h', NULL, '0951', '640104', '兴庆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ocuf1qiu4hrbr4ldpn4f2g9a1', '6keq61sajoj4tpj2n3romnires', NULL, '1935', '620623', '天祝藏族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3oi1skk0p6hnuqskdirp7gpmdh', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130534', '清河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3on7j2uc6ig2apnkhctvvcaqam', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451081', '靖西市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ovm1fkm1ei4fol8j3591dgstv', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130526', '任县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3pjbpm2h58h3co35u14v4gcidn', 'pop6evjn9gjk0pf4c9oaf7p8jl', NULL, '0478', '150823', '乌拉特前旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3pl0iskkj6j2voi3qb1u15fnap', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0974', '632500', '海南藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3pn4jbgvpagqiq7rcjjvambr01', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '中堂镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3q0rti70u8iplqn6rd7m9p8jd6', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511525', '高县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3q34ukafvqjetpded5q1ejloc1', 'odfe2v16akileq13dls31adite', NULL, '0718', '422823', '巴东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3qg6iteo28ghirtsmogc1873bo', '10pm3es8sqj50rpqmub8jiimrv', NULL, '020', '440100', '广州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3qj1nokrq6i03objn8rpcaspeq', 'sllolnqlkegb7rtv9rsslfhsfa', NULL, '0826', '511681', '华蓥市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3qkcc0bagug55o1f7q5novm92m', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141130', '交口县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3qlolurmo8glgrm1a3c77ht72q', '04lk5t0f8mju5r30i2um8bgrb2', NULL, '0896', '540600', '那曲市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3qp36ovbuqjiooqejasa6rokof', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0358', '141100', '吕梁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3r2otipn9igpdp5rmo09lrnhpe', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653221', '和田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3r6samn9pki3mo9ataukccj351', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210102', '和平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3r85ubqg88g3drjb2vbq37cbn4', '37lkb4uoschrorvo11dt8af060', NULL, '0977', '632802', '德令哈市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3r85v4vd9cgivof2m3o40n8ur7', '51jm31pu5sgtuoplndgclh1oat', NULL, '0398', '411202', '湖滨区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3re2t6fqvajg8q1q4eh5ncvfq7', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '莺歌海镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3rl8ehvf9gihbrqtvbquvpsgv9', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130725', '尚义县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3rpl6gnccqgikqc4bq4erdhdaf', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450304', '象山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3rr229vip2h65q5t3s5r9tager', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350681', '龙海市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3rvhgdg4eohs8rgqa1alp0lir5', '155qrtip2qj99qg686a2en0psl', NULL, '0310', '130400', '邯郸市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3s2qkb1vv2ijbo1c90ija0pub3', '0sh732c7saglcqaktuna9frole', NULL, '023', '500156', '武隆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3s39fiat9ehrvovg9590h62hn3', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410883', '孟州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3s7ubuh5p8iuerbbrkqbjhu85p', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0854', '522700', '黔南布依族苗族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3s8ee7uuc8injoslnr7vvpia0i', 'th7rt6on12hjoprhum3ui6hk3h', NULL, '0951', '640121', '永宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3s8nc3b4dgj8ep0tp0nuls7j5c', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361124', '铅山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3s9phh4mgmh0cos8d7sv434dje', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市济水街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3sc422m7cajr2q5iglhpnacjac', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '群英乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3skua48vd8gn2oqf0v8cf7j3cc', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0375', '410400', '平顶山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3sl529kl6aingq2vs0mhsokvci', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440115', '南沙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ss2deovtki6gqm5fepq5ffr59', 't93et4kmlkh5sqhpg0iqonnvja', NULL, '0853', '520422', '普定县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3svdsm8m2ohfaot05088f2lkqg', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540234', '吉隆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3t23h51b0igner7c86m4iq5vlk', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140722', '左权县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3t4l8as0tgj8voi5u0p0l959j4', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411626', '淮阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3t4t9bntoqh8qrga4t23fhdrpq', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230304', '滴道区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3tf3282uvuisjoui75routggqk', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511503', '南溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3u1sjhd2uqh4pqr68bukjc73uv', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370685', '招远市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3u25lj9lemg4eoll1bn68dqtm0', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150124', '清水河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ub1guagoagftphfl1ggp8vsht', 'r401ektu6ohcuo5la91f317ved', NULL, '0932', '621123', '渭源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ubmugo3fsirco1j3e2jqkjcgo', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '国营新星农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3ugalk5rkujclrhdta2g48hgi3', '5ronu5iaiugd9p6ubj28usjc0c', NULL, '0937', '620981', '玉门市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3uh3od976ej66rq688asddleo8', 'tj70a6cm7giiopralk6q924g3a', NULL, '0472', '150200', '包头市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3uj64ou28eia2plt1d3j40j883', 'rplo4obrmkgudqlmm6a37hu0pl', NULL, '0558', '341602', '谯城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3v361b7dukhfkptd6po5hj2gj9', 'ojubqkbsvch66q0otd5vajml16', NULL, '0437', '220422', '东辽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3vf78c83baiklrjgaha6tcrmdq', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431224', '溆浦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3vi4kke4aci04pag97ia5mrajb', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '海南保亭热带作物研究所', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3vof303f2ej9gqt69hk93dbmb5', 'pgbho69sn8idkq1bkddd4rhl3i', NULL, '0416', '210781', '凌海市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('3vqp6gc7vsg16ptlm94t3g9kuq', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360781', '瑞金市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4020c4225ui7mor4oipp1cfo5v', 'v8b6b2s9tmh62pkqq7ov005euv', NULL, '0421', '211302', '双塔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('406ivr0s6ah81p2mq74fleoalt', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411421', '民权县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40a8oud20shajrtqjdfiou0clb', 'tj70a6cm7giiopralk6q924g3a', NULL, '0479', '152500', '锡林郭勒盟', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40bq8o3g5ijmfoit80dgtrg012', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411523', '新县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40i4dkm6f0hjqrnlhpig49au9g', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0806', '469021', '定安县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40k2d7j1pohdlpcgjmb2let6mt', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '神湾镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40kmjnhbu4ipbp4a4kllklbm0b', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341124', '全椒县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40oovstgq0gb2rblnk82d4f7o7', 'rg448anb2mg3crps42shpne6ii', NULL, '0668', '440982', '化州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40q6ogv8luhnort83qqsv5t1hr', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360829', '安福县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40qhf948b0ilfrcehftd14aobn', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810009', '观塘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('40rlodh0legsfrk7gnn9bv21e2', '6keq61sajoj4tpj2n3romnires', NULL, '1935', '620622', '古浪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4198q7mbimhaiob3o565ra8rgi', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131123', '武强县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('419t1o7op2hstoiq6af6dlm0s8', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450103', '青秀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('41cqhtadhij1cqoebourn3ofi9', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623026', '碌曲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('41gt5abakmimvrlon7dh81cr88', '37kd80t5ksg98rljq1o2rt6eq9', NULL, '0592', '350211', '集美区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('41i0i0c8iugl4qd4ev5pb2l2h6', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513422', '木里藏族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('41mlsitj3sheiopn5qncj31eqp', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440222', '始兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('41omuc8fkkjibo84rhtfudv2f1', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130525', '隆尧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('42ahtvd2hijbgqbniva1ik32fu', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371523', '茌平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('42fa57bs16jdgphe17f4bu1ulm', '1seoklbbocipjof0h223ggg1rq', NULL, '0976', '632723', '称多县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('42jearb1omg67r9rldrnciv9i0', 'pop6evjn9gjk0pf4c9oaf7p8jl', NULL, '0478', '150824', '乌拉特中旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('42ktkqnbeshqtobfaj036hf0bs', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '1772', '451300', '来宾市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('42o41pv07ejhmoj2snqgjh2n4v', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430527', '绥宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('42sitdklb2h25r75l4ubkap1g1', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '彭场镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('43hqlr46tgg7mqho9rlt6r262c', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '火炬开发区街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4406gm7s2gjmlrtumkv0v1u4nl', '4h50q5h4nshriovhkd5por7r1h', NULL, '1906', '659005', '北屯镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44077d59umgcop1pqcrb7qbgng', '0fkqp02rlmj89r3o4fnb5evtjg', NULL, '0662', '441702', '江城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4411d2jhgqglioablo23uoirmo', 'rfn4tk49imhvbqf9lc980ovabd', NULL, '0510', '320214', '新吴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441ul2vt3oj4lqqlor818r5uds', 'odfe2v16akileq13dls31adite', NULL, '0718', '422827', '来凤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('442t83b1mqhinrioje9ilhre1q', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0807', '469007', '东方市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44crturt3qih1o01du1bf19v8g', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '佛罗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44d2jivdp4in1o7c9rlj9qfgdl', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '毛感乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44de6764u8gmcr1tiv857t2m6j', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623022', '卓尼县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44efdabmnsileov2jhf8f6j45s', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0396', '411700', '驻马店市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44et70qa7ih5sraar10p39rl9j', 'pgbho69sn8idkq1bkddd4rhl3i', NULL, '0416', '210726', '黑山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44rmqueb7ahluo4l1n9gqf17fg', '39q963pndmi8mo43ipadpohims', NULL, '0774', '450422', '藤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('44vftposgeghdp2ule4i3am4js', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431222', '沅陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('453a0a7r6oiqopob8u9s1t4387', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140106', '迎泽区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('456u5h9atmikqrik0lt9v52lcm', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621027', '镇原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('457740hpq4hibo6svk02gavble', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421022', '公安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('45jut1tg98hs2phnf4nqt5kfm8', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130107', '井陉矿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('45ogdkgc98jq5o65jot3248c3v', 'pma35v8v3aggbobuot73v69lpj', NULL, '0911', '610600', '延安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('45rqsea1n0jngqh6mmjlabpvef', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360483', '庐山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('45t9m9kg28gacooollbqah4cnv', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '新城街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4635uh3bvgj69omu5is56elh9a', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450203', '鱼峰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('463vhl80guikhqk73ia3qaa5v0', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370786', '昌邑市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46dhigo5gegpqof80gd1lh4pvn', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620105', '安宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46e3ummj40jf4omuv8kt0q91og', 'sllolnqlkegb7rtv9rsslfhsfa', NULL, '0826', '511623', '邻水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46f5l54398hc4p4r6v02d9o6pc', '37lkb4uoschrorvo11dt8af060', NULL, '0977', '632823', '天峻县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46gpq3dr7eiuto8mqr8ec0l81e', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430181', '浏阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46imp4t07oh59rrd0g14roe9qb', '31hnmsr4hajg0qbp3dvnjhiem0', NULL, '0901', '654224', '托里县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46ngqpbslgj56qd9ud3h42l9mn', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370104', '槐荫区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46pm7ofuk8he6o18p2933brre6', '4rslmb3lhqin7ots9deq3lppkl', NULL, '0349', '140623', '右玉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46qigko6q8jafov5f13qc7baoc', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511529', '屏山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('46t586qaucjg5p31q3973ikurl', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210115', '辽中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4778splbkqin5p624kp9svce2q', 'rs8ei9p6gcg7lp9dphe1qcvunl', NULL, '0971', '630103', '城中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('477cnh572igqsoj9v60s5cgpno', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130229', '玉田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('47cp2t9ge4jo3q0j8rig8gmcj2', '51jm31pu5sgtuoplndgclh1oat', NULL, '0398', '411282', '灵宝市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('47ctofsp5mj7arj532gfcrtp61', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231025', '林口县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('47j0mrsri8h82ocfje0md3shud', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140108', '尖草坪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('47p1olq57ijvpp33b3t0skufde', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '国营山荣农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('488ldusspkgm4opgolg1s39t80', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0970', '632200', '海北藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('489pknp0qgj3qpuivkg7sm5acs', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130926', '肃宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('48a0qegfkejsmphdbsd7fuaot6', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '兵团五十团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('48hnie2bmegqfpdse8emmc3gqv', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430725', '桃源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('48u41mhdnki3lpjd6gmd1j9fa6', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '前海街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('48u56h3tvihl5o8ipisl0jgkv7', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610824', '靖边县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('491e4d7a46h4lrhdhm4la5qne0', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410581', '林州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4942h80986j0ar3rj8i73utugl', 'ov5d4q3dgajrnqgofjig0p6pa7', NULL, '0538', '370983', '肥城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4954ujcc7ig8uri9rr9tcqsnb6', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410522', '安阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49754ls656jmfoaptfgd3rn1uu', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350122', '连江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49d1cvdeoujavrn03dv2co3hl8', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451021', '田阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49gavin4p8ga8qmju51i0m0fu5', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330225', '象山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49i82gj9goh9jr29nfvgnrer5j', 'v9p48soav6jlsqinehjjs57cks', NULL, '1994', '659004', '兵团一零一团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49ilacff1ogb1qsbce4uvo5kst', '39q963pndmi8mo43ipadpohims', NULL, '0774', '450403', '万秀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49knedvh72jn2pn2o8ohh1k6ro', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610528', '富平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49ol8bf4gijhvo9hf6rlngjkv2', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610429', '旬邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49qhr9hj00imdoe91irk3kbg0o', 'pnef2s2l9mjk6o21rulsnohmvp', NULL, '0812', '510411', '仁和区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49spfm1mbugm8p7ctgnqhs0meh', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140425', '平顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('49svnp7mocijsr5npjhip44h1m', '4u3v24knm2i0hq3rfss8a7v6kh', NULL, '0953', '640324', '同心县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4a12qc93r2if6par92jsrut9s6', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350524', '安溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4a3gms7oaohdboodjnpllur2r8', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430703', '鼎城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4a97f6u2rag3erg4m1btjejtnf', 'pqn8s9kedgjnnqhqpopuc8o1ts', NULL, '1937', '620200', '峪泉镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ad069v0rcirbriqvl68erk8er', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230805', '东风区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ag2f246ncja3r3ilqh05vmnac', '42ktkqnbeshqtobfaj036hf0bs', NULL, '1772', '451322', '象州县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ahhqtgvh8gm1pq6tkppn52ptp', 'rbqf56oep4idgptb103sspscso', NULL, '0914', '611021', '洛南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ahjn7slogji4pkk9u752r4ab6', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331102', '莲都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4aj5qrljpqj9eoudl7j5qb3rna', 'r6gk1pnptmhbtpfuscpet5g6m1', NULL, '0597', '350803', '永定区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4an20cjijug34qprkfncek0iml', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320509', '吴江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ap69cdnq2jaerb64cuaf00p8q', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621224', '康县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4aqr63mko2ik3rjv5q9ql363qn', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141102', '离石区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4araaqeo88huhqj5t210f7837p', 'unburmmpauiapo2temd5r01tgn', NULL, '0572', '330522', '长兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4atip0s1aggb4omipvtsonrl66', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230128', '通河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4av1ln4qi0h2oo371fedpef5bv', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511502', '翠屏区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4bjnk2tplaiddr3dnnfhshno7r', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '国营南海农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4bn1j3v2sah6oofa3s89rsg24o', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '和舍镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4bncho45f8gbboge7lsjcesag7', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '昌化镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4bo4b5j6esg5iph7hdmj3vd3vv', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '国营西培农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4bo8jt3uv6h6aovl1ro4pche8j', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441826', '连南瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4bomrppcvmh6qpf3hpbom9ht2n', 'tnotu917v4iojo2esidl11v6ed', NULL, '0887', '533401', '香格里拉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4bq5ab92c0jngpotaj2s3s5lqo', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '加乐镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4brv2trg2agk2qck4v67ctpcfe', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340223', '南陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4btbirsl9kgomov501j5rhlkji', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350622', '云霄县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4c470m8mi4hj9poerdko8hultd', '73074v4qq0g5ars2cec58gpq94', NULL, '0555', '340500', '马鞍山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4c4ribdnbajaaqmjqhujkf4btr', 'ul67q7c7fsjhrq25s0lg9j9t26', NULL, '0563', '341821', '郎溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4c68ifr6e0htqpoovdkgrlqnh3', 'th7rt6on12hjoprhum3ui6hk3h', NULL, '0951', '640181', '灵武市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4c7dj4mfkch0jo9hbmalackim9', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520627', '沿河土家族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4c94dj7bl2he5r4v7u4l7fgfpp', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0531', '370100', '济南市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4cave1s3fig5fpro24k6m1vq7g', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653225', '策勒县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4cimdomq1iim9o2mls5olc5gjb', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341221', '临泉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4cmd473knijanp1470cpna4ece', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0515', '320900', '盐城市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4cpg5g23lki2pprt5j3mkc4bcq', '5ronu5iaiugd9p6ubj28usjc0c', NULL, '0937', '620921', '金塔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4crgkku9e0jsjpcd229npfqkk8', 'obeq7331cuijjqrs6ir5huudtd', NULL, '0712', '420984', '汉川市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4d49tgettsgffr9plbkfou06fs', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0596', '350600', '漳州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4d8t151ec6j3uqctlrlngdaj8c', 'u3onkv6qe2jc4ob7f89047dtnm', NULL, '0395', '411104', '召陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4d916c98qgikdpti26ihc9lqe4', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441881', '英德市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4d97vjsqsqgamqgcdr5du9mla9', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540622', '比如县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4daluplk3oimkrt5eentfb4mnj', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532601', '文山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4dlua2sag0jq4ov6gfkiclppr8', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360824', '新干县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4dohofokooj3irc70i84dq876m', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520524', '织金县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4e18st9vgch9hrnmgfig3abstb', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621023', '华池县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4e1ef2bso6gkjq2g9i7vupgpaa', 'pah4e89c2egpbp9laj391prtek', NULL, '0766', '445321', '新兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4e9je10djajplrr2vsbtnggpsk', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350104', '仓山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ech5ldpg2g99prnveug4dg976', 'oli0hjs3akg2ppb6umjeru4rc9', NULL, '0564', '341524', '金寨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ee9du77omjbjq4tjbt2vo0155', 'rg448anb2mg3crps42shpne6ii', NULL, '0668', '440902', '茂南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ek54j70rki1nqgo1ja8tkf0ge', '0j0195ugs4hf4r43g4mpmpd5tt', NULL, '0413', '210403', '东洲区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4eq8cbc5cqh94rvj01pr4apdvf', '6gsgqula4qgh1padohio56bko3', NULL, '0838', '510604', '罗江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4er8rhqec0jjjohh5pmfu2v4eu', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440825', '徐闻县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4eud0lvvu2g5ioncec2bf19oo9', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620104', '西固区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4evo5d5kc6hkeov2hmj4mjt559', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440307', '龙岗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4f0h04jclsj93qv5ah14q4a0h3', '0cneommh20hkkoeb6ej4o84ovq', NULL, '0757', '440604', '禅城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4f6c2nudaiju6o33d8klnsabut', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652929', '柯坪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4fgupr4vssg4oo38ntaharqbt5', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411403', '睢阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4fp7qe6hguh7iou53frhop3k2k', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '石龙镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4g1fgcd49ajfqom2mknbevk033', 'vp7s5rgl42grbpsmr2s27bg3kh', NULL, '0827', '511903', '恩阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4g3nho6jfkgapog1qm98ti3c6i', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360121', '南昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4g5mgp0c16gmhrf1t6nbaspn9p', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610324', '扶风县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4g7mvl7f5oj75qr6c2n8ppm6n8', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610103', '碑林区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4g8daj2d7mivup6nfpbi5pud5m', '0sh732c7saglcqaktuna9frole', NULL, '023', '500152', '潼南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4gbca43d4cj0kp629p4b112h3t', '1kuq9kes1cjp2q7qeajn3o4eu6', NULL, '0898', '460107', '琼山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4grduh8ltcj54qg347e3fpk6ao', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320904', '大丰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4grolab6bqhikrc3dpju6d4in7', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130824', '滦平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4gtlqgok0sh6lo8723775d2fbi', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820003', '望德堂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4gvttip1r8joso66ja0v821q1u', 't8fhi5nj6ahr2qll2e8cqg081v', NULL, '0543', '371623', '无棣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4h0dl3j114ghgphbnprn7j8cdm', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140802', '盐湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4h50q5h4nshriovhkd5por7r1h', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1906', '659005', '北屯市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4h6e8h6l60gniogh3js8v0nogf', 'rrrc98s2rahk0olm9dv24hssrq', NULL, '0902', '650522', '伊吾县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4h85ig3mruhk8plgdokttalo7h', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '230000', '黑龙江省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4henr2t2fqidrpea78tfqoquup', '5atdgk3bochubo4s1fdeulaech', NULL, '0711', '420703', '华容区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4hrolt368og6cpnloc9oevu77m', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430212', '渌口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4hs99u0p1mj2cpbb8chkjsfa1i', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621222', '文县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4hu87lm99kjf9r8133dr19fhqa', '7r0holo3doj4ho0ru95ke08dgq', NULL, '0527', '321311', '宿豫区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4i06k43j3ihklphppn59iguu1f', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0598', '350400', '三明市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4i0puqndvqjehom00rmb5smdra', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520625', '印江土家族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4i3kad9jpah7kq8mo2ktt8gk42', 'q4pj7russoio3pgias2lqe2r50', NULL, '0632', '370403', '薛城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4i66g91cjag6apuarjuoo9jd4h', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411726', '泌阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4i7bjavod6gs2obcmibk6sl4o1', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0536', '370700', '潍坊市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ibe6oc97ahnionlagc8vahuos', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '会山镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4if4t4q8r0gdprc634v03lou19', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441226', '德庆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ijf8g18qii7qo3on48l0tgv3c', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130224', '滦南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4itregp5dsgplpm154cqdg02s8', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140825', '新绛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4j1etf8kc2i8gor4tgkfkd2k0o', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230828', '汤原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4j1rlqi4oag8qrf3l2b888l0lk', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340811', '宜秀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4j7m0ivhrmh0hr76mkbi1v0fum', '6ojqaof4i6hriq6i40nmo3118a', NULL, '1909', '659007', '兵团八十四团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4jpejb5o52hbkpm1hbpbtuasre', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '东城街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4jpev3fai8im0ravv145vl5n4a', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532324', '南华县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4jrsv834rqjqvoa0uo2g5tanno', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330328', '文成县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4k0oom361ehpqr9hcfhmtcpsf7', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '和庆镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4k7md0vv6ojlirkigk1iup8rco', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '茶山镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4k7snb5i8gjl6oja9v8j574p55', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330281', '余姚市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4kb32iim5ohtjqe2cegp4j5qfe', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511504', '叙州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4kn2hk2fd0jgmoq1d37e3c87a5', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431125', '江永县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4lc4qfpa1ijjdok5ersv9jgjs4', 'ph2eva16o0io2rlns64f0spuu0', NULL, '0943', '620403', '平川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4lmd84qjn6j7eold4enm95g0m1', 't1svlvplfqih5prh1mosnigiq1', NULL, '0897', '542527', '措勤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ln02bd0ruirkr2q3a5hglb8t4', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110118', '密云区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4lugdchf4chooqmbqgblns0h4u', '4rb1a283l2ht9r37qbp67ot2cf', NULL, '0511', '321111', '润州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4m5hnfj72sgmbpbioq3qmrsf1a', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320585', '太仓市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4mauiptm06iuhr9k8qrqd3vtvf', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540330', '边坝县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4mdnlbf3mah9cojqn1qof2jtdq', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141125', '柳林县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4mfgb2rpp4ghcrnq3dlrnn9q0v', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130111', '栾城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4mg5bbt1tii9krrnc2qvcl4hu4', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220283', '舒兰市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nbe309tu6gnvocgelet16bi35', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '下谷坪土家族乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nfstpk4hchq2o3sih0vuc6b28', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520624', '思南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nglu3is8qgvtr258uragdp3qj', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450327', '灌阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nlfl7tmasg4pofdusc7itv2nm', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231225', '明水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nlgln4tuij2horaf7r35pere1', '338gdrsv2aj8srrsd83k0rehe0', NULL, '0631', '371002', '环翠区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nn01ebit0i43pblfmbrcdoopa', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '乌坡镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nq5ojcvv0jitovjlbhv4i6732', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540232', '仲巴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4nqn5m6gqgip8qbkf2di1bmhq1', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410402', '新华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ob3vs2uh4iuvp2tdbsstvh8gh', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360827', '遂川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4obn2cjfl8jvgrg98ugd10a87j', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0990', '650200', '克拉玛依市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4obt0p4kjkib3p2kienmtkffcn', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320106', '鼓楼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ohdtfjdgghi4o1ssgrduut50v', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330103', '下城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ohfo84880jgqquoscofhr3sdi', 'shc3fh151oje0phuaqshgfndhb', NULL, '0414', '210500', '本溪市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ohl5i17k4imsqhubt1n9ao6en', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130481', '武安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4os5ftcl02i0cp8laifs9vh4ei', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340121', '长丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4p1v94glhsjg3qtelde403lvrp', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0755', '440300', '深圳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4phhdlq726itppbhe8m7s5ipjp', 'uo2dukpvluh0uoimsanur95la4', NULL, '0954', '640425', '彭阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ppjblmukmisaqit8683jj4jdm', '31hnmsr4hajg0qbp3dvnjhiem0', NULL, '0901', '654225', '裕民县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4pr4pruoruir6o8oo04b24nvna', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441225', '封开县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4psn684582hq2p619lq4hdgqqm', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '水满乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4pti2g9f1ihaio04s1vdr1rvft', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522732', '三都水族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4pu9g4jgdohsqp8oc33ojmcb5b', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350722', '浦城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4pv13rg5miiirrr2vaohi6vptd', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '郑场镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4pv6n5poj2jfnr8ikf92a39e4b', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310118', '青浦区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4pvvdju5v6hp8o26mbsbeetpbf', '3fbj0tfov8hj0qfsqttojica44', NULL, '0770', '450603', '防城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4qdrdicvvag2co7ik7c60gs09j', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '2898', '460300', '三沙市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4qedkmeohkh5nqpihbc1fhr6fd', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330783', '东阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ql7t16616ijbqa0ef47sfdrgb', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532326', '大姚县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4qldnrct42jllokpu3n15298rm', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331081', '温岭市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4qpieelpa4h4fr08jldt0dael2', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0357', '141000', '临汾市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4qsu2quqk0j2hrbit9dvqvaoda', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530925', '双江拉祜族佤族布朗族傣族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4quh4c5vm4hleo7lkps4k66j5l', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市轵城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4qup9nmgtuj31ooq4sii0mfpn4', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360734', '寻乌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4r3b5cle34i41q9ba20d0cil7o', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370687', '海阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4r4k1snrc8isbq6hmrj52e444o', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431027', '桂东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4r5eedsvbsigdofkh2079ij81p', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '阳日镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4rb1a283l2ht9r37qbp67ot2cf', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0511', '321100', '镇江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4rccndaummiunp18b984dcb8uq', 'r6gk1pnptmhbtpfuscpet5g6m1', NULL, '0597', '350825', '连城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4rhqjkparkgsnqf5mlrq5lb74r', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411624', '沈丘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4rou0f6558iofplcg25i3d0pu4', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150204', '青山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4rou1ka1t8jk7rlt3ee9687nbj', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430202', '荷塘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4rslmb3lhqin7ots9deq3lppkl', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0349', '140600', '朔州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ru68519roh3hqr79k40vsiajj', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350481', '永安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4s0jjoabs2iptr5f9upfhbrnfm', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450330', '平乐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4s1pnfnukoj0bq25btib5tp2m2', 'pma35v8v3aggbobuot73v69lpj', NULL, '0910', '610400', '咸阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4s7ucjghkshm5qrqc8i4748mr7', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532322', '双柏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4sgm4depi4hl8pipd3h97b6fva', 'rrq8bgaor8hpfp7co2fma05haa', NULL, '0633', '371121', '五莲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4si9r8ohrsi0urh25a84pugj6r', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0434', '220300', '四平市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ss54s75vmigvq4dqaaeck3mni', 'qopnqkjitqggfob4d7vlbasbrr', NULL, '0335', '130306', '抚宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4sv3kojhm8g7op1uvv1kkpk1iv', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410324', '栾川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4t04jv7ie2h7gq5iprn5q6diq1', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440823', '遂溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4t0fr4sh88it4rih9h3chk82ql', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654022', '察布查尔锡伯自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4t0mrd4hf0hlfrfu5crrjcigtb', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530625', '永善县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4u3v24knm2i0hq3rfss8a7v6kh', 'vojkigqia8gkop6rdt778vgntv', NULL, '0953', '640300', '吴忠市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4u7eef3bpggc9puhah2f80fqqq', 'vef8djerl0iorr8qsm85uh6u5p', NULL, '0415', '210682', '凤城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4u82kcdofejphp0agv12cvglhm', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341204', '颍泉区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ujuc9tpl4hn3ptnato9bio1et', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '国营加来农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4ukp3shrokga9oujlv5amcbpsr', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150428', '喀喇沁旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4um1igdtg6i2vqhnc3glf9eopg', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350923', '屏南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4uqac50t6gh9nogglajv545qq2', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0973', '632300', '黄南藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4urc3ue6iaim6obej12v19401k', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540226', '昂仁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4uv080vvncis6roselbercahcp', '58i0mts36qhv5rbhjfp25gbscp', NULL, '0994', '652327', '吉木萨尔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4v7itorbkuj3eokhks7sd9g8iv', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '虎门港管委会', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vh645e6akjdhrttjggferq6pa', 'sl1gm9tecgjuervvjdtqfsodbg', NULL, '0554', '340403', '田家庵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vhmefk99ih3dpa9730bj6iv4j', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230522', '友谊县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vhuqci4uoh5rr98ftnojbd12n', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360925', '靖安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vn6hgsekehjhpq3mlturrsul1', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0825', '510900', '遂宁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vncr1kpimjfsq88dji6ern7sp', 'rjpdu8e1bqjh8oolsa6mi7urd9', NULL, '0899', '460203', '吉阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vnrv9fmhajm0rgpli6p0ot13r', '0cneommh20hkkoeb6ej4o84ovq', NULL, '0757', '440607', '三水区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vp6o62aoogleqmfcf60j9sa0e', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371312', '河东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vqqrj6fl2gror1jspnrt3av7e', '6gsgqula4qgh1padohio56bko3', NULL, '0838', '510623', '中江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vtn608o36jjho9sj6qu7gnlg2', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610322', '凤翔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('4vufb9sb5ghvkrk3jr95gsqde7', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520621', '江口县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5031kmicl6i2oprak6uakmuqs8', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530103', '盘龙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('50735318ruic1r7i6vs6k0m597', '1seoklbbocipjof0h223ggg1rq', NULL, '0976', '632724', '治多县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('50dumifquigpoo90gcgauk06dm', 'q4pj7russoio3pgias2lqe2r50', NULL, '0632', '370404', '峄城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('50igmph5u2i6apn1jd8m7eq1ge', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530602', '昭阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('50pbkocrr6hqnq3hnojdjs7ppr', '2051oaiqo2hp2pt9pnt2org0jd', NULL, '0839', '510802', '利州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5125jtk9l6iqjrbgva9oqhog5i', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420381', '丹江口市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('51jfk6ipkuik3rgvgmuqs2fuio', '4rb1a283l2ht9r37qbp67ot2cf', NULL, '0511', '321183', '句容市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('51jm31pu5sgtuoplndgclh1oat', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0398', '411200', '三门峡市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('51sfcsim6sg04qakpsn3288tea', '0cneommh20hkkoeb6ej4o84ovq', NULL, '0757', '440606', '顺德区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52cphm818eip6p053j3rss14vn', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140823', '闻喜县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52ejn3i3d0js2qg664tl55fovl', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450109', '邕宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52fop4ssb4idmq1a9191e3be76', 'spcl2traagiofrum521umd4mei', NULL, '028', '510105', '青羊区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52fuill49kjt2odokiau015627', '1oasf8gj84go5putr9ukpa7dfh', NULL, '0909', '652723', '温泉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52njn4nghqjm3r3fabi07rhhs9', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141022', '翼城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52rum2smd8h7lohlnlb3hn71m3', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230306', '城子河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52skbr0pishvdqjda0qkf1t358', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411625', '郸城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('52uf7jd7smgu2rkun064cdd88r', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411622', '西华县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('534jn66fvkji5q0mgljr66m6od', '7hk2dikcooh2dou1jbi2qq3jdv', NULL, '0752', '441303', '惠阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('534s3eur3cj9lotoa5j0iup669', '4c470m8mi4hj9poerdko8hultd', NULL, '0555', '340522', '含山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53aqgtj2iuimpr94ncroaka4ob', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440811', '麻章区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53bho5m276hkiq30oenec005h1', 't1svlvplfqih5prh1mosnigiq1', NULL, '0897', '542521', '普兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53fl76r3hkjikq9ejuo54p8k3v', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411724', '正阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53g9f451g2j17qdh9a83sbqtjk', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '中心监狱', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53g9u9gt18gi7ptcijbpm4999p', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540529', '隆子县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53te6h5hq6hqnob8gad795n83h', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610726', '宁强县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53uaqket10ju1rlc5ng0d9p8bt', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320902', '亭湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('53vd2keb5ah7doa6f67hma4l7d', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370115', '济阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542cvethfqic8q67af8f92ivn4', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0733', '430200', '株洲市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5470degv9eid6plcb0vrbljnba', '6gsgqula4qgh1padohio56bko3', NULL, '0838', '510682', '什邡市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('549r7io1kqjesqnpdissolpqag', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0571', '330100', '杭州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('54d2rkpncsi7dqpmd3kpeovvk2', '1oasf8gj84go5putr9ukpa7dfh', NULL, '0909', '652701', '博乐市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('54mcmk0j8age9o8ifut99ggofo', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131028', '大厂回族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('54oh57lgi0jd2remsvqs9kfhah', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140829', '平陆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5549kp1a82jq8o2idboiafoepa', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430724', '临澧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('554rbkfnsahakomltton39f0om', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350402', '梅列区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('55c47av6k8i5tq5gc4tciu2lr5', '0sh732c7saglcqaktuna9frole', NULL, '023', '500113', '巴南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('55tb51akfohprplklkfv1ro5hk', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513431', '昭觉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('55tbeccc2ego3rbjasvh4k6ruf', '3fbj0tfov8hj0qfsqttojica44', NULL, '0770', '450602', '港口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('55v00pcdocgu7qbvub8cek3f61', 'u3onkv6qe2jc4ob7f89047dtnm', NULL, '0395', '411122', '临颍县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5648pnicfci4kpiqjdp2hkadgc', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '文城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56djk4lt0ii5vok9rl31d8pmnn', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350124', '闽清县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56eni0pu60igjo56f9afiacukc', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120102', '河东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56hp0r660qhasq4vgsd5mk7lke', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220105', '二道区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56iv1hv2j0jslqnsd9ieu6522u', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130927', '南皮县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56lrmo05s0g5jojr72kf2rnrlb', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230403', '工农区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56msoood22iqeprsh7soavot5k', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440118', '增城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56q9o3pel0i52pdll40k8jmn93', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '九所镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56rbitli24h2donq3h4fecqaf2', 'rnkr9c7ecehuopr9arv698rfol', NULL, '0660', '441523', '陆河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('56uk05tidmgj9q37nr02ps4ste', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0763', '441800', '清远市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('573urbmqdshvcodjib8ck6rf4q', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500242', '酉阳土家族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('57at94c4nujjcqkmd9qp04ksbn', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120115', '宝坻区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('57chco3a7cg4ronqhsfg9h2hs7', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130902', '新华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('57pmr2c1c2j3gpn7hff2i8qjsd', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500241', '秀山土家族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('57u7986g74hkupsa59td1d28va', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522633', '从江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('581li1cklojefpg7gcd52jlsub', '0sh732c7saglcqaktuna9frole', NULL, '023', '500118', '永川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58703bqfl8io3r25sjipf4bvfi', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370103', '市中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58714dtphqipoq73m90qc8kidj', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330727', '磐安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('587aktt9bkjrfqn59deum3ihvp', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220103', '宽城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58bqg4lgrih2vptk74alqaetoj', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230883', '抚远市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58fvlnf5cch49pas3qsrb9d6ei', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210106', '铁西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58g4ig5t8uj9gqjsvfci0snsvh', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331083', '玉环市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58g7nlls4ehd8olo6acld2g9fp', '1seoklbbocipjof0h223ggg1rq', NULL, '0976', '632725', '囊谦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58i0mts36qhv5rbhjfp25gbscp', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0994', '652300', '昌吉回族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58msvjhmcqhkapnu286lt46hjv', 'p28gk7ufc6jegq9isgpdgkdghp', NULL, '0374', '411024', '鄢陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58s1dkb5n2h9jqjrvjd8k3m3jh', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140881', '永济市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('58vfb7icaqj98pq7r20jmq8o1p', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441403', '梅县区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('59011vmfimhm4o33cudk7h0s5a', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451226', '环江毛南族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('590ifr5vbcg6iq1dksuc3brfsq', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130521', '邢台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5918afmshqg1sq6klkl39v0g8l', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230126', '巴彦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('59210i36r2gs5pv1tu1320ii9m', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540236', '萨嘎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('59bu24hmnmjhuoq717uc6k6ogs', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540528', '加查县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('59kpoipgrui8mqpreq802f2gj2', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430424', '衡东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('59o8v0dsicjqurkihh5akjslnh', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130109', '藁城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('59sco98diajmfq0h46vjv78kim', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540223', '定日县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('59seg7u4iki4gqlnpgj1fisfem', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350128', '平潭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5a76o5fp7qjj5q8uc888ar824i', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360723', '大余县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5agjcnki6og3bp7o6q2u4ck61b', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140923', '代县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5amn3f0566g4pq5b99fpstqvpa', '0sh732c7saglcqaktuna9frole', NULL, '023', '500154', '开州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5atdgk3bochubo4s1fdeulaech', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0711', '420700', '鄂州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5b2ie5t6o6g9mrbchc5hl3m95p', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431122', '东安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5b3v18u9sajd3rico2e8cjg04r', '170ruicenkg07qtet8rkdu43ok', NULL, '0798', '360203', '珠山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5bddjbl94gg8tqkmjl1k5atdpe', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130130', '无极县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5be4mfvihcjhvrijhdsbqujlrd', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '025', '320100', '南京市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5bgimermdmhkspukas6ckg8mfb', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360104', '青云谱区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5bii0to59mha1pdllfi2jc79dp', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340225', '无为县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5bpv9qil42h7fq76fbj3n24ncf', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '彬村山华侨农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5brpqfed8ch4to608tl5a1hs9e', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '富文镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5buq07qoe6jnvpmb9l2e6aqbp9', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320682', '如皋市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5c4g2ooo44hnrrfpcklbgmroai', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141025', '古县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5c5dqkm6asjnlprkl3bd8ddlaq', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430621', '岳阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5c6sr683d2hlvr69l09aqrjoil', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513324', '九龙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5cbqipshimgsooqidjt1o5m15t', '359to4v1uairqrfitlfigenk27', NULL, '1996', '659006', '兵团二十九团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5cdtvlajk0jf2qkdi23j599fvs', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610603', '安塞区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5cfhjjt0g8jl9qc45q740rv1o5', 'sl1gm9tecgjuervvjdtqfsodbg', NULL, '0554', '340421', '凤台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5cgorm1fbmjgcr6jlu1eqgil8k', 'ph5b69fq9aioeolk65ov8ahe88', NULL, '0523', '321204', '姜堰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5cs9pl1nnugesrbudc0soqooga', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370686', '栖霞市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5db6gboajai66qbn31aprp7640', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230382', '密山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5dek0jt79qh4jo3rbptbe7fmf4', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522624', '三穗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5dhknjnbbghfvo2nv09l37c4oe', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230381', '虎林市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5doj68bsq0gk0o3s60jlkj37pa', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '老街街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5drk9i7luui76pg6iqhg1d2ri2', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131125', '安平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5e02lj83b2hlqrf7k35gfl7cjt', 'srnkeeffdkildqtd63kerd32c4', NULL, '0732', '430381', '湘乡市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ecsnnl4psj8dplq7o5c6621cd', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330106', '西湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5edlhp9j8uhtuqo86vgnobitqj', '5ronu5iaiugd9p6ubj28usjc0c', NULL, '0937', '620982', '敦煌市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5egt44varoif5ra426n95mfd5d', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '大岭山镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ekd2j43ougmsrcd727p6f74ce', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450305', '七星区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5epr2udhv6gc3qsfkvtn121r5r', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451224', '东兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5f4svlosoggksqgt34i6dpe6d1', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522623', '施秉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5f5rfilr8ag1tp2dhrfvjleocs', 'ub0dk32t6igiuo0ugm6jfdjsn5', NULL, '0750', '440784', '鹤山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5f66qplovghneqt2hc9qcf1r4e', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513428', '普格县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5fcdnunv34jorrf4toi1lkvo6d', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340104', '蜀山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5fr3qt20ouhamp45sf4qbgdk0s', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '加茂镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5g4088s3mqia5ribpu33v5hits', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '豆河镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5g5sv8bnaehj5or00n31c1c0jn', 'vjd4qgm2jcj61qspc4t5g9n8lb', NULL, '0701', '360602', '月湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5gtc1fb0gsg50rbpda2tf1e4ur', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500237', '巫山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5h07ll9cm4gtopqldsked44u2g', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441821', '佛冈县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5hh1prdudehb3r8rdblbbo7t09', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '张港镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5hphnef02oi07perftms1g6vuj', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360733', '会昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5hs8s1lpeojilqrokq6t76rnqp', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '027', '420100', '武汉市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5httqgfrsciarorf3b9udkf6gi', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141026', '安泽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5hvs0dj20agq0qhr2ksmv30aho', 'r49o263llihbqqhn2sj6rohn01', NULL, '0566', '341722', '石台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5i3jtso4uiijkog8nmbhf0pe8m', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350624', '诏安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5i783v58eaj90on1f24uji9j9a', '6keq61sajoj4tpj2n3romnires', NULL, '1935', '620621', '民勤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5iadgp08scisqqumhcfhnedttn', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '宋洛乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5iaje5kf1mj0qoqtrabaaiv3jg', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410821', '修武县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5id293t3suhu5rt113k84cqv9g', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '沙嘴街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ig542ljieit4p889tjeahvmnp', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150902', '集宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5iggbupbtagb7r1nqfncpkfj6n', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610728', '镇巴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ijfthkv36gfcr3g07s6umq73v', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0830', '510500', '泸州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5j92peihkqin6q498s41om2igi', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430681', '汨罗市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5jmb39g4qsj8aoerf9n57rdgth', '0sh732c7saglcqaktuna9frole', NULL, '023', '500102', '涪陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5jmevtd80ch94oebg2cgd6n2pc', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140123', '娄烦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5jo0ivo9iigaoovu8k2jrm18fl', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130281', '遵化市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5jps855ld2ifapfhvf8brjhunq', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530829', '西盟佤族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ju0uvgngqgvdqb2alf5bgc2c0', '7hk2dikcooh2dou1jbi2qq3jdv', NULL, '0752', '441302', '惠城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5jvjo6nccug49p3p91e24603c1', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522323', '普安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5k1car8u1ggc9ot72oqaovi3lf', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '邦溪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5k2qg52jaug1fr1j6j2hp8g0t1', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431225', '会同县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5k357n2as6hf8qnf941hg8tghb', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610503', '华州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5k9b2kbho6g2ep43ljqvk2t6q6', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150928', '察哈尔右翼后旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ka6nr7f4ai7crk91dpeuarn1u', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530927', '沧源佤族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5kb0so1jb2g7mp88sumcp18ppo', '1t232jo5pch34prqa4899hji2e', NULL, '0775', '450921', '容县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5kbsuopasegp3qjhab6acv2t48', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130705', '宣化区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5kffgqjrecih1pqt9t2tadrsaa', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '460000', '海南省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5kgfh1u8p4gq1qg0lrc5apts44', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320611', '港闸区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5lav1d2tiqh2boef7406ffccaf', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141033', '蒲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5linfd676egabp3lu8k0vc2i2b', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421003', '荆州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5lkf3do70og7gpimrurq0i933i', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130208', '丰润区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5lt7kq8s50iv7ru3g0tpbugk6b', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '420000', '湖北省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5luljdesoei7fpgofo3a7chj2q', 'r49o263llihbqqhn2sj6rohn01', NULL, '0566', '341702', '贵池区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5lurjr62pii29qcemn89r7bsm2', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532925', '弥渡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5m0lar04umij2p2c103lgri0st', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141129', '中阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5m90tcirgshrlpq5slseequivs', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430281', '醴陵市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5m998ibkb0jmro7p7pqdnfmv8s', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451022', '田东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5marad9fjihslrrm7ar8pj27m7', 'qe9qqc9ih2i7nrjb1p28g7ssae', NULL, '0436', '220821', '镇赉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5mcieai1f6ijrpmeak2blpg805', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341122', '来安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5md00cifu4jjlpug3nja59na30', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0371', '410100', '郑州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5md8st393mh52re0fdajc6dk7m', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810010', '荃湾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5mgtdlni16g92qeo7vctggjrkp', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130731', '涿鹿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5mkv79245ih3po7hm0ueh0so6a', '4rslmb3lhqin7ots9deq3lppkl', NULL, '0349', '140602', '朔城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5mu7li6megi37qtiu3149h9tco', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370832', '梁山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5n1hqvcemmjehqflcivr942ucn', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '兵团一牧场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5n1rnsaqhehhrofiqmj7d6r2tt', '06l4onpd1qj5eqibe4i2ua2jsj', NULL, '1755', '450802', '港北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5n2vkr07b2h6fomd5mvbl36khg', 'v9p48soav6jlsqinehjjs57cks', NULL, '1994', '659004', '人民路街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5n54a14dtkhbgr90ms6dod0jfo', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130634', '曲阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5nakequ136glnonehna2n8o1k7', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350582', '晋江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ndoooa6vchririevmdbomitfr', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530323', '师宗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ne2dl28gqij6p9mdo0tkqd2fk', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150103', '回民区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ntvt5ino2j61o9heqk5qf3qd2', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '托喀依乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5nu3h6nbdmga4rhhs63i2244j7', 'v8b6b2s9tmh62pkqq7ov005euv', NULL, '0421', '211381', '北票市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5o34tc649sjlrpggtcqhr65dul', '0vt189j90mhv5pr2nfhjkiia3k', NULL, '0714', '420203', '西塞山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5o6b86av50ir7pc7sj908qg933', 'ultj2le7dogcvrhrl50rosc3j2', NULL, '0908', '653023', '阿合奇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5o978rproagfcqjjp963dod6e6', '4uqac50t6gh9nogglajv545qq2', NULL, '0973', '632324', '河南蒙古族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ofhdlevoegp8p902arpn46rlq', '155qrtip2qj99qg686a2en0psl', NULL, '0316', '131000', '廊坊市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5oq2adnj82hv2qgh662kb37h2r', '4c470m8mi4hj9poerdko8hultd', NULL, '0555', '340506', '博望区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5or2lniiaehnso987nhf70uf48', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130802', '双桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ou59kv3aagbsqke66cm5vtgc7', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, '1852', '810000', '香港特别行政区', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5p0n3e6homjegot6kqq1pi88mq', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451222', '天峨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5p5e6pfq14ggho7ag03cd9ico6', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152531', '多伦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5pinm0g9i0hn4rtsulsuln7oc8', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140902', '忻府区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5pmrrsbficiieqe0qc09lhr3se', 'pop6evjn9gjk0pf4c9oaf7p8jl', NULL, '0478', '150802', '临河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5psif95cdqh0krkete4d4vv2uh', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450329', '资源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5q573jkn36jrqrc1o066dmof3s', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430602', '岳阳楼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5q7cuoq8imimtosb7ci79bhf7a', 'q04gvg77l6g58r9c0mrbe6cdl1', NULL, '0552', '340302', '龙子湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5qhe9so9aeg57opkilgn23ckhp', '66bmbfmu26gh9ptr5d7dlpl58c', NULL, '0418', '210902', '海州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5qkl9ofdg4jqjq2s1rdr0p6rlh', 't8fhi5nj6ahr2qll2e8cqg081v', NULL, '0543', '371603', '沾化区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5qnecggev8ikep3on6285snnak', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150722', '莫力达瓦达斡尔族自治旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5qoh0u5taait1oag7c3ar2a914', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0972', '630200', '海东市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5qpj82bkmmhfgr7ubm6r5p174u', '27snrp1n9aj30p6nf2sfcc8j24', NULL, '0938', '620502', '秦州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5qqsbfcd96iekp9fnffvle3fbn', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441427', '蕉岭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5qv2kq3h1iijdoaqrfbodfhitm', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0758', '441200', '肇庆市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5r1c7014sujkrre5lkj29av1c4', 'sm15d8rjd8iihprb174l51cs8s', NULL, '0888', '530723', '华坪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5r5uhgep60jg8rc20n9j4fo7km', '58i0mts36qhv5rbhjfp25gbscp', NULL, '0994', '652302', '阜康市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5rbc74ol04jemp122rgsa79ue5', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420529', '五峰土家族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5re2gokc6eht3rmu0ciallvt27', 's18hnm2dhmhbqr9pfapopra4jh', NULL, '0464', '230903', '桃山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5rk3o0sn4qjvkr0p24n74ul3bq', '7b9t411baujtgruqa9vn99tr68', NULL, '0457', '232721', '呼玛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5rmjt7eh4oi8bp6mvfb90f76ou', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140723', '和顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ronu5iaiugd9p6ubj28usjc0c', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0937', '620900', '酒泉市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5rp7v00rpqi5toq7in83j7vp8n', 'tj70a6cm7giiopralk6q924g3a', NULL, '0475', '150500', '通辽市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5rptnrqaqag0oq1dauhphe4rl7', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622922', '康乐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5rqb9am366j8pq54b3rana17ka', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360921', '奉新县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5s2nf4qe2qj7aq53h1pieglabm', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230229', '克山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5s9k0padbkie9pdkho074i37k4', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140225', '浑源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5s9pgh81qujalrahg6b1kgfg6p', '66bmbfmu26gh9ptr5d7dlpl58c', NULL, '0418', '210922', '彰武县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5sc02phts8hk5qgrgtcc6do6p7', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '齐干却勒街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5se3ppj5g8imjqaid4eq5fdugg', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '道滘镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5sef7ac5h2g4jpcnl1i20vl7gh', 'vcvi1q7disif5o2cn23iminacv', NULL, '0663', '445203', '揭东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5sj9he2quagkopce34g9via9uh', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0593', '350900', '宁德市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5sugaioh14ihcqh40rqaqmbi6o', '3gsg08cppejc8o9h0t2v8egl5k', NULL, '0410', '211282', '开原市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5t1l059kekgvgpj02b6imb5p4f', '51jm31pu5sgtuoplndgclh1oat', NULL, '0398', '411224', '卢氏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5t4qp763acj75qp0mcq5uat26r', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522325', '贞丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5t6ifqg67ogccr53mkk8goe8c6', '7mi7t9c2gojcur0an0g8le8svu', NULL, '0573', '330483', '桐乡市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5tc5sqj3uuhf8rb664dmif1jkr', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团八团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5tdhoo3q4oj9ipahfclqm9q86h', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '东莞生态园', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5teqtpc6i2j8qrm1lb6o92gr4o', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522725', '瓮安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5thki5bmg8j3bpa059saqs5bh4', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220202', '昌邑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ti30kau0ogscplijjkpfuo99d', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230203', '建华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5tk8mjmhdsh9aqg89u4pr8rj4h', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '凤岗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5udhj9fu7siiurieq1ek8l4h02', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410782', '辉县市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ugt4gqlf8gpqrbk3658mardch', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370306', '周村区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5uhg6qaneagq5rgo5irn47rfbp', 'tlqsj5d6ogha6qv0a2v3vomsgg', NULL, '0858', '520281', '盘州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5ukavj5gqej23r385cfoh3ll8r', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152523', '苏尼特左旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5unjn99lu4iuvps5n94sjcescj', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0779', '450500', '北海市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5v4g40sp00hvjrdbqr3p9j0q7b', 'v8b6b2s9tmh62pkqq7ov005euv', NULL, '0421', '211324', '喀喇沁左翼蒙古族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5v5p7laenagitqdq9etveq6lt3', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331123', '遂昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5v8mbr3fsqi5fprskr1ln7oar9', '37kd80t5ksg98rljq1o2rt6eq9', NULL, '0592', '350213', '翔安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('5vmh6skonuj5coa353oq209ijd', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610825', '定边县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('600mfi20jggt4qh81te4987aet', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652925', '新和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('601ihq45qeh12ojluku6scver0', '4ohfo84880jgqquoscofhr3sdi', NULL, '0414', '210502', '平山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6024qeqto4h80p6l7ui03to60f', 'sllolnqlkegb7rtv9rsslfhsfa', NULL, '0826', '511621', '岳池县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('603o11sddci9uqnp4401h4fabc', '0vt189j90mhv5pr2nfhjkiia3k', NULL, '0714', '420222', '阳新县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('608sivdhjig5hr156p9djb51ll', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '1897', '469001', '五指山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('60j3ul45s8hnqo6n7p3opspg7i', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210281', '瓦房店市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('60jh5m9m6mjepr7pdp50nit0t0', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520122', '息烽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('60lq0rhnsuiftqq1hg9kcirgup', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350924', '寿宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('60pbf1qd0mjpaqkhl5imc8c603', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350724', '松溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('60plvbc5tqhjcrsj5hfv8ads5n', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0392', '410600', '鹤壁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('612lg3emvmg7nrc13rrk4mqs7r', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522326', '望谟县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('613ksokrmkg8rqsg60dijb6tbi', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620123', '榆中县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('61i6gl9mvui3jqehj718rqvqae', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0735', '431000', '郴州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('61iiembdk0ipnqkmefr1apgjk5', '3dcrfhnm1egf1pf369o247jtj1', NULL, '0559', '341024', '祁门县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('61ons5g90ajm3rs0emgh5sqen0', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610629', '洛川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('61oou3n09qivcodaclrqlb04jp', 'oc9qu4fkt6h4lq8ju4qh6b43s7', NULL, '0580', '330903', '普陀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('61tfa5qvl8g6dq6mne8nsmmp53', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '浩口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('61vgh32e40hc8reonptg52l7pf', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420117', '新洲区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('624gt687u0jrmph8lpvl3bbval', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130108', '裕华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('62fnr8f6vkh7uppl4gm78d4srv', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520525', '纳雍县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('62g0vhtd7oh9fritqr57c5ujvm', 't8fhi5nj6ahr2qll2e8cqg081v', NULL, '0543', '371625', '博兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('62lj2cb7hqi7oqbcmadcoq0717', 'oli0hjs3akg2ppb6umjeru4rc9', NULL, '0564', '341503', '裕安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('62ppi8e398hgoos6oi7895l7ka', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330726', '浦江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('62rq1jvhi0in3o6uv0ofm3t026', 'shc3fh151oje0phuaqshgfndhb', NULL, '0417', '210800', '营口市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('63a1vu9dishu7qlo6ffksdu47j', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522701', '都匀市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('63abfaqckkhnbo2feooe1l826r', '06l4onpd1qj5eqibe4i2ua2jsj', NULL, '1755', '450804', '覃塘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('63cbfgknjiisjo4n684hjeis8i', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350111', '晋安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('63h7fn90kciv0o98m4a6vktqf8', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '普恰克其乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('63o8gdjufkjs6pfj953hvs00bp', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410221', '杞县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6470c4tnuui5rpu1cengvjehcj', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610523', '大荔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('64917t84ikg02ri3ship6ss9st', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '1728', '429006', '天门市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('64cikv9jdehmbr7q7ptf584o2m', 'vojkigqia8gkop6rdt778vgntv', NULL, '0952', '640200', '石嘴山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('64cr41rk6qgqcrsjr8mp6d94qs', '78bkqob3tehucq4613vdbhrfot', NULL, '0575', '330624', '新昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('64ct46t9uij8lpfg4qva7uc4nh', 'rfn4tk49imhvbqf9lc980ovabd', NULL, '0510', '320282', '宜兴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('64g9rq7l88h7joee2ii9ile9kt', 'ub0dk32t6igiuo0ugm6jfdjsn5', NULL, '0750', '440785', '恩平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('64je4as06sj7srfmht7snkgon4', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130626', '定兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('64svvnp6amjnprnba5j5uumfgf', 'pop6evjn9gjk0pf4c9oaf7p8jl', NULL, '0478', '150826', '杭锦后旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652c8etho8h2jrufgalt1mi69b', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410811', '山阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652fh3he9uhhgr5a1bl8he5hcf', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0379', '410300', '洛阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654d8mi116geor41ijg0o56rgl', 'pap05ht94mhc2ppr8m66v2ibpe', NULL, '0886', '533323', '福贡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('65h7jtka3eg1krl448bnu26h2c', '3gsg08cppejc8o9h0t2v8egl5k', NULL, '0410', '211224', '昌图县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('65h7pebpjkgdjo501op9up8l3p', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '皂市镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('65hqau8fq8j2tq96uk8nsj7caj', '7hk2dikcooh2dou1jbi2qq3jdv', NULL, '0752', '441324', '龙门县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('65l56ouus8hkmqqhnr1q5s8kp1', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150222', '固阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('65r1odirhoimurhqkt9530o0rb', '5atdgk3bochubo4s1fdeulaech', NULL, '0711', '420704', '鄂城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('65r32mqkoki8krqe29gtfflem7', 'tcp6tkb5q6jd1re0qtde5sms1a', NULL, '0818', '511724', '大竹县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('66bmbfmu26gh9ptr5d7dlpl58c', 'shc3fh151oje0phuaqshgfndhb', NULL, '0418', '210900', '阜新市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('66c0foh34oiourrrdcrp0hnjbn', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360102', '东湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('66hnv7ji3ghb2qubukcf7m8ag7', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1997', '659002', '阿拉尔市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('66pngcuosgi9qrt381606m8erl', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '国营保国农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('66s7osnk7mhafqihgn5cd7lge3', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320114', '雨花台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('66sq0gu27oiusq5sk67mhilbca', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '南吕镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6731jedqcgj11o2dcvlb5abafk', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341125', '定远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('67hpi5321kh88q08jm8dr402or', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '东路镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('67j0ra44iuildr3td735jrfn56', 'p84u1jr0m8jcdqckqm7u2cim9f', NULL, '1771', '451423', '龙州县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('67siv4ood2ijjqgrbkdlfjvqe3', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410183', '新密市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('67tg8qb4kgjg1o6rsplo2bfi3q', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371482', '禹城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('67ume04qsajvvpe8hkgm46n4lr', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370613', '莱山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('683shu87m6hf3o98kg7t31egub', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540124', '曲水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6846jac6hcjuuq8gahi73e0u8f', 'tvgdh36vgmh2bqffbjc64pjtlr', NULL, '0935', '620302', '金川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('684bu47g7ejabodsgva0rf9mpm', 'ojubqkbsvch66q0otd5vajml16', NULL, '0437', '220421', '东丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('68d0j84o46h1mp0dhf7t99cecp', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '渔洋镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('68gvafkhbqggaq4t6s8l0c7jru', '1r7915e8g0jalrr5vst5cfuiol', NULL, '1774', '451123', '富川瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('68scvtd0piilsrv0gqgime32q6', 'vojkigqia8gkop6rdt778vgntv', NULL, '1953', '640500', '中卫市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('694nj77cbaiqmon8gu04d4s36h', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310151', '崇明区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('69dtrh304ag2jpc9kjlq5gbdg0', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140107', '杏花岭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('69gs60dksohoeq75b28uhk5ukb', 'vef8djerl0iorr8qsm85uh6u5p', NULL, '0415', '210681', '东港市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('69jjar6s8qgk3p009dtp9f855j', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653201', '和田市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('69k33ogiv2jglo6nffkkd04rqe', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '净潭乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('69l736hllihoore1tfu9db85ki', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '江边乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6a28sm5bs0jv7rhbubs4cr9tr4', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431025', '临武县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6abnnja4jii7up1t9pan8hdqus', '3dcrfhnm1egf1pf369o247jtj1', NULL, '0559', '341021', '歙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6acqlr04k0i0sosfv2487bo082', 'pqn8s9kedgjnnqhqpopuc8o1ts', NULL, '1937', '620200', '长城区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6adf2ojbe0g46pf7e41p5nd5lr', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '南林乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6admjkb6ggh36r1nv6qtdnvg3a', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340881', '桐城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6aqmbocha2gucrsuo753isuntl', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '多文镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6b19dl37egg3grojdffrnrun0l', '62rq1jvhi0in3o6uv0ofm3t026', NULL, '0417', '210803', '西市区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6b4pgj6npaj60o64s69fbibfs2', '0sh732c7saglcqaktuna9frole', NULL, '023', '500103', '渝中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6bg0fght3mj72q0b86qnedbd5p', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, '021', '310000', '上海市', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6blulgs0rghsrqkvsf825smma3', '155qrtip2qj99qg686a2en0psl', NULL, '0313', '130700', '张家口市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6bmgqmu6iigr1phahu0n24qfco', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130903', '运河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6c1cmour56gd1pu6244r266e55', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141024', '洪洞县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6c4ep01ff8habq35fop4k8ve0d', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230183', '尚志市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6cckklmesuhnsoh0aat34s94fh', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411423', '宁陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ceu6g6j78jhdos3csh6jmpulq', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411526', '潢川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ciq3qdv40j93p587avddiqdeq', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410781', '卫辉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6cjprasj9kjj9qdkfsurhhk06v', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450303', '叠彩区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ctb7jm53qigjous121k16917u', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '麻洋镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ctv5r2k24i8up0muojh7c8vrv', 'uuv8fjp592idaok8uh3vkbahon', NULL, '0813', '510302', '自流井区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6cugh8djdkis3rnovfh9kari0v', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361102', '信州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6d33929n98hu6qv2s12r753evj', '3l0uf7h9nah2frg2h1udh9eaea', NULL, '0435', '220524', '柳河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6d6sqljuekhn6rud6npce64mp0', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431226', '麻阳苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6db9tqoqncjpuqgpi7ph87toj1', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120111', '西青区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6der7aeaqog58qjgj20lchf70f', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513336', '乡城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6dfien4p34gipqacpb7jsookr3', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0903', '653200', '和田地区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6dkhflm4dqjterk2ohteulohsv', 'o3ikr5lpcqjbqop5pier801urs', NULL, '023', '500200', '重庆郊县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6dlh703figjkeqq1d3pvasntqu', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团十四团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6do02pl7i2jb7oto133r2j7ses', '42ktkqnbeshqtobfaj036hf0bs', NULL, '1772', '451323', '武宣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6e592m46dsih0qqbpdv5r03ccb', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230184', '五常市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6e82gct01ejj5og0rvu4t46acr', '04lk5t0f8mju5r30i2um8bgrb2', NULL, '0893', '540500', '山南市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6e9e0aua72ga3o3s9nj57664ch', '1p4h9ufnuehihr62ki5flj99vq', NULL, '0439', '220623', '长白朝鲜族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6eatsfniksjh0q8esmjhrmcl0r', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150625', '杭锦旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6efibgdub2js5osm18rjk1fbvt', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '红毛镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6efo276ioagnkr7snpus7fmjor', 'sm15d8rjd8iihprb174l51cs8s', NULL, '0888', '530722', '永胜县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6eidd88atuhhcqprmh942insgl', 'ul67q7c7fsjhrq25s0lg9j9t26', NULL, '0563', '341825', '旌德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6euig47r2ogg3pt9marisqnh7j', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '国营红光农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6f568pm8meh36rc5d7fn3a6vs4', '7clv6jucsug1docf6sia80h0g6', NULL, '0936', '620702', '甘州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6f5tnso0fmi12rfvt1mhpt0egj', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130633', '易县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6fcqjll1kejspq1j4ncmv4kfv0', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370322', '高青县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6fcvt5458mh0aq7gf526i3um6c', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540623', '聂荣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6fdppuuthmg0pq12p0o74h9ls0', '7b9t411baujtgruqa9vn99tr68', NULL, '0457', '232718', '加格达奇区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6fqhiopel8jqvo0cahjfn1oihb', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140826', '绛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6fqitugrqiibfrf5v77j9nqqgj', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610621', '延长县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6fr59vsaheg3op879qtk7v8o4u', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '总口管理区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6fsv29gqd4iacp296lkb1s8hu5', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370321', '桓台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ft0eabk34j8spp2212sr1v128', '3fbj0tfov8hj0qfsqttojica44', NULL, '0770', '450621', '上思县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6g1qhv8ch6hq5ql2cmumt4n4oi', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370634', '长岛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6g6fc0s92chbfou2hb5jm0phc3', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150429', '宁城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6gcoa4kf42iskqvhjb597uoosu', '06l4onpd1qj5eqibe4i2ua2jsj', NULL, '1755', '450881', '桂平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6gh155bd94jtoqfas5crn7egga', 't1poo5ohlkgqcrg334be6usr4t', NULL, '0473', '150304', '乌达区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6gkfk823h4hf7q8jdf1tb5gpqq', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410102', '中原区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6glm6o6ij2jk2obhp5a7117jvd', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0574', '330200', '宁波市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6gn0al1n3qg5mpv23vu50fon1q', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410105', '金水区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6go0n6i38ejvlp40i2oerrdgj0', 'tcp6tkb5q6jd1re0qtde5sms1a', NULL, '0818', '511781', '万源市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6gsgqula4qgh1padohio56bko3', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0838', '510600', '德阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6h11tjdhokj49qse4qv3u5re7j', '6gsgqula4qgh1padohio56bko3', NULL, '0838', '510683', '绵竹市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6h7659ph5mi0gquj7pbfatvgai', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430103', '天心区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6hla6gsl5ajqgo6o1rbe4pfb08', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540302', '卡若区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6i025r35qihauqtams5g97341s', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370828', '金乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6i3mk5duumgraqoftjnd4lnv0l', '3akbe5vmuajqcr216dasutqju3', NULL, '0873', '532500', '红河哈尼族彝族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6i48p6ch1qh14q1m21pse5po0n', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410503', '北关区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6idnfkclvqiu1r4d0pc6kussua', 'ov5d4q3dgajrnqgofjig0p6pa7', NULL, '0538', '370911', '岱岳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6igr56a7gki3dqjjv6vincvjg8', 'ph5b69fq9aioeolk65ov8ahe88', NULL, '0523', '321282', '靖江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ik0e5pu0mhv2o5auf473va80t', 'rfn4tk49imhvbqf9lc980ovabd', NULL, '0510', '320205', '锡山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ioh9297vojvur58uj7q1cnrme', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230524', '饶河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6is4it25iggcjqshe2h9ca8crc', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130529', '巨鹿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6itptas8dehe0po42ivdhde70d', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '塘厦镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6j3cstsk98i6rqd4o3jb460agg', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420504', '点军区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6j3lt2h5jmhmeo2crm4uksv4nv', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330102', '上城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6j8a2skccui7op1pe4qkt8n3d3', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530102', '五华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6j9arril7cj90oukidsg6odgh6', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131023', '永清县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6jaicj2qcsg24op1rkq1p3gc8d', 'r401ektu6ohcuo5la91f317ved', NULL, '0932', '621125', '漳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6jh7vrvim4hgmrh13rtefmklq9', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610722', '城固县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6k1n95sbhgg79rfaborgrqdjas', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410523', '汤阴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6k4ocnijb8j21o3453ido5rjjf', 'qopnqkjitqggfob4d7vlbasbrr', NULL, '0335', '130321', '青龙满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6k71ofifpuggaokjove2pha0el', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130204', '古冶区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6k7mu09bjcij1qhl5d9ka8sumt', '58i0mts36qhv5rbhjfp25gbscp', NULL, '0994', '652328', '木垒哈萨克自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6kd6uofftkihepdllik9vqed4o', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140405', '屯留区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6keq61sajoj4tpj2n3romnires', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '1935', '620600', '武威市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6km2jg0truht3qaj1spc43k9np', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440203', '武江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6km6uscclmivjrhosh9u7551n9', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520103', '云岩区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6kn0cvsr1qg15qd9jtkuj5s9kv', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0756', '440400', '珠海市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6kuo0ps4j4js3rk0puhf1bsf3l', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0745', '431200', '怀化市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6l5hm2skuaisvqmnqliusvma8u', 'spcl2traagiofrum521umd4mei', NULL, '028', '510114', '新都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6l6mjpob7cjnfog7hrspj9nhv8', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360481', '瑞昌市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6l9b9ilp3ihmhonjc44kakbr91', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0516', '320300', '徐州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6m0fsnqjusjmpo19h8geupi8fm', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610826', '绥德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6m8g8qm4rcjs9rde1ts6aqkj04', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230624', '杜尔伯特蒙古族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6mdu22u2rog88oat7iph91h494', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141182', '汾阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6mfkk1fqgihpcqddlvrm5oh2d9', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '张金镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6mhjq8m5bih1rrp11be4gasabr', 'q04gvg77l6g58r9c0mrbe6cdl1', NULL, '0552', '340321', '怀远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6mp1ll56p0iu7pt2iul0pc8ikv', 's23l3n9rm6im4q2lmkt8ndn471', NULL, '0483', '152922', '阿拉善右旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6mrt3asbkuhajognr2kigugcoq', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '兵团四十四团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6mt3kq18doiddq31c22njra79c', 'vqd8pkelpkj84o1g0hhs719s7r', NULL, '0517', '320803', '淮安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6n1llo9cekjivppoe84iojddft', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230605', '红岗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6n2d2j2nr0g72rf8h6bu73vb5e', '1bl3m8tuaqjc3qppim0r929dqf', NULL, '0715', '421224', '通山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6n37miu22ojsarluldh9k41kfk', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130982', '任丘市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6n54mr021shnlpiql153amvhmi', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340827', '望江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6n7d2g7a0ajhnrn6157cin88j0', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0514', '321000', '扬州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6nksjur2dgh10r8q1l884ls7go', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0716', '421000', '荆州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6nmnfrg8ocj5sph1dn9nrsebem', 'rbqf56oep4idgptb103sspscso', NULL, '0914', '611024', '山阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6o859uuig6jipqkk2r31sdpuvc', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610122', '蓝田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6o991dt6soiilorqni48o51c8m', '0j0195ugs4hf4r43g4mpmpd5tt', NULL, '0413', '210404', '望花区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6oaepndc56ge2qudjg3f07jvr9', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350430', '建宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ojqaof4i6hriq6i40nmo3118a', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1909', '659007', '双河市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6om49imhfuii7rbkfjc5eegdgs', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150502', '科尔沁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6omtolhc02iv3qok4rhuqikui5', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231085', '穆棱市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6orq73kjhugqvqqf6snb2a8qou', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350703', '建阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6oulip0954ju7qh0s0kaf1g98v', '3akbe5vmuajqcr216dasutqju3', NULL, '0870', '530600', '昭通市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ovn7o22iuifkonp589v50tsm3', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610925', '岚皋县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6p2coqlti0g8mp7m4qde86g98t', '4si9r8ohrsi0urh25a84pugj6r', NULL, '0434', '220323', '伊通满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6pa1ceeqhggtborria5c48687l', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420582', '当阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6plcoihc5mhvsqou88pcd3u71o', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410185', '登封市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6pmpdee6h8ju4rb2otv1h0j6ok', '713abj07d6jguq4ruatgsjhp2h', NULL, '0919', '610203', '印台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6po8j4vn96holqcs0i8b6t1vcu', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130632', '安新县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6pp9enp8iejkdq9j3ou56j7mc9', 'pma35v8v3aggbobuot73v69lpj', NULL, '0915', '610900', '安康市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6q5nn1d582i3trl1ntnff57lsp', 'pah4e89c2egpbp9laj391prtek', NULL, '0766', '445302', '云城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6q6u1d6e00ihappt4pcitqqtpk', '2051oaiqo2hp2pt9pnt2org0jd', NULL, '0839', '510811', '昭化区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6qoralvkh0i70pi9mk49t16f1g', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331082', '临海市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6qq1h03shgjuvrtghii5vrjjgf', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '坦洲镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6qt4193b82gb3p5vj44fp866nl', 't3i3jj4066gniomc1nimc5a67r', NULL, '0456', '231182', '五大连池市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6r3lvf6pusinlq8grvs35puhij', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441481', '兴宁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6r5sl2puv4i9kpn5ss6e8os5r6', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431228', '芷江侗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6rlpjdb1tch93r2o0fbpvbt7oh', '71s5tgjdeig0gp5uiqtjak9c53', NULL, '0429', '211481', '兴城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6rm2mcs5fahdiqih97oe7p8se9', 'vdbjntnqt8io7q343d1d86olha', NULL, '0875', '530523', '龙陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6rqteaggl0hrsprk8ecvrp7v5q', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410423', '鲁山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6rre9234gii0aop6kjfq8jihsm', 'pd43976vcgi4fqbihmbdvhcd82', NULL, '0894', '540421', '工布江达县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6rv5rbgm40h9krk4pqp883i97j', 'pd43976vcgi4fqbihmbdvhcd82', NULL, '0894', '540422', '米林县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6s2upmaeechi7ogms48qugph7e', '4rb1a283l2ht9r37qbp67ot2cf', NULL, '0511', '321112', '丹徒区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6s5kg6ja24gkaqesmsiijkhfud', 'ph2eva16o0io2rlns64f0spuu0', NULL, '0943', '620402', '白银区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6sdrgnn1e4h4apkdeua75ae8ne', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440303', '罗湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6seb1cp9smgecoar86t03iqq6l', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '国营南平农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6suhokvpsch7gp98uo9t68eaqf', '1kf9b22j0kinsp0h69ibb20gn4', NULL, '0570', '330822', '常山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6t9rmhnib8iu8pkhll3q0bt5v4', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140929', '岢岚县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6tigovqe50ibfpqqa6tlaic1uc', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610631', '黄龙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6tjoor71toh02p7jo46ajtmuui', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320111', '浦口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6tpo93ianei6gquhmjntqdn495', 's0lr6tduqaimerh4v7krl8njqq', NULL, '0519', '320411', '新北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6tu7qfobagjtnolb1d461k0gjq', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140430', '沁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ubfs0d8m4jgopoi38a9pb4q11', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360902', '袁州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ugeg9207uijfpcrv99599bnq9', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130703', '桥西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6umkf35aasitho7dlgfaqood8k', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '黄竹镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6uqep47lhehfbruqa2ddtptpan', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540524', '琼结县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ur3pvmb3aimbrm5b7is22cn70', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '畜禽良种场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6v44dsvfbsgvaref56lo5ccfut', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371728', '东明县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6v8o7phn1cgpkrh9j51u7heod6', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230521', '集贤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vd4mp8e8iihmrgl18hgsphuot', 'p7jt8c0826jpcopt61uit2826h', NULL, '0831', '511526', '珙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vdc94icoahdnr14koldi11uu0', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370783', '寿光市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vdvicfmqmj2er4o78g169bsf5', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621227', '徽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6ve5nael8ihqqqmch8c77i7nlu', '79aet5qpkij7uov01h5hagemhj', NULL, '0737', '430922', '桃江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vfkvdj8cohn3p01un5gmfc5g4', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361125', '横峰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vih0169jai3epnihn833h4eqt', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341203', '颍东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vjtnufp2eiqip75uek05pm3a4', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1999', '659008', '可克达拉市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vk98tiersiibq2sg2fnfpckn3', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0933', '620800', '平凉市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('6vrgdigld8http1ephfqbsh14o', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654026', '昭苏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('70aheuacd0jf4p34mbl21cqu5r', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431028', '安仁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('70bhsvdl1qjd3rmp0nqgrv0hd0', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '王五镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('70j1gj75tshspoiikus7t7jhvb', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450202', '城中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('70msie8toigb5p7uj6ic3t39on', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532329', '武定县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('70tk93q2f6imjqvi3gqp8nq3hh', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654027', '特克斯县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('70vo2l2n8sgljpn3cnc5oi62im', '79aet5qpkij7uov01h5hagemhj', NULL, '0737', '430903', '赫山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7137qsmk4cjiipdavtf1h09ppk', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130925', '盐山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('713abj07d6jguq4ruatgsjhp2h', 'pma35v8v3aggbobuot73v69lpj', NULL, '0919', '610200', '铜川市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('71e1i3k0tijrkotvi6s4kefj4g', '5ijfthkv36gfcr3g07s6umq73v', NULL, '0830', '510525', '古蔺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('71gvuvp7i6iajpv0otr4bu9hd9', '3l0uf7h9nah2frg2h1udh9eaea', NULL, '0435', '220521', '通化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('71ji3cga4og2so7jsi5bl2nqpk', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430781', '津市市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('71l4t433qmj89r1ugd8bs084p2', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653130', '巴楚县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('71s5tgjdeig0gp5uiqtjak9c53', 'shc3fh151oje0phuaqshgfndhb', NULL, '0429', '211400', '葫芦岛市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('720jeuui56gclqkh7kh3ftv1vu', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '430000', '湖南省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7273lhaa2kjvtpiac14hi3kcvh', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '中兴镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('727ggge28uienotvukqfp28r8v', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440229', '翁源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('72klkh9dj2iq6on8m1ka9uf3t6', '1p4h9ufnuehihr62ki5flj99vq', NULL, '0439', '220681', '临江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('72lmicmq46hodr1a84ll7d438c', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '长安镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('72mv65m81ui3kq12d36hj52m54', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222401', '延吉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('72r1ufae6ahkdom53n9pcrj549', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530422', '澄江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('73074v4qq0g5ars2cec58gpq94', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '340000', '安徽省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('730f4u0j6ehk3oidimpth4rehm', 'trhctuqokoiisrgk64kuvlneeu', NULL, '0561', '340602', '杜集区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('735rm3di78gkcq589hc9b2urrp', 'p47mt63pg2hempalq3mqvr7rsi', NULL, '0412', '210302', '铁东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('737e113j4uhi9qe2vd5g8iksir', '6kn0cvsr1qg15qd9jtkuj5s9kv', NULL, '0756', '440403', '斗门区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7399h5fqs0gfrp2ddj2hudv9ql', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520626', '德江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('73k659jq2ah6fppa6qe6rlojmd', '3akbe5vmuajqcr216dasutqju3', NULL, '0692', '533100', '德宏傣族景颇族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('742e02hltcgverqful1qsmdrqt', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440310', '坪山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('743h131cbqghao66bia5dfli4g', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520324', '正安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('744v3gv46aigtrgrv2jvbsopt6', 'tj70a6cm7giiopralk6q924g3a', NULL, '0471', '150100', '呼和浩特市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('746j3d3qt0jm8oiqaapr933hqu', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410381', '偃师市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('749rfpvp54hubr429tu5n6tr90', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513426', '会东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('74lk6dkat0h0trpfghe8f47p75', 'rrrc98s2rahk0olm9dv24hssrq', NULL, '0902', '650521', '巴里坤哈萨克自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('74pfq7s2seh24rvq8qum5rag9b', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410204', '鼓楼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('74qkr2ji6aio2r0q6a1g9vfnrj', 'ttrfngqcagjlrruiq3uvtd6e9u', NULL, '0738', '431381', '冷水江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('74s11i1l3sghkp4jl6datdm69n', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0934', '621000', '庆阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('74ts3h54r6h7proeraaf268qsq', 'pgbho69sn8idkq1bkddd4rhl3i', NULL, '0416', '210702', '古塔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7539t359lggcdo7uor8sus9nfl', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421127', '黄梅县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('757dsfjvhugp3o2vs55bahdrii', 'r6gk1pnptmhbtpfuscpet5g6m1', NULL, '0597', '350881', '漳平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('75dmceftg6g6gpr1u20hcna7r0', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360124', '进贤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('75t1ndvl98jq6o4sjr6q13u51j', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420525', '远安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('760o2iqcaugqjr1devrdec7h46', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530826', '江城哈尼族彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7686rcu0o0jakoi6qo0jkaeg1v', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '黄江镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('76dotpv01ih2vq0sd770kcs6gc', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '兵团四十九团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('76f2btn87giooqe51ker1jeiat', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '干河街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('76ltfal840gc0qprj9v6gggtpu', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370302', '淄川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('772ht2038gi8bp9bpumvn2g799', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220221', '永吉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('772psqi7sciptrinc72u5pn5vo', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '东区街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('772t8mlp34jseq8nsbikuevu4e', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '幸福路街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('77a0kbimmugidq1geqlgr8fgaf', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350721', '顺昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('77dii83uq2hprqn2540su8hhma', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430528', '新宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('77etb1k6ucimoogi53fkhsmh7o', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '番阳镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('77kcrkni2khlsohbb3l5lk3l1v', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652823', '尉犁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('77sahlc6p6ifartabjbiopj1pi', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430105', '开福区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7836dscsr8j3nqbetl50gqaube', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150403', '元宝山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('78bkqob3tehucq4613vdbhrfot', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0575', '330600', '绍兴市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('78jamfgmhcgssr7jblf5r45294', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330303', '龙湾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('78q78fg458irsrh0f8i6tfju1d', 'vp7s5rgl42grbpsmr2s27bg3kh', NULL, '0827', '511922', '南江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('78r61q73i0jlapr9uscqbmi1va', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '古镇镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('78s9ln2t1igc7p8li97i1ue2h4', '33980i4d8qg5opdbrbl17k22t4', NULL, '0975', '632625', '久治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('79716c5l2ig5mqtb4fd7oo4m5c', 'v322g4tjqsifgosda4e76glpkd', NULL, '0482', '152201', '乌兰浩特市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('799ida4so8hclr576pglpjpchi', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370323', '沂源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('79aet5qpkij7uov01h5hagemhj', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0737', '430900', '益阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('79mb3crjlkhoopm7mkdto4jngp', '2m8o56kpboi95php7scrtplfqj', NULL, '0518', '320724', '灌南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('79oovrf16uhbgrv90egcetoict', '4h85ig3mruhk8plgdokttalo7h', NULL, '0452', '230200', '齐齐哈尔市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('79sqtoookah08rheocjuudqho2', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222404', '珲春市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('79vqeb656ah78pup2bq9h0ugrh', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520521', '大方县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7a40hlmko8gqsraeegos7dt0n2', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431022', '宜章县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7an5jbr258grlo726arbrjavnm', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320508', '姑苏区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7at6mov31qicjq1nhu4ebfavuq', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '九真镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7b1l8n5p1ch8qpvmopuq4q2je8', '33980i4d8qg5opdbrbl17k22t4', NULL, '0975', '632626', '玛多县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7b9t411baujtgruqa9vn99tr68', '4h85ig3mruhk8plgdokttalo7h', NULL, '0457', '232700', '大兴安岭地区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7bcc03f61airsoutkvi76ekboa', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, '010', '110000', '北京市', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7bk6qk9qg6ihuqgdgnq5316rjd', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130709', '崇礼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7br9evsm58hiqrta4hmud519m5', 'vqd8pkelpkj84o1g0hhs719s7r', NULL, '0517', '320812', '清江浦区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7c9s1neffsgpvp2e331duaqph7', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230803', '向阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7cbf4tnhskg5kqhcgt1c8ooodd', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '国营红岗农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ck7uf8haug5iqapovjj8v7u1b', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430682', '临湘市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7clv6jucsug1docf6sia80h0g6', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0936', '620700', '张掖市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7cmhk53lm6g6to02t5iv9c5er5', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0803', '469026', '昌江黎族自治县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7cndesgi9ggqlqjks695ameebj', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231084', '宁安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7cq786v59iiveqm03bq892dllo', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530681', '水富市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ctvi5a6mchccread4n00l4p59', '3dcrfhnm1egf1pf369o247jtj1', NULL, '0559', '341023', '黟县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7d4astiu0aijlqktr8u96nqmoi', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130131', '平山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7d4ud6up32ioapmvti2uu1h05c', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361023', '南丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7d8cs6a2koj4ppmr2gi53ei27p', '4h85ig3mruhk8plgdokttalo7h', NULL, '0453', '231000', '牡丹江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7dnmuo25d4i9kohf9rueb5d0pr', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130683', '安国市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7dp9r7ohpohg1rl3p637ht5ues', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371423', '庆云县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7dqragqp1qg6eqhu3hrgkqdb9m', '22gukrmo7mhero5r7fhjqnahiu', NULL, '0762', '441602', '源城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7dscr78ndghe1on1kijlnfc1je', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513231', '阿坝县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7dtduq76f4h25q140crkdmf930', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150726', '新巴尔虎左旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ea363jfoihpboebq0uauqmvcd', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150125', '武川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ebckeqe5eha7q7l9d91qd4ndi', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230421', '萝北县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7eem4ob2gsht7rp6vadk6qpq4b', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0833', '511100', '乐山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7efclh7piejbpqrea2uoc7m6a1', 'qr9acj5eo8gt4ql8q6bs899sfs', NULL, '0906', '654326', '吉木乃县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7elaak83mainvq0ncladkue4kg', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140404', '上党区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7etftgbjncgukq36q1g7qod8pu', '4h50q5h4nshriovhkd5por7r1h', NULL, '1906', '659005', '兵团一八八团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7f4a94d5jih4apf3vk90oo6u3g', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820004', '大堂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7f4mkr8lguj61og7hmvlmm23ln', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '翁田镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7fbr48krvkjk0rh86u28g00p6a', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610527', '白水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7fde49doe8i7modv3bm9sknsif', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '乌鲁克萨依乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ff185cqooj4hpj9tor4fscm5r', '4qdrdicvvag2co7ik7c60gs09j', NULL, '1891', '460322', '南沙群岛', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ff4hnusa4i09ovnh1ub4v8ijo', '3fbj0tfov8hj0qfsqttojica44', NULL, '0770', '450681', '东兴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7fff7uuor8hi8pt4824hqp45rd', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532501', '个旧市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7fikpim9baj8bo9i3if289c670', 'v8b6b2s9tmh62pkqq7ov005euv', NULL, '0421', '211321', '朝阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ftlkcccougvsq3kquam2likmp', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '抱由镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7gconkhorugpjp71v741o8iacr', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510704', '游仙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ges4k138eid5pjn95tkga2c6o', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330304', '瓯海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7gm9d1os8mgkap3r9top39c593', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230503', '岭东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7goff756pqhs6onsdm9905f80n', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522729', '长顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7gslq4lo7mhprp4av31quau8f7', 's23l3n9rm6im4q2lmkt8ndn471', NULL, '0483', '152923', '额济纳旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7hcduo9lagi7fqpdrvvs1g61hc', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511323', '蓬安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7hk2dikcooh2dou1jbi2qq3jdv', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0752', '441300', '惠州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7hojv52r0ch9mr0onm8go8sqd0', '42ktkqnbeshqtobfaj036hf0bs', NULL, '1772', '451321', '忻城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7hq460ii1si7kpnm5pkb1jt4d4', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130424', '成安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ht1tg9m96j8prva4b6k6ee6ah', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361022', '黎川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7i37pm87fejkfp49jfoa5b8c06', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '国营金安农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ie7ng8r9qgivrh0rhvpmttc74', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '营根镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7iki4891oqjb0rstji6gu3b2f3', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150602', '东胜区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7imbo6i674giop73io946s6vcs', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350782', '武夷山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7iur1ji1esg6vp606pecgbnvsk', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '九湖镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7j55o1ndsmia2o0iu5c06cpk5h', 'uuv8fjp592idaok8uh3vkbahon', NULL, '0813', '510322', '富顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7j8ledhgp8icnq6n7h655piodl', 'vqd8pkelpkj84o1g0hhs719s7r', NULL, '0517', '320830', '盱眙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jaoep0kgogudoq5ra0emda48p', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411628', '鹿邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jb9krmpnej7art5o70q71t87j', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652922', '温宿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jgu8bqc3mg37pntmen2c6i4v7', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220211', '丰满区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jklh3odgejrtrsoie8jma9f0e', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131182', '深州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jp3upo2p6j2oq7crkbiugbrpc', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441203', '鼎湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jpijfg3sohl8r33ck4hm1iq4k', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340222', '繁昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jr0h58eemhn0o1as8die50kmq', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '彭市镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7jsegi4avohq0qkutem9ku9a25', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513430', '金阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7k2htjj7aqhp0pmage12um7oj5', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131081', '霸州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7k95bspf5ei2sqevk60rpuahjf', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371326', '平邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7k9im2eks2hijr7ln89jbioal1', 'v5uqtd9116h7to3gunfm82b7sg', NULL, '0393', '410922', '清丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7kdvjcqsmmju6qkhj3lgsb3mjr', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230781', '铁力市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7kncl31ju2hfcovouh4vkrs60h', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '响水镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7kp6b98jmgjr3q4rkvlhn5rumc', 'ssbn19ld8oi9qo61q5m9v89drj', NULL, '0557', '341321', '砀山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ku88ed4mojnbo9qmrflq4pip4', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320681', '启东市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7l1baekbgug9eo3klj5pdiiaa6', 'v9p48soav6jlsqinehjjs57cks', NULL, '1994', '659004', '青湖路街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7l68dk2jmoht7p33rv0v93ug4h', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220122', '农安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7lc0jrmifmhn6ph25k47ao7akc', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654024', '巩留县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7lhntgkeisiq4pm5pv30i1l9mt', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '奴尔乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7m09k9uhfehssqrvla233hc2dq', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130530', '新河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7m4c66l4ciir7qmo4pktcq8jnr', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130408', '永年区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7marka0lnshc9onu9jj3kc1oeo', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410404', '石龙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7mfhas5lnuipeoj5h301u6c1ek', 'tcp6tkb5q6jd1re0qtde5sms1a', NULL, '0818', '511723', '开江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7mi7t9c2gojcur0an0g8le8svu', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0573', '330400', '嘉兴市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7mkcnk2lo0hksoj59pfqgfl94s', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120113', '北辰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7mkku34aakjs5qr2qdl4u3jd3h', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610921', '汉阴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7mql54mkocgsuqst4rph3q70e7', '6vjtnufp2eiqip75uek05pm3a4', NULL, '1999', '659008', '兵团六十七团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7mqr6lp3e0gurre97iklq24ca5', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411303', '卧龙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7nfg7j33jqgobokeviunokgkdn', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540104', '达孜区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ngm6a6uquhfnqqhep7cg950cd', 'obeq7331cuijjqrs6ir5huudtd', NULL, '0712', '420923', '云梦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7nj0bh4ctgjm4o3clo09vvkqpi', '4h50q5h4nshriovhkd5por7r1h', NULL, '1906', '659005', '兵团一八三团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7nno2phm7ig6ho3tmkn83nrr9h', 'p1l85pe6l8hmmqb72stmo07hk4', NULL, '0799', '360313', '湘东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7o514edbo8iofq4liuo7iad017', '73k659jq2ah6fppa6qe6rlojmd', NULL, '0692', '533102', '瑞丽市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7o5rn6080kg2brc1hld8ml7973', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530902', '临翔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7ohdnvfc3ugdgpu6n8doljh1cn', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652927', '乌什县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7oi5rtvsaqjtfq1ol473s6h1s4', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520330', '习水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7on2lbpim8g3bo4amfm6t0kfvp', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '阔依其乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7p06tvn4kajf0rr81b8bkrsejq', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230704', '友好区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7p866sepb0he9otvbqdp47etlv', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522622', '黄平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7p8fij8068g00qs195uve6gdng', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530824', '景谷傣族彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7pfomnn0fchg3pjkgu0s4saq7a', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420103', '江汉区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7pu4san1c6in9q16ifthv6c3qk', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '老新镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7pvonhtplgh3qrpvk4k4d8s37o', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440106', '天河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7q3p7f4famh09q54pt1pd4qeej', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511113', '金口河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7qbe8rjhisgmqpdvn7cns1o6k2', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652825', '且末县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7qdp355ikog29r1916a71gom0b', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370812', '兖州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7qi3duivf0i0fphhq2bm5m08cv', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130435', '曲周县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7qlqlaae00iiqqidb7lrulifjk', 'shc3fh151oje0phuaqshgfndhb', NULL, '0427', '211100', '盘锦市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7qu8o19jaeghupfbeaknks9c8j', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '1719', '429021', '神农架林区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7qvdrt4e72i6pqj5fjf7clleap', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120105', '河北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7r0holo3doj4ho0ru95ke08dgq', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0527', '321300', '宿迁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7rbdrsr11ej7pr0ppvci6260lr', '0fkqp02rlmj89r3o4fnb5evtjg', NULL, '0662', '441781', '阳春市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7rpq53fimcjk9ptl9s9h8ke47j', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430503', '大祥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7rrj214o20g8io6ndlggqte3c2', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150203', '昆都仑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7rupflvdmoi68ojmh0g60mn7dk', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513322', '泸定县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7s0cqtanq2gfkpkgcmsc6o5ueo', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451225', '罗城仫佬族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7s44m17f6ogk7r4jo1n7tp89m5', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610304', '陈仓区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7snl2dpsi0httpkj2jr93numlk', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '大涌镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7srqt8s2n6is6rj12rb4er3dc1', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350123', '罗源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7t19ltjn50he5pie3duaj0j2hj', 'spcl2traagiofrum521umd4mei', NULL, '028', '510107', '武侯区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7t63scmdo6ibcpl4uae9ehojbm', '3dcrfhnm1egf1pf369o247jtj1', NULL, '0559', '341022', '休宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7t6b4t2200hgaqk4meaii9m178', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120114', '武清区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7t7ud7pjfshrqrekoim9md2jqk', '2m8o56kpboi95php7scrtplfqj', NULL, '0518', '320723', '灌云县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7t99ao984qh2doilj2tim7vqof', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '板芙镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7tb2uggm42j4frllug2fa70s9h', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610628', '富县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7tbu8k0incjcmqfsf9810lrkmv', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610626', '吴起县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7tl98c1lumhbvorn51isj2raas', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431121', '祁阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7tpj9lf1ikj3mrmgq8abrg4577', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650107', '达坂城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7tpuocbcnags8rb1t2ebcjub5f', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150422', '巴林左旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7u3pc4l886hvmpdvi38gcsf5l5', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0805', '460400', '儋州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7u4nqkphgsjs8qp6g2t90n4ah9', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130523', '内丘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7uhbhdikv4grdqd03jc619i2dm', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360429', '湖口县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7up4vol2lgi9ep8rbcpr0rpqdl', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433127', '永顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7utv3fk1uqiaqrgtbrg3up3n4q', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230621', '肇州县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7v0b72er4sguiqtndukr2a5cpq', 'v322g4tjqsifgosda4e76glpkd', NULL, '0482', '152202', '阿尔山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7v5v26tm3ci8gritad799c1r54', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450123', '隆安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7v680icmaaj85pe56nr0eq8ebs', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520603', '万山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vbs79ril2iutrflrurddu749u', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420302', '茅箭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vdf34ilv4gaso79qfrdhgsptv', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230709', '金山屯区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vjv9rr91sjr0o6c85cra9neoh', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '杨市街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vlm00geu0imtrmbdrd9jimllv', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130227', '迁西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vmm1jku4gih7p9pgk63o7s9gf', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230826', '桦川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vnjdgd6ouh8eof9iei85cn5ne', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '西流河镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vq3p6kidkif6rtu9hpfghamm6', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230708', '美溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('7vqt2g69gkikprj7j5sl14cb0f', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1903', '659009', '昆玉市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o09esre7qahsooca6u90l0a37r', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '杨林尾镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o0bjuqg2ekhevom15kclgbur89', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130727', '阳原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o0eeq03co8jr1qeeu2oqpoa8tc', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430203', '芦淞区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o0fj9pj952hd6ot4idunedsp71', 'r401ektu6ohcuo5la91f317ved', NULL, '0932', '621102', '安定区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o0fn03bcfgincpkctmp44r4t1l', '6n7d2g7a0ajhnrn6157cin88j0', NULL, '0514', '321084', '高邮市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o0h35t173iikopesimes9qdqo8', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150122', '托克托县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o0kcnq1o0cisupp2ll3kqftp8p', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '东城街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o0vltu86s6hjto4ltvifo5b3ab', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '龙滚镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o1iev13o74gorq7ah3dl0rilnm', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370684', '蓬莱市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o1ti936q7mif8q9nvj9g45frft', 'rs8ei9p6gcg7lp9dphe1qcvunl', NULL, '0971', '630104', '城西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o1uv2h9skmh8ppu4vpl21osigp', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '提蒙乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o2ac93fmtsj64r93t2rv3kogvc', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0595', '350500', '泉州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o2bbtcla7ihitolp1amhgoqae2', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361027', '金溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o2fo46mdusjhfrk03ocmbfmjec', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620121', '永登县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o2hjslgbcai13ohtv8fo5p1ekn', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511802', '雨城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o2kfoe7ujijqip76susl2bdtsj', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0378', '410200', '开封市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o2oej879heiikrcfgvuss802ho', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810008', '黄大仙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o2sgr03u0sjpro8t9vjihj2bg9', 'p9uptib1nki2hrjanf1sdk0qoh', NULL, '1832', '511011', '东兴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o30pdd9c6cjpgosr7p9lu7bf90', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421126', '蕲春县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o317mbko3ogarqqq800acj403a', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410182', '荥阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o32fvdbf7ggbhpmm6j74a37ftf', '4h50q5h4nshriovhkd5por7r1h', NULL, '1906', '659005', '兵团一八七团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3914757fgi1kqocd17i4fsgt1', 'rbqf56oep4idgptb103sspscso', NULL, '0914', '611022', '丹凤县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3al6iuiusitjpuki3k1pegqs7', '0sh732c7saglcqaktuna9frole', NULL, '023', '500104', '大渡口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3d8stoor4hn1rv783g2uj3cqk', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421087', '松滋市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3g36kuofch5hqleckh5em7av6', '39q963pndmi8mo43ipadpohims', NULL, '0774', '450421', '苍梧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3ikr5lpcqjbqop5pier801urs', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, '023', '500000', '重庆市', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3j7ruhnrej6cq6mq7171igjav', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411502', '浉河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3ksv6urvqjqtq9im4ag7e9j7u', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '国营八一农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3l2rvq968hsfrmvd3s402c9uq', 'oli0hjs3akg2ppb6umjeru4rc9', NULL, '0564', '341504', '叶集区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o3nnqmbppohjqr2etq20s3qp1s', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '木棠镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o41v5p3qhshekonutq6bv8eim6', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '万城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o434l776q8h7mq7mc6d99g3rj6', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120104', '南开区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o44esged7uisnqhppne5b6mj5b', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513337', '稻城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o4ave4odhgjv3q2bko18ko3oi4', '22ukj7imhmjj1ral13vcda7fo3', NULL, '0562', '340711', '郊区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o4bgrdat7eie1o7f5q5iknepk9', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230405', '兴安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o4etmq82ekhneqi62ffiq2po6h', '4ohfo84880jgqquoscofhr3sdi', NULL, '0414', '210522', '桓仁满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o4nqd4oc14jldpgkjtjan5l51f', 'tlqsj5d6ogha6qv0a2v3vomsgg', NULL, '0858', '520221', '水城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o4tnukedhqg5eqato15tk05qth', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511124', '井研县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o557sinbd6ggtonvquvshaimtv', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150924', '兴和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o5aafuppm2j4mpqve75oqpoapo', 'pgbho69sn8idkq1bkddd4rhl3i', NULL, '0416', '210727', '义县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o5enqjmcg2hsqqeu4bctp520d0', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '2802', '469027', '乐东黎族自治县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o5io59gqgii4tr1sha80sl6gqk', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654023', '霍城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o5ji3np33ijrqqd96rs76qsi8l', 'th7rt6on12hjoprhum3ui6hk3h', NULL, '0951', '640122', '贺兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o5pvu19pn2hdkq7b8jdm94tehi', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350527', '金门县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o5q1319gi0gklocllust5gtf3d', 'pd43976vcgi4fqbihmbdvhcd82', NULL, '0894', '540424', '波密县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o62hhq9e3ij7co8b09ptbohld1', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421182', '武穴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o64k0pavbkj67qmlfa61r7h72u', 'rbqf56oep4idgptb103sspscso', NULL, '0914', '611002', '商州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o6kr7cc5suj5gpnkjfees3sf27', 's01ev31uaaii5o2c20akaigmi1', NULL, '0724', '420881', '钟祥市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o6luusfaacgbrqfj0i1be24br5', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350628', '平和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o6nc3ld6qqh9srcn5mm2o9rbnl', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131128', '阜城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o6ppkrvfqei33rbeir74iiph2j', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '定城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o6qmbcsgg2g52pb6it2qo96buu', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0717', '420500', '宜昌市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o6sud1oco6jl3p80pb1inu533d', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231003', '阳明区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o71cq74100im1qtqco9tma775q', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650105', '水磨沟区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o73cidfll2hfuppaonimsqu0ha', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450381', '荔浦市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o7dtgqqccajhgo89tk0lcm837c', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0852', '520300', '遵义市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o7gu5jjroiiefri0h5bb244jkc', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530111', '官渡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o7q7feirtci0uo7noifr5i7vpc', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150521', '科尔沁左翼中旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o86sc5td40gaerkhnak434j0r6', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451029', '田林县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o87nrmkv86gkqp10s2akk8tpj4', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411725', '确山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o8eaar3f34hk9p5pe9b5torlr6', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '天安乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o8gbgc95kcjomqu4nnul341dq5', '22gukrmo7mhero5r7fhjqnahiu', NULL, '0762', '441624', '和平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o8ik6qd6msjb0q9sg1mn3f7cti', 'p47mt63pg2hempalq3mqvr7rsi', NULL, '0412', '210321', '台安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o8smqsviekj2frc8gbp56c6t8b', 'pqn8s9kedgjnnqhqpopuc8o1ts', NULL, '1937', '620200', '文殊镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o99jjrvhdghgtql7nojsabsqvu', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130522', '临城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o9isv1vtrajliqouhtt64he5ea', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653101', '喀什市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o9kpe9go2ig3sqahemikgenupb', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0635', '371500', '聊城市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('o9lsaj8urajicojt4s5jtumi1o', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540230', '康马县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oa66hi076ghp3oh834kfplo50m', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410325', '嵩县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oabgl8nnhcifcpui2fafp3aqr5', 'spcl2traagiofrum521umd4mei', NULL, '028', '510184', '崇州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oaitv8q4laj9lpnouh0bkiolmg', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654002', '伊宁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oaqcev4fv4h07qoigg9drc72mk', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '常平镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oavlqt37s8hasp6636628p3hf8', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513334', '理塘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ob4alknqv2hrqqufe70bvbov0i', '0e3vofpadojc2pgos3gmaqll0s', NULL, '1833', '511403', '彭山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ob8kcuvihsi8io69g5pnomfesv', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '锦山镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ob9jbjkf52h76q6ruk9v0su81m', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '卢市镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oba0k1m4img5tqd045g8204qpb', 'ph5b69fq9aioeolk65ov8ahe88', NULL, '0523', '321203', '高港区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oba95nqa78jpspn8jt4lad9v6h', '31hnmsr4hajg0qbp3dvnjhiem0', NULL, '0901', '654223', '沙湾县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('obb3aur33qjdjr9r0bk0qh3c4m', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230402', '向阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('obeq7331cuijjqrs6ir5huudtd', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0712', '420900', '孝感市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('obl7ocib3qgl1r7roqhpulkdn5', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410104', '管城回族区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('obn8imdt2oj1qpglq4e4oq0lg9', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140403', '潞州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('obrdmjj58mg5mpcm60l74a4n6r', 'uorlht44bqg67pd9fun4f05pub', NULL, '0722', '421381', '广水市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oc22ocj2miiadph4engeuf5fp1', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130702', '桥东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oc231gq7kkgkvrnqg5nf7tenmc', 'ptrk71a2c6ir5o5s0d6lp1ldje', NULL, '0768', '445122', '饶平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oc4o96cidsifeovu77g8434d3c', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0728', '429004', '仙桃市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oc9qu4fkt6h4lq8ju4qh6b43s7', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0580', '330900', '舟山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ocef3mbb10g8koqkt6lh626khi', 'vp7s5rgl42grbpsmr2s27bg3kh', NULL, '0827', '511921', '通江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ocrsmflofegikrmoghb1n5ehj8', '71s5tgjdeig0gp5uiqtjak9c53', NULL, '0429', '211404', '南票区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('od5qhr1cmeh1ortn0t60v2kmim', 'srnkeeffdkildqtd63kerd32c4', NULL, '0732', '430302', '雨湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('odbjultbckhbfov4jqjp6bi6hq', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420116', '黄陂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('odd8sa070ahjkp185bhuhej7o0', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360722', '信丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('odfe2v16akileq13dls31adite', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0718', '422800', '恩施土家族苗族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('odkk2loe6cga3pjlmgg52tal3g', '0sh732c7saglcqaktuna9frole', NULL, '023', '500110', '綦江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('odlk4ndm86hsmqd8hgqmn5olo4', '0j0195ugs4hf4r43g4mpmpd5tt', NULL, '0413', '210423', '清原满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('odu9mega6ej8goscti22bdtfen', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341126', '凤阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oe3avlsaf6ji9og2mkfa651vgu', '66bmbfmu26gh9ptr5d7dlpl58c', NULL, '0418', '210905', '清河门区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oe6tiosnoigagq8rbct94patj6', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231004', '爱民区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oe7kcs2qokicjp910cj00tvtsn', 'pnef2s2l9mjk6o21rulsnohmvp', NULL, '0812', '510421', '米易县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oe9cs7rno8gvupv679t1geg4ep', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130283', '迁安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oebdu0f926imipsds0oe0ujbkd', '3gsg08cppejc8o9h0t2v8egl5k', NULL, '0410', '211221', '铁岭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oehpg2ar1gj9iomran6o5oa6il', 'qe9qqc9ih2i7nrjb1p28g7ssae', NULL, '0436', '220881', '洮南市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oestpr06eajjuq2slpllanjr43', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '永发镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oevepl3fv0hgqr5g2fi27sur5g', 'p1l85pe6l8hmmqb72stmo07hk4', NULL, '0799', '360323', '芦溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('of1qrqnr9qil8phvho0rhtrbad', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540530', '错那县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('of7dgbudb8jrgrmdds6ra3sruu', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361002', '临川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofagbf5q1qgmjq8427vd17u84h', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430104', '岳麓区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofd0p3us6ohu3op1hnlqc8laqc', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '工业园区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofd1fjfhokjddop12l0grd19ie', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540326', '八宿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofgal2u4mcg6gopuua7a366s2c', '1p4h9ufnuehihr62ki5flj99vq', NULL, '0439', '220605', '江源区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofjaf6hbsgh5pog5211gvh72tv', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360923', '上高县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofnt6r9c3ajd0r9f8goqtpoc4d', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510727', '平武县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofrlog3cmmj3uo2sgtbb9m3dhd', 'oc9qu4fkt6h4lq8ju4qh6b43s7', NULL, '0580', '330922', '嵊泗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ofutn6q7gqjglp55kdgjn2g4sm', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130631', '望都县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('og289lcvuiholq9d5mro1hu0ff', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411702', '驿城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('og5un19m6agqkpc8q59fgnhpep', 'rrrrrbqoomgkjpn813qk4fa2pf', NULL, '0356', '140525', '泽州县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('og8dme9d3givcqnalpuf85th8b', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513333', '色达县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ogegi1d7r6iqdqubofkagigbos', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622927', '积石山保安族东乡族撒拉族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ogl9vk6500ivao0mt2jkmer8uh', '0j0195ugs4hf4r43g4mpmpd5tt', NULL, '0413', '210422', '新宾满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ogoedknj30jctq9jshhimaigv3', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411528', '息县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oh3c1fmf0uig9rnh4hg33m5ov7', '0sdp7nv87uh54q41apsqi25pte', NULL, '0791', '360100', '南昌市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oh9d4bssqii66pg0lto73s1ha8', 'spcl2traagiofrum521umd4mei', NULL, '028', '510129', '大邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohaf7v8umqiverei5au9fqrqim', 'ov5d4q3dgajrnqgofjig0p6pa7', NULL, '0538', '370923', '东平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohbts9psgujqoresrbptd0gdt1', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150223', '达尔罕茂明安联合旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohc87jbed6h81rif8m07uh1gav', '2051oaiqo2hp2pt9pnt2org0jd', NULL, '0839', '510812', '朝天区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohd44p8jfqir2pr1o5si0ai2qb', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市五龙口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohgioagm2ej7mpnb5giiojt957', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350602', '芗城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohgn0eeje0j5ur7bdulrfplaqn', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441802', '清城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohma9gjucgjhnqprmif071hslj', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540327', '左贡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ohq3pro78ajrlrffspd4m2kmm6', '51jm31pu5sgtuoplndgclh1oat', NULL, '0398', '411203', '陕州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oi72k7meaqgg7qr50bl9a9n19s', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150424', '林西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oidf2g1odojclq8k0pu2qkfh35', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350403', '三元区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oif7h4b6nsi38ohp10pphl9p0d', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '毛阳镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oigbmtuht4gfpopaacvk07uas7', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820006', '嘉模堂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oirsa6anooh1vqvlptkl3j20h5', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140725', '寿阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oitv690gukjfkrpsi16dg4m9o6', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140721', '榆社县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oivfd1qbo6ifhqdq6aa2kav33m', '4obn2cjfl8jvgrg98ugd10a87j', NULL, '0990', '650205', '乌尔禾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oj4392a4k8inaopa95jbbj2hfv', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450323', '灵川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oj61t6noaki66on1e3r2532p5c', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140932', '偏关县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ojea020708idfpmk9r0mp93q2d', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410421', '宝丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ojjo3juhj8j2gpa31o6usr2inb', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411623', '商水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ojk4e3r5v4gfcr052manqohebr', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653126', '叶城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ojmk4v50bogr2p6pkq7fi09igv', 'oli0hjs3akg2ppb6umjeru4rc9', NULL, '0564', '341522', '霍邱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ojopo5vruuj21pllflvtqrbcfb', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430423', '衡山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ojsfm8drv2gh5q34sslbi8duej', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320925', '建湖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ojubqkbsvch66q0otd5vajml16', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0437', '220400', '辽源市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ok88q48qtujp9qhqk29uieit0m', '6n7d2g7a0ajhnrn6157cin88j0', NULL, '0514', '321023', '宝应县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('okc07kc92uig3p2qlf2ekkrno8', 'pma35v8v3aggbobuot73v69lpj', NULL, '0913', '610500', '渭南市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('okc5ed3kqqg3go33l6qp0hrep0', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230714', '乌伊岭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('okh83g12oigg4q6k1nista2ml5', '1kf9b22j0kinsp0h69ibb20gn4', NULL, '0570', '330824', '开化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('okm5bsbimeib5o8rfignjf171n', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330326', '平阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('okuok3mkbmjj1ro8t7dj7v3oij', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370683', '莱州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ol4grohek2iv4r0dbtee9gvq1d', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222405', '龙井市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ol4vm5emlkhjpr1djk54vst4jh', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220203', '龙潭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ol66jcjon4h03qlrpb5c2ks2kt', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450324', '全州县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ol685u7lqiit1qm8m2451nh0jv', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230205', '昂昂溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ol7b4m5f8sh5tqh8brkb56cb62', 'obeq7331cuijjqrs6ir5huudtd', NULL, '0712', '420902', '孝南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('olc59605hejsfp4rp7im4sme89', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650102', '天山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ole2cacl76jcgrf86o0c7dpici', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431126', '宁远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ole793do34g4jpbldutjrv219q', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '王下乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('olf4s4m66eifeo6pkvqj1l4a1j', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610881', '神木市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oli0hjs3akg2ppb6umjeru4rc9', '73074v4qq0g5ars2cec58gpq94', NULL, '0564', '341500', '六安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('olmvvg5d9si89ob454bq5n9v8f', '37mr9n7p10gf0otrgdqkl3mfdh', NULL, '0419', '211011', '太子河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oloragbfekhcsrcviqig77phd5', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团第一师水利水电工程处', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('om2m5un5vqgs3oc5bj608l0c1o', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420105', '汉阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('om5jgoiap2it9o294p3010dldm', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '南朗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('omasddtja2ij9onood9a6k12d5', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371426', '平原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('omc8tde2t2ik8p0l86rhp4u45p', '3akbe5vmuajqcr216dasutqju3', NULL, '0876', '532600', '文山壮族苗族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('omj97r4n2aiugrqmqjsj81pbds', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430422', '衡南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('omnb5r0oh0hjbqqcn5859la151', '5unjn99lu4iuvps5n94sjcescj', NULL, '0779', '450521', '合浦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('omul6g21c8ilkp1pduur5c629s', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130431', '鸡泽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('onmtnbuvi6j9bq0l5np6f69rg4', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513338', '得荣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('onni3f7gggi0qrgupdsh2g0j6m', '78bkqob3tehucq4613vdbhrfot', NULL, '0575', '330603', '柯桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('onv6h8ic4kifupvbs0a651ai08', 'ub0dk32t6igiuo0ugm6jfdjsn5', NULL, '0750', '440703', '蓬江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oo2tuj510ijdbpet79htie6iak', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411324', '镇平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oo7vba5j6eicuqtidjf7u9ifuc', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0532', '370200', '青岛市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ooa0mo5q12g1rqu3vpica796li', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330182', '建德市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ooasogdvm2gtipm4f2rpn425s6', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130636', '顺平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oofkncj1rohh4obu3qffcd5sdd', '5ijfthkv36gfcr3g07s6umq73v', NULL, '0830', '510503', '纳溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oofs4057d2ganrnd6pfp7vhnqj', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510726', '北川羌族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ootg9qlvtmic0pms7lo9vq7a3q', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610117', '高陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('op8g0h6mv0ip1qiblrght4j25p', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110113', '顺义区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('opfltpmi1ug9orpqaem865i7ni', '1p4h9ufnuehihr62ki5flj99vq', NULL, '0439', '220621', '抚松县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oprtfp1v14g1gom47tqarrq430', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331127', '景宁畲族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('opsgrh9ogagtiq3fip1bqu86p6', '1kf9b22j0kinsp0h69ibb20gn4', NULL, '0570', '330803', '衢江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oq7k169gqeh6sqsel9mgmssl2n', 'p84u1jr0m8jcdqckqm7u2cim9f', NULL, '1771', '451421', '扶绥县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oqc3j1fhrkhpjp28hl7afa418g', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810004', '南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oqo8fkkvqshr0rvtut5t6pqudu', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231221', '望奎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oqt7ppo3kqhbdq24m9cb31t70o', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451027', '凌云县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('or5do4vme6j8sr0mu7knfegaff', 'tlqsj5d6ogha6qv0a2v3vomsgg', NULL, '0858', '520201', '钟山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('orfnu23ffuh6vq0l236e484kc0', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530302', '麒麟区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('orfr7nsds4g7orr71cclutijp7', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441423', '丰顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('orh6amfdvehe7q49gf0vkbpjqj', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210224', '长海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ori0e2n3p6gtdobj4ld5ctom41', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '140000', '山西省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ork29vj9f8ikrosub1hckofre5', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520303', '汇川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ornj381lqug2ipqmhht7utckl8', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130921', '沧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('orrtqcvui6ia1qg8fd8u9vc8ef', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320623', '如东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('orsosqnn26h54qdik6j7jnk1ci', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '2728', '429005', '潜江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('os057r6t3qj7grcie1qfperdij', '3akbe5vmuajqcr216dasutqju3', NULL, '0872', '532900', '大理白族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('osfdgsctdehjsqte817270qfhr', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141128', '方山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('otf540i2gahkno82hje81o2g9q', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '国营广坝农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('otj9rd6eg4gjaqenpijnosq4s5', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130923', '东光县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('otqbol2drgg69qpn1nsvtqosi2', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621021', '庆城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('otv66ruktaggiph3pq1q2moaah', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450204', '柳南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oudg3qq6nug0vp0i65c77c1hte', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610113', '雁塔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oue27ins5eiscp2pgatq6luaer', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653121', '疏附县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('oujsobs4eoiv3pedml6hoi2nci', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150702', '海拉尔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ov2q9ra3uqi1uongpihf8fgu9l', 'vdbjntnqt8io7q343d1d86olha', NULL, '0875', '530524', '昌宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ov42vf26u4h8sp2nbn16p08qov', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130209', '曹妃甸区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ov5d4q3dgajrnqgofjig0p6pa7', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0538', '370900', '泰安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ov5tubusbsgiar12c6kkmnvavq', 'ph2eva16o0io2rlns64f0spuu0', NULL, '0943', '620422', '会宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ovbev0abr4h4tpldk2uakdmb0j', 'u5g0dqtknogkbo5u5r0fatdic9', NULL, '0438', '220702', '宁江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p00duvu8cojqlom9np7f2sgdrn', '22ukj7imhmjj1ral13vcda7fo3', NULL, '0562', '340706', '义安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p01f3sr646jr3qrngn32pg36vn', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360983', '高安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p0442rh896i5bpmggtv6f03gt9', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421024', '江陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p04ks9vnsqi3vonfkuu7jkumo6', '78bkqob3tehucq4613vdbhrfot', NULL, '0575', '330681', '诸暨市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p09sir68nkj3jq6sfm75blvp3a', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420625', '谷城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p0dkuai40chekrq765fg9sv5po', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440117', '从化区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p0l3dvncbeg2vr2rmend7gm2f7', 'vqd8pkelpkj84o1g0hhs719s7r', NULL, '0517', '320813', '洪泽区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p0tdfqia64h6crehb50ch41759', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430225', '炎陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1011bk0aggq4p6s7m763iomu1', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230882', '富锦市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1111dtd92gr8qe7t3tg45oo0e', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220183', '德惠市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p14lm0cpjsirhp05t90jqckfkl', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431202', '鹤城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1epmbu37qh2iqm9l5mhjdavll', 'ultj2le7dogcvrhrl50rosc3j2', NULL, '0908', '653022', '阿克陶县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1f67fc9dai5qoj2n4q7q8g151', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361128', '鄱阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1h6p08soajgsrmqq79c1e5cl3', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331126', '庆元县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1l85pe6l8hmmqb72stmo07hk4', '0sdp7nv87uh54q41apsqi25pte', NULL, '0799', '360300', '萍乡市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1lasuaebogs7qn6088qo7eimi', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522726', '独山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p1njtk5lmkgroo5ko2us4jp5hg', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152524', '苏尼特右旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p21km5ni54jboqga9r0jajcb85', '7clv6jucsug1docf6sia80h0g6', NULL, '0936', '620721', '肃南裕固族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p28gk7ufc6jegq9isgpdgkdghp', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0374', '411000', '许昌市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p2ido269ukhisqtudeo77auoiv', 'rfn4tk49imhvbqf9lc980ovabd', NULL, '0510', '320211', '滨湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p2ifhn8f4miehof7jh4uu73qbf', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410106', '上街区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p2qktkfhaah9irelq0j48pqmbq', 'ub0dk32t6igiuo0ugm6jfdjsn5', NULL, '0750', '440781', '台山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p2rhat4k42jbirb8pt2tkr17mf', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530115', '晋宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p358ab4tp0h4fro18pl5e3nh83', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610702', '汉台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p3e8sp63skgvhou2g824hjfina', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210283', '庄河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p3i1h0bikkjpiqoec41tk7oam6', '39q963pndmi8mo43ipadpohims', NULL, '0774', '450405', '长洲区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p3qri42hmqhpkp9qen9m432a14', '4obn2cjfl8jvgrg98ugd10a87j', NULL, '0990', '650204', '白碱滩区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p3u9q834usicnqgh8a4todfui0', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410505', '殷都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p427d2m7ggif2rcqisgllja3av', '79aet5qpkij7uov01h5hagemhj', NULL, '0737', '430981', '沅江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p44flric80g1vq4rl2dja7h7d3', 'r401ektu6ohcuo5la91f317ved', NULL, '0932', '621121', '通渭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p454it0cpqg5hpi65c48f2te02', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310116', '金山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p46s2t7hrij3dqtsl6p90n3lft', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361121', '上饶县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p47mt63pg2hempalq3mqvr7rsi', 'shc3fh151oje0phuaqshgfndhb', NULL, '0412', '210300', '鞍山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p491aoor04hroqhgf7bh64fjoa', '0567knr96sgddrc1plstq0ta7p', NULL, '0754', '440514', '潮南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p4kj33s4ukithqbng8fkivl76s', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '横林镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p4n4v1bpqchuromlgqjpphj77i', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513437', '雷波县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p4piig0eoqglno82mkjhv3hv2e', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450223', '鹿寨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p4qcqtf7i2jg8o73s2qruc2lta', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430723', '澧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p5573jrpuojarraclkkarp1jqf', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0837', '513200', '阿坝藏族羌族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p58fjo58hiirsr67e9lftjltoc', '155qrtip2qj99qg686a2en0psl', NULL, '0312', '130600', '保定市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p5b3r8nh4qg39r1gverkfa14us', '37kd80t5ksg98rljq1o2rt6eq9', NULL, '0592', '350206', '湖里区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p5khg127kmjpuqg3hmgvl5llm1', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '龙江镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p5opgl2288g1gpkrl05655h9dh', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441224', '怀集县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p5ova672p2imcpik54g2gjt2s6', '27snrp1n9aj30p6nf2sfcc8j24', NULL, '0938', '620523', '甘谷县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p5t95f5nlugn7qekgc4q8dh166', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0372', '410500', '安阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p5ud8s80s6i19q5q1kv443l2mr', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130127', '高邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p64ab7eelgiddpc1ifoqes1g9j', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '红坪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p6i0s80qo0hakp25415ine1n04', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '福山镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p6lhss46dsi7dqh2583bd2u7r0', '60plvbc5tqhjcrsj5hfv8ads5n', NULL, '0392', '410622', '淇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p6mmu4uh2eiajrhlk8kq92tqn2', '6gsgqula4qgh1padohio56bko3', NULL, '0838', '510681', '广汉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p6neuj15gchlgqmd19e432hns3', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610803', '横山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p6nrnrj6dug77p8g5q5jcnr2mc', 'odfe2v16akileq13dls31adite', NULL, '0718', '422825', '宣恩县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p70sqho6cci8fqjj3m0obd8vs9', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530628', '彝良县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p78m00t15oiv1pm8i1rvl009l6', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522636', '丹寨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p7jbj24ob4ifire47r53otu9ri', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410202', '龙亭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p7jt8c0826jpcopt61uit2826h', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0831', '511500', '宜宾市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p7kn1hm858jsvre7s78ruln0ee', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540621', '嘉黎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p7mm4nhj4oirpqvivgggtousm7', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0767', '442100', '东沙群岛', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p81p9ks3v4i67r3k4ie9mta5tc', '73074v4qq0g5ars2cec58gpq94', NULL, '1558', '341200', '阜阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p834pbglp8gbaphi3cvbe6i34b', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371502', '东昌府区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p84u1jr0m8jcdqckqm7u2cim9f', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '1771', '451400', '崇左市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8b8jmu6kugpkrd80ipr7lcrie', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410721', '新乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8edhv4u6cjcgq5d2q1d0734u4', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '黎母山镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8grn9bkgei2oog4rqp8s8gpvd', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341102', '琅琊区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8ii5pvomgi6bqmnsji5qs295e', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420303', '张湾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8jfc96e2uj0cokjobdl6hq044', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '积玉口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8ks7c0o8cheeou801to05i6fo', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540229', '仁布县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8ldrs8nu4gdgplqt5tn2vtovr', 'qr9acj5eo8gt4ql8q6bs899sfs', NULL, '0906', '654324', '哈巴河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8menoq3h0g3nqloadv15go3bi', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '六弓乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8stj1ei18gf6oq906dcjjt2lc', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441882', '连州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p8t68embkgif2qe26f9cl8hfa4', '04lk5t0f8mju5r30i2um8bgrb2', NULL, '0892', '540200', '日喀则市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p9g5s9tcrsjumod533gbpc3gki', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131122', '武邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p9gdgb4g2mgd2rijdve33g6j6i', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430223', '攸县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p9qkdhu0hqge4prunekvrp85c3', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130928', '吴桥县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p9rvsfqccqid7r7deiaqlsc6ka', '3bdk3fa2jsg4mp5uj5t958lubb', NULL, '0546', '370502', '东营区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p9uptib1nki2hrjanf1sdk0qoh', '39a8hm29gmj9aonigro0dl6h7v', NULL, '1832', '511000', '内江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('p9val1cbnignlqu3kv66i2jo7t', 'tcp6tkb5q6jd1re0qtde5sms1a', NULL, '0818', '511703', '达川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pa68hi5g50j04p5bfkja12s1hu', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '东成镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('paa90qdk48i08oua1oh584drgi', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371311', '罗庄区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pabknvn5o2ga6ofeef1p8hl8i4', 'oli0hjs3akg2ppb6umjeru4rc9', NULL, '0564', '341523', '舒城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('paekhv3usiinnrmq1lh5kd9eug', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331023', '天台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pagfi8of2qj1iri86k8k3sdr9n', '6n7d2g7a0ajhnrn6157cin88j0', NULL, '0514', '321081', '仪征市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pah4e89c2egpbp9laj391prtek', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0766', '445300', '云浮市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pap05ht94mhc2ppr8m66v2ibpe', '3akbe5vmuajqcr216dasutqju3', NULL, '0886', '533300', '怒江傈僳族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pb7ph5mhd8iiro9cd72s017krj', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610602', '宝塔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pb8lojbfeojrcp95jjdpvtop3c', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410703', '卫滨区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pbgg3hjn48j0mrac3b1645a2qc', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '三道镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pbqk720ulig88pc1r76jq1hc3h', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610428', '长武县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pbqvalp1kihckroov159coq302', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532922', '漾濞彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pbss13r6logqorl3s03g6fonst', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '地方国营六连林场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pbttnfdg7ajiqrjjadrdnbqjc4', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '东阁镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pbu1pjcrp2hjsrqd74nvrtaqve', 'uorlht44bqg67pd9fun4f05pub', NULL, '0722', '421303', '曾都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pc1k6u962mjkholrabo8kg2pt7', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130826', '丰宁满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pc77pnnr46if5rigvuotkvq0er', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152522', '阿巴嘎旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pcs4n1ropqjpuppe27s5eu0kip', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360703', '南康区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pcus4h555ciimogiiu4qi8f5ot', '4h85ig3mruhk8plgdokttalo7h', NULL, '0454', '230800', '佳木斯市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pd3khfv0pkhsfoc5a4ak3g9vgs', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532504', '弥勒市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pd43976vcgi4fqbihmbdvhcd82', '04lk5t0f8mju5r30i2um8bgrb2', NULL, '0894', '540400', '林芝市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pdm5b7bchugtqqa4pto9pj9d17', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320118', '高淳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pdndupi7l0g2koaq82s8vb5142', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团十三团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pe3819efjugibpibr3d3nq9b37', '155qrtip2qj99qg686a2en0psl', NULL, '0311', '130100', '石家庄市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('peha6ne69eispovfnicue7da1e', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130181', '辛集市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pejq5ceno0iv3o2cr32rp0e2a0', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '国营乐光农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('peol27mmeai46osb6525n62svc', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '上安乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('peq84oa69shtfpmp86fqp3vmru', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '周矶管理区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pf813u03ocj2trn16r8juvpal0', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410727', '封丘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pfbdkdm74ciljqj0k86frslq3h', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430722', '汉寿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pg2af7ts3ego2q49u6vdr54g33', 'spcl2traagiofrum521umd4mei', NULL, '028', '510108', '成华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pg4ocud9roiifpdaf5si9pbus0', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320322', '沛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pgbho69sn8idkq1bkddd4rhl3i', 'shc3fh151oje0phuaqshgfndhb', NULL, '0416', '210700', '锦州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pgbhp6kf3ujehruet3rcjcj9ca', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '国营西达农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pgkqt3fu7ehj3p8knjh6mjvd0u', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540221', '南木林县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pglrbj51buimurb03eq5ttnuvr', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621025', '正宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pgmkilrfvih5lpjph1aphsn25n', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '运粮湖管理区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pgnna5u1lih41rhidf5itjtnj1', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0713', '421100', '黄冈市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pgq6nnjfp8hm6qvh7kdp7mkbs0', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540328', '芒康县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pgqan2jueejkvr0e6k32jp474n', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441223', '广宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ph2eva16o0io2rlns64f0spuu0', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0943', '620400', '白银市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ph5b69fq9aioeolk65ov8ahe88', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0523', '321200', '泰州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ph85b6pg4ugrjqhhsbc0h5g21n', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '1894', '469002', '琼海市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('phdm0l9cpog0gp954d868apjkb', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230104', '道外区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pheu8910f2i11pbio0guunh1kv', 'vef8djerl0iorr8qsm85uh6u5p', NULL, '0415', '210624', '宽甸满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('phi5nhrbbeiscpm3naqhj6uu6t', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411321', '南召县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('phk8pf9reoh59q993mf02mcgei', 't1svlvplfqih5prh1mosnigiq1', NULL, '0897', '542523', '噶尔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('phnhjmrsj0hp1pahkl928udn81', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150123', '和林格尔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('phpjmlsvckg8aqtbbpuotq58b2', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610502', '临渭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pi3q4qgge8jsqqvibfrvb5f9nt', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130684', '高碑店市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pi657jrnuijtnrttsscod86801', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532325', '姚安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pi9a10h880jn4odribi4i2fkb0', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '国营阳江农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pihmp4ha5ajfupi73e0b2i8g4p', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410425', '郏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pipuf1kb5ii4vpjl56a97r5a97', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420503', '伍家岗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('piqcruocg0ijrqkaj6nprhvkk5', 'spcl2traagiofrum521umd4mei', NULL, '028', '510182', '彭州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pj1bfcg1ukiuaom68fsr7v51ai', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '后湖管理区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pj1ut56b02j68rd785tp90ip7j', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532927', '巍山彝族回族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pj9vump9t8hncprm739o88l7ru', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340207', '鸠江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pjchqtdqqujc2o5jfh4ipr2h0h', '3akbe5vmuajqcr216dasutqju3', NULL, '0871', '530100', '昆明市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pjfp49kjuqinvp8vjd256rbg6n', '1kf9b22j0kinsp0h69ibb20gn4', NULL, '0570', '330881', '江山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pjgalhlieejrprulle2bpj5e7d', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130922', '青县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pjhe3qnc4ugqbo2u9b1ekcdn76', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540628', '巴青县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pjonmbednch7tolckth266vdfe', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532926', '南涧彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pjs1ika0kqjpprv0cc99tluocf', '1r7915e8g0jalrr5vst5cfuiol', NULL, '1774', '451103', '平桂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pk1g9v5oaaji9o3f7v3lvc70aj', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0351', '140100', '太原市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pk232o2g20hphoa9h5ldvpub1s', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371402', '德城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pk7uhhkrcej0fo7dtgnp4q96qc', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230223', '依安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pk8gpbnqgojqnqmod81pc7qh0v', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '喀拉喀什镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pk92ec65vaifmqfegenun5cr0p', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230302', '鸡冠区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pkc0l82cl8g5rrvf5u13i96lvs', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330784', '永康市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pkmnhilufmie1qtafgo0b4lhvt', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140927', '神池县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pkv0vgou94hsdofvd0kaqrg83p', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150102', '新城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pl0ffalcmkhr9pe1vevqbfepku', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440802', '赤坎区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pl40gf8og0ijtqjf09m96v64ss', 'p84u1jr0m8jcdqckqm7u2cim9f', NULL, '1771', '451425', '天等县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pl7052iv12j4kp0bmf6hkt0nat', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330305', '洞头区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pl8505snouhlgo63gt0snq15ak', 't1svlvplfqih5prh1mosnigiq1', NULL, '0897', '542525', '革吉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pl9h92b136ii2piimessofvgcl', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370725', '昌乐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('plc4fmd2g4hl4q0ujrug0ej4du', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '临城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('plidrrhfqijd7q6qhiglasttvc', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411323', '西峡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('plj5b841rei45pe94rh8a9p6vk', '31hnmsr4hajg0qbp3dvnjhiem0', NULL, '0901', '654226', '和布克赛尔蒙古自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('plkrc3osmkg3orqgqkv9cq1jd0', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '坡心镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('plukgngt56jlnp23n8fttk10hc', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420304', '郧阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pm2ot1l60ujssqegkc8k0mp422', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652822', '轮台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pm90cm6dhkihmpl738vl17a3i1', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530629', '威信县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pma35v8v3aggbobuot73v69lpj', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '610000', '陕西省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pmkt093l6iic0qarr7pumkudd7', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450124', '马山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pmloiibmqchjdrqr4qt1ncang9', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511302', '顺庆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pmmnj0f2r8g1spmj5gppr0iq74', '06l4onpd1qj5eqibe4i2ua2jsj', NULL, '1755', '450821', '平南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pmpua0si1eg11ovpc21sdi7gar', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520502', '七星关区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pmsn7dkelmia1r8f33bnhbtr5p', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231222', '兰西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pn9gfgl2juh7orm7pno301k6ua', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330213', '奉化区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pn9jigjg34g92pkif6nnppus32', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320685', '海安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pnef2s2l9mjk6o21rulsnohmvp', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0812', '510400', '攀枝花市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pnllk44dd0gg9qm5b8mv4utsrs', '06rn62r4tggd8o95iltccc53ms', NULL, '0594', '350302', '城厢区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pnrpsaorscj4jpl65t12du3j43', 'qopnqkjitqggfob4d7vlbasbrr', NULL, '0335', '130302', '海港区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pns54pb0nei53pqkooggml2uit', 'q04gvg77l6g58r9c0mrbe6cdl1', NULL, '0552', '340303', '蚌山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('po08jhvp5mjs4p4mrcad8s5uu1', '3dtgolo3qmgjvpvprumtbedvq6', NULL, '0353', '140302', '城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('po2k4k9dk8jv4qm827ta3rihaj', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '干驿镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('po96hhp49ghoeragtm9mpluc2j', '1t232jo5pch34prqa4899hji2e', NULL, '0775', '450922', '陆川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('poela57sq4gnoogjjm6vu7f0f9', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0778', '451200', '河池市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pof5rc552iio9rb8pmncnnji8l', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320581', '常熟市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pofjh28pbghl8rfq91i254u3sg', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421102', '黄州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pop6evjn9gjk0pf4c9oaf7p8jl', 'tj70a6cm7giiopralk6q924g3a', NULL, '0478', '150800', '巴彦淖尔市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pp7op09bsqhq9phfb2in5vps0e', '2m8o56kpboi95php7scrtplfqj', NULL, '0518', '320722', '东海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ppibvvn16ojv9qqf9f3lic5hc6', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513401', '西昌市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ppmq7pjguei29q0okh2ae04p22', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320305', '贾汪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ppoq2ufgvcg0bq0glpb8ppnim5', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '青松乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pprbvbp9fqhflrl1p73bcfuebq', '155qrtip2qj99qg686a2en0psl', NULL, '0317', '130900', '沧州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ppv3ilnbj4g79qgqg8b8ba5g0r', 'pgbho69sn8idkq1bkddd4rhl3i', NULL, '0416', '210782', '北镇市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ppv77n8jcehk0p7hh28eeh5e4f', '62rq1jvhi0in3o6uv0ofm3t026', NULL, '0417', '210882', '大石桥市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pqabb74isajg3q3i4jhadnmajh', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610902', '汉滨区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pqn8s9kedgjnnqhqpopuc8o1ts', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '1937', '620200', '嘉峪关市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pr0v0jaoo0ig0r8843ccqf6m66', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331181', '龙泉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pr4usk3gcuha7rolpfssq4m92b', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431002', '北湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pr6i7o703ggmiqbmblcc77sqbr', '3pl0iskkj6j2voi3qb1u15fnap', NULL, '0974', '632523', '贵德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('prggsb1ckigbgo1782fnd90vk6', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152528', '镶黄旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('prkb4lm02ugakrv39cjkl86hn9', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0832', '512000', '资阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('prmnibuvkkghuptnaa3p0avp6v', '0sh732c7saglcqaktuna9frole', NULL, '023', '500108', '南岸区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('proimg7bjki1qrmlshmn5rmpmq', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '马湾镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pruamfkiukh3vrsjic2vu8h3hd', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820005', '风顺堂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ps5j2m4dmkinfohb7s1v045j8c', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450326', '永福县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ps7p55rk6iggsrb0mm9opcvc6d', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532527', '泸西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ps8tqlhoaiiusogrge9ihu91d6', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320324', '睢宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('psgs4pc042hs4po95mfqi42u3u', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0760', '442000', '中山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('psjtn2ftrohc4q9m6j962doani', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513327', '炉霍县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('psmdl6bk6gh2rp25iq0t91b91o', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360823', '峡江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ptfb0op404h51rtdprt5no0b8r', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0776', '451000', '百色市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pth1p2oqs4jq2q8hml5sm953ri', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '阿拉尔农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pti242pl8gghgoukpk6mv3a1de', '1p4h9ufnuehihr62ki5flj99vq', NULL, '0439', '220602', '浑江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ptma9ip14kjvnqs6c2jrarkuil', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330226', '宁海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ptnh0q0lcej1mpekk636r7k2tq', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430182', '宁乡市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ptp3bnlvigg52q2o4tjm97dcg8', '30adoqbjicg3ao8gd2scth10ct', NULL, '0777', '450702', '钦南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ptrk71a2c6ir5o5s0d6lp1ldje', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0768', '445100', '潮州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pu2g87skgqigsrlfbeauigscip', 'tj70a6cm7giiopralk6q924g3a', NULL, '0476', '150400', '赤峰市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pudh00idc6j71p29eim58gbqdu', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340828', '岳西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pufphf5ngajakqgictjrm3703o', '68scvtd0piilsrv0gqgime32q6', NULL, '1953', '640502', '沙坡头区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pugdbfm96shlkrri2r2u5ihd9l', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810002', '湾仔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('puglomg652hdbq8722clklce0s', '39q963pndmi8mo43ipadpohims', NULL, '0774', '450423', '蒙山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pv0r5akq1aj1joqq6cimeias26', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420324', '竹溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pv41e93l6ki1nrqlvas23sltok', 's01ev31uaaii5o2c20akaigmi1', NULL, '0724', '420822', '沙洋县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pv7tkrboggj2mr7a0f0nasm3a9', 'spcl2traagiofrum521umd4mei', NULL, '028', '510121', '金堂县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pvg1feert6g0ppapsalffasvkl', '7r0holo3doj4ho0ru95ke08dgq', NULL, '0527', '321323', '泗阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('pvje51oojuiiaouscf8r6vcgl7', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522727', '平塘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q04gvg77l6g58r9c0mrbe6cdl1', '73074v4qq0g5ars2cec58gpq94', NULL, '0552', '340300', '蚌埠市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q07c8jg7pghsaoa82clbjgaqhi', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411326', '淅川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q0eapd9488i1hoanj8fvtqipil', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130708', '万全区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q0io7s2964i1opbve2ht7mve0l', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610929', '白河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q0iovklglajldpdqn99v1ogi2k', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '沉湖管委会', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q0m1ps3hbujv5qaojtol5q0f34', 'rplo4obrmkgudqlmm6a37hu0pl', NULL, '0558', '341623', '利辛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q0ntgprqceju7q9183sofivq7f', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623027', '夏河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q0vbbr71g0gq2rvjunts2sgv5k', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654028', '尼勒克县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q11vmqv7e8gkirj1gem5fukfod', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230811', '郊区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q18tk50acighkqe4ij3lndpigt', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0730', '430600', '岳阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1fcfv6glii5toocpil75lq3n8', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532525', '石屏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1ggb61v80ic5r0fh3239lfa6h', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340103', '庐阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1hkvofkueiijq4745hehe0e1r', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522324', '晴隆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1ivsbht1shfspfk8bvo2rvaiq', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421181', '麻城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1qa9ritrsgfiovnq61np2v2eg', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810006', '深水埗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1thbetnikid2r67f47uabum22', '4rslmb3lhqin7ots9deq3lppkl', NULL, '0349', '140621', '山阴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1uvfnq0kgghvojcppc5adj7r3', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141082', '霍州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q1vm1rg6p8hj8reiqjjsdhk6di', '0tch126f7ch9rohg07djo5bvas', NULL, '0744', '430802', '永定区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2808dprhoim2ou7honfnl46om', 'qe9qqc9ih2i7nrjb1p28g7ssae', NULL, '0436', '220882', '大安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q282moqj8aj5ernum8l41753gr', '79aet5qpkij7uov01h5hagemhj', NULL, '0737', '430902', '资阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q28oanuijgiu0re5t895oj1gn8', 'vv57m8lddaiq0o5purq40rkoks', NULL, '1433', '222400', '延边朝鲜族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q297hvfi6eg6tpdu2b6bm69dca', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '东升镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2ac28n5nggqnpkcnclfmhritt', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522302', '兴仁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2h2j8f9psjl3qnfn367pgsjg2', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540526', '措美县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2ij6ludlih32ptb754igjsf3k', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410329', '伊川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2lvd8kut0jpgp6macifg59r9n', 'rrrc98s2rahk0olm9dv24hssrq', NULL, '0902', '650502', '伊州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2n0tl0dgkjjlpdvq34o4oham1', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220113', '九台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2n8bfii2gibprh825nnruic7k', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330112', '临安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q2sf4a299ohqcq4a9oqmakp6gn', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350629', '华安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q3isdt6htgjukq9035cl9v1r9c', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371424', '临邑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q3lm9n6i2iiqeqb3rr981vkc6s', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '民众镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q3snehs8uaj2iqs9fhfcq7mgv0', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440233', '新丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q3uhjk8apog1kr37fb95lcmvl1', 'srnkeeffdkildqtd63kerd32c4', NULL, '0732', '430304', '岳塘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q40q9f85v8i5qpa2cioeh1vktg', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '七叉镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q45mkp5e38gkeotmofhi5ijjl0', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370213', '李沧区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q485h9ahkkh89r2g98qqn2maf7', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520381', '赤水市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4apjre790gc3rvpekqs14ejn2', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433101', '吉首市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4bi229ph0g9spjalcmm9808j2', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411424', '柘城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4e9v5q7m8gleqoc8bbhfn2l95', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654004', '霍尔果斯市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4i1ro3l58i81qomkahsnuf75a', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '石排镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4n1nmuomajarolubene1dmeki', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430626', '平江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4pdgtrj1ag4cp2tic7rke0hav', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230406', '东山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4pj7russoio3pgias2lqe2r50', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0632', '370400', '枣庄市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4sebnqc32hvdriv1ipbrs4mgr', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610111', '灞桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q4tqdlu6ggg10qt0276om5oii8', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540321', '江达县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q54g38hpdqhp4rqui6k65dlrt7', '3bdk3fa2jsg4mp5uj5t958lubb', NULL, '0546', '370503', '河口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q54ks8kv1mgbpo8qmh9u6io3dh', '6ojqaof4i6hriq6i40nmo3118a', NULL, '1909', '659007', '兵团八十六团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q5d8ck88s6hvhrst06reqkr7m7', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530127', '嵩明县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q5p21q8apmgunp8glvad0q30ti', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610114', '阎良区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q5s8bro3faiqvog7398hnmu5rs', 'oc9qu4fkt6h4lq8ju4qh6b43s7', NULL, '0580', '330902', '定海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q6h1iulanij49qg6har3ta0ul2', 'oli0hjs3akg2ppb6umjeru4rc9', NULL, '0564', '341525', '霍山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q6hv2eofrah06om8ppsnomti36', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '江汉石油管理局', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q6mqts197igu6pmcgter65o9g5', '4rslmb3lhqin7ots9deq3lppkl', NULL, '0349', '140603', '平鲁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q6pn3h7vnmhl1rrc5bhgtt3e5i', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451228', '都安瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q6q4409d8gg2rqhefat8ppagk2', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团第一师幸福农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q6rsferd66jfbpiinjcsh4ueg5', 'ph2eva16o0io2rlns64f0spuu0', NULL, '0943', '620423', '景泰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q6vj7103sahtiquj10mf8eoom2', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130423', '临漳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q70ok90hsaie6qrf2otvo53902', '1bl3m8tuaqjc3qppim0r929dqf', NULL, '0715', '421202', '咸安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q75qb3r774g5hqnrg2kpk4norf', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500235', '云阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7bqecq4goh8ppshkkcpu2oqfo', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320582', '张家港市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7ccs7updsg94rjvt75druuuku', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513228', '黑水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7meguto8miuorsv71hmh3impm', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610632', '黄陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7miab65bci14o1lra1rsoo7it', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210212', '旅顺口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7nabr0g5aio5o5j9t2cgkcmnh', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320311', '泉山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7nhshgig4hg8q0bdq1tcrh05j', 's0lr6tduqaimerh4v7krl8njqq', NULL, '0519', '320412', '武进区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7og5jc6hahdfo1kaeg8q0spvi', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370782', '诸城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7ppf657gqj8npvhjietbstorr', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522731', '惠水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q7uaa41uqmhqtpouefba0eash3', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522728', '罗甸县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q80rqclobohnopb25fmjt1ubcv', 'ubv369nt0cifiph17brjn11g3f', NULL, '0790', '360502', '渝水区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q88do8n4fug6eqpcq00discphu', 'q4pj7russoio3pgias2lqe2r50', NULL, '0632', '370405', '台儿庄区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8dgl3j14gh9apllqnro7ph6nn', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '潜江经济开发区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8f59i0jliisnprvktl4f63ei1', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420112', '东西湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8fh11u012htkq94qgf58o00eh', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420323', '竹山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8kk0r8on2gdlrka3r2i8jh5nu', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513225', '九寨沟县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8klbkrlcmgefpc13s6n62gjmo', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '雅星镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8rubho7fejaso5a8cj9vn6nac', 'r0g4ddltl2g6mopd3gslkatk3s', NULL, '0931', '620111', '红古区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8sd0mritci84qrq32e8imd7fd', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150426', '翁牛特旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q8uuqi04vgiioqjhjn236d8d7e', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532627', '广南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q911lko8lahuvrjreu95i26c58', '3bdk3fa2jsg4mp5uj5t958lubb', NULL, '0546', '370523', '广饶县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q914ro0iv0h8irgi8upr3qkc3d', '6gsgqula4qgh1padohio56bko3', NULL, '0838', '510603', '旌阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q966bp7c58jq5odqv8e9shce3a', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '国营南阳农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q96de0s0lug2iojm4hv0vq9nqb', '1kf9b22j0kinsp0h69ibb20gn4', NULL, '0570', '330825', '龙游县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q9b34teaq2gt5r5s0dc9kk438e', '6vjtnufp2eiqip75uek05pm3a4', NULL, '1999', '659008', '兵团六十四团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q9f191854uio6qudg8krame786', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450332', '恭城瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q9quhn8a5ogqlpnj24pth3uhm7', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610581', '韩城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q9r7artbkagmaq46cmelhol4qm', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621002', '西峰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q9uro844mcj2bps40avsp1ivbt', 'p47mt63pg2hempalq3mqvr7rsi', NULL, '0412', '210304', '立山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('q9v348e67qgpiq1a1j8d616t3u', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610582', '华阴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qa44lks334jr0qbtlonb331a06', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450312', '临桂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qadmhtd8tsje2pnlhe2l50kj32', 't1svlvplfqih5prh1mosnigiq1', NULL, '0897', '542522', '札达县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qaiu5hnfsejlqov0trlq9u2nei', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150721', '阿荣旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qakqv86j7iikuq4tg0gk4kkmda', '37mr9n7p10gf0otrgdqkl3mfdh', NULL, '0419', '211003', '文圣区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qam8id0am6ir8pnsv72lrugpto', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320381', '新沂市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qaq3ssmih0gbcpa1p6ttcdf68h', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130929', '献县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qatn1iv6pujsjp7ts85o5u10kb', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410711', '牧野区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qb1vunjtogi69r7e0bt8bol4vo', '3pl0iskkj6j2voi3qb1u15fnap', NULL, '0974', '632522', '同德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qb9s1nt8l4jgkq7o09sh72fqbu', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350625', '长泰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbb567uh4ghduq1avlspisf52f', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532503', '蒙自市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbcf2h3g80idtp52gj5jlhln00', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '湾岭镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbcth8ei28iakp6m4npuk4l2tu', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411521', '罗山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbefrc8vsmi23rvh5q5pf94qg4', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '新华镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbkpc7tjg0hkbqj123qbk68bma', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141121', '文水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbl3ah62gqhj6putg7in5oehf7', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371581', '临清市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbmebmvv3qhrhp94p0i40cos5t', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '白马井镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbo8gsipqmgclpv1oqcritapkk', 'sl1gm9tecgjuervvjdtqfsodbg', NULL, '0554', '340422', '寿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qbq8lj247eh6tqtb080gra6auf', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540521', '扎囊县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qc3o9ebjn4gq2on13vta4u28ha', '3gsg08cppejc8o9h0t2v8egl5k', NULL, '0410', '211202', '银州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qc522i6e2qhm0ra16evq0os8l6', 'v5uqtd9116h7to3gunfm82b7sg', NULL, '0393', '410927', '台前县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qc7tvcd1aii3pp1h4lhdffv84p', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330127', '淳安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qcaufhb510h9nod2oon82gubfi', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540225', '拉孜县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qcffrd4qluj5upibjnh7k59k52', 'vqd8pkelpkj84o1g0hhs719s7r', NULL, '0517', '320831', '金湖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qci2ha7lf0j9rp79reeo5mldu8', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320921', '响水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qckebeieueh1iramb445ddj57e', 'uuv8fjp592idaok8uh3vkbahon', NULL, '0813', '510311', '沿滩区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qd27imrlechmcpg6aakinaa4l1', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621202', '武都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qd2edo4eeei6qqu5og2umsrlbo', 'spcl2traagiofrum521umd4mei', NULL, '028', '510104', '锦江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qd2g0bdh3qh82p2dn1ufdkepkr', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411381', '邓州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qd4ebeq8jsijnptvhmnlaujpku', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150206', '白云鄂博矿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qd9t7qefp0iunrfdfofmmji33m', 'rrrrrbqoomgkjpn813qk4fa2pf', NULL, '0356', '140524', '陵川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qdbd3c67oqgrur2cstutdjjpn0', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230881', '同江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qdpmunoi2uiilrelp09qn5v2jv', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520325', '道真仡佬族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qe9qqc9ih2i7nrjb1p28g7ssae', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0436', '220800', '白城市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qebvohhnmijn7r98faff1nrd90', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320382', '邳州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qejnsn8jsii8pr4o350mgs61ts', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '胡市镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qeqhfiskrkihmqn6rddqpaibl6', 'p47mt63pg2hempalq3mqvr7rsi', NULL, '0412', '210323', '岫岩满族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qf05pc82t6gurq0tkn7v792g6d', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530423', '通海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qf1f5onrfmithpp8v0ir314r19', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371725', '郓城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qf5il0da04g9iob6l5amr4scki', 'vef8djerl0iorr8qsm85uh6u5p', NULL, '0415', '210602', '元宝区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qf9agbl5j8iu8pi4h0bkm2nhad', 'pqn8s9kedgjnnqhqpopuc8o1ts', NULL, '1937', '620200', '雄关区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qffqtp6uq4he2q42mcd0nlbdcu', 'tcp6tkb5q6jd1re0qtde5sms1a', NULL, '0818', '511702', '通川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qfjc5aglgah0jobq46sjlio7pl', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150626', '乌审旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qfmplkn6a8igbosth3p4t81jbh', '62rq1jvhi0in3o6uv0ofm3t026', NULL, '0417', '210804', '鲅鱼圈区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qfuh6kakauh1npcu2dbtamehaq', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350922', '古田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qg30hq4674irdpio29q24ajnfo', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0373', '410700', '新乡市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qg43n12hksielob43l0ud9adoc', '0tch126f7ch9rohg07djo5bvas', NULL, '0744', '430822', '桑植县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qg5v6bd7h6g2jqkphjh4ol8o6n', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530426', '峨山彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qgi0rq7nh8ivnpd1008jhj204t', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0836', '513300', '甘孜藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qgmobd1egejunplueard6v6u1g', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530427', '新平彝族傣族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qgp5rq8cmkhoer9cjlnvi6l7pd', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '莞城街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qguhlrsm3gh4soeculv4l332gd', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500229', '城口县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qgvclt4g90ij3qpgj6qh3u8lsa', '78bkqob3tehucq4613vdbhrfot', NULL, '0575', '330604', '上虞区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qh0a283rukh83or2s4t21k067c', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0370', '411400', '商丘市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qh2fil0t2qja2puheitikn1ofj', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610623', '子长县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qh36t7bsuugaboa7crvaojln5f', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0772', '450200', '柳州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qh3lg2dapmiiro7lsrk7rdgeo4', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370611', '福山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qhgni9t468j6koll1snebbtic5', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120103', '河西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qhr0q38m4ahf7r4effeep0p4il', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141034', '汾西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qhrfmbdjmcjqjoe32tnnnprrl6', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '冯坡镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qi29g7jq0ajcoo095hf59nqn5t', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320115', '江宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qiikj2spfsg0kospjeit8berja', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140827', '垣曲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qj058meggugjgomsu5542eh49q', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '长征镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qj9r96igh6iq4oqoecgbar7u7i', '1r7915e8g0jalrr5vst5cfuiol', NULL, '1774', '451122', '钟山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qjblhg611iii7o26sb0m8lethu', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360112', '新建区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qjnm7vf680ghlqf06mum4adgi6', '6n7d2g7a0ajhnrn6157cin88j0', NULL, '0514', '321003', '邗江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qjp3mvk3euhvip9a7vm8q2ojei', 'qr9acj5eo8gt4ql8q6bs899sfs', NULL, '0906', '654322', '富蕴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qjsks5pe4checoeth44hqquloe', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441426', '平远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qk0ot2gn4cjorq4cbbp0a5q6vc', 'r401ektu6ohcuo5la91f317ved', NULL, '0932', '621122', '陇西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qk1q50bhjqj5rri7v0qmgb2e7r', '2m8o56kpboi95php7scrtplfqj', NULL, '0518', '320707', '赣榆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qk1srhk1puhdjqk2pkvh5q1ns6', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '兵团图木舒克市喀拉拜勒镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qk2ne14svmhboogavc1gsnsf7o', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230712', '汤旺河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qk42sma34mg4krgpm6ju00351m', '58i0mts36qhv5rbhjfp25gbscp', NULL, '0994', '652301', '昌吉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qkadjct57aha0ogeg9su58ieff', 'sllolnqlkegb7rtv9rsslfhsfa', NULL, '0826', '511622', '武胜县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qkcb73hmt6icrpkq3mnuhncdvr', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '潭门镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qklvdusucmj0gp3h3voajjup32', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '昌洒镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qktlsldn1ag51o7vsmhi0h29ti', '3l0uf7h9nah2frg2h1udh9eaea', NULL, '0435', '220503', '二道江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qkv6ikilfgi4kovr3dhvfb9vgs', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361103', '广丰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ql1imv2dteh8kp6stv71a0qm8d', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '小榄镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ql7i8cah3kgiqqpegcojfse8ki', '5ronu5iaiugd9p6ubj28usjc0c', NULL, '0937', '620924', '阿克塞哈萨克族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ql8mte9raqga2pa6so611r9qt4', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210124', '法库县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qlbbqakvikh4mr072gl7h8loab', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '630000', '青海省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qlbsg4r9rkirro1boun148b867', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团十六团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qlc78hcn6uj6nouj0tb7sj5dfr', '5md00cifu4jjlpug3nja59na30', NULL, '0371', '410103', '二七区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qln24701l0hfnrn1cgna1rcib9', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511803', '名山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qlvkrr93ioiokpipeeg7e9bu1s', '5atdgk3bochubo4s1fdeulaech', NULL, '0711', '420702', '梁子湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qm05n6ftmuh3bq2lldjt4etu6o', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610625', '志丹县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qm26h19quai7fq09ef5k8hljuq', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430522', '新邵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qm2p6cufnegjoo1f028gtjcmeq', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511825', '天全县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qm4u0mpubejljpneesn924cmq3', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130825', '隆化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qmak8enruoi45rt031cl4p88jc', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511304', '嘉陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qmes1649osh7br24q04jlrhtsd', '37kd80t5ksg98rljq1o2rt6eq9', NULL, '0592', '350203', '思明区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qmm99k62dsi3krl9bvucr4qccp', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810018', '离岛区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qmp82ho6jmjvgo3dajjqrr4rqq', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140224', '灵丘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qn8n3l6qcmipkplafhlr09e8q1', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540127', '墨竹工卡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qndjh7gpiogkno3lgiocqvka7t', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370102', '历下区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qnfsingjbsjqlptocb8ftjilh5', '78bkqob3tehucq4613vdbhrfot', NULL, '0575', '330602', '越城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qnsltei46gi61q8gmh2acqf40k', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '广华街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qnt6va1uquh7trnc8kn563kfgh', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0431', '220100', '长春市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qntn0s19msg8spugkoe4cf6g65', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140922', '五台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qo5rqpjh5agotommal4mjtjkqr', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330109', '萧山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qojn0n7rboi7gpsftcvntcu0nj', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450321', '阳朔县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qon0eph69kj4npbl3rnpbfqpel', '4obn2cjfl8jvgrg98ugd10a87j', NULL, '0990', '650203', '克拉玛依区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qop9ulu0a2jivqqmf84mndq9cu', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '东河镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qopnqkjitqggfob4d7vlbasbrr', '155qrtip2qj99qg686a2en0psl', NULL, '0335', '130300', '秦皇岛市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qp6254mecejkppgpaf2jt6dukn', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410326', '汝阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qpf6po5av6jt3p2gdv3mdohnf7', 'rs8ei9p6gcg7lp9dphe1qcvunl', NULL, '0971', '630121', '大通回族土族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qphpml1pm4i7aqv4gdeq181nj1', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513227', '小金县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qpo9cirpn4jd0pc8jaivuqeulj', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610422', '三原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qpr8fmeqosgpnoc30atvb2d702', 's23l3n9rm6im4q2lmkt8ndn471', NULL, '0483', '152921', '阿拉善左旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qprail884eiebp4ii03v9tl399', 'tdmum9ar3ehuursg00idcnejk8', NULL, '0731', '430102', '芙蓉区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qptpdmt4aejnhq4vvm1r1se78h', '0567knr96sgddrc1plstq0ta7p', NULL, '0754', '440511', '金平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qq22nt82hkhmpr86gdnt1m16k2', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810013', '北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qq5ricg4ksgt5rd8qdn8kpt9ai', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431026', '汝城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qq61o3s8fkge8oga11a3j77bk8', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231083', '海林市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qq81oinetmh0hokfmopqpc6t0v', '7mi7t9c2gojcur0an0g8le8svu', NULL, '0573', '330421', '嘉善县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qqc19qc5g8gbcpi5hn6l0vmsct', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230127', '木兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qqcm7vsfqoij6om2vto6ocku6q', '5qoh0u5taait1oag7c3ar2a914', NULL, '0972', '630203', '平安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qqf8plvb3qi78r1g4l9l8vv9cm', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330108', '滨江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qqjb7nt4pojd2rco0qvfof06ie', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540231', '定结县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qqkhlhbdiih3eolnf86b3lb09n', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450206', '柳江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qr0eavn64sjr8p01if7cbpvjtt', '4ohfo84880jgqquoscofhr3sdi', NULL, '0414', '210504', '明山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qr9acj5eo8gt4ql8q6bs899sfs', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0906', '654300', '阿勒泰地区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qrfcu2422ehlvrknlaafk5nlbi', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150624', '鄂托克旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qrkdmg4qamghbq3tloolietph2', 'rbqf56oep4idgptb103sspscso', NULL, '0914', '611026', '柞水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qrqlljscmajq0oqf8hfe245jtf', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310101', '黄浦区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qrsmsdcp3qg8rocongj5lemtls', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '后安镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qrssapc01kgamq2upe39sm5utg', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430529', '城步苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qs44m68c3gjmhoobtl0hsbfnbm', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '七坊镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qs8kfgan2gjeer3v32i74jihhm', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340803', '大观区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qs8uoacbmijf5r4vv5sdfrus89', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150981', '丰镇市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qs9hpuol1ujo6qsdkf39in9lrq', '5qoh0u5taait1oag7c3ar2a914', NULL, '0972', '630224', '化隆回族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qser8apo0uio4oaums5pdn43ts', 'unburmmpauiapo2temd5r01tgn', NULL, '0572', '330521', '德清县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qss6d8rukai3hogr28217iua41', 'vcvi1q7disif5o2cn23iminacv', NULL, '0663', '445281', '普宁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qsvk4o7buui7upl9dc74c1lfdo', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532523', '屏边苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qt2hrlddu2jr0qgc4tfjpbjp77', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420682', '老河口市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qt4df8t0lmgh7onmrc099keg6c', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540235', '聂拉木县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qt6k8a1ajoitcqpoc1uv5kadh9', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440311', '光明区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qt7nl6jmc6gu9q4hnvikj52imp', 'sllolnqlkegb7rtv9rsslfhsfa', NULL, '0826', '511603', '前锋区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qtgqj0mgtoglnq3p4grv6th0j5', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371329', '临沭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qtqrn3063ugf2q6dkavqeq1m2m', 't6ts7rgoi8gapp256goa0olvun', NULL, '0995', '650422', '托克逊县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qtrb47egj0gkkphttouno4r5b3', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '和平镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qu34c0um3kguvqessfpepoogdg', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350525', '永春县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qu5cbaga7kjinqubd8873c1akr', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520522', '黔西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qu9r7q0u86j80pvt8pkj4arqkm', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431127', '蓝山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('que60i6ibgg1tr9thkgsr97b0m', '58i0mts36qhv5rbhjfp25gbscp', NULL, '0994', '652323', '呼图壁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qv84dnmcngjgmq1us9u34hoffv', '79aet5qpkij7uov01h5hagemhj', NULL, '0737', '430921', '南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qvdbkd762ki12r6404am158a98', '6vk98tiersiibq2sg2fnfpckn3', NULL, '0933', '620822', '灵台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qvg6uotshchbtrbih0rcjm7rd5', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150404', '松山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qvhjpeaevgj3eqhq4g8n95ojq7', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0359', '140800', '运城市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qvokaletioicnq82k5b8klsbv4', 'rfn4tk49imhvbqf9lc980ovabd', NULL, '0510', '320213', '梁溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qvotvn3jnmjbhqk23gomrjai7h', 'tvgdh36vgmh2bqffbjc64pjtlr', NULL, '0935', '620321', '永昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qvq73p3stmhf5qc3n1vghfusoo', '5ijfthkv36gfcr3g07s6umq73v', NULL, '0830', '510504', '龙马潭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('qvrq8mqtpshifommpphmdmgnjq', 'sl1gm9tecgjuervvjdtqfsodbg', NULL, '0554', '340406', '潘集区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r00i2271q0if0p2kdlr062i71p', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411727', '汝南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r01ghr7ucih47rh4thq6lpnagh', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510725', '梓潼县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r01r0meingg9tpud7opk02j0o4', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '长倘口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r0el6s9bakg8fr47it1gkpmpvm', '0sdp7nv87uh54q41apsqi25pte', NULL, '0797', '360700', '赣州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r0g4ddltl2g6mopd3gslkatk3s', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0931', '620100', '兰州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r0k1j78if8hm7phr1t86uekfko', '0e3vofpadojc2pgos3gmaqll0s', NULL, '1833', '511423', '洪雅县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r0krg8km38jaaquq2aq3hfnufp', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '沔城回族镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r0m048pqkcgaco7h7q61lil29m', 'pnef2s2l9mjk6o21rulsnohmvp', NULL, '0812', '510422', '盐边县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r0t0kuqr9cgf8pldqeprtoa8nf', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410212', '祥符区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r0v1s2dk54igup3dc7a0gi7bog', 't1svlvplfqih5prh1mosnigiq1', NULL, '0897', '542524', '日土县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r121g7vofaii6p307r1km6ilor', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341181', '天长市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r15khai7f0gpvov1400qeev5kh', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '瑞溪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r1a1k2ptsqjpaot65fgtp6lpj0', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371302', '兰山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r1drtb94oag1vr9k83feqgs9jo', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610118', '鄠邑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r1j9q151osh2drtk8nppdmp6d9', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '石壁镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r1qjj92m6shipq5f8r6o5i12tr', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140781', '介休市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r1sqjg2ovgikor2j232kjbduc5', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152526', '西乌珠穆沁旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r2ai6muau0ifvqe1bas1ftokdb', '27snrp1n9aj30p6nf2sfcc8j24', NULL, '0938', '620524', '武山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r2konmokfqi68o7mcogoou7jn9', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420624', '南漳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r2ssmhlcc6htjqvchceg52ik8l', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '岭口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r3ai391k66jcfpdsliort17tvb', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230123', '依兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r3bj3cljgii5dr66btcatlpf0i', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '中原镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r3n0hk0t06hq1o40gmp28bk1f4', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431102', '零陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r3s508tkuej0poipdludse56i2', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0746', '431100', '永州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r401ektu6ohcuo5la91f317ved', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0932', '621100', '定西市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r41bu743hcjn1r6cp0bl8oakee', 'stkf2gj186g1mo1fe0r2pgar5l', NULL, '0773', '450300', '桂林市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r437d4hd6qg1por5csg4m1nb2k', '3gsg08cppejc8o9h0t2v8egl5k', NULL, '0410', '211223', '西丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r47gtnr7e4iqmogd52v97gaenl', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511325', '西充县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r49o263llihbqqhn2sj6rohn01', '73074v4qq0g5ars2cec58gpq94', NULL, '0566', '341700', '池州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r4e1vohoc8g81r9065353cqq2h', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522631', '黎平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r4eg3oh1v4i28othdi1tauaigk', 'trhctuqokoiisrgk64kuvlneeu', NULL, '0561', '340621', '濉溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r4fcjnpc2kjk8qi6fje2426okk', '73k659jq2ah6fppa6qe6rlojmd', NULL, '0692', '533103', '芒市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r4j86584i0hglr7mdel03b5egv', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310106', '静安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r4jkp190noid7pnejch2kgo3b3', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350581', '石狮市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r4n227lg9qhk9ppils50m0b3ql', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610725', '勉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r4pvuqdn1ghetq4ng08pktg6g3', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540627', '班戈县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r518ee2megg4fp9e2l9ia9tpbp', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320102', '玄武区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r53ahfgv94irtp6pifheqppv8o', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360724', '上犹县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r53n2nfovmg49q24bph5bnlf2t', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411527', '淮滨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r5468vn3biiu1pntuqd781d2ks', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '兵团四十七团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r56dt0kagahs6r7kqlnb0tj3s2', 't93et4kmlkh5sqhpg0iqonnvja', NULL, '0853', '520403', '平坝区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r57hch70aqjnlp1vk2vcjivi9f', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '阳江镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r5je81mapiikpqakrfp1n66ffa', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411322', '方城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r5o8n5d3fqjgmoajola3018mfe', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450107', '西乡塘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r5raohmufei9hr1tc7278sp0fp', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140222', '天镇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r5sk5ararcha3qjvnu65a8j8rl', '3akbe5vmuajqcr216dasutqju3', NULL, '0878', '532300', '楚雄彝族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r5touhma5kjaiq97k04fbib7b2', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530126', '石林彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r660h40pk2hbsrtih1mne7og2b', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141126', '石楼县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r66on1nhu0jf6rjct623masjo3', 't3i3jj4066gniomc1nimc5a67r', NULL, '0456', '231124', '孙吴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r6bu941ouoi55qfs4ubrjck6ln', 'sjqtp56ls8jd6pvfkbtavfo1fs', NULL, '0534', '371427', '夏津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r6fn5g30u4h7cqp8110fb0sp7b', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532323', '牟定县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r6gk1pnptmhbtpfuscpet5g6m1', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0597', '350800', '龙岩市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r6lgbjg8bgionq73gqstrvcmhk', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440112', '黄埔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r7egoc788qimmoica638835enc', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210111', '苏家屯区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r7ken9b1p8janqun8k4n26mbml', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410802', '解放区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r7mb04nd8iic0p58dk799ob5hf', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130528', '宁晋县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r7pubsj9e8hc5rc3cqm1jf7o99', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810017', '葵青区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r7r3b4pn9uhp3rk57ldnaqmp9v', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522625', '镇远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r7tb1d0uoej02orp04ntt78973', 'vqd8pkelpkj84o1g0hhs719s7r', NULL, '0517', '320826', '涟水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r81df19ucai3qqidinpoptmtnt', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150703', '扎赉诺尔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r85h88fd1ijp3or3o1al44302b', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652824', '若羌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r88bd6gvpghlio4habf670uo7e', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '青松路街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r89sdn2ssuhbkrvu542ajji8l7', '06rn62r4tggd8o95iltccc53ms', NULL, '0594', '350303', '涵江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r8acgpne5ii18q07ci0b3dimn8', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320117', '溧水区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r8e0vv7hscillq7tdg5dov3vbk', 'odfe2v16akileq13dls31adite', NULL, '0718', '422826', '咸丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r8g9skk76qhsfqc0bm6joj26pg', '4vn6hgsekehjhpq3mlturrsul1', NULL, '0825', '510923', '大英县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r8kfk45og6gjcp9c2gnsrfp22e', '3akbe5vmuajqcr216dasutqju3', NULL, '0691', '532800', '西双版纳傣族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r8ptjo55cki26q4u25imebom4i', '2051oaiqo2hp2pt9pnt2org0jd', NULL, '0839', '510822', '青川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r950jh7954gh7rsr32n9mdgjji', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540329', '洛隆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r95up56fm8hcapt1bfblq8khvg', 't1poo5ohlkgqcrg334be6usr4t', NULL, '0473', '150302', '海勃湾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r9jrr5ualkh6oq56qs32u32udn', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530623', '盐津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('r9sa0m5dh8h7lrkb7f9bgm2711', 'rbqf56oep4idgptb103sspscso', NULL, '0914', '611025', '镇安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ra27gj8g8kij3rhf9iitc9qgqh', 't1poo5ohlkgqcrg334be6usr4t', NULL, '0473', '150303', '海南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ra2dvsnerugkgrdh5qetgnbvkj', 'uo2dukpvluh0uoimsanur95la4', NULL, '0954', '640423', '隆德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ra82lvpficha3qe4ded4o5qn78', '04lk5t0f8mju5r30i2um8bgrb2', NULL, '0895', '540300', '昌都市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('raend08j22gudrlphl174ssm17', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0736', '430700', '常德市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('raeqr1sdscjjip9241gnv284rk', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532524', '建水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('raobig9mb0gapodg06s3j2sto2', 'v5uqtd9116h7to3gunfm82b7sg', NULL, '0393', '410926', '范县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rar0es582ghm2p59igolabed3u', 'p84u1jr0m8jcdqckqm7u2cim9f', NULL, '1771', '451422', '宁明县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ras3p44usqg8brb3k2ue8gthkj', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '南开乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rb6t3sl34shl8q3moo95748co2', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450311', '雁山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rb710u0lbah4gqcif5jba9oes1', 's01ev31uaaii5o2c20akaigmi1', NULL, '0724', '420802', '东宝区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rb7l6sj0iqg0tpbcanbqie0bct', 'r6gk1pnptmhbtpfuscpet5g6m1', NULL, '0597', '350802', '新罗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rb8mn4f7fiip7rol5uk2de5chl', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522722', '荔波县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rbbc843cs6ipfphnlgme970j1h', '31hnmsr4hajg0qbp3dvnjhiem0', NULL, '0901', '654221', '额敏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rbk2bcnjigho6qvqvmcjdrvtec', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420325', '房县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rblvtklfuairpreas1ojelvnsg', '37mr9n7p10gf0otrgdqkl3mfdh', NULL, '0419', '211081', '灯塔市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rbqf56oep4idgptb103sspscso', 'pma35v8v3aggbobuot73v69lpj', NULL, '0914', '611000', '商洛市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rbtdeoke2mihso7gj5k7m42o1t', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320506', '吴中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rc2ae746rgj37rgqc5ig72e8nj', '7r0holo3doj4ho0ru95ke08dgq', NULL, '0527', '321302', '宿城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rc3f72c052i9oqj7v1mptp66ts', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513233', '红原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rc60sski74jk0o2o0lea86rmo6', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330205', '江北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rcbr9ts3imiq8pdmg2bgosodvk', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420113', '汉南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rch0jsu85aj17rlb6d8bdedrcv', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410506', '龙安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rci288q22ki3uq5urfachr1jbs', '4qdrdicvvag2co7ik7c60gs09j', NULL, '1895', '460321', '西沙群岛', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rckv8djd1mgm6qnvoufvgfmcog', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130609', '徐水区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rcrdj4iv8igb1ruomtrl56c22a', '6ojqaof4i6hriq6i40nmo3118a', NULL, '1909', '659007', '兵团八十九团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rcs2ucb8t0hbdqu1grntl4qn7j', 'rg448anb2mg3crps42shpne6ii', NULL, '0668', '440904', '电白区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rcubevmr02hmdovd86umi7tn49', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0710', '420600', '襄阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rd6jn3v9gui2fqvv0ji3dolfrf', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131121', '枣强县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rdihj1tpv6gngoesvch5k1vqvr', '1r7915e8g0jalrr5vst5cfuiol', NULL, '1774', '451102', '八步区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rdn2mnm53gg7bov28021e2k6um', 'qr9acj5eo8gt4ql8q6bs899sfs', NULL, '0906', '654325', '青河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rdtugkt0v2jm2qbbftohlim6no', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511126', '夹江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rdu7es2f58g2fo0s0a3ke0iegc', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370113', '长清区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('re1t3dg0hmj2iqnghg751go70r', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652828', '和硕县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('re2rr71bjuj11o850k4eqve8bl', '04lk5t0f8mju5r30i2um8bgrb2', NULL, '0891', '540100', '拉萨市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('re58a98ufggmious11vbinvup4', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430502', '双清区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('re8isejnfag6ao7mhui7095v33', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150725', '陈巴尔虎旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('reab4k72iigj4piqp15vqilvfi', '3uh3od976ej66rq688asddleo8', NULL, '0472', '150207', '九原区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rej0s7m314hmsqqv5tbpgkotc1', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '黎安镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ret2dp337ujmlr17ttlnfu1q8f', '3akbe5vmuajqcr216dasutqju3', NULL, '0877', '530400', '玉溪市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rf0ritsri2j0br3rth59kc2hic', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230321', '鸡东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rf2tn5ujpejfer2olrhalgp29r', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150622', '准格尔旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rf3u7gq682hv8q7bg480t4rhpr', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '国营白沙农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rf61afdes8io4pb7ctkamsbt1l', '22gukrmo7mhero5r7fhjqnahiu', NULL, '0762', '441625', '东源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rf8qi33v60j0cq5peu7em46bgg', '0sh732c7saglcqaktuna9frole', NULL, '023', '500114', '黔江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rfbooc2otoh42q5k1gp48arap7', '3gsg08cppejc8o9h0t2v8egl5k', NULL, '0410', '211204', '清河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rfbup1n6emgs7rluogr7r2qc4u', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360730', '宁都县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rfcrp6vlu4i0qom9kanold54i2', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0834', '513400', '凉山彝族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rfl7hd841ojcmqnjvui8lojkc5', '338gdrsv2aj8srrsd83k0rehe0', NULL, '0631', '371082', '荣成市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rfn4tk49imhvbqf9lc980ovabd', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0510', '320200', '无锡市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rft0ff8hvog1spg1nu5evbsdif', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440282', '南雄市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rfu9s4jjmagf6orduliddrjcbf', 'spcl2traagiofrum521umd4mei', NULL, '028', '510132', '新津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rg448anb2mg3crps42shpne6ii', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0668', '440900', '茂名市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rg5bmmeke2g75re17l58bj0157', 'uo2dukpvluh0uoimsanur95la4', NULL, '0954', '640424', '泾源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rg64ej007gja6rbr3794dqi49j', '60plvbc5tqhjcrsj5hfv8ads5n', NULL, '0392', '410603', '山城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rgdvc1u9g2jk3o49pgdru0ii5i', 'trhctuqokoiisrgk64kuvlneeu', NULL, '0561', '340604', '烈山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rghbeph0g8g5gq5kbl5clpbgo3', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500240', '石柱土家族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rgip7g5macjigp19pf5t6o7l9n', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370881', '曲阜市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rgtj5i02o2jrfq7meaagiudoj3', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540228', '白朗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rgvnbeblcijruq7ir7cl8mh7qk', 'v9p48soav6jlsqinehjjs57cks', NULL, '1994', '659004', '军垦路街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rh2af8nl8kihnpalnqe97db0ab', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371722', '单县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rh94pbgsl4g5jpcroq3vnbdvu5', '1kuq9kes1cjp2q7qeajn3o4eu6', NULL, '0898', '460105', '秀英区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rhanbblliahb4rps507bbvu1lb', 'rg448anb2mg3crps42shpne6ii', NULL, '0668', '440983', '信宜市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rhd1rrefg8icqq68u814afkbur', '3pl0iskkj6j2voi3qb1u15fnap', NULL, '0974', '632524', '兴海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rhg6jdvp34jicp5kesjjockuod', 'sm15d8rjd8iihprb174l51cs8s', NULL, '0888', '530702', '古城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rhibbhb9h0hunrmabvnr5vpdiv', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '红山街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rhln6e0f9siqprei53504jdvpg', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110108', '海淀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rhpuduq5toheso8rvnm2v588lk', 'qr9acj5eo8gt4ql8q6bs899sfs', NULL, '0906', '654323', '福海县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rhuiq9j04ujrrqhu2gk3bsv3v1', 'p84u1jr0m8jcdqckqm7u2cim9f', NULL, '1771', '451402', '江州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ribteq5p9kgrqrogpp864781r5', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110111', '房山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rikd2lce0ei6jpnhob9q7greo8', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0513', '320600', '南通市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rirma11n6oht3piaui55an6cng', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532529', '红河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rirt7pavmcgo6p1mi3i5tp3s22', '39q963pndmi8mo43ipadpohims', NULL, '0774', '450481', '岑溪市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rj2kmc3936j3mq8ap7bg2ea6ga', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0991', '650100', '乌鲁木齐市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rj4dg50ql8jdjocq2oodu6e383', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511132', '峨边彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rjmdea8jqei0iphtb61mo9kdj0', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '410000', '河南省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rjnlv417qohbmqshjekt3nol9e', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0376', '411500', '信阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rjpdu8e1bqjh8oolsa6mi7urd9', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0899', '460200', '三亚市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rjpmpel00mh5prdbc3ceofp6q9', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230822', '桦南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rjviah99v4ib2pom2hvbl35kgu', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140729', '灵石县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rk80s9sovahqar8gtni71rhuch', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410527', '内黄县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rk9765616ogflo68vtukr32kb0', '0sh732c7saglcqaktuna9frole', NULL, '023', '500153', '荣昌区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rkjogtckkcgarr8babrevrelr7', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '国营尖峰岭林业公司', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rkmmg01sjshihq7vk8bppb8c2b', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130125', '行唐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rkp5j5h6dahksocfvkniglthoc', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230111', '呼兰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rl5jarop22jehou29sbmq7fumt', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622926', '东乡族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rlgvsm5qasg6lpm7a8blb0n5ua', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140121', '清徐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rll2nrh05egueq62nm0ke72v8d', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431223', '辰溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rlq128mmomi9aq8g7nj29ul6t4', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810001', '中西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rls6mbqp50hjbpidud6ivaj7jv', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141181', '孝义市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rm3h47bk1kj60prfh1qf6i8npp', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411402', '梁园区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rm6gim6meoic2o262d87kfka1g', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360732', '兴国县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rma7m3hk6uhejq0uaupbf6duh3', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市克井镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rmi1ij3sg4jr6p29c9lr7eskn0', 't3i3jj4066gniomc1nimc5a67r', NULL, '0456', '231102', '爱辉区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rmkqi4mnekjtdpf165di5d90ko', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222424', '汪清县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rmlpkqniq6guursos4hpb3rnma', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532928', '永平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rn0s33h99gg9ura2dse4n2c9gs', '1bl3m8tuaqjc3qppim0r929dqf', NULL, '0715', '421223', '崇阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnbja0mg52iopo5cscjb17ugpu', '7clv6jucsug1docf6sia80h0g6', NULL, '0936', '620723', '临泽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnbnvskf60hijr3o1aak9amegh', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '兰洋镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnbs0op38uhqlrfmca9ohnli19', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, '022', '120000', '天津市', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnjsq2h8s8grhrr55uie4tdb2s', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420102', '江岸区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnk83uhpemj30rq9dql3eqilbf', '488ldusspkgm4opgolg1s39t80', NULL, '0970', '632224', '刚察县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnkr9c7ecehuopr9arv698rfol', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0660', '441500', '汕尾市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnnu0uiqusjssrlcmr8u49r2sj', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410328', '洛宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnvr7986oihmbp539sl1vfcgkc', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510703', '涪城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rnvuugqo3egrpo2asc41cfcd1r', '51jm31pu5sgtuoplndgclh1oat', NULL, '0398', '411281', '义马市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ro75hilkk6h07otpacj6dlubpa', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370116', '莱芜区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rob1ig9k1iihuqgrsm90kgn2hb', '0', NULL, NULL, '100000', '中华人民共和国', 'country', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('robtbppsdggrup1fct7pobvr0h', '7b9t411baujtgruqa9vn99tr68', NULL, '0457', '232722', '塔河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rog6br21veggso0qg5eceqg2vf', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530825', '镇沅彝族哈尼族拉祜族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('roqk2jpf88gqupie84i3hf7h29', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110119', '延庆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('roqkm0uuj6im6pulmld071aetd', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451026', '那坡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rosjfs8jeih7tpkn6kvanhislh', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520526', '威宁彝族回族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rpir8av5kuh6fp4qoo0p10jdat', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451227', '巴马瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rplo4obrmkgudqlmm6a37hu0pl', '73074v4qq0g5ars2cec58gpq94', NULL, '0558', '341600', '亳州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rptcmms64ggeqpt87l5fhqjqks', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451031', '隆林各族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqa2oq23bgj6mpg78tc0ai3ujv', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410303', '西工区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqb9bj7o3qh3rpotpi3kp8sugk', '3bdk3fa2jsg4mp5uj5t958lubb', NULL, '0546', '370522', '利津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqi2beuqo8iisovm45p6rhfq32', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '竹根滩镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqi3hmstrag7gq4crlo97bfh0q', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '金银川路街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqic4c7afuhk2r6qu2p6fidrcg', 'qe9qqc9ih2i7nrjb1p28g7ssae', NULL, '0436', '220822', '通榆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqplvd2uq2j7robiidml6qg7lp', 'ph2eva16o0io2rlns64f0spuu0', NULL, '0943', '620421', '靖远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqq6et1s7qj86o0ceh2qos11q7', 't93et4kmlkh5sqhpg0iqonnvja', NULL, '0853', '520424', '关岭布依族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rqu9b0mmo6ijdpkjls2qhhjlcj', 'vp7s5rgl42grbpsmr2s27bg3kh', NULL, '0827', '511923', '平昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rr0uorb6umi19rju8dnr07vg6u', 'ssbn19ld8oi9qo61q5m9v89drj', NULL, '0557', '341322', '萧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rr1km5046qhsmocppp63fqcba4', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230716', '上甘岭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rr2ft03pomiedq1sli4cq6kni7', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610115', '临潼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rr59iqkl2mhi1re698n58mb200', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230303', '恒山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rr90uiqbg2i7gpr5lljcmt27bb', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130129', '赞皇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rr917kj0p6jjsq3cu9coj4tvru', 'pop6evjn9gjk0pf4c9oaf7p8jl', NULL, '0478', '150821', '五原县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrahamlbduht8rseen8vsqo1bq', 'tnotu917v4iojo2esidl11v6ed', NULL, '0887', '533422', '德钦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrka7odl7oi43o5cukd1dppfs9', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410411', '湛河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrmr4lfj3kiqpqfa68lmsm57h8', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440113', '番禺区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrnuj0uq3ciauod0m6uj96ih6q', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150627', '伊金霍洛旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrq8bgaor8hpfp7co2fma05haa', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0633', '371100', '日照市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrrc98s2rahk0olm9dv24hssrq', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0902', '650500', '哈密市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrrrrbqoomgkjpn813qk4fa2pf', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0356', '140500', '晋城市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rrursaju4gj1iqo81kuvddbj6n', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621026', '宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rs0bff4ft2iggqms8te99sl0nv', '7mi7t9c2gojcur0an0g8le8svu', NULL, '0573', '330481', '海宁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rs3os14bb8haor7ehqkktfnadp', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310114', '嘉定区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rs6ro44h08jvao2lghiafmcjhh', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370602', '芝罘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rs7jc74nf2idorp6kkdep1tj5k', '0567knr96sgddrc1plstq0ta7p', NULL, '0754', '440515', '澄海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rs8ei9p6gcg7lp9dphe1qcvunl', 'qlbbqakvikh4mr072gl7h8loab', NULL, '0971', '630100', '西宁市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rsm8k1subohp6o9tb5tqle5vsu', 'u3onkv6qe2jc4ob7f89047dtnm', NULL, '0395', '411102', '源汇区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rspr54din4h68r1h0pht0p1e7k', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411728', '遂平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rspuejdfn2jteoobqo7r1roru5', '4si9r8ohrsi0urh25a84pugj6r', NULL, '0434', '220322', '梨树县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rsvcbc5pmkg3kp6l6v78rk6u7f', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320903', '盐都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rt04ghr5emgc6qvbpu63p8ifal', '5sj9he2quagkopce34g9via9uh', NULL, '0593', '350925', '周宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rtb4t4q3gojt8qlkc38dahotns', 'rs8ei9p6gcg7lp9dphe1qcvunl', NULL, '0971', '630102', '城东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rtknit1q0qjpioaso2m37cj5e2', '7hk2dikcooh2dou1jbi2qq3jdv', NULL, '0752', '441323', '惠东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rtn2lv4ip4ibroph62po7k7l08', 'tm8p4vlku8jnhoj61rnakvelo0', NULL, '0477', '150621', '达拉特旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rtumj23ramjj2p1b5ac9he1oo7', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540522', '贡嘎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ru8cddosamg46rj2iv5acdpf30', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230125', '宾县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rv0b6setiaj8nqt0hiecmv66tj', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130132', '元氏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rv81ir48qcjpoqtl39nh4cdrjv', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370724', '临朐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rvidk1eb48jrnqhc6bsmjolfhv', '78bkqob3tehucq4613vdbhrfot', NULL, '0575', '330683', '嵊州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rvl2es7gicibcog1g0k9p8tl60', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140181', '古交市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rvljslgl48jrort907lenqbal0', 'sllolnqlkegb7rtv9rsslfhsfa', NULL, '0826', '511602', '广安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rvlsp1332ujc7r6ds1qahpepm6', 'rrq8bgaor8hpfp7co2fma05haa', NULL, '0633', '371103', '岚山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rvp92d2ulggmrp432750u8338v', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350781', '邵武市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('rvpk0nphogitfrutf5q3r6p52f', '37lkb4uoschrorvo11dt8af060', NULL, '0977', '632803', '茫崖市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s01ev31uaaii5o2c20akaigmi1', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0724', '420800', '荆门市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s02ccp8lk6ivvoisec78iu9ot1', '7mi7t9c2gojcur0an0g8le8svu', NULL, '0573', '330482', '平湖市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s079tah7k8jv9pitso42n3d48e', '7qlqlaae00iiqqidb7lrulifjk', NULL, '0427', '211103', '兴隆台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s07iekdulcguso826jvlhqpi1c', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420111', '洪山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s0a69gma2mik1pqiglrtfia8b3', '6l9b9ilp3ihmhonjc44kakbr91', NULL, '0516', '320312', '铜山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s0el1sod02jheorokhdenhj80p', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652801', '库尔勒市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s0go745j20jinprs3mkbmd9qnl', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350505', '泉港区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s0je06onecic3piamgo909q5bi', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522630', '台江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s0kuirohumjakrbs1rmg4oggev', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '海南矿业联合有限公司', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s0lr6tduqaimerh4v7krl8njqq', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0519', '320400', '常州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s18ao010j6ilhr91vk4fph8on0', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '国营霸王岭林场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s18hnm2dhmhbqr9pfapopra4jh', '4h85ig3mruhk8plgdokttalo7h', NULL, '0464', '230900', '七台河市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1ap4lo34kjmirt40cb2t3ue21', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130723', '康保县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1asnloi80h8lp1a5b8tdsglui', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610630', '宜川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1d1mfqro0ionrusvu3li7oj12', '542cvethfqic8q67af8f92ivn4', NULL, '0733', '430224', '茶陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1d27srns4j2tpkljq179gatqo', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150927', '察哈尔右翼中旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1edtr746qilnrhqu3rfk9ndbk', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411522', '光山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1eri5bl8mhq4ori4gneab1lka', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '和乐镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1iaoq9lg0js6r4s1j4uncj782', '68scvtd0piilsrv0gqgime32q6', NULL, '1953', '640521', '中宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1ilcj1v8egiop9vs5ci74utoi', 'v9p48soav6jlsqinehjjs57cks', NULL, '1994', '659004', '兵团一零二团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1q3pgkqf2gc3r2jdm7khfl4u8', 'vdbjntnqt8io7q343d1d86olha', NULL, '0875', '530581', '腾冲市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1tgv1s9p0g37p0oi8d1abe5dp', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '国营东路农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s1ugg2equ0ga6oluls540hpk6o', 'q04gvg77l6g58r9c0mrbe6cdl1', NULL, '0552', '340323', '固镇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s23l3n9rm6im4q2lmkt8ndn471', 'tj70a6cm7giiopralk6q924g3a', NULL, '0483', '152900', '阿拉善盟', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s242ojaujgisiq3nroid0b8tlc', 'odfe2v16akileq13dls31adite', NULL, '0718', '422822', '建始县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s2f8tat8qsh0aormcpv8dig06t', 't93et4kmlkh5sqhpg0iqonnvja', NULL, '0853', '520402', '西秀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s2fjrn48uqg77oa46lhlne8v7q', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市玉泉街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s2jfghgd8shg2qfnachh7jo6t5', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350723', '光泽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s2tdnlh2mqh8bqbde65956fv9u', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361021', '南城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s33gpn5bm8gl3o7mdh355fic56', '36guobmauchjiq3hk05eqfpnuo', NULL, '0474', '150929', '四子王旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s3avso75i6h0do6u5kv1ig43pm', 'ptrk71a2c6ir5o5s0d6lp1ldje', NULL, '0768', '445102', '湘桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s3g39kb6aujj5qtmr83623q5fg', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360404', '柴桑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s3q4g5cabmgfhqrgt5t21arouj', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '谢岗镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s43fuqa3bsh2rqqjod4viprvfn', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431103', '冷水滩区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4bbu3rv9ggh1rold9seh4ugg2', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431229', '靖州苗族侗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4hh9251iki85on3pr8rbeeqmk', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '万江街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4o4hjc97qgtiqu3boklgeakt9', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310107', '普陀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4qnum3pi4j02oeei6eqgg7akk', '31hnmsr4hajg0qbp3dvnjhiem0', NULL, '0901', '654201', '塔城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4r2lvm67ogk7raeteh2tska5b', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360830', '永新县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4r98hobkgjqurphb4ou0vb1ti', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410822', '博爱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4uu0nkln2jdboadv0v5jag34k', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '渔薪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s4uus0f5v6gc4qs716g2qcbbqa', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130531', '广宗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s5e3aek38oiu8rel82okq8shbn', 'rrrrrbqoomgkjpn813qk4fa2pf', NULL, '0356', '140521', '沁水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s5etfuumckht2rcd0aeg5u91cq', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810011', '屯门区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s5krgj31viie5ooenpjqgc6hsi', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140830', '芮城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s5l7ic92icg5bo5seth1otnm59', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0857', '520500', '毕节市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s5mp5s65aahgmq3abglnis5rjm', 'sm15d8rjd8iihprb174l51cs8s', NULL, '0888', '530721', '玉龙纳西族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s5oajtsd12js4p88gbba4du35h', 'o2kfoe7ujijqip76susl2bdtsj', NULL, '0378', '410225', '兰考县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s5omd2qqo8ibtppe039u9im6hj', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360403', '浔阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s62jlm5kkshcsrf51mrvbftp55', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '三伏潭镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s64rmh2ug6i65our20uh5p97o1', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131082', '三河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s66a5icvmmj97oj0rulgh524u1', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340826', '宿松县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s69dmpj3tag8mrmdbju4cntebg', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341103', '南谯区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s6eni17fbmh90rgi542gbv73ll', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350583', '南安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s6il0234c8h0npngm86mv33vku', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411722', '上蔡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s6jh4qelpsil3p26kt96s2gjtd', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360425', '永修县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s6nsaelrb6i2lov3j4p2q7m14m', 'obeq7331cuijjqrs6ir5huudtd', NULL, '0712', '420921', '孝昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s6rjlg0igoj35pn5ab0fnavlc4', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340822', '怀宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s70p9b25dohqso7fiotku6hkns', 'qopnqkjitqggfob4d7vlbasbrr', NULL, '0335', '130303', '山海关区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s71jg5g3ragsuprrik7gogoht6', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '兵团二二四团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s74u1b1sq0gqpqda83hp14p9kl', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540121', '林周县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s7879kineeg7krmnt1bno3en42', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610116', '长安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s7cko59ef6h3iqv8vu5v6fivc0', '7qu8o19jaeghupfbeaknks9c8j', NULL, '1719', '429021', '松柏镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s7eap791q4gc5r2o5ev8e2hosp', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140821', '临猗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s7o6sddcokiihoa59amldlb49g', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '虎门镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s7vlh8vjekilornv76a09lnmq6', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110106', '丰台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s848bnj2togcno7s8ka7u1to9r', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团七团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s8is4v9iocjj9qm2uc0tg0q5mb', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653128', '岳普湖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s8mgcn4cqkja4r0kgt508ltoeh', '1kf9b22j0kinsp0h69ibb20gn4', NULL, '0570', '330802', '柯城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s8urbre72ugm7ollcfnsjrpcat', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430525', '洞口县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s9cjh5j3rci90p8orihtaa6e1r', 'odfe2v16akileq13dls31adite', NULL, '0718', '422801', '恩施市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s9nvlr8ikqhs5q94ho5g67g290', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '1893', '469005', '文昌市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('s9vi7gvt0uj6sohep4ord95246', '2051oaiqo2hp2pt9pnt2org0jd', NULL, '0839', '510824', '苍溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sa20b6j67eg5mo83247su3c22a', 'rfn4tk49imhvbqf9lc980ovabd', NULL, '0510', '320206', '惠山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sa5b82as3sh4poacpv2hgjldi3', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513330', '德格县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sa5k0jgrl2ijgrc4mia0c4ks29', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '桥头镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('saan060lv4j4tph2t999mk2sod', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '横沥镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sagc08j3koj0iprfn5nfvh67mn', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430482', '常宁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sagcii1kpqhnnqb6bdmgp26m11', 'ojubqkbsvch66q0otd5vajml16', NULL, '0437', '220402', '龙山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sak1iaakgqi88phl94kdp96nnk', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130682', '定州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sb0i8gjrqqgr8qrn6setsga0jr', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310115', '浦东新区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sb8mch1mrujqhr50jtlbkl7qv7', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420104', '硚口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbam7lij0qhfioub65a7v4sglh', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140105', '小店区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbeu4st73ghlprohc7icbjlcjf', '22ukj7imhmjj1ral13vcda7fo3', NULL, '0562', '340705', '铜官区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbfluaha4kh3rq4ke6n83c9fc2', 'odfe2v16akileq13dls31adite', NULL, '0718', '422828', '鹤峰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbknm8spuugonri3sh329ngn4o', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511827', '宝兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbmbqeat9uhjcpiccke792gd11', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '北大镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbpce06rpmjvmr58g48heb1v5o', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '南头镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbuhssfpoqgirqm9erjpsjm7mc', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230208', '梅里斯达斡尔族区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbuv4ph038hblop8r1doifg68c', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513435', '甘洛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sbuv91rslag26ro303bdddgcaj', '2cadhtjda0g2bpcgbmbeviuli2', NULL, '0578', '331121', '青田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sc4slvqhkuhqbruut7cjfjku9f', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350428', '将乐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('scjvk66348hg2ponv2q11hvcl5', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '张沟镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('scl0rrreh2gihq8qp6qjob92cd', 't8fhi5nj6ahr2qll2e8cqg081v', NULL, '0543', '371621', '惠民县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('scs445b5ccjoqokjluom4ifg80', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230231', '拜泉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sct1dra3bihdrp0d9n35phiai8', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361123', '玉山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('scve24uc28jq9q8fhc8hac78hs', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0512', '320500', '苏州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sd09tv3djkhfdocpo3q4c06s06', 'tj70a6cm7giiopralk6q924g3a', NULL, '0470', '150700', '呼伦贝尔市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sd1fqq6qr2i1lodrvi86tiio3s', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370126', '商河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sd3djerlogibtqpms6rd7uhjbc', 'pop6evjn9gjk0pf4c9oaf7p8jl', NULL, '0478', '150825', '乌拉特后旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sd3qlhn2qagoboa9p2s8c70hj2', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421124', '英山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sd47aqk0tmhk8p8lcu0ki57404', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371724', '巨野县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sd76fku2dkic6rjmt66momagqp', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140931', '保德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sd9hmd0slci4prq89prmre3hnn', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350102', '鼓楼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sdh6gtj3oii40o8vi1vpf6rl2q', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350725', '政和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sdjc9a38ssjvpq9de31aluf81m', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130821', '承德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sdrsn6avuki2kriv0lochcpihp', 'vp7s5rgl42grbpsmr2s27bg3kh', NULL, '0827', '511902', '巴州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sdup5nrjt0h35rch1n44jsn4ni', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130207', '丰南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('se171qdqucjhuo1m7sbfvoa4fi', 'tcp6tkb5q6jd1re0qtde5sms1a', NULL, '0818', '511722', '宣汉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('se3igkjbfegmpr92bjt567obbu', '44efdabmnsileov2jhf8f6j45s', NULL, '0396', '411723', '平舆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('se49tcdaeaj60r92bh3r41p98j', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513332', '石渠县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('seed2ssbpkj2io3p6irtbsn1id', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430524', '隆回县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('selkfh5vgigq3qhshrf0s7krg2', 'u3onkv6qe2jc4ob7f89047dtnm', NULL, '0395', '411121', '舞阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('serjokq7jqhnhrl9ftalitnpad', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150581', '霍林郭勒市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('seuvqjj1bag9drrce74s5i9hgp', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370781', '青州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sf11tfbb6sihfo78r11tcc9fpp', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522635', '麻江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sf2jmbt054jpcodajusbq7s633', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '大路镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sf2k009jggiapqn34p3cerd864', '1t232jo5pch34prqa4899hji2e', NULL, '0775', '450903', '福绵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sf5ui3ptucinqo5ch81m1276f3', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330206', '北仑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sf61dkkukqhiuo8tlkq09tlcag', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市坡头镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sf69criep6hl1okqjfu9uk2qph', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市下冶镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sfk064m26ggqarfhm94s1df1sk', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654025', '新源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sfm1jmda5kif5q2cmoj2sv55p6', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513328', '甘孜县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sg0t9d8cqqj6grp6j0duqrp750', '66bmbfmu26gh9ptr5d7dlpl58c', NULL, '0418', '210904', '太平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sg9oppv4fairvrjqg7v9fgekkm', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621223', '宕昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sgiqnfj540iaqpnog7s3qihlfj', '1is48410g2iunpbt9fdsp4sh81', NULL, '0553', '340202', '镜湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sgn64flh16hn4rnctua1org4t7', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140431', '沁源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sh0scp7160hisr941jv0np1ksg', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130105', '新华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sh3g51ogs6ia2qun8m9bfcet4t', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511181', '峨眉山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sh3qp33g30it2p4o9qil4blc7m', '093fu97mtmionr2l92b9536hod', NULL, '0394', '411627', '太康县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sh506hrck8gaio6d676m62tpts', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310110', '杨浦区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('shc3fh151oje0phuaqshgfndhb', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '210000', '辽宁省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('shcojujhb2idfrj83oc3klrq60', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623023', '舟曲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('shh39pp5bmgbao7pnaa324dijm', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '仁兴镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('shhnbfqduoi43ol67mf7f94a3o', '22gukrmo7mhero5r7fhjqnahiu', NULL, '0762', '441622', '龙川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sho9honp14ikipiq8er4qcne8b', '4c470m8mi4hj9poerdko8hultd', NULL, '0555', '340503', '花山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('shtv9qavd4jccqi491rp9ktlgl', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141029', '乡宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('shvg5je9imitaqh8tbjbqt9aoq', 'pd43976vcgi4fqbihmbdvhcd82', NULL, '0894', '540423', '墨脱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('si78h9nj9ij9np6vme5tel432s', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622901', '临夏市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sii44a4k48hf2qb49vhmnfv2d8', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621221', '成县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sikh0o2k9ch54p6b0u6h8u448e', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310105', '长宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('silmjcgsc8gk1ou6eelqfo2d1o', '4vn6hgsekehjhpq3mlturrsul1', NULL, '0825', '510904', '安居区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sinjs60miigheqsojl8kpd34j3', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '大成镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sis3tqibq4iq9rffrnsuicmt3j', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230129', '延寿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sj09821hnug0mralae4svhl72q', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420583', '枝江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sjqtp56ls8jd6pvfkbtavfo1fs', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0534', '371400', '德州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sjsgr1p20kj71q5i07qv8q6vj1', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330723', '武义县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sjujhjrugmg3mpa4dlp2q9pq29', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540625', '申扎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sk0jj1t5b8i85pj08a9quoafvk', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370305', '临淄区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sk14v6op38g23pp5vl5e21cmtc', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230506', '宝山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sk29mfc6gchmiqbfm0eq5nr824', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130123', '正定县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sk29rm8gfoih9rr5l6tn742039', '27snrp1n9aj30p6nf2sfcc8j24', NULL, '0938', '620522', '秦安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sk75vs35skii9pom445ednouar', '5ijfthkv36gfcr3g07s6umq73v', NULL, '0830', '510522', '合江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sk9jh2b7q6hcar6ud2mu7r04gg', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513323', '丹巴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('skfggq2iuugfppnel44n6ffhj6', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '牙叉镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('skl0nl2ds0gm4rnr5d9ipt21mh', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410327', '宜阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('skneq4ebuugmepoq4l91fo1ceq', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513226', '金川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('skp141cj4ihfop8h7m6mldeqci', 'qr9acj5eo8gt4ql8q6bs899sfs', NULL, '0906', '654321', '布尔津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sl1gm9tecgjuervvjdtqfsodbg', '73074v4qq0g5ars2cec58gpq94', NULL, '0554', '340400', '淮南市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sl49gt1782g1colba9kgl08tn5', '6nksjur2dgh10r8q1l884ls7go', NULL, '0716', '421002', '沙市区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sl4uti7tesjkpphc6agq2knjhr', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '金江镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sl4uvu4uuki7lq79ev950du6an', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140926', '静乐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sl6gjdhrj2jcio87naf73mqjdo', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140109', '万柏林区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('slenqe658qhgep9fj12jeuddtq', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230422', '绥滨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sllolnqlkegb7rtv9rsslfhsfa', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0826', '511600', '广安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sm15d8rjd8iihprb174l51cs8s', '3akbe5vmuajqcr216dasutqju3', NULL, '0888', '530700', '丽江市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sm4qi8g4n4h1urgi5tfnaa9ktn', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '荣邦乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('smcl575feohipok7mel26i8icb', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511129', '沐川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('smmbj7aq54g13q7h1v98j7f2n0', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130623', '涞水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('smqh5c1u5mhkirkusstrcalg3f', '7qlqlaae00iiqqidb7lrulifjk', NULL, '0427', '211122', '盘山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('smr52gh5okhd8of3mfhptr7uf5', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330104', '江干区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sncltaftpij0cr7pgvenskqigr', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220182', '榆树市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snes5lpb9eilno361hlg80sknt', '170ruicenkg07qtet8rkdu43ok', NULL, '0798', '360202', '昌江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snftgutqjojpcoag63g825vd4c', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130728', '怀安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snjqsa6c7ci62p0brv58dunj9k', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0769', '441900', '东莞市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snk870aml2imuq1c21up7lh8ei', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520328', '湄潭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snle59cbkej8dpegom5icmb9cu', '3akbe5vmuajqcr216dasutqju3', NULL, '0879', '530800', '普洱市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snotkl2tmsgt2p6brj2q94qbjm', '5be4mfvihcjhvrijhdsbqujlrd', NULL, '025', '320113', '栖霞区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snso92tqhcig9qscmjs7uld7d4', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0804', '469023', '澄迈县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('snstc4qou8jlbrtim0l11gje2h', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610424', '乾县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('so4984e3eoiohpo9f93b9bcik6', 'spcl2traagiofrum521umd4mei', NULL, '028', '510113', '青白江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('so647iocu8g72pcnk1abobcv19', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '望牛墩镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('so6dnctap4jtcp3fv3tvbcl8sg', '170ruicenkg07qtet8rkdu43ok', NULL, '0798', '360222', '浮梁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('so8qjp4ll8hbnpumf5fi8l9sv1', 'pma35v8v3aggbobuot73v69lpj', NULL, '029', '610100', '西安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('soiirc8liehukoljqdrtnh6vjs', 'p1l85pe6l8hmmqb72stmo07hk4', NULL, '0799', '360322', '上栗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('soitt9991gil9o2c89oiqi57bs', '0tch126f7ch9rohg07djo5bvas', NULL, '0744', '430821', '慈利县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sojiketj36jc5of0ij58a8j0lb', 'obeq7331cuijjqrs6ir5huudtd', NULL, '0712', '420982', '安陆市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('soqr56l2qkgj7ppt8rurrmq4do', '0567knr96sgddrc1plstq0ta7p', NULL, '0754', '440512', '濠江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sp2l4hs2d2hujo3b4f7lb7ua92', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360982', '樟树市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sp3jlj6fbsj0lri395rvb58qin', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440305', '南山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sp5d65ik0eh41pbujen01uo52n', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371327', '莒南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sp5noib65sibopbkrj9n1ne786', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530622', '巧家县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spas2dhftajhqqcqvh821erhcg', '1rlu5hkqqsgs5rbevb4ts9t2ra', NULL, '0996', '652829', '博湖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spcl2traagiofrum521umd4mei', '39a8hm29gmj9aonigro0dl6h7v', NULL, '028', '510100', '成都市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spjncqf804ilar856f8dnsuda3', 'p5t95f5nlugn7qekgc4q8dh166', NULL, '0372', '410526', '滑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spm99pde4uikoqc6tdkmi79upg', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141031', '隰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spncpak6oggvmo0cpo61oelb95', '3pl0iskkj6j2voi3qb1u15fnap', NULL, '0974', '632521', '共和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spo80n7vjgi9cr91vgr512s800', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532931', '剑川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sponat7okkig7on2i8jco0elv0', 'prkb4lm02ugakrv39cjkl86hn9', NULL, '0832', '512022', '乐至县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spr7tgstcag5uo3njf3lg4sua3', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650103', '沙依巴克区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('spr8oslpiii8tp5b9erc3jtsp9', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513434', '越西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sps8msfmc2gvjp6o6d0k42kq61', 'qr9acj5eo8gt4ql8q6bs899sfs', NULL, '0906', '654301', '阿勒泰市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sq6hf6jplojnjoc0qqtl1etq7q', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '铺前镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sq7iqoevb0jdorsaj5cvr9iqog', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210202', '中山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sqc3kusg10i6qpp21r7vs3flm1', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371526', '高唐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sqe5r8ji3ah89o076clh3epsnq', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530921', '凤庆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sqvms5gelgge4p2p4j5bpprbkb', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230502', '尖山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sr6r08lt1eh8boid55g219vrof', '33980i4d8qg5opdbrbl17k22t4', NULL, '0975', '632622', '班玛县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('srcgj9dofihb4r9498uqbbfieq', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '东坑镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sricv273u0inmpgqcvtukbbjkl', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '南口街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('srifnuc150hn0q5q3agv57o6tu', 'spcl2traagiofrum521umd4mei', NULL, '028', '510185', '简阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('srjeq559t2isqrmp7smqpp1919', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '蒋湖农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('srnkeeffdkildqtd63kerd32c4', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0732', '430300', '湘潭市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('srobjgkpq6ja7r0gmkhrg5bt4d', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420107', '青山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('srrh303mscitmpt4j23oedhqcf', 's0lr6tduqaimerh4v7krl8njqq', NULL, '0519', '320402', '天宁区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('srvnerqt76gkrpa49bhcqqsb9n', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431123', '双牌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ss12cth634hfnpgsvevto6gqnv', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '多宝镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssb7ro9qd8iaqr71dul3j0b9kt', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '三家镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssbev32d8egtqp1qobe6rjmfj9', '0567knr96sgddrc1plstq0ta7p', NULL, '0754', '440523', '南澳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssbn19ld8oi9qo61q5m9v89drj', '73074v4qq0g5ars2cec58gpq94', NULL, '0557', '341300', '宿州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssff1f5ebaiknpt771cpnp5532', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623021', '临潭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssk40srd02hdepepunjdntjts1', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230227', '富裕县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssksv8lis0goeoc29c5lhtij52', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450226', '三江侗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssl377i2t6gcmr6unjt94i9mdj', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610822', '府谷县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sslm3djlamhulrc0pvqiq69om7', '37b0hedboij6oqvvdta8sn472d', NULL, '0859', '522327', '册亨县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssn2qiuajsivap8it3vvko42kj', '45ogdkgc98jq5o65jot3248c3v', NULL, '0911', '610622', '延川县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssp6481ijqhp3osugppkt20htq', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520302', '红花岗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sspp9i0immgs6rm2q3em55nb8a', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '大安镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ssq6tfde68jiireg0b9uhfm2qs', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510723', '盐亭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sstfo6aa40hq6rnmld8ri5ge7c', '713abj07d6jguq4ruatgsjhp2h', NULL, '0919', '610202', '王益区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('st1n1tacgui12pulddp16022qr', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110117', '平谷区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('st43r6p0huhk7p68f68failoqt', 'pnef2s2l9mjk6o21rulsnohmvp', NULL, '0812', '510402', '东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('st6jft10gqivnrp4kejbac1duj', '0mgs502mnagtfovkbdhlcr9s40', NULL, '0759', '440803', '霞山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('star635mr6hagrcbl90d4ptdii', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360826', '泰和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('stefo1g3fuivrrkg07mdjls996', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430408', '蒸湘区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('stg9jallrqh31qlko8q0jkuj31', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130104', '桥西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('stkf2gj186g1mo1fe0r2pgar5l', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '450000', '广西壮族自治区', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('su0k8a6nsihjpoc8brm8r7vq8c', '1kuq9kes1cjp2q7qeajn3o4eu6', NULL, '0898', '460108', '美兰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('subm10plesj4togd35ra7dk3c7', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341225', '阜南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('suiiutk16gjakr0hpmobjs1o28', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '元门乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sumv04mb62glapmrfsj8rocisq', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市沁园街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('suo48v2uvcgujo3got1as6hlcj', '3dtgolo3qmgjvpvprumtbedvq6', NULL, '0353', '140311', '郊区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('suu49h9anuj72ohmsno9dricdl', '6e82gct01ejj5og0rvu4t46acr', NULL, '0893', '540502', '乃东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sv2ne0abrsjcsqftu3hl5jffge', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '三角镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('sv8v2u05aahogop58e58rgtqai', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450205', '柳北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('svi1ohsapch28rfhvv2p24r636', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361003', '东乡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('svon8c2te2jsfp5et96k3mdo59', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340122', '肥东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t0015jqiikhsiro2fq870qhcf3', '33980i4d8qg5opdbrbl17k22t4', NULL, '0975', '632624', '达日县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t00dgqbjuui56r1qg38p7ggkh9', 'v4anukafm4igoq1g5b919fm89p', NULL, '0467', '230307', '麻山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t01a2arrisinvrn8f26rm3ckn9', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360802', '吉州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t01tbk0s2ego6rcvhp7q2s8lus', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '国营长征农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t0393evdbci4jp06ph720ogrm3', 'ph5b69fq9aioeolk65ov8ahe88', NULL, '0523', '321202', '海陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t05o3i1iokhorp2kk2190i899k', '0vt189j90mhv5pr2nfhjkiia3k', NULL, '0714', '420204', '下陆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t0ar35gjhsj49o9or1e0l2rl8a', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370831', '泗水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t0gbj7svmmj09odcf82fj1apqb', '3l0uf7h9nah2frg2h1udh9eaea', NULL, '0435', '220582', '集安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t0m8pgb1luil9potmvmjqsrtci', '1oasf8gj84go5putr9ukpa7dfh', NULL, '0909', '652722', '精河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t0mqurmobchdjo2r14ncjj0mcg', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '520000', '贵州省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t0qp0ccd1kjj5p2mi9h20bg56s', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130121', '井陉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t15k9g71fejcmqu2f5rkusnl78', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610402', '秦都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t16bn6i220ggaq0queo6rrk74r', '155qrtip2qj99qg686a2en0psl', NULL, '0318', '131100', '衡水市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1gcn2gnhch64odl0rtg942q1o', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '博厚镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1hf3eichki20p8ok3bh3571g8', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230110', '香坊区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1i43608nch9bobk406jr1q1k3', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '国营中瑞农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1llh0a52iju1rfa59hhs66aps', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420607', '襄州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1poo5ohlkgqcrg334be6usr4t', 'tj70a6cm7giiopralk6q924g3a', NULL, '0473', '150300', '乌海市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1pp0ji574gj7pq85focmuo82r', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371726', '鄄城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1r2e2j90oijvpo4ehd9aa8iuq', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513432', '喜德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1skqsedgoj9so5ssv2eg6gqcr', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360825', '永丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t1svlvplfqih5prh1mosnigiq1', '04lk5t0f8mju5r30i2um8bgrb2', NULL, '0897', '542500', '阿里地区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t25q26v7vkiq0q2sjr1i9je8ac', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140822', '万荣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t26pk33phsjqspmui59b24fd12', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130524', '柏乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t29rlkabdgjsqqclpsgrc1o7n2', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450125', '上林县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t2acbfjnk6h2lok81eto0fb0a1', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540122', '当雄县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t2fkumjjl6guqo1hah9r2gq6mr', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610327', '陇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t2fpa2l4lsikcog72bhkd5mhjr', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '打安镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t2jcm10gcggcbob2fq2o0ssmgt', '56uk05tidmgj9q37nr02ps4ste', NULL, '0763', '441803', '清新区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t2oeabb0b2g6jomro89o6119rl', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '侨乡街道开发区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t2pm79ogc8ihcqrhqg786k989o', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '大茂镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t2ulp1k1lehhfoe87lgd17jr60', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '企石镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t3bfkpp1dsj0cpr52kdtsdsmes', 'pnef2s2l9mjk6o21rulsnohmvp', NULL, '0812', '510403', '西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t3i3jj4066gniomc1nimc5a67r', '4h85ig3mruhk8plgdokttalo7h', NULL, '0456', '231100', '黑河市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t3s8nqoudujgcodi4kahiicqol', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110112', '通州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t3sp6s6ikggcrojpvsrp1abisr', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '国营莺歌海盐场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t493u1vje2ijdqdoska58me2n0', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410306', '吉利区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t49j5m0nvsjcarjbnsp8ch1a3o', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '文教镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t4cct6vqdeh5krs9kqsg705bkj', '79oovrf16uhbgrv90egcetoict', NULL, '0452', '230225', '甘南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t4ernsin10g9long3lc2i96tus', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420506', '夷陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t4k1idqolmgb3rc3fhgvnb5s0k', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130624', '阜平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t4l6it7ugogigr8mqgnv8uadih', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430624', '湘阴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t4ldtr85j2h6dotgq1hmuor7bk', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130110', '鹿泉区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t4pi8ao856hjjo215tnsunp2ka', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420115', '江夏区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t52papie8ehbapdsfagsspl4k2', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131102', '桃城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t596e6a7voipvq9o56ml5igrcu', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130430', '邱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t5a9dcktasg37paum36a20bc05', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610830', '清涧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t5ap86483ehsvp7b5nm7mdjn8a', '4u3v24knm2i0hq3rfss8a7v6kh', NULL, '0953', '640323', '盐池县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t5gbc2u91kh83r386c0o9vudse', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230112', '阿城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t5i1lk27ikgojpqfoql2ksl2a1', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370682', '莱阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t5m082tujcgfeo3viqgaqvpkk5', '64cikv9jdehmbr7q7ptf584o2m', NULL, '0952', '640205', '惠农区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t5rjrt8r36ggera9n9shhqo00r', '488ldusspkgm4opgolg1s39t80', NULL, '0970', '632221', '门源回族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t5rq7tpmsaihnrva43vnqttu6t', '37mr9n7p10gf0otrgdqkl3mfdh', NULL, '0419', '211004', '宏伟区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t60b36tobmhreoebaqefu93d0e', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230407', '兴山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6ak4bgshqjmao52tfpmkdf45h', '4u3v24knm2i0hq3rfss8a7v6kh', NULL, '0953', '640381', '青铜峡市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6apppjjcqg8co952tap6dugu8', '3l0uf7h9nah2frg2h1udh9eaea', NULL, '0435', '220502', '东昌区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6bfub66i0hhuroi9hklv0opcv', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0801', '469029', '保亭黎族苗族自治县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6bvi0q670gispqcq6uu6cnvet', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451024', '德保县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6lrbtr53ogrrrdvjhie8s24rf', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '南宝镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6o3qk8b0mj9mq9f445ef8p4up', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330111', '富阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6olpgvloshmpq7bfvlskb0gd1', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530626', '绥江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t6ts7rgoi8gapp256goa0olvun', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0995', '650400', '吐鲁番市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t74nckisc2hderfe2i7vbv961t', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360430', '彭泽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t764m133iuj8fqnu09eotcth6h', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431021', '桂阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t78s46616qhsrp9bt5hsshasvg', 'uorlht44bqg67pd9fun4f05pub', NULL, '0722', '421321', '随县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t7ba2fljheh3nq3n6niqfsm644', 'p9uptib1nki2hrjanf1sdk0qoh', NULL, '1832', '511083', '隆昌市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t7e7m1u4vmji4q5vmk26993gnn', 's18hnm2dhmhbqr9pfapopra4jh', NULL, '0464', '230921', '勃利县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t87k61otgmij1o5mvlkcd3f0qh', '4uqac50t6gh9nogglajv545qq2', NULL, '0973', '632321', '同仁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t8esc5rs98i7hr6ma9r69uubl3', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361129', '万年县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t8fhi5nj6ahr2qll2e8cqg081v', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0543', '371600', '滨州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t8tan6fj7gg5tq1fj64j7tmsml', 'v6hs705f1airgo4uf95jmuot7e', NULL, '0579', '330781', '兰溪市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t8ulgphm80hb0o1mhe8lvkifk8', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810014', '大埔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t90tpeqvg6isvot6tf7ln3a7hv', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331004', '路桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t939mkpnlaicjq2r0t62nc5vet', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231281', '安达市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t93et4kmlkh5sqhpg0iqonnvja', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0853', '520400', '安顺市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t9bomao584jd7rg16fchsk4dqt', 'spcl2traagiofrum521umd4mei', NULL, '028', '510181', '都江堰市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t9k4jonk4uimlqtl8egsc723s8', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450302', '秀峰区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t9l98ta9cmilkp97j82ib64l7u', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610923', '宁陕县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t9o41h275aibsoveu803gsgb8e', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530403', '江川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t9r0c8b4ngg7rq58rc9ccvm6qk', 'uohubcnoomif5rjjauv0lt8bem', NULL, '0999', '654003', '奎屯市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('t9vmvpevduh15oa83helpcgd12', 'so8qjp4ll8hbnpumf5fi8l9sv1', NULL, '029', '610124', '周至县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ta0lskf4mgi3lpfm56ib8th7jh', '73074v4qq0g5ars2cec58gpq94', NULL, '0551', '340100', '合肥市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ta0pet3e24g17r2u8j3mrpdoes', '3skua48vd8gn2oqf0v8cf7j3cc', NULL, '0375', '410422', '叶县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ta4v27nfcih5eqt3detoqu1ptu', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '320000', '江苏省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tab845vhkgg52ppsqt47j5icio', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131025', '大城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('taobb30d88ghtoe9u69ig75gl8', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220106', '绿园区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('taq9ef5a4ujs5ptbnjutej81qa', 'v322g4tjqsifgosda4e76glpkd', NULL, '0482', '152221', '科尔沁右翼前旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tar4o2f2uuiahqei970v2ofvl2', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653226', '于田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tb2v6daqa8jptpp966frfmfqur', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370785', '高密市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tbh235s4vci84rpn9p2n2cql82', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513224', '松潘县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tbqmge1ducgg4qnuoal448moqt', '31hnmsr4hajg0qbp3dvnjhiem0', NULL, '0901', '654202', '乌苏市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tbqp68fk5ahf6r5in905ad2pdp', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350783', '建瓯市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tbv1607ijsg5do9evtkem6ea3q', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370281', '胶州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tc00obhnrqjmgr40m4kv90o8ua', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '拖市镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tc1ia8dfjigt3qv6u3qmopeket', '019318277qj7brf0jmovihfr4o', NULL, '0917', '610303', '金台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tc7poc75vag3boqftdife7d74b', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440304', '福田区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tc9plrlir0ir8pe0ogkpi8orbl', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610723', '洋县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tceuo2kb98jnkocrkl2l3j23c1', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330329', '泰顺县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tcidh7pk8chkdqnnacatoq9h2n', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '1896', '469024', '临高县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tcmo9pel78ht4rgste5rg3634t', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520322', '桐梓县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tcp6tkb5q6jd1re0qtde5sms1a', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0818', '511700', '达州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tcrotso6b8ibirsiaiak3a9h73', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420502', '西陵区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tcuptra154gk9o7d2a810tv6p0', 'q28oanuijgiu0re5t895oj1gn8', NULL, '1433', '222403', '敦化市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tcurk59iregcsod54fugjg9ueq', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540624', '安多县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tcv4gfh4eqitgrmdsnj2ioo6u6', 'obeq7331cuijjqrs6ir5huudtd', NULL, '0712', '420922', '大悟县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('td0snb11dsi4op2kboifts57ms', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530428', '元江哈尼族彝族傣族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('td3acn09mehaordmqm17dfelu3', '1r7915e8g0jalrr5vst5cfuiol', NULL, '1774', '451121', '昭平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('td5c9sb7hmgpsrb2l8b30n375g', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0855', '522600', '黔东南苗族侗族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('td97jmcb2aimjqodblg1pmv61u', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团十团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tdbkinhnbqiniqrhigbk4dlfgd', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210211', '甘井子区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tde0f4vbcogofq80dud8ldgcvo', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '国营蓝洋农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tdeotvf0dghc1peqb6sa0nqnb0', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810012', '元朗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tdmum9ar3ehuursg00idcnejk8', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0731', '430100', '长沙市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tdo53db9feitfqe5tam9b44lcu', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410323', '新安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tdouu1oa3ui3oq0qglbqivo61s', 'rg448anb2mg3crps42shpne6ii', NULL, '0668', '440981', '高州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tecm3li93qgfko0su2b40kb7bo', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141023', '襄汾县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tehci62pvagq9o3ce65h0o3m75', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650121', '乌鲁木齐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('teidakoremj47onmeunebhioad', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '熊口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tekhc8avqagcqr5gea1svahmqa', 'ptfb0op404h51rtdprt5no0b8r', NULL, '0776', '451023', '平果县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('teo9i2prfsgitqal9m6rkme5nj', 'ssbn19ld8oi9qo61q5m9v89drj', NULL, '0557', '341323', '灵璧县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tevtbtmajui00qoaghhbilcdu6', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231081', '绥芬河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tf299lqg4qiptoauuob77hcj5r', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350112', '长乐区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tf62k0ejpuionrtmh7nb45c191', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330324', '永嘉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tfajtlseoaghbphdqmd5c06ci7', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440205', '曲江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tff2gl15jaj23onf0r5t146qmm', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520115', '观山湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tffpvjutm2id8pbopc72mqo6mv', 'v9p48soav6jlsqinehjjs57cks', NULL, '1994', '659004', '兵团一零三团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tfi4ian5feg6eo3fbort1dffqe', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820007', '路凼填海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tfmsgnd1tehm7on0ucvkgq0pd3', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230113', '双城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tfvk5ti1uuh8jp5efjgrl7lume', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520113', '白云区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tg3kqdcdgaj49r9tik2nqm2pjc', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370829', '嘉祥县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tg7v67ma88j9bqa60t07jjclvi', '73k659jq2ah6fppa6qe6rlojmd', NULL, '0692', '533123', '盈江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tg88usjdemhenr5mlm6flieq9n', '1bl3m8tuaqjc3qppim0r929dqf', NULL, '0715', '421222', '通城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tgl46aoo32g03orahj6jjdl199', 's5l7ic92icg5bo5seth1otnm59', NULL, '0857', '520523', '金沙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tgmjkjme1ugiqo1t8rl7mvevm7', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '南桥镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tgs4hdqqguhlbqkrobnjga2u1d', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411525', '固始县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('th03isg3oijflpk04e5il39k9b', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '中和镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('th7rt6on12hjoprhum3ui6hk3h', 'vojkigqia8gkop6rdt778vgntv', NULL, '0951', '640100', '银川市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('thb1nffh3ojfcq053c4kgdck1a', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141081', '侯马市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('thcc2u9mk2g20o5icr2fdvfbrj', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '东英镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('thfqkqdpdkgr3oaju8vh5t6tsq', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '西区街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('thk24v4e6chb1r0og2deb5gmi4', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522730', '龙里县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ti34vikjccimipsikc6utni3vk', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '椰林镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ti7qjuuvqeipfpea3o8ppi72ic', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610727', '略阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tia16h04nmidgoo172bhauhmq1', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '洪梅镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tib1ib3tj8gkkps7co4lmfbest', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市北海街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tilugkfebki0roqkmj2un45alb', '4vn6hgsekehjhpq3mlturrsul1', NULL, '0825', '510921', '蓬溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tiohlhc0g0iu6p3nioh3t2jhes', 'qg30hq4674irdpio29q24ajnfo', NULL, '0373', '410728', '长垣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tit53qp5p4jobq1fdlaiqmbdfl', 'r8kfk45og6gjcp9c2gnsrfp22e', NULL, '0691', '532823', '勐腊县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tj1bsa6ma2j5fo22s14r59uaac', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '330000', '浙江省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tj2j99enogj4srgmssphqk1sdg', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532528', '元阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tj70a6cm7giiopralk6q924g3a', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '150000', '内蒙古自治区', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tj94a10da6h39oqi0nbefpesf2', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '横栏镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tj97ojpnjqgunrrsvvg1ntv1hh', 't8fhi5nj6ahr2qll2e8cqg081v', NULL, '0543', '371681', '邹平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tj9v2p590kjtno269i6nct2d0f', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0391', '410800', '焦作市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tja0nqrkcoiuiobp4vq222r6jv', 'ssbn19ld8oi9qo61q5m9v89drj', NULL, '0557', '341324', '泗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tjb6s2ohiojsbpefu0auemgf8a', 'sl1gm9tecgjuervvjdtqfsodbg', NULL, '0554', '340405', '八公山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tjmolopbsci3vrnakgit3hccjp', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230713', '带岭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tjps98jq9ajotp82f3facbrhbt', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '岳口镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tjqibn0c18g5oqa1psvlmn8u9s', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371328', '蒙阴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tjr2gima42i6apdpn3pomrnmhm', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370681', '龙口市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tk29hq1j6sgffqbg5qfrckjcah', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622923', '永靖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tk2tm69nkegoepd5gnmplkrrsv', '7mi7t9c2gojcur0an0g8le8svu', NULL, '0573', '330411', '秀洲区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tk5apvuo80ja4rdsee8kkpe4v7', '5ijfthkv36gfcr3g07s6umq73v', NULL, '0830', '510502', '江阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tkitd3go2ggrppqshjklq9b8mo', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140727', '祁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tkr7t49ovgg8npt1u6d8nulfh3', 'rfn4tk49imhvbqf9lc980ovabd', NULL, '0510', '320281', '江阴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tkvksfhgl8ji5psijpn5ifbid9', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '排浦镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tlbsqkntikiqarncou1ncpu5n3', 'r8kfk45og6gjcp9c2gnsrfp22e', NULL, '0691', '532801', '景洪市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tlcjvrrbocikqrir5d1r3vra07', '6vk98tiersiibq2sg2fnfpckn3', NULL, '0933', '620802', '崆峒区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tlgm063qboi08r2gsn7s0vgph1', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '1899', '469030', '琼中黎族苗族自治县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tlqsj5d6ogha6qv0a2v3vomsgg', 't0mqurmobchdjo2r14ncjj0mcg', NULL, '0858', '520200', '六盘水市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tlr3jacfd4i9kpn875cjt7lf2p', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110102', '西城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tm0bj3mcqmikpp3nh2df38ck28', '37kv5n6ujchicoo3qt8420o5p4', NULL, '0771', '450127', '横县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tm0fp7cjssi33qf6fi1ft60ohb', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '兵团五十三团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tm7ff368rih9frftofs1rvuroh', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360728', '定南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tm8p4vlku8jnhoj61rnakvelo0', 'tj70a6cm7giiopralk6q924g3a', NULL, '0477', '150600', '鄂尔多斯市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tmaoan6h9igbrqm5mnc78cce3e', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532628', '富宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tmg915399miskqcfpdpopri7e4', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430412', '南岳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tmvvqs7edcitup6u8ibhc5hfuq', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653227', '民丰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tn7p1973i6j9drni3nkl0rs342', '2o1puaat4aiqmru0e4rrehn4di', NULL, '1998', '659003', '兵团五十一团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tn98984cfujhqqr2khqd5o91ph', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230722', '嘉荫县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tn9cudjucuhpmqe14suktvm82c', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610404', '渭城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tnjcoq6q06gavornpaeco5o5h9', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230603', '龙凤区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tnk02tfdj8ij4phk32hhgdr6kk', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530113', '东川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tnotu917v4iojo2esidl11v6ed', '3akbe5vmuajqcr216dasutqju3', NULL, '0887', '533400', '迪庆藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('to39mvhh7ogg2q2243ocj3jpn7', 'scve24uc28jq9q8fhc8hac78hs', NULL, '0512', '320507', '相城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('todp2763l8ijhrr7ncb6cpq6r9', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420684', '宜城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('toifjb4qhmit9paotcovateugo', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231086', '东宁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('topngnksukj8foilnis183bhik', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360822', '吉水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('toq9vdftduhpprcf8robdpmcul', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320924', '射阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tp35l67ad4jajo7jvb19lhhr2j', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370883', '邹城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tp8l9hqej4gmiq2hmgurhmhaae', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150783', '扎兰屯市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tpdnge5hamh09qmrstoi7ldvj4', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530924', '镇康县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tpgjfmg5togkcp7u8kkolinhhb', '0sh732c7saglcqaktuna9frole', NULL, '023', '500107', '九龙坡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tptcd74rksh1sqeslnc8tr9dp5', 'ul67q7c7fsjhrq25s0lg9j9t26', NULL, '0563', '341822', '广德县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tpvj776qcajrcooqvi7hhu7c1b', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310117', '松江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tq12utj3mghqbrk06podukuafk', '42ktkqnbeshqtobfaj036hf0bs', NULL, '1772', '451324', '金秀瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tq1db93btujr9o7l3p0c68k9p4', '7vqt2g69gkikprj7j5sl14cb0f', NULL, '1903', '659009', '博斯坦乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tq2d2gbhbij5pququ7hdd4ej67', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513436', '美姑县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tq2qhle2t6ht9pq4l8q64bsar4', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410882', '沁阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tqafc402qghvvpdvhke6vpnpvl', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210204', '沙河口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tqhsh568cgju0rum16js3g0je2', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431003', '苏仙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tqk1kaqubmg1io4jmas8slqa3r', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140213', '平城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tqute93am0jopqo009uclk6e85', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371324', '兰陵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tr2n7u5ggagacouh1t5hh5s9t5', 'sl1gm9tecgjuervvjdtqfsodbg', NULL, '0554', '340404', '谢家集区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tr3cmgr7n4gd4rmme9h1ahe4ea', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360731', '于都县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tr6nuccmn0hikpdvi5vtkmu0hv', 's18hnm2dhmhbqr9pfapopra4jh', NULL, '0464', '230902', '新兴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tr9reouor0h6loi3nvgsqt4mss', '0sdp7nv87uh54q41apsqi25pte', NULL, '0796', '360800', '吉安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tre8im2qs8hu8qudsqe7gp51mo', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440308', '盐田区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('trf5dm4o1ehmappmnr9lln54sp', '1bl3m8tuaqjc3qppim0r929dqf', NULL, '0715', '421281', '赤壁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('trhctuqokoiisrgk64kuvlneeu', '73074v4qq0g5ars2cec58gpq94', NULL, '0561', '340600', '淮北市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tro9u4f2vegqcqmq97edg6nl4u', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231224', '庆安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('trp1qv6126intr6b4j2op4hqa9', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540323', '类乌齐县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('trpaoi5o1gj2mr1ebtgb0lq8b1', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820008', '圣方济各堂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('trt3cnkej8j9jqreaks6ie7qu7', '2pvlblpk46ipfopu50but86mn0', NULL, '0997', '652901', '阿克苏市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('truhse4f0kjk0og5nmajgkr328', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '老城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ts0jvrmuugh87osprt1ppqk7ae', '13h7lc6caiikurqenucvacm6hl', NULL, '0793', '361126', '弋阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ts3n70p6cehtpqn7n5mpvqsda0', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532531', '绿春县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ts60ivc7fogc6q4jfqkdbjpgmn', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430581', '武冈市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tsj1v4ed52ib7q6klrjeps67cl', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230623', '林甸县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tsn00b94c4jquqnti3hqb649uv', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410825', '温县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tsnbcdl5c4jv5p16i8oso24hob', '549r7io1kqjesqnpdissolpqag', NULL, '0571', '330105', '拱墅区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tspgk62gd6i8rophlp9u998r0r', 'uuv8fjp592idaok8uh3vkbahon', NULL, '0813', '510304', '大安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tt119mm4rciihqqnked947ikns', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420106', '武昌区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tt1d1ols3gindrjq2a87i8qmoq', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0734', '430400', '衡阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tt25348hliiuooclk773o397tq', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350429', '泰宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tt2b5bujeaikco4is3lgab5pnc', 'v5uqtd9116h7to3gunfm82b7sg', NULL, '0393', '410902', '华龙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tt3lp6v9pkgifp83r4tfc2vi1c', 'p47mt63pg2hempalq3mqvr7rsi', NULL, '0412', '210303', '铁西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tt80ug6ijgimrp7lnka73k0hpp', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130183', '晋州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tta09l9f3ahrlp3j86f11o0aos', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '郭河镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ttbamag8tcgmvq801ml786invu', '0v5ujsavqqifnrdivn9jooj7up', NULL, '0432', '220282', '桦甸市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tte97hpn92ilhqf9f0irquslad', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120118', '静海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tth0uleq2ug1bof9kqsuqvgbdl', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520602', '碧江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tthojee82sjv3pal1pa03oqpcj', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410803', '中站区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tti7peookii7hrltombi9mejlc', '4obn2cjfl8jvgrg98ugd10a87j', NULL, '0990', '650202', '独山子区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ttk68l8q32jn3o78s8ds11fue2', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610482', '彬州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ttmehpud8chv1p2o4j445uuqvn', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451202', '金城江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ttoi37drbeglcopvsoi5h05t57', '4rb1a283l2ht9r37qbp67ot2cf', NULL, '0511', '321102', '京口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ttrfngqcagjlrruiq3uvtd6e9u', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0738', '431300', '娄底市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tu1goecs7ugnnqidurgeh43k0f', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152501', '二连浩特市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tu3gb4avr8is3r6f6t6j31ujaa', '2m8o56kpboi95php7scrtplfqj', NULL, '0518', '320706', '海州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tu6djml59oipsqrshpgti1nit2', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '1892', '469022', '屯昌县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tudf18d9m2hv8oa6kd07oetets', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341226', '颍上县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tui5nesahgjtjrcjmtlj772mfa', 'ttrfngqcagjlrruiq3uvtd6e9u', NULL, '0738', '431382', '涟源市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tulvs5g2dagouq5pe49a80rpp1', 'pap05ht94mhc2ppr8m66v2ibpe', NULL, '0886', '533325', '兰坪白族普米族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tv690l0n50gqkp1ofhm4o3j24a', '4p1v94glhsjg3qtelde403lvrp', NULL, '0755', '440306', '宝安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tv74f7p36egg5rhbj8o4m7jpqp', 'psgs4pc042hs4po95mfqi42u3u', NULL, '0760', '442000', '南区街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tvd944gea8j8hoe4pluibhv72o', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150785', '根河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tveuuoe8qci06opao2go9st6ac', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '细水乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tvgdh36vgmh2bqffbjc64pjtlr', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0935', '620300', '金昌市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tvn5bd2maeg5fpf41tbpgpk1s9', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411422', '睢县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('tvosd2lr20hafr27nft6430vjt', 'pgnna5u1lih41rhidf5itjtnj1', NULL, '0713', '421121', '团风县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u0cbhe5vfujquqrhuntpg43qu2', '0sh732c7saglcqaktuna9frole', NULL, '023', '500119', '南川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u0g6rqleo6h74ru4lbqk0clh2o', '2s1inl7cqahsvo7gfnd9mapgnm', NULL, '0816', '510705', '安州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u0gbk2pjegiloos6mfksm3muk9', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410305', '涧西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u140r9j8dog5epem22tq74fhit', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团十二团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u1gimm6vc8j9lqe5j1igeqjm4t', 'uo2dukpvluh0uoimsanur95la4', NULL, '0954', '640422', '西吉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u1ie8k0a3ah4sq7e5uoaq6ru7i', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540123', '尼木县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u1if0hvq8qgh5odl6k0c1ocpo0', '37lkb4uoschrorvo11dt8af060', NULL, '0977', '632821', '乌兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u1kb2oi91sjquoqu1cgteahbrr', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310120', '奉贤区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u1m5n8uo1egpeoul0ldd3c7r82', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140882', '河津市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u1p3iem00qioep72fcit3nch5p', 'ph5b69fq9aioeolk65ov8ahe88', NULL, '0523', '321283', '泰兴市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u1q5vs102mi2rp1oal8piqcvlr', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '清溪镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u218p3hhfgg49pb0pn5685mltd', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '沙湖原种场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u22kljtmcugkipgip06o125kvm', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '海头镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u22uh9fqlkgjlputq3kkg07jog', '1bsrhdrsqmgldpn0bg2t69k2i6', NULL, '0576', '331022', '三门县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u22vhq9a64h82o2n248ov4hpef', '4i06k43j3ihklphppn59iguu1f', NULL, '0598', '350423', '清流县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u24qep0o7ggp3q5obvinkmq461', 'pjchqtdqqujc2o5jfh4ipr2h0h', NULL, '0871', '530124', '富民县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u29imoibfkgrcr46irqvhbej6i', 'ori0e2n3p6gtdobj4ld5ctom41', NULL, '0350', '140900', '忻州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3bi5aqabki24rs50savjam7t7', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350181', '福清市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3e9p28v38j6hr5lhrtq9ln5d0', 'p8t68embkgif2qe26f9cl8hfa4', NULL, '0892', '540233', '亚东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3gno8o7j2hggpq83brbgij1du', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623024', '迭部县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3h11k7akqhh6oor5qvepttagi', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360402', '濂溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3hgvdhpgchnrpvvn9ijtc0j20', '5ou59kv3aagbsqke66cm5vtgc7', NULL, '1852', '810015', '西贡区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3jd471tt0ic9ovh3055h1m63p', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '北泉镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3m6ctrb64gl7qbna75n7brjbu', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520628', '松桃苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u3onkv6qe2jc4ob7f89047dtnm', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0395', '411100', '漯河市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u495pgh88ihooo9a4hjlij1qbu', '3qp36ovbuqjiooqejasa6rokof', NULL, '0358', '141127', '岚县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u4e18g1v7aio1o932gq4k6teck', 'r41bu743hcjn1r6cp0bl8oakee', NULL, '0773', '450328', '龙胜各族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u4qcm9cs3ugqarqvpe1nrddmn1', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '樟木头镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u4u348d6a8gbmrbkgjurrsl4dm', 'spcl2traagiofrum521umd4mei', NULL, '028', '510106', '金牛区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u53lc4tlqig0joi1977cqdgnks', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610730', '佛坪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u54c85o430jcoop1t4bbslmsh1', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130532', '平乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u553rlg67mgf9rh20f893nr9j2', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '长丰镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u58l7kukekgg0rje77ln6m3c6d', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '高场街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u5b0gv0dagi5dqs62pug5rgkal', '6glm6o6ij2jk2obhp5a7117jvd', NULL, '0574', '330282', '慈溪市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u5g0dqtknogkbo5u5r0fatdic9', 'vv57m8lddaiq0o5purq40rkoks', NULL, '0438', '220700', '松原市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u5hinh5aosgt0odsa7dfb7a7hr', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '雷鸣镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u5lucp8gd2g7co9qq6juvic7mb', 'ttrfngqcagjlrruiq3uvtd6e9u', NULL, '0738', '431302', '娄星区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u5nfqu2t04gorp5h5le3oralke', '6blulgs0rghsrqkvsf825smma3', NULL, '0313', '130732', '赤城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u5tomnfcuuhg0rnsgcasqjnl2b', 'rcubevmr02hmdovd86umi7tn49', NULL, '0710', '420606', '樊城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u617gtorqmjthr81pvv4g4n46h', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520123', '修文县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u6202jrpr6i7cpcv6tuq4163eq', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653127', '麦盖提县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u6293f0u30j0ap0sonhi4g4v2j', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450224', '融安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u62ts3mm6ci7bqvvolh4omrhm6', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130828', '围场满族蒙古族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u685pee2vuj94ruecihkrks3mn', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '国营红华农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u6b7gei7v8gc4orgnkil5i0vho', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520327', '凤冈县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u6nlcdos78ge6r5ie965oga1mt', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0591', '350100', '福州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u6robcmdkih8mrcivko8b35ern', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433124', '花垣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u75v8aimn6gjbqfrlabhn8rnc0', 'p1l85pe6l8hmmqb72stmo07hk4', NULL, '0799', '360321', '莲花县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u7abi70tvigfnodq91rqr50am0', '60plvbc5tqhjcrsj5hfv8ads5n', NULL, '0392', '410611', '淇滨区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u7q7t3mmokg0grqgbtocjfuhrm', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '杨林街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u7v08gmem0gbap3iu701t1a56f', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530822', '墨江哈尼族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u80rrrf35kjnkrs47227iiogr4', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '新龙镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u824ve136ij8vpaiie6veh01rd', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610524', '合阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u86ob1obf4itgpe30nihfamtn7', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140930', '河曲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u87ck2u2moi6gq4bucd59nolfn', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '国营金江农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u8e07f4uasg1ar1tvv8ahjdkgv', 'th7rt6on12hjoprhum3ui6hk3h', NULL, '0951', '640106', '金凤区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u8h2db8hmqisdpq617os750rn9', '6kn0cvsr1qg15qd9jtkuj5s9kv', NULL, '0756', '440404', '金湾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u8ifb91raih56rvlfs4v2uk56t', 'u5g0dqtknogkbo5u5r0fatdic9', NULL, '0438', '220722', '长岭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u8j5fjd474gmpqh8ck0o3r24mf', 'tr9reouor0h6loi3nvgsqt4mss', NULL, '0796', '360881', '井冈山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u8kf81u9t6g3eqko0f52j22g76', '0obl4ae0esh3tpmng9cqe0qo34', NULL, '0530', '371702', '牡丹区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u8v7b7smtognoqsr0h6ctl43bu', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230604', '让胡路区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u957g55h8ahdsrq9vvije3t6k7', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430521', '邵东县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u989aeb56gjtepale2u3rtq1j2', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '毛嘴镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u98u45gmtci4jqshibon0hqgfp', 'pah4e89c2egpbp9laj391prtek', NULL, '0766', '445303', '云安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u9fccvt1hkif3r0hj4dkan61p0', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '东方华侨农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u9gqrt67jegjtqkti73f5l3egl', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '万冲镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('u9j1k412tcjv3om19p1ilnv2o5', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130606', '莲池区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uabsinmtg2gh5p5pk5ldon5iqa', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370211', '黄岛区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uac7u7vq34h0lo6i8g8667lssl', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451223', '凤山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uae8pljojegngpno40sik2nmvs', 'o7dtgqqccajhgo89tk0lcm837c', NULL, '0852', '520382', '仁怀市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uasbrpvsuui6vppdoc0he4cv5v', 'rjpdu8e1bqjh8oolsa6mi7urd9', NULL, '0899', '460205', '崖州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uavc58jhdugamq80d8d9205fb2', '2051oaiqo2hp2pt9pnt2org0jd', NULL, '0839', '510823', '剑阁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ub0dk32t6igiuo0ugm6jfdjsn5', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0750', '440700', '江门市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ub6gip24jsjjbp69oojok3e456', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513222', '理县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ubb8511drig4gp2a24atfitu1m', '64cikv9jdehmbr7q7ptf584o2m', NULL, '0952', '640202', '大武口区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ubccthkj7ehp6p5bf2chhegh44', 'pgbho69sn8idkq1bkddd4rhl3i', NULL, '0416', '210703', '凌河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ubv369nt0cifiph17brjn11g3f', '0sdp7nv87uh54q41apsqi25pte', NULL, '0790', '360500', '新余市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ubvb007slkggeo6bc3soj1cda7', '4i7bjavod6gs2obcmibk6sl4o1', NULL, '0536', '370703', '寒亭区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uc0491q890h0qqqgb60naeb6hb', '6i3mk5duumgraqoftjnd4lnv0l', NULL, '0873', '532532', '河口瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ucb3jmnj3egt9rd75r557u0m2i', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '汪场镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ucfjtbs4tigaupti721lheb6se', '608sivdhjig5hr156p9djb51ll', NULL, '1897', '469001', '国营畅好农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ucku1vhmj8ifcr328i277c1jlj', 'r5sk5ararcha3qjvnu65a8j8rl', NULL, '0878', '532328', '元谋县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ucp4rv4qd6holotg43ag986cjr', '30adoqbjicg3ao8gd2scth10ct', NULL, '0777', '450703', '钦北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ucr7dn3u6kiqbr0hkdm83ct8p0', 'q4pj7russoio3pgias2lqe2r50', NULL, '0632', '370402', '市中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ucsr7h8dhsh25qromarhnbqa6m', 'p81p9ks3v4i67r3k4ie9mta5tc', NULL, '1558', '341222', '太和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ucvbod5iq8hq6qn9l294npfofd', 'sd09tv3djkhfdocpo3q4c06s06', NULL, '0470', '150727', '新巴尔虎右旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ud87g7904ejd6q3kuod9mcfd1s', '0j0195ugs4hf4r43g4mpmpd5tt', NULL, '0413', '210402', '新抚区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ud9b7v77iejh3qri55bldi3rbu', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431129', '江华瑶族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('udctpk32imhg3rrbc8iqo2dpo1', '6ojqaof4i6hriq6i40nmo3118a', NULL, '1909', '659007', '兵团九十团', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('udernj5uu6h3mr001sn7d68q9t', 'pah4e89c2egpbp9laj391prtek', NULL, '0766', '445381', '罗定市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('udqjt8noeuicgoplt2otu8sarf', '3l0uf7h9nah2frg2h1udh9eaea', NULL, '0435', '220581', '梅河口市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uds85gttpkh5lp78o2uqe5lr1v', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '国营昆仑农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uduge6cd6cjguo4qj6ek502kor', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '小板镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ue6tp4am2sjetp0ndn6rt6itr9', '6vk98tiersiibq2sg2fnfpckn3', NULL, '0933', '620826', '静宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ue7iohlemqi36otamfvl5vmf0j', '0o9cerlsv0jn3p9h2ilus8u9vc', NULL, '0851', '520111', '花溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ued4s1ucekghpo7msauc61bkv6', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '山根镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uem37jr9osglnodc2kurp02n2s', '4s1pnfnukoj0bq25btib5tp2m2', NULL, '0910', '610431', '武功县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uem7lku41ijimop0kdj85c8mp2', 'qh0a283rukh83or2s4t21k067c', NULL, '0370', '411425', '虞城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uepo2ui0piikcold00bdqjb4go', '07glniftq8hc3orvm5m0urpe1d', NULL, '0993', '659001', '石河子乡', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ueu7voo5ceiq7qa15d5smsoj0s', 'rrq8bgaor8hpfp7co2fma05haa', NULL, '0633', '371102', '东港区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uf6ol9qe5aic0qq7upahpgahoj', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '三都镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uf6rl16j3ahvtphjf7eps9rdrr', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440104', '越秀区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ufeo7p9gamgnhrhmhgrem5rl3r', 't16bn6i220ggaq0queo6rrk74r', NULL, '0318', '131124', '饶阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ufiaca4t7qhd2rtvdmbhtqqaom', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0998', '653100', '喀什地区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ufigigr1jcg6gpdqqn7s51tg13', 'shc3fh151oje0phuaqshgfndhb', NULL, '0411', '210200', '大连市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ufo05tesk6j2joefl8e27ksiff', '3djap1fqk0hcdrho4llgbcle6d', NULL, '0315', '130202', '路南区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uft6raqcheicho0586p79eu6aj', 'v322g4tjqsifgosda4e76glpkd', NULL, '0482', '152224', '突泉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ug0s5jk4dqhhvrf0l3ast5o5dd', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411302', '宛城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ug97p2tv9mh02qgndqtphp5ffr', '4c94dj7bl2he5r4v7u4l7fgfpp', NULL, '0531', '370105', '天桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uglv07bm3ginjrmi73trr7shrd', 'rs8ei9p6gcg7lp9dphe1qcvunl', NULL, '0971', '630105', '城北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ugmu13i8vihp5rnlfbmfvc18l0', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140921', '定襄县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ugt59n2bn0jbmq4426o7oecqig', '1t232jo5pch34prqa4899hji2e', NULL, '0775', '450981', '北流市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uh0biepdl2jlspr0vra75mqv8d', 'u5g0dqtknogkbo5u5r0fatdic9', NULL, '0438', '220721', '前郭尔罗斯蒙古族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uh8a6odbekgqfpt58fdmo23hd7', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '国营罗豆农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uhaefofcrkjn2q31a0tf77qlsf', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431281', '洪江市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uhaf0p0uc2godoh8i6v3sgf29c', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0377', '411300', '南阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uhq5lvm0qojsbqvd0trvu8t5a7', 'poela57sq4gnoogjjm6vu7f0f9', NULL, '0778', '451221', '南丹县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ui0i8ia0ougbbpiqlkqc79pit6', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621225', '西和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ui2l59i2buhj9q45mlb2th56qe', '4uqac50t6gh9nogglajv545qq2', NULL, '0973', '632323', '泽库县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ui7a3ksvb8im3rbk1r6g30adqd', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440105', '海珠区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uidt59topsgeerkg4bmntu6gmj', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361028', '资溪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uii7hdjnviiplqfmhav69cpeou', '0sh732c7saglcqaktuna9frole', NULL, '023', '500155', '梁平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uiukoos1m0hb6p1pup50udeb9u', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411524', '商城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uj0q8087duil2oggsga5153sje', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0835', '511800', '雅安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uj0v1givv0jbpranuguopnm800', '3akbe5vmuajqcr216dasutqju3', NULL, '0874', '530300', '曲靖市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uj1tngt29cgfmo5jsjrc7r4fj2', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540602', '色尼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uj8m7nuhh0hjgo0t5d9th25eo4', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130638', '雄县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uj9dj738rijpgqdrshqghcgp5a', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420526', '兴山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ujaj99p4oqgb4qqh6vb2e1hk4j', 'uuv8fjp592idaok8uh3vkbahon', NULL, '0813', '510303', '贡井区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ujb9cf388ujempo143jsuqci0p', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653223', '皮山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ujcueb39m4jjgrs91t35fib03d', 'uv0a0k5urigqcpiebam17p2oaj', NULL, '0468', '230404', '南山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ujhsj97lbggd3q56t0b2m0hgn8', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350623', '漳浦县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uk61tda21ejn8pns05c5k5sgp3', '66bmbfmu26gh9ptr5d7dlpl58c', NULL, '0418', '210921', '阜新蒙古族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uk72mguh7cj6orsqm8bpajmn5m', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0743', '433100', '湘西土家族苗族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ukbahv8fd0jmsrdb23ue3d5ru8', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '佛子山镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ukcc62sp9aji3r4j0lrv7iecmk', '30adoqbjicg3ao8gd2scth10ct', NULL, '0777', '450722', '浦北县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ukdq8oc9m2h6do3htr5u224utb', '39q963pndmi8mo43ipadpohims', NULL, '0774', '450406', '龙圩区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ukkrmcu4peh8tqoakfaplf2pgd', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370214', '城阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ukrigbs7v2im2ra35qa62gvpp8', '1kuq9kes1cjp2q7qeajn3o4eu6', NULL, '0898', '460106', '龙华区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uks327q0vkhh8r11uueeaa9cf7', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820001', '花地玛堂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ul3tugttnugbsomuchsv92pp6g', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320602', '崇川区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ul67q7c7fsjhrq25s0lg9j9t26', '73074v4qq0g5ars2cec58gpq94', NULL, '0563', '341800', '宣城市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ul6de4g2q6gm2rei457e76gtic', '42ktkqnbeshqtobfaj036hf0bs', NULL, '1772', '451302', '兴宾区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ulbbbab6s8h5qqua5bvkku58uu', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0930', '622900', '临夏回族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ulmk79q24eg03pl5pum679ji7u', '1s46oqclqojdlrn2hs74jf2vu0', NULL, '0599', '350700', '南平市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ulneaus5iuilaqkj7qveu7eb5v', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '乌烈镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ulpi0d4jr2hklqi1u2e3imiijh', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '新州镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ultj2le7dogcvrhrl50rosc3j2', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0908', '653000', '克孜勒苏柯尔克孜自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ulvnvh0r48j6apc0d9fd4m9il4', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623001', '合作市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('um3q7u7b2qgisqsqt15nobgld7', 'uhaf0p0uc2godoh8i6v3sgf29c', NULL, '0377', '411328', '唐河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('um83fecgtognfpr1ec8f9s0les', '66hnv7ji3ghb2qubukcf7m8ag7', NULL, '1997', '659002', '兵团第一师塔里木灌区水利管理处', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ummctip6m6hb9punk75bukuqd5', '3dcrfhnm1egf1pf369o247jtj1', NULL, '0559', '341003', '黄山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ummqv6r6egjbgoalafhabljtim', '4si9r8ohrsi0urh25a84pugj6r', NULL, '0434', '220302', '铁西区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('umnslmtfncil1o7eca69nhkaee', 'rrrrrbqoomgkjpn813qk4fa2pf', NULL, '0356', '140522', '阳城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('umrru9985egpqqfvdsg55oq879', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150423', '巴林右旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('umrs8qj9hmh21qe13ossq9el1o', 'p47mt63pg2hempalq3mqvr7rsi', NULL, '0412', '210381', '海城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('un2v6p9jtahrir2hlqbafrtih7', 'vd1hnivokuhkopko8177rtqj7v', NULL, '0802', '469025', '国营邦溪农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('un2vemtloogauom70ngubf2f3d', 'vjd4qgm2jcj61qspc4t5g9n8lb', NULL, '0701', '360603', '余江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('unburmmpauiapo2temd5r01tgn', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0572', '330500', '湖州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uo037eodvoi09pq3u0h7cdhp18', '4uqac50t6gh9nogglajv545qq2', NULL, '0973', '632322', '尖扎县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uo03fuei64ih1ok3805jlldkmo', 'o2ac93fmtsj64r93t2rv3kogvc', NULL, '0595', '350503', '丰泽区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uo2citrfhgjp5q265blms35ikp', '3akbe5vmuajqcr216dasutqju3', NULL, '0883', '530900', '临沧市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uo2dukpvluh0uoimsanur95la4', 'vojkigqia8gkop6rdt778vgntv', NULL, '0954', '640400', '固原市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uo386bq8paicuqljl7t1pbb394', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '黄流镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uoa9i8akf4in3rl1jpl0fe8fkc', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '海尾镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uof4hk6r8ajskrfghmprat3794', 'p28gk7ufc6jegq9isgpdgkdghp', NULL, '0374', '411081', '禹州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uohubcnoomif5rjjauv0lt8bem', '24aa84gu9uhlgod02rrhs2g04b', NULL, '0999', '654000', '伊犁哈萨克自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uok7d2jec6jq9pk4cn3pd0v9bg', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371323', '沂水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uol8s1qpiuhfipredjr6he8rbc', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130535', '临西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uoo65m3m8mhsdpubag5vvtcs1k', '170ruicenkg07qtet8rkdu43ok', NULL, '0798', '360281', '乐平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uorlht44bqg67pd9fun4f05pub', '5lt7kq8s50iv7ru3g0tpbugk6b', NULL, '0722', '421300', '随州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('up3bo96j5si6vpji2f8fr9v1m1', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '370000', '山东省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('up3fmocm7sjtlq3s1a7o987c8m', '0fkqp02rlmj89r3o4fnb5evtjg', NULL, '0662', '441704', '阳东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('up517lu81oh46o9m8464j3bpjo', '0e64gaugd0jkbrdsr3d260oc6k', NULL, '2935', '621228', '两当县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('upl5i1gu5qivkq4beibl916d0a', '720jeuui56gclqkh7kh3ftv1vu', NULL, '0739', '430500', '邵阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('upla4r8d0cjjnp9g4bpb1jvstg', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522634', '雷山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('upm88isadkj54p9rhhtqvvht8t', '4d49tgettsgffr9plbkfou06fs', NULL, '0596', '350627', '南靖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('upoc4dqfgej85qbt25pv0ihddc', '71s5tgjdeig0gp5uiqtjak9c53', NULL, '0429', '211402', '连山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uq9d1nv38eh4ipdqnp1kal445o', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '会文镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uqd0qfmr0qi8crsms6nqrtk59i', 'r6gk1pnptmhbtpfuscpet5g6m1', NULL, '0597', '350824', '武平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uqd6t51diahovrvj55elf2cbsu', '64cikv9jdehmbr7q7ptf584o2m', NULL, '0952', '640221', '平罗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uqj1e5p3v0isiopb7beg88tila', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140724', '昔阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uqktled2pujekqkd5trsh2e9j1', '7cmhk53lm6g6to02t5iv9c5er5', NULL, '0803', '469026', '十月田镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ur2046h792inhov1jfds05irni', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130681', '涿州市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ur8crpr6msianr2hivjduov7s0', '2uh1tkm84kjs7p370uokr55h4h', NULL, '0856', '520622', '玉屏侗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ur8g1lrt2oi8nqi8f73j91gtb1', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150430', '敖汉旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ur9e1792bshf0r07mqr8kf8o4e', '1p3ld5tvvags9o4t3i98ngfk7p', NULL, '0352', '140223', '广灵县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('urdbqle4ugj10rutdsjc7d51mk', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370304', '博山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('urdfsnaog6iu8oibpnk1o4de81', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '沙湖镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ureu7p19qkhglpe9biqfmc2r0g', 'qh36t7bsuugaboa7crvaojln5f', NULL, '0772', '450222', '柳城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('urgo4bhkqciuuqj0ujecsmcceo', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130581', '南宫市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('urlf04l756htcpg1d11mujdocj', 'ta0lskf4mgi3lpfm56ib8th7jh', NULL, '0551', '340102', '瑶海区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('us2bpoafakgkjq4pkqbn574vd9', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '九合垸原种场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('us72gusl1ggcjq1mtu2683kmdc', '5qoh0u5taait1oag7c3ar2a914', NULL, '0972', '630202', '乐都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('us8snd707kin4qledh8kjjfqt5', '1seoklbbocipjof0h223ggg1rq', NULL, '0976', '632701', '玉树市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('us9s3b6pjoh56q5rsc8l5u14ht', 'srnkeeffdkildqtd63kerd32c4', NULL, '0732', '430321', '湘潭县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('usdmeeqqsghfgr4qlm5en586cf', 'pqn8s9kedgjnnqhqpopuc8o1ts', NULL, '1937', '620200', '新城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('usfn74td9eikgro0kar0bpj41r', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330381', '瑞安市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('usgaf2dcvailuqabdrironpmfa', 'qvhjpeaevgj3eqhq4g8n95ojq7', NULL, '0359', '140828', '夏县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ushf7noag2h72qg5l862d74dq1', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530381', '宣威市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('usj4viuqtuht2pt77sppmsj46m', '27snrp1n9aj30p6nf2sfcc8j24', NULL, '0938', '620521', '清水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('usjdkt8oo0ghvpkihd0vkm311g', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市承留镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('usm7cv4iugiajqlvir36ani77d', '155qrtip2qj99qg686a2en0psl', NULL, '0319', '130500', '邢台市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ust36g2lloh6ipief4jc3gsd6i', '0sh732c7saglcqaktuna9frole', NULL, '023', '500109', '北碚区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ut1a4lkghahguqvp8a2r3tm0ik', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '国营岭门农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ut3935sr9uh49plemlguoq452s', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532622', '砚山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ut5lvtivcqgmcq3u4r9k8nme0p', '3qg6iteo28ghirtsmogc1873bo', NULL, '020', '440114', '花都区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uthjtiqicgh80p2v01d8lgcmf9', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130881', '平泉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('utlp3kr8skjcupgq5e7nbr3hei', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130128', '深泽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uu26n0e6c0i6lpqh51q1u245fl', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131024', '香河县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uu3e24gkb8il9pisaf1pbke3lo', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '胡场镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uu8t55censhtup51otl55sku9u', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650109', '米东区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uuc9qr0fjmgn8rqtuihudnl1tj', 'p5573jrpuojarraclkkarp1jqf', NULL, '0837', '513232', '若尔盖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uuh1iq2u4ojsbrbsro82q647l1', 'pap05ht94mhc2ppr8m66v2ibpe', NULL, '0886', '533301', '泸水市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uujvd6k63agm5otkj4nh086tm7', 'snso92tqhcig9qscmjs7uld7d4', NULL, '0804', '469023', '国营和岭农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uumgc70kmcjvmpplusr7iudcog', '37534s8kdchnrpv2obujj6nks6', NULL, '0537', '370811', '任城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uuv8fjp592idaok8uh3vkbahon', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0813', '510300', '自贡市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uuvf6if8dah8kpqdg2p6kk90ra', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '公坡镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uv0a0k5urigqcpiebam17p2oaj', '4h85ig3mruhk8plgdokttalo7h', NULL, '0468', '230400', '鹤岗市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uv83aod8cmgkspv121464qe7kr', '4cmd473knijanp1470cpna4ece', NULL, '0515', '320981', '东台市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uvo55o34r6gkso87uac3n6771n', 'o5enqjmcg2hsqqeu4bctp520d0', NULL, '2802', '469027', '尖峰镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uvprh2ok3ojncodijjbmh0r4ve', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '龙湾镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('uvqabhf38qi8ipvv2ls9tu5jfr', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '新兴镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v017j0kjr6h3eqenhosgm5ana9', '6dfien4p34gipqacpb7jsookr3', NULL, '0903', '653222', '墨玉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v0n2f9do4egdpqjli6smutes8c', 'sm15d8rjd8iihprb174l51cs8s', NULL, '0888', '530724', '宁蒗彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v0p02chajgj3jqb8k0l9rogv4j', '27snrp1n9aj30p6nf2sfcc8j24', NULL, '0938', '620525', '张家川回族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v107mafd9ihehqq5utnljs9kjc', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360725', '崇义县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v11q46jo7sjmsr3q6ootiqaunq', '6pp9enp8iejkdq9j3ou56j7mc9', NULL, '0915', '610927', '镇坪县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v13j7iq0c4j37p4f62no03t2p8', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '排湖风景区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v1g5pij0ikj4nrmntk6mhm9lt6', 'rjnlv417qohbmqshjekt3nol9e', NULL, '0376', '411503', '平桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v1gq4ds1u4j0lr2hvgd1tjooa8', 'o6qmbcsgg2g52pb6it2qo96buu', NULL, '0717', '420528', '长阳土家族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v1ieoharb8geeq30nf9f1ee6um', '652fh3he9uhhgr5a1bl8he5hcf', NULL, '0379', '410322', '孟津县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v1niu3n3rmir6r4c605k9p79h0', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131022', '固安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v1sjmjbndoisjr77s06tjh5aj3', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '枫木镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v1sp276ns8hhur5e8gqb6cqahd', '28vjf1s0mohs0pp7m1garhji11', NULL, '1898', '469006', '国营东兴农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v20829ajb4io9q0of5uoka4scs', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440281', '乐昌市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v20tc6osc2jhcpjrc9756uibph', 'vb5d5t24csgg6o1o9sg5hgntds', NULL, '0753', '441402', '梅江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v23n6qo2oign6p7p7cqrg1hrvk', 't3i3jj4066gniomc1nimc5a67r', NULL, '0456', '231123', '逊克县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v26780q3buhi6qqp107b32e9jk', '74s11i1l3sghkp4jl6datdm69n', NULL, '0934', '621024', '合水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v2ae14su4ghpjrl1e204lcs1l9', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361024', '崇仁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v2jgkj5s3sg16o9b04d4g0b0f6', 'ra82lvpficha3qe4ded4o5qn78', NULL, '0895', '540325', '察雅县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v2jl53behuhqgoa23s8mmas5hl', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '新政镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v2lclgou60j4toa82to67npmep', '2nmb7kmqs2glvr0l04dunm4coc', NULL, '024', '210181', '新民市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v2lj8m68mai4op4e9c0ahg4g56', 'omc8tde2t2ik8p0l86rhp4u45p', NULL, '0876', '532625', '马关县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v317c1jp28ibsrnddnjfvk9tth', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130628', '高阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v322g4tjqsifgosda4e76glpkd', 'tj70a6cm7giiopralk6q924g3a', NULL, '0482', '152200', '兴安盟', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v3274ja10qhm4r9j8vq2dh2u4s', 'okc07kc92uig3p2qlf2ekkrno8', NULL, '0913', '610522', '潼关县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v3e4mfgt3mgnkq51bd7ftd0r48', '0rsngussmshrop8eat1pcnniv7', NULL, '0795', '360981', '丰城市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v3jo808tikiu5oamnjakjvbpvq', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '国营三道农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v3lsjh086qgiur7ud90nkrptrl', 'pqn8s9kedgjnnqhqpopuc8o1ts', NULL, '1937', '620200', '镜铁区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v3m7n9qm3mhd9rg6icc8v93s7e', 'os057r6t3qj7grcie1qfperdij', NULL, '0872', '532932', '鹤庆县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v3nlskakkcgvioep26aiv2v2qp', 'uj0q8087duil2oggsga5153sje', NULL, '0835', '511824', '石棉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v3pk0ln4dqha5qet3devnflf9k', '3f6o85os06ipjo6k9tv7iego3h', NULL, '0458', '230707', '新青区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v40dpoqsg4gj9qesgia8h3eou2', '0tb3s69ffggjlrruhb11chdl93', NULL, '0577', '330302', '鹿城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4229nh5lqh2gqgb78j0relm3b', 'p28gk7ufc6jegq9isgpdgkdghp', NULL, '0374', '411025', '襄城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4411dhtg4jorpgl3cihakdgta', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '屯城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v466erstasj3epd8lsq6uvnlbd', 'p9uptib1nki2hrjanf1sdk0qoh', NULL, '1832', '511024', '威远县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v46bup2bbai1rri9pf38u8akeg', '155qrtip2qj99qg686a2en0psl', NULL, '0314', '130800', '承德市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v46ncn5pasi2mr8qovt5u6trgl', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '南城街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4anukafm4igoq1g5b919fm89p', '4h85ig3mruhk8plgdokttalo7h', NULL, '0467', '230300', '鸡西市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4ci621qqai1co8s6qeb8t8bi4', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '洋浦经济开发区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4dvo51ii6ggso95jisp3flaqt', 'unburmmpauiapo2temd5r01tgn', NULL, '0572', '330523', '安吉县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4i4uov1fmi1logfarasmlv0m9', 'vdbjntnqt8io7q343d1d86olha', NULL, '0875', '530502', '隆阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4ohld8mikivtr2n0ggnv6agpj', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522626', '岑巩县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4rsk1a75gh0gp72d07ujj8oii', '4ohfo84880jgqquoscofhr3sdi', NULL, '0414', '210505', '南芬区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4t3sraeo0i1jo11fcdsdh7ivu', '1pcqa5eb66jm8p9873h8moui7d', NULL, '0719', '420322', '郧西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v4ttakn4kkg4tpsmrnlcld12vq', '0sdp7nv87uh54q41apsqi25pte', NULL, '0794', '361000', '抚州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5542r7f6kju8rlqteoghndv70', 'u5g0dqtknogkbo5u5r0fatdic9', NULL, '0438', '220781', '扶余市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5d5ep925igh4rfahhvevm6rae', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130102', '长安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5g5b6le94i3tpcdlkcnh31mh3', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230109', '松北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5gq53g9daga2pl8712cu7j3ld', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310112', '闵行区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5lnh63rq0jalrlo331firksi0', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430721', '安乡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5m4ipla1gg22oq0b43tanlp4g', 'oo7vba5j6eicuqtidjf7u9ifuc', NULL, '0532', '370203', '市北区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5pguh19qug7mp38ci2ulvm40s', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140428', '长子县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v5uqtd9116h7to3gunfm82b7sg', 'rjmdea8jqei0iphtb61mo9kdj0', NULL, '0393', '410900', '濮阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v615vpcjqohc3q7ujvdddquene', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220112', '双阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v63j41oh4kh97o4rbeuaapi8h2', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120119', '蓟州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v6hs705f1airgo4uf95jmuot7e', 'tj1bsa6ma2j5fo22s14r59uaac', NULL, '0579', '330700', '金华市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v6mlvgfrlmisnqujq2s8ja67jl', 'qopnqkjitqggfob4d7vlbasbrr', NULL, '0335', '130304', '北戴河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v6mttg85t2htmrfifp20qmqv3a', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210214', '普兰店区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v73ol1t7oohkho7311ufhn7dlr', 'rjpdu8e1bqjh8oolsa6mi7urd9', NULL, '0899', '460204', '天涯区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v76e6g44n2imnr6dq8obcfpmnq', '2gjkmkghmkg51pd2tdfjhdg0j5', NULL, '0916', '610729', '留坝县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v78ccrqo3mjb5pobbb89jpsenh', 't6bfub66i0hhuroi9hklv0opcv', NULL, '0801', '469029', '保城镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v7o2u3n5jag0gqku9iikbnno6b', 'rnbs0op38uhqlrfmca9ohnli19', NULL, '022', '120100', '天津城区', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v7s4jougheiodotmnauvtvqmev', 'p1l85pe6l8hmmqb72stmo07hk4', NULL, '0799', '360302', '安源区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v7t8jb038qj04rd05lnqarigm3', 't6ts7rgoi8gapp256goa0olvun', NULL, '0995', '650421', '鄯善县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v7to2k424ojpcqq0jeurol5ik1', 'qnt6va1uquh7trnc8kn563kfgh', NULL, '0431', '220102', '南关区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v7um375l4iitlq09tv6jkogs4i', '22gukrmo7mhero5r7fhjqnahiu', NULL, '0762', '441621', '紫金县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8b6b2s9tmh62pkqq7ov005euv', 'shc3fh151oje0phuaqshgfndhb', NULL, '0421', '211300', '朝阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8cplv9dfqja6p1u20clr6mkbs', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360729', '全南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8f1r2ct3sh93o6t4tqdgfhfiu', 'raend08j22gudrlphl174ssm17', NULL, '0736', '430726', '石门县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8itu2ujsshpkpif1hn0ptvssc', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530823', '景东彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8m0cc82uajp1oljm6arntcql2', '6dkhflm4dqjterk2ohteulohsv', NULL, '023', '500230', '丰都县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8p091h9ouhbjo9j1vpfqcjq5f', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '三才镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8r4omfbu8hdarolq95id189km', '0sh732c7saglcqaktuna9frole', NULL, '023', '500115', '长寿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v8vlff5j8ggvqonms681agk3tj', 'va7jkgbb1uiato01iitpveqc6b', NULL, '1853', '820002', '花王堂区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v92g6dls28i5sreba2cdla5o66', '1p4h9ufnuehihr62ki5flj99vq', NULL, '0439', '220622', '靖宇县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v93ead0pqohcpqnn3i25d3rvsm', 'u6nlcdos78ge6r5ie965oga1mt', NULL, '0591', '350103', '台江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v9aeq1h5tggjcpce8d8tmq1dsm', '28rqfuuqi0id5p471qbotg173f', NULL, '021', '310113', '宝山区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v9p48soav6jlsqinehjjs57cks', '24aa84gu9uhlgod02rrhs2g04b', NULL, '1994', '659004', '五家渠市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('v9s1ma465uhp5p8287f62tirre', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130637', '博野县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('va2l5061fkgcbq5tr87i1q040q', 't1svlvplfqih5prh1mosnigiq1', NULL, '0897', '542526', '改则县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('va7jkgbb1uiato01iitpveqc6b', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, '1853', '820000', '澳门特别行政区', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('va8idvcfnaiurreienrhnugf2r', '4h85ig3mruhk8plgdokttalo7h', NULL, '0451', '230100', '哈尔滨市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vak1jn6718g92pkrdko7okt81b', 'q18tk50acighkqe4ij3lndpigt', NULL, '0730', '430623', '华容县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vamjioe9jigptpnb5726nchpns', '5rp7v00rpqi5toq7in83j7vp8n', NULL, '0475', '150526', '扎鲁特旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vapjrqd2oqgberpje6fnbuc3vn', 'va8idvcfnaiurreienrhnugf2r', NULL, '0451', '230108', '平房区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vat2q2qjfkht0rnphgbsdlj8eh', '17m12umjmki7lppvmi61g42pke', NULL, '0556', '340802', '迎江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vav38e158sgcbq40c9hoblie7g', 'v8b6b2s9tmh62pkqq7ov005euv', NULL, '0421', '211322', '建平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vavoi53bdaifrokb3s3vl2pvbf', '7clv6jucsug1docf6sia80h0g6', NULL, '0936', '620724', '高台县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vb5d5t24csgg6o1o9sg5hgntds', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0753', '441400', '梅州市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vbdi0kn396g1qqara0r270qm1i', 'ttrfngqcagjlrruiq3uvtd6e9u', NULL, '0738', '431322', '新化县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vbicdt08vaj42r7gtcp5pouc8m', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140406', '潞城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vbkukjv9pgh3tovbl7hqgclq4r', '7eem4ob2gsht7rp6vadk6qpq4b', NULL, '0833', '511102', '市中区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vblfvkjjg0gvjrcvh5a6fl3ph2', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130983', '黄骅市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vbmhsujnl4ha5r18brn07eefrt', '5unjn99lu4iuvps5n94sjcescj', NULL, '0779', '450512', '铁山港区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vbvdtug97qg09qaiof1easej5o', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130404', '复兴区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vckinjit94gd7qtfpdnh3h2u8d', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141030', '大宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vcl0o184u0g65rg9njco43tnad', '06rn62r4tggd8o95iltccc53ms', NULL, '0594', '350305', '秀屿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vcl2jt9sruhduqa7sj4vipsmce', '1mm3a28lbih0drfpa5hobbjspa', NULL, '0355', '140423', '襄垣县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vcm0qe7noijm3r9nvnrskkp13n', 'pcus4h555ciimogiiu4qi8f5ot', NULL, '0454', '230804', '前进区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vcvi1q7disif5o2cn23iminacv', '10pm3es8sqj50rpqmub8jiimrv', NULL, '0663', '445200', '揭阳市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vd1hnivokuhkopko8177rtqj7v', '5kffgqjrecih1pqt9t2tadrsaa', NULL, '0802', '469025', '白沙黎族自治县', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vd2lce7p0ojjeqj7f9re1049mn', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '王场镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vd7f64sqccj1to8l85potin1va', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '新竹镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vd7k3t84s2gc8ocuegkfshtt3q', 'pk1g9v5oaaji9o3f7v3lvc70aj', NULL, '0351', '140110', '晋源区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vd8ruve0heh8tpekh64v2p4k13', 'spcl2traagiofrum521umd4mei', NULL, '028', '510131', '蒲江县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdbjntnqt8io7q343d1d86olha', '3akbe5vmuajqcr216dasutqju3', NULL, '0875', '530500', '保山市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdbpkmao0qhb8qd00uodaps3ou', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130527', '南和县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdfdum3kmog8arp28khoanr95a', 'vdre5r2pggi46pu81sslg57adv', NULL, '0535', '370612', '牟平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdfmko9seogc1qvch8b28hthtv', 'oc4o96cidsifeovu77g8434d3c', NULL, '0728', '429004', '工业园区', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdgober3sqiocrb0gjv9g4evhb', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410804', '马村区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdo7i26hnih8crruim34mrpm8n', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '厚街镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdp3f0vsqgiedoujguq4a9qs4a', '5qv2kq3h1iijdoaqrfbodfhitm', NULL, '0758', '441204', '高要区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdre5r2pggi46pu81sslg57adv', 'up3bo96j5si6vpji2f8fr9v1m1', NULL, '0535', '370600', '烟台市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdtahh52k6jg9pb4tcke87n0jt', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140924', '繁峙县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vdtkitdbhmgm3pj7skummviee3', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120110', '东丽区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ve056mb6fgj65oressf3o52lmv', '62rq1jvhi0in3o6uv0ofm3t026', NULL, '0417', '210802', '站前区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ve1flrjvregtgr5h9m2bqj4ajp', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371322', '郯城县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ve4aekphpuhc8rssf1ele9u26i', '64917t84ikg02ri3ship6ss9st', NULL, '1728', '429006', '白茅湖农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('ve5ogd2846i4krjm9ee018pd9f', 'tlgm063qboi08r2gsn7s0vgph1', NULL, '1899', '469030', '国营黎母山林业公司', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vecpf1mk6iikcqm9kafiq5bh41', '61i6gl9mvui3jqehj718rqvqae', NULL, '0735', '431023', '永兴县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vef8djerl0iorr8qsm85uh6u5p', 'shc3fh151oje0phuaqshgfndhb', NULL, '0415', '210600', '丹东市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('veocadko6ohplrl09bl32s4uol', '37lkb4uoschrorvo11dt8af060', NULL, '0977', '632822', '都兰县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vert2j0m26gg8qolv9bh3cblpk', 'ul67q7c7fsjhrq25s0lg9j9t26', NULL, '0563', '341823', '泾县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vesopv0vv0gemr2bqi0okc816t', '7d8cs6a2koj4ppmr2gi53ei27p', NULL, '0453', '231002', '东安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('veugv01j0ehm4pstsjhuj585sq', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '皇桐镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vevq8gddb8hepogaklv4chlp57', '2ucjim2s7agfipulosopris74j', NULL, '0809', '469028', '国营吊罗山林业公司', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vf0sj5hjt6hg3r7or26h387jso', '40a8oud20shajrtqjdfiou0clb', NULL, '0479', '152529', '正镶白旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vf89oo9bk2jfio1sereoiksmqc', 'ph85b6pg4ugrjqhhsbc0h5g21n', NULL, '1894', '469002', '万泉镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vfh3ek6sj8hocp9vs05p6tcerh', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513424', '德昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vfotcg71p6i9aooput7hgat0l4', '1ehpm8brb0j6fqu5bmhu0e6ric', NULL, '0539', '371321', '沂南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vfq78bjmmqi97p4navpi1qp6p2', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130635', '蠡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vftt3rgb6ui6epfh3ccu794llq', '6vk98tiersiibq2sg2fnfpckn3', NULL, '0933', '620881', '华亭市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vg0deg2152g92p3jr5qj27cpfj', '4qpieelpa4h4fr08jldt0dael2', NULL, '0357', '141021', '曲沃县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vg2b3frth8h21r283fnj7429t4', 'tt1d1ols3gindrjq2a87i8qmoq', NULL, '0734', '430481', '耒阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vg8er5f592jfepfmni3lg3l6c0', 'v8b6b2s9tmh62pkqq7ov005euv', NULL, '0421', '211382', '凌源市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vg8rd85sdsjbgr7q05mq3bebr7', '1tg88kekeshe7ofh92s889rtaq', NULL, '0455', '231202', '北林区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vgc1j32t64iorpctte64mjsqmq', '0tch126f7ch9rohg07djo5bvas', NULL, '0744', '430811', '武陵源区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vgft36ej5mj5sq63cijdtvhl2h', 'ssbn19ld8oi9qo61q5m9v89drj', NULL, '0557', '341302', '埇桥区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vgh5dflkm6iqco7r4otvv4giqd', '3dtgolo3qmgjvpvprumtbedvq6', NULL, '0353', '140303', '矿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vgi3220qs6jhgqhct5lm68mki4', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530828', '澜沧拉祜族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vgkoaq9c12jobpf7g90rq87uik', '6kuo0ps4j4js3rk0puhf1bsf3l', NULL, '0745', '431230', '通道侗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vgt8v59st6igdq98micj0fq07g', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '四更镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vgumsd5spmgt9qbgap4jto9a6t', '0567knr96sgddrc1plstq0ta7p', NULL, '0754', '440507', '龙湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vh2i49eqv8je0pc1pjhp85k09f', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653129', '伽师县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vh6aiobikqhe8qd42gf3p0n8hq', 'v7o2u3n5jag0gqku9iikbnno6b', NULL, '022', '120117', '宁河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vhapuqnltsilkrq45rl4kt4fdt', '38nt6v80gqikmr4fuor4kmf57v', NULL, '0469', '230505', '四方台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vhbitn8iash72pjqkj8a7vlj5g', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '那大镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vhksfhan0ej00obullkn7v4t9p', '16fs7ph8f2ha1rkekbfag2cpjr', NULL, '0550', '341182', '明光市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vhlj8phmskgdjqdmmrctbn5d83', 'rj2kmc3936j3mq8ap7bg2ea6ga', NULL, '0991', '650106', '头屯河区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vhu4g6nceggcookmuq244uu13c', 'tcidh7pk8chkdqnnacatoq9h2n', NULL, '1896', '469024', '新盈镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vhu8nbng8aiqvpaoi0o0nht90m', 'p58fjo58hiirsr67e9lftjltoc', NULL, '0312', '130608', '清苑区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vib0pjdupsgqqo4gg0bfqif725', 'v46bup2bbai1rri9pf38u8akeg', NULL, '0314', '130804', '鹰手营子矿区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vie6ok6dt2h8frq23c8tkabjlo', 'ub0dk32t6igiuo0ugm6jfdjsn5', NULL, '0750', '440783', '开平市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('viejbv1gecirfo3qgmsilohq9k', 'ulmk79q24eg03pl5pum679ji7u', NULL, '0599', '350702', '延平区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vifol29kf8jebqso9l9t69k0iq', '3qlolurmo8glgrm1a3c77ht72q', NULL, '0896', '540630', '双湖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('viivnmf3vui9mp0e0ulaupg2u2', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653131', '塔什库尔干塔吉克自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vijbp7q1fkgfprmtbaosjv5can', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130432', '广平县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vikugvado0gq3oipnhqrla1qgm', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530303', '沾益区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vima6uqnpqg56rmr5e39mboj1r', '3rvhgdg4eohs8rgqa1alp0lir5', NULL, '0310', '130403', '丛台区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vislthkv7mhgso1v1o45r7qq69', 'upl5i1gu5qivkq4beibl916d0a', NULL, '0739', '430523', '邵阳县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vitpp20tdejbmpatpm32one411', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530326', '会泽县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vjd4qgm2jcj61qspc4t5g9n8lb', '0sdp7nv87uh54q41apsqi25pte', NULL, '0701', '360600', '鹰潭市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vjkbbrokroiagqcrs7h5ip2d8k', '0sh732c7saglcqaktuna9frole', NULL, '023', '500111', '大足区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vjln9tjmj8htdrbq7seos25i6m', 'vuq3lsvmaohdbpr9j9oq52jl5i', NULL, '0941', '623025', '玛曲县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vjnha4asfojilrdcta99e5p9u8', 'oh3c1fmf0uig9rnh4hg33m5ov7', NULL, '0791', '360103', '西湖区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vjoaac7misi9brdm4kms40qr21', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '高石碑镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vjsn2k3374iqlrimucfnfr4g7f', 'v4ttakn4kkg4tpsmrnlcld12vq', NULL, '0794', '361026', '宜黄县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vjvid40q40g7gob75a3ehr6lm4', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530424', '华宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vk4vf9kv9qhriomom3dg71st31', '3dcrfhnm1egf1pf369o247jtj1', NULL, '0559', '341002', '屯溪区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vka1obibqmijvpareree4d0829', 'qgi0rq7nh8ivnpd1008jhj204t', NULL, '0836', '513301', '康定市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vkfbn6rbmuh9eq0vjml1fkl4va', '0p30i6a75sgqipvqplebfcm94e', NULL, '0751', '440204', '浈江区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vkmphss1h0gqopkgf5ta105udd', '442t83b1mqhinrioje9ilhre1q', NULL, '0807', '469007', '大田镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vkpnmp0gkcj9eqd09b76r5tvl0', '5hs8s1lpeojilqrokq6t76rnqp', NULL, '027', '420114', '蔡甸区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vkqi4ev4fkji6p8i6lt1pmbdkb', '3gsg08cppejc8o9h0t2v8egl5k', NULL, '0410', '211281', '调兵山市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vl4gfjobmkiajoa6962dhmrcd7', 'pd43976vcgi4fqbihmbdvhcd82', NULL, '0894', '540426', '朗县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vl5bjij6ighe2pq5ntv0j91ti7', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210213', '金州区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vl692htfdihomo5h54tu0krsc4', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360424', '修水县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vl8venpqcuicdq253tlogfdu1u', 'tj9v2p590kjtno269i6nct2d0f', NULL, '0391', '410823', '武陟县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vlhmvvt6i8in9qj97fpmovb33f', 'td5c9sb7hmgpsrb2l8b30n375g', NULL, '0855', '522627', '天柱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vlloud3cpuh5lq87nd7chpf0ta', '2fcjkkos28j51o363gvc4l64di', NULL, '0533', '370303', '张店区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vlv82pmqhsgrvqts42mv73bb3v', '0e3vofpadojc2pgos3gmaqll0s', NULL, '1833', '511424', '丹棱县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vmeqjd2i2ihapp9dr4ppm1lsio', 'tu6djml59oipsqrshpgti1nit2', NULL, '1892', '469022', '西昌镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vmkp4f6om0hhbpicl64m5ngsla', 'th7rt6on12hjoprhum3ui6hk3h', NULL, '0951', '640105', '西夏区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vmlitsr83ajglrj27jfpp45gaa', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610829', '吴堡县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vnabc35b9ajm9qounpk32ne2dq', '0e3vofpadojc2pgos3gmaqll0s', NULL, '1833', '511421', '仁寿县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vncnd0t3tqhsnpv2io7baenaif', '40i4dkm6f0hjqrnlhpig49au9g', NULL, '0806', '469021', '国营金鸡岭农场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vnd6hme0uojikonlv2ljevvmjm', '4rslmb3lhqin7ots9deq3lppkl', NULL, '0349', '140681', '怀仁市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vng2v7ssr6g90pghbv7vfl9p2s', 'ufiaca4t7qhd2rtvdmbhtqqaom', NULL, '0998', '653122', '疏勒县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vnnidas4tkij8qe46m51734k4m', '7qlqlaae00iiqqidb7lrulifjk', NULL, '0427', '211102', '双台子区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vnnoanr0usj2jpbssoh1ooc9k7', 'sl1gm9tecgjuervvjdtqfsodbg', NULL, '0554', '340402', '大通区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vnsdpm2htmgquq2ietkvabj29k', '6oulip0954ju7qh0s0kaf1g98v', NULL, '0870', '530627', '镇雄县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vo1658cbkiii9rt9nhi8l3cvq1', 'usm7cv4iugiajqlvir36ani77d', NULL, '0319', '130582', '沙河市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vo82kib26ci00pegfi40bpjc1p', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131026', '文安县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('voblqbtdgiiaqok26ut1p4uli1', '3dtgolo3qmgjvpvprumtbedvq6', NULL, '0353', '140321', '平定县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('voco1aj9qag04o8cps49f1m045', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433130', '龙山县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vodg2mt4lij2rrrg0b73cv5vkb', 'vpdl6cg3vmgi2rcr4a2foqolot', NULL, '0817', '511321', '南部县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vojkigqia8gkop6rdt778vgntv', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '640000', '宁夏回族自治区', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vonnnq4dlmjeerq2nr5avomlqp', 'u3onkv6qe2jc4ob7f89047dtnm', NULL, '0395', '411103', '郾城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('voo3ibjtoigsmqpbcpne2hmq8g', 's9nvlr8ikqhs5q94ho5g67g290', NULL, '1893', '469005', '东郊镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('voou8a5sdqh93o54aakdcell9t', '24bmhbn9qiig8q69vedsi5tqq1', NULL, '1391', '419001', '济源市邵原镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vopop2shfki72o1ljahl6okrq5', 'p28gk7ufc6jegq9isgpdgkdghp', NULL, '0374', '411003', '建安区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vor4hdgp2qg0jonun6n25hr12n', '1m9j9amib2hk4pkjgfq7o22g9p', NULL, '0459', '230622', '肇源县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('votn791ceogjeqj0uf8r1l6j01', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150104', '玉泉区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vouhh6uhn8g2jrrkbgo61bf0gj', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '周矶街道', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vp1fupr066gq2qpbm91atffvgf', 'ubv369nt0cifiph17brjn11g3f', NULL, '0790', '360521', '分宜县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vp4ajmgi1giaoqk5n1ueit2mru', 'ulbbbab6s8h5qqua5bvkku58uu', NULL, '0930', '622925', '和政县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vp7s5rgl42grbpsmr2s27bg3kh', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0827', '511900', '巴中市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vpdl6cg3vmgi2rcr4a2foqolot', '39a8hm29gmj9aonigro0dl6h7v', NULL, '0817', '511300', '南充市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vpf6ij3hhqhvgpjdm3ttthu4f3', 'vvkajs2daggsbo1k984vl1gtir', NULL, '0912', '610802', '榆阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vpgjqupriai1aos87vr92tcu27', '1t232jo5pch34prqa4899hji2e', NULL, '0775', '450924', '兴业县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vpj05e1rdqg8lrsugtmvkcmn54', 'rfcrp6vlu4i0qom9kanold54i2', NULL, '0834', '513433', '冕宁县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vpqr7vv2u2htaqhnmvs2bu9j07', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110105', '朝阳区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vpulgaqaj8gfcqrfuq2pdi9jlj', 'uk72mguh7cj6orsqm8bpajmn5m', NULL, '0743', '433125', '保靖县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vqa1gt08dcjk1qg91iduoa8iik', '3s7ubuh5p8iuerbbrkqbjhu85p', NULL, '0854', '522702', '福泉市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vqcv85tgfijdson0selfln74pd', 'vcvi1q7disif5o2cn23iminacv', NULL, '0663', '445222', '揭西县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vqd8pkelpkj84o1g0hhs719s7r', 'ta4v27nfcih5eqt3detoqu1ptu', NULL, '0517', '320800', '淮安市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vqmircbgtujg5qog9ckbneve45', 'pu2g87skgqigsrlfbeauigscip', NULL, '0476', '150425', '克什克腾旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vr73ju55eih3rqvb4maotblk00', 'pe3819efjugibpibr3d3nq9b37', NULL, '0311', '130184', '新乐市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vr9m9qh0uigc1r6c7c1fp55jli', '5unjn99lu4iuvps5n94sjcescj', NULL, '0779', '450502', '海城区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vriodnvo18hodpri86vqork3jj', 'rikd2lce0ei6jpnhob9q7greo8', NULL, '0513', '320684', '海门市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vrkan34uvkjpnpd5qvcs5te82t', 're2rr71bjuj11o850k4eqve8bl', NULL, '0891', '540103', '堆龙德庆区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vrkmrgso9eglgpplisv0ccmv4k', 'orsosqnn26h54qdik6j7jnk1ci', NULL, '2728', '429005', '浩口原种场', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vrs5amfquuj4oo269995ip67ln', '12u7cgieo6h78oiq55pjg0mrmh', NULL, '0792', '360428', '都昌县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vru5v4dt38hbnpo1634aa5a443', 'tlqsj5d6ogha6qv0a2v3vomsgg', NULL, '0858', '520203', '六枝特区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vs11lu9pnoi4arp9ak95dc0nf1', '5qoh0u5taait1oag7c3ar2a914', NULL, '0972', '630223', '互助土族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vs15rag2l0gtkqcaiobfapa50e', 'uj0v1givv0jbpranuguopnm800', NULL, '0874', '530304', '马龙区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vsffhdjhceju5oemif1cukn0k7', '32c7ihdn72g1er0vo3cti6jd82', NULL, '0354', '140728', '平遥县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vsgqe1036siqdpv9n6u4hi4pi8', 'snle59cbkej8dpegom5icmb9cu', NULL, '0879', '530821', '宁洱哈尼族彝族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vsi64jo36ei5so28ldgrn5p9if', '0p496qui2qileponu3n4s3n4m2', NULL, '010', '110109', '门头沟区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vsqq7b5l6qgsdqi589vcoc3l15', 's0lr6tduqaimerh4v7krl8njqq', NULL, '0519', '320404', '钟楼区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vt6esj2gm6g5cpnd42513fsqrt', 'r6gk1pnptmhbtpfuscpet5g6m1', NULL, '0597', '350821', '长汀县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vti90isljeh2hocg2dabclu4cs', 'pprbvbp9fqhflrl1p73bcfuebq', NULL, '0317', '130930', '孟村回族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vtmjf92dtmh3jrb0s214tk30ka', 'ret2dp337ujmlr17ttlnfu1q8f', NULL, '0877', '530402', '红塔区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vtstk53tv0j3cr6fkqj3lkqj8d', 't93et4kmlkh5sqhpg0iqonnvja', NULL, '0853', '520423', '镇宁布依族苗族自治县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vttgpdoth8jnjrmpmf5fo1d657', 'ufigigr1jcg6gpdqqn7s51tg13', NULL, '0411', '210203', '西岗区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vtupeu5na8gefrto273q2et0gs', 'snjqsa6c7ci62p0brv58dunj9k', NULL, '0769', '441900', '石碣镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vu4iasrhdej3hqg9h0ne137qvm', 'vdbjntnqt8io7q343d1d86olha', NULL, '0875', '530521', '施甸县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vuis25njhsj0nrbktvkaff4n8l', 'uo2citrfhgjp5q265blms35ikp', NULL, '0883', '530922', '云县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vuq3lsvmaohdbpr9j9oq52jl5i', '05e5n3f9fcjisrtqkrrgn4nbpq', NULL, '0941', '623000', '甘南藏族自治州', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vuqnb2do0kj9nqq5g0vvfmpt1a', '7u3pc4l886hvmpdvi38gcsf5l5', NULL, '0805', '460400', '峨蔓镇', 'street', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vuqnhok0bcgb5oasull9c7ab58', 'r0el6s9bakg8fr47it1gkpmpvm', NULL, '0797', '360727', '龙南县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vv10oh8kn4gmlom90lo60ohh8t', '71s5tgjdeig0gp5uiqtjak9c53', NULL, '0429', '211403', '龙港区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vv57m8lddaiq0o5purq40rkoks', 'rob1ig9k1iihuqgrsm90kgn2hb', NULL, NULL, '220000', '吉林省', 'province', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vv8fb27rp0ipkoe582ie8heta4', '2051oaiqo2hp2pt9pnt2org0jd', NULL, '0839', '510821', '旺苍县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vva0dm8ibgho9phlqjnprt5ms5', 'u29imoibfkgrcr46irqvhbej6i', NULL, '0350', '140925', '宁武县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vvf16sduaoj4iopfulfvu06pc6', 'v322g4tjqsifgosda4e76glpkd', NULL, '0482', '152223', '扎赉特旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vvkajs2daggsbo1k984vl1gtir', 'pma35v8v3aggbobuot73v69lpj', NULL, '0912', '610800', '榆林市', 'city', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vvkc1qb776h5lqfg03bgq6ij0g', '5ofhdlevoegp8p902arpn46rlq', NULL, '0316', '131002', '安次区', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vvnu4714d2jnspfimekpnr1t2g', 'r3s508tkuej0poipdludse56i2', NULL, '0746', '431128', '新田县', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vvo36tk67gijhqvficuijgv9eo', '744v3gv46aigtrgrv2jvbsopt6', NULL, '0471', '150121', '土默特左旗', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vvs8gganhagp4pnkj5oe8c1ntp', '4rb1a283l2ht9r37qbp67ot2cf', NULL, '0511', '321181', '丹阳市', 'district', NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('vvtqbohv3kidupoj8l6dih0eg8', 'o9kpe9go2ig3sqahemikgenupb', NULL, '0635', '371521', '阳谷县', 'district', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `configKey` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置项',
  `configValue` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数值',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '说明',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`configKey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES ('AppDomain', '127.0.0.1', '系统域名', '', NULL, '', NULL);
INSERT INTO `sys_config` VALUES ('AppName', 'NutzSite 开发框架', '系统名称', '', NULL, '', NULL);
INSERT INTO `sys_config` VALUES ('AppShrotName', 'NutzSite', '系统短名称', '', NULL, '', NULL);
INSERT INTO `sys_config` VALUES ('AppUploadPath', '/mnt/upload', '文件上传文件夹', '', NULL, '', NULL);
INSERT INTO `sys_config` VALUES ('token', NULL, NULL, '', '2019-05-10 16:10:01', '', '2019-05-10 16:10:01');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门id',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '某某科技', 0, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', 1, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', 2, '', '', '', '0', '0', NULL, '2019-05-06 11:21:35', '1', '2019-05-06 11:21:15');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', 1, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', 2, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', 3, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', 4, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', 5, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', 1, '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', 2, '', '', '', '0', '0', NULL, '2019-05-06 11:21:38', '1', '2019-05-06 10:14:08');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型\0\0', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型\0\0', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型\0\0', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型\0\0', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型\0\0', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('105', '1', '会议通告\0\0\0\0', 'oa_notify_type', '通知通告类型', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('106', '2', '奖惩通告\0\0\0\0', 'oa_notify_type', '通知通告类型', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('107', '3', '活动通告\0\0\0\0', 'oa_notify_type', '通知通告类型', 30, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', 20, NULL, NULL, NULL, '1', '2019-04-29 15:27:51', '', '1');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('15', 'united', '红色主题', 'theme', '主题方案', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', 70, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', 80, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', 100, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', 15, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('62', '1', '公休', 'oa_leave_type', '请假类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('63', '2', '病假', 'oa_leave_type', '请假类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('64', '3', '事假', 'oa_leave_type', '请假类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('65', '4', '调休', 'oa_leave_type', '请假类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('66', '5', '婚假', 'oa_leave_type', '请假类型', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', 30, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', 40, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('69', 'leave', '请假流程', 'act_type', '流程类型', 10, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('70', 'test_audit', '审批测试流程', 'act_type', '流程类型', 20, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('71', '1', '分类1', 'act_category', '流程分类', 10, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('72', '2', '分类2', 'act_category', '流程分类', 20, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择\0', 'gen_show_type', '字段生成方案', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0\0\0', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'gender', '性别', 10, NULL, NULL, NULL, NULL, NULL, '', '1');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'gender', '性别', 20, NULL, NULL, NULL, '', '2019-04-17 05:59:17', '', '1');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型\0\0', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型\0\0', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_image
-- ----------------------------
DROP TABLE IF EXISTS `sys_image`;
CREATE TABLE `sys_image` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `photo_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片类型',
  `base64` mediumblob COMMENT '数据',
  `local_path` varchar(255) DEFAULT NULL COMMENT '本地地址',
  `url` varchar(500) DEFAULT NULL COMMENT '网页地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片管理';

-- ----------------------------
-- Records of sys_image
-- ----------------------------
BEGIN;
INSERT INTO `sys_image` VALUES ('b94cded00bbf4369a5cd35efb967be95', 'Base64', 0x646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E5355684555674141414D594141414447434159414141434A6D2F39644141416741456C45515652345875793939323863615A597465444969485A50656B364A4555714B383937376B53716138376136324D39324C74775073594C455043377A395A662B4378654A684D66746D3967336554732F3054466431643757704C752B724A4A57386435536A444556536C45684A394752364634747A76377A4D494D57533144337A4D46696755794245706F6D4D2B4F4B6561382B396E77642F667678354266363841672B74674F6650612F4C6E46666A7A436A7938416E384778702B6C347338724D4D554B54414347503241356B392B54546D66684F494458363447547465566C6A38634432375A6838653065422B6C3047735846785167574149464141495746685367724B304F7777496441774939674D49694367674B45436B6F774F6A714B30366450792F2F7074414F2F4C7769667A3464734E6F744D4A674F4858355A37654C31654F5236507A2B6635765878504B7056435042364862586B52434962676751655A624162785241797856425165654A464A32334A756C7032416251555143495341724265655641486753534B444D4E4B5A42444C49416835656E3165754B52564E77386B36386A7650505A324E794E6E7739624C794D7152535953546A466F4C2B61705356314B4F6D7467622B67494F686B5334346E69684B7937316F6D46364868766F354742304D594F682B46434F6A393244356F6967724479446C6957426B4A41792F4C38536A4968354C495246335948754B4D444B63774E303776656766654942734E6F56454D694C6E7751665867577461556C49693639445430794E72365058617347304C69555153414D2F62423876796F7253304648362F4839466F46496C45517461596E2B4F3663613254796151636B2B2F7A326A626969544169305645556C7851696C637A494F764F37576C7061304E6658682F763337384F794C4D52694D5A53586C3850764436432F76302B4F6D5856536F4A7A3466426271362B7578647530617A4A6B7A422B2B2F2F7A37362B2F7652304E4341706373574935744E6F4B6934454F484945433632586F5A744257465A50685145692B527A6C4A46494A494937336663516955546C756E6D7551304E446367306A493650495A4E4C495A41432F7A792F334C5A4F6D7A4E6A495A68313572354556442F792B674D694D6B616530794D4C6B42362B48502F46342F4345444D65454A79345A3832757531786F2F68426B59716151374F78614367654B79733341772B43497A4349677179667877596761415848672F6B79336C6A664E3467686F6147636533614E626C51783748674151466D5451414762796A427842764842392F4C432B622F2B74323873587A59746C632B5477464B70424A495A6C4A494A6250495A727A797575564E775773485946742B775045684537634547413669734C315A5A47327A424678414C697853446E772B4C377865436849764E70472F5A7038587957514D635077492B737451474370485956456865492B6973554834413042686B5957696B67426D54472B4246395649684E4F49524963526A76544436336551396F51526A635A5247436F565949774D683948664E34704D796F39594E4976526B516A6938536763704A464D52636542775A4D51355249696F4341434A4E646E4F596A466A5241524A4A62484B3049614B6779684D4252434F703052595462764E59497431356B444F2B386A31786165444377374B38666A74524D596D5577576C5A5556416961754E396334466F764C506562396A455A6A714B717146444135325377537959534171626D3547513354476E443233466B4D4477384C6B426F624778434A6A4D723341426D4D6A6B61515356734968597052586C3470787776342F52675A48634839652F31796652523279686442507A6734495064667A69767445655849637A664B31455932772F75586B6573466248686777574E525A66496D5A675245667A49776650364A734F4C4A637446555532637A426A415549743645624A594C4368476B696F6F4B464A6634524574526F416B55663444617A7143574E794D5754574A734C4377616742646D655879436272376D746869382B667A686853737765475034476236506F4A486E6B775258426B564668584C5430356B4D6B706B736F70476B4C4235504C70574F4965417651695A4E37654B426C62486844774B426F494E516B526365727864656E31654F537748775A4E4949685977413872777A3261686F4B536F6533714230796950724159634138386A33656D304C675343767551685A4A346D435167654E4D326167754B676549563951685048657656346B5533456B4D55775246657470327745526773364F486777504A68434E5A4D546177574F304C345749316F44587A682B75422B384A4831786E2F6C683247694F6A512F443561446C73324A5950587139667270337635626C5430394B4B467851454D5467344A4F6463574267536F5047347644597173554451457155594B69675349657A764834412F3442655A346A33566536517977664F5A4F584D6D716D764B6B55776C4D5477304C4F2B684665495031334E736246512B57314A6168484234424D6C5554495133474167686D3746525846794F34754C5175497A52776F58446359794E6A694563446F74384266774244413050432F69346C6C5173744369554139364C5244777459435A6F656436306D4C4659516F446C3839707966564D69517853727A633838326D4955684877503252742B6B414C4369386C6D39504D4568726D426C424575656C316472516761556139756A39666E67642F766B792F6E42592B4F527047493834534E79594E6A49354D784C704B43682F2F7A687647692B5230456737374F7A3343782B626F3572375359635170784B7030796775745969455A536945565453436254694D576938486938794B62355855445139714F344A49444B3668424B7934745156465973782B504E453563694D6F4B6934694B556C425444372F4D6848423255637A63574B776B6E45305179475563344D6F72427754346B525575576F366C78466B704C6A58623142654B59336C694C6F4B3855506E482F3641364D4755766D473547625A486B43416F79422F684863754E364A6A765A654441374552464651794B7571796C465257534C72642F2F2B4177774F44737033385359584652574A4B314E65586F71436B49585273514544567444614254426A52704E6F633770414642542B304658684E51304D384C32574B4C4C61326C7135527634644B5043684D4F5158594969726C584E58435279756A32565245526F58692F654561304546516C65727343694167594642334C37644A5741734B4367553448464E56525A4B536D685A5052674C6A79417946706437346F466658436D364F73454365676365576564734268676247354D66576735654B352B6E706149463675377552547156526E6C356D6278474A57585A4E75376475343937392B364A776830654870487A70454F54537446433572306774527938546C476F61644769457834546E764236375A77725A5451314C34717569767239446C4B794D4E52692F434569505A344D436B4A2B7A4A347A4531565656584B79394831354179693878682F31792B3855416C6F4D57684F65464158467547724770796634714F47346F4562623054536D35586335686D556A4759764236364D56596979514172322F77744A69704A7773686B62474D444C71776642514574486F43424B70595145496E4341794B5674634B52396F495A496F4C5057677072595530365A4E7734775A4D314254573475796B6A4C52324852354A463471734A424B707556636A594452597443646F723837496E36333436516B7A6D696330516A4C746D426C765044374C5A52586C4D72614F423747557043344241356A6A464634374453796151744F70687739643374783476675A584C6E636756676B6930773267664B4B597178597552547A3538385754586A6A78673163766E785A346F71787353684377584C55314E5268377677477A47697351694A4A3179736C4C6B4E4A555447714B3673526A3655784F734C344A677A4C413948594251562B57564F2F5034535334684B556C70574B557248475930594C6D5778615847546543384561746172466543736767736250452F7753717A674F7171757178474E4970644959485274467143416B46706A766F364B526879636A466C586462727149496C395A343033596E6B496B6B6B6D353134775A30686E6A4E6C5034716644345074352F757132444177506F37753547494544465365766F52544159454E6D6A5A657A75766F332B2F69477878454E446F2B49393941384E49784968474833697574504C34446E78766B714D6C4D302B44686A65683443524434675A61476468327834456733344A42426E6F6561794D6D50305A6A6452494A534C454E48635548414B4177464474662F392B502B4C78424D726C7331773849706D75695357615161324778434F3578655543385432386751584249444B4A4A477965706963446E32556834504F68734B77456958514B742B2F3034486233474F353244346B57546161486B553753616F5541683243336B59316E6B484669734C30706951584B79797252324467447332624E516C4E7A45367072474376354A4A436D612B4678437544783243496B4245597159592B374E74526F644A31346E57566C6A426C6F6B656979304D58684F61626873614F775051466B306A346B4578356B375467634436326D462B46685036356675345739652F6668566E75337548736C7051566F6D64324D70375A73774F7A5A4D325539753776763473795A4D7A68392B677875642F58435A78656A71576B6D6C693666685A577246694A55474242413866754B43304D535A7A4C68514E65524351344B6D4E646E596B634B4B4F4D74436853314C662B334C424D7A5574466C4D716C63724545424D72454937785066342F4D5257476B6B6B7962355155465831316D30733853666C6C6735416F584B6B343930326C6839347872545054574A416D707275656535654A432F30394C4634786F543255696C6B694A50564A7A425949474168374A436F42726C62495337757270615A4774676F42396A5978483050526A4372666262364C6A56446366796F7576326259774D523054784F524958472F66396959426832375A6A5448494F364C6B736B4C6C676A77674D30556C54546B30725A743950776250466E4B72626F316B72676F4A756C675A4A51304F447374686C3565556F4C696F575161574A34344C515665446E43514362775451583059466F5A2F714F4E4E7345687358736C45556633414D2F6236377452336C3146634C78474737633673444A6B7A66513164456E6D59396B61677968676A4A55564A614A56654F78496F4E524A4F6A723077496B6D62477955566C5A4B64637A5A3835734C466E656A4F6D4E31516947484251584235464D38455962515A4C674C32554172594565465950362F4878507945633378305969475A624639775579734242414A754F547A366152676D50524A624E783933594D7030396578706466665936656E6A736F4B697241676B5574574C64754E566175576F4B6132696F345751746A6F784663754E434B62773463514F76354E6F5448484451337457443579686173323741634C53324E43425579376D4C636C6F615453634E7238322B66664E35592F4377634A4558684F493752364153643557467352682B646762736C51704E4F6D345444354963714B39346E39534B386A486C79446A69505979794D53596159344A6E4179493748692F773736356767576A4E75526734416E356378625171526146534F6F5A6261674A4378724C45516646374F33624C6C33494F42674D696E754C764A704154637356674B5679356678343372485367704B3866354378665232586C58774D487A49696A313856685871714367774F4646692F2B6679324A49634A6B7A5639526D7462553134702B576C4A5967486B754B4A696F7344417041644C45564450524E31665453584450347044716A494E4C304651514C78375550676348464C696F717A67575A7870326A6A307633532F786E727739425A693843746E7966334E5259466F576C4A52694E526E43392F52594F486279493970763345496B4F6F617969414E57566A5A692F6F426B31745356494A47506F36786C4133344E424441335333527447504A36556853596765563755774374584C3847736C6E7055566855686B7A5861696A347348587871666F4A434635665A49374E57486851454332426C6D53704F79666C5267314F544D353767353278504349377451544964526A706C34644B35757A68303842794F48542B4577614565314E615859654F6D6C586A707065645256563047327774596E674C7875656B2F487A74324446392B6352673933614D6F4442566A376F4947624E693048427333726B563552596C386E2B316846673453447A705A4B686554617652346D4A59324D526F744271394A676E666A5938733138534570546D5A784A6A794D67504F394A73597737713042696E4746335139316A63657A58335977357948777545344F474D5961435A42794C7064364446784C576834547978436B74457930626751626C5A4970456642335935574D4D756331384267385038597549304D5244412B4845596B6E30483672553444436E3748524B484B4A7552787748784E6A6845496852314F692F41514459793441425A336176374B79464658564661696F4E50357A654D77494F6F454254307179415851724A44664F644737576D4E646F784F546A765837474977455546785768734C4249664647616558346E4D31562B587745714B32766B516E6E424772695A334851754738626A534472566C715263504271467679434967644552584C70304456393865686F3964306667383255787662454B43786373787477464D3142577762526B424E6C4551487A762F7234683950594F344F6174546A793450794B7055756254572B595859664753425669306143376D7A4A324A77704930696B75592F6144666E5551325853546E78334F6A594442354A4C35784A6D4D794E326C6D3267694D4C47435A594A6E7868653070426249685A4F7759484538534433704863667849427737734F343072563173525477356A3376786D3748356D41353539635173434151383832514A34736C356B4D795962632B4C4543587A35315247305872694E644E4B4C70755A70324C68354B586273576F2F366165577776526E3476426C344C556343573961644B4F2F55724A4A6139356A676D6345703479466541785557597756524D6A6D46364A6B51707870723433375150614E51456C6A7542342B74386B50336D6538524F58446C53673245364C4A6C785371597638797A664C2B4353685771416B435349376E304C46397A5039526136484D45447555746B30346A466F386A477335696543694B3639647634646A52553269376667766863434A584B7641686E586C4D48635076397A76356F6F673555616272616D74714A494E525556457151567767794E51674549387A6C557658686747646A594B436B4143442F6837646E3849672F5669544A3565674C2B415A54784E71436C6A3954466F476E3965506B704C53584A3664476C64556D436B4135677038444F684D624D4B677A55597348495874392B50655142394F6E44694C44393837687147424F4B71727937423633554B735737734F31585746434262532F43654270422F5A4C444E585359794D52484478386A5663754E4347657A334441765379437143797568787A353837452B7657724D5739784C57707271305152574B4B4A41334B6A5A65455A594570527A5A68393061687075676F5A597A48417A3968494A52686F426F477348316B726A5551366A4A377549627A2F682B4D34657567433774322F673143684278733272634C4F3365757764754E382B506E35624168654B56365A4175666C4B3166777A54646E63504362532B683745455A5656536C57725A324C3531375968705935446641484866693947586963624B34595331654A726850586B734C45644464644B4D5A4E7068616757703172504A356B6D574142486759474D307061523567736F4670414A476730726C424270687A776566306574525436756C6F4D5856736553312F54314B797072307932614654692B654B773232494A7747495A704A4D32474F4F65506E554F2B77386378594F2B49556E4D55456D6B4D386B6E4337374E78624A716E4A57417571616D4674585656626E3049665064746C54434C553851486F735A4847707746714243556C4D6F4B536C444E426F5259444451356F49596434543538344C7853726378686162417035566E2F5A73336B4741682B6E6C4D725855776145386B7547425A574978505568373451304863757432466666735034344D2F484D485953467238377164337238654F48647451556D346A6E757754743869545972477841463637414B6D55672B366565326939634231584C6E586736705762474230646B515244575555524E6D3561693665324C63474368584E51586C366341385A45743448414D476C534C6A41466D4955777677696B535245534C4B7A716330303934715245343246634F4E75473933352F4445635074384B794D35677A6277613262642B496A5A7558594E61634B696B2B70704E2B6352327A6D625373496176495A3837657848742F4F4968624E337452574F54487368577A384F4C4C543250786B686145696D68444577494D46673839446C4F68444B4C4A444742786C48464756674A51437167477A4372634B7244754F4E4D457965596443694B4E436652392B7277714F37365839334F796936555A527237752F6C3242344334386170705A59784633485557426F6342537865762B5067572B6542316343785A5452364B34664F6B6176743533414E6476644742344B494A306974614C6D6D50695938703072623646376B42566452567161716F46494856314E536773496F5544734C307363706C4B6433454A55335447422B57433035566937722B6B7341444267462B794F566F72554D316B34685A5471394261435455732F5674316F65686E61673144544C4C48464E63306E2B2F4A57724364414F6855332B69346862333744754864337831416544534C65664E6E34646E6E743244504D7A7451556D59683751784C7363374F326E43796449555976506B51547A4C774436503952672F32377A324B4D3666614D446F36444E5A6747716258597650575264692B2F536E4D587A67624251552B4B5267614954484271352B35304E79444752745963616C50494D73664673653853476554794753536B74564C5A57324D6A67356837396648384E6D485A334478516F653461747532723865655A37646878656F35434961537867386E4D507930474362595A55336D307355652F506274766268772F6759734B344F35432B7278394B344E324C427842615A4E7230416D4859584879556857796D5941376A41756F462B66464B736E3847514E775A566B79627367786D567942366150416F5937466A58484E5147774A6C386D66776576515158647049324E4B36614651785630666A2B426F525A4E34794731466D344C77382F7238776F73392F3843466F647959324E734C49614F573364772F4D515A58476D37675875392F5969455756684E50526F5966722F6C704B6D4A705768736959445831396569757159434652556C34755945677A37342F4A5A6B51594942513975677A382F4D674E6554525342586A5351774B69745A5041734B5350672B42726A71653071564E76637A6E725A6A6259493356576F61444B417365542F2F313058572F34306D5949444A72496F6A61632F3933787A4237392F35444D4D4461637966507738767662776275352F5A69654C534C477A2F4B477866416E5975494B553752536F424349354541675033557A6833356A594F375739463636587A364F2B2F6831416F674B584C5A3476514D767644756B6367784451734B374C3035656E717550317342786B6E4B674576425A4E31457A7444693846673351686C31457169373334453737397A424E3938335370425957475242792B2F746857376E3132485263746D776D39376B497246776244415331714D5A59534836336A6A5A692F656675737754682F7651696F7A67726B4C71374239787A7073666D6F4447707671345468524F4A6B59764E344357444256637550697136576A3635767A394630756B796F6A6B303079414447437A765374706D494E6D344431474E58362F442B6658544A6635335A2F6C4F666D426F376255334472616255694249536D614E5574557176692F6C3739486A63514A6F4F48663266544A6C5650426433543034767A725A647738745146644858656B5870504E504B59344A736B517162576D4256674C706F707A4F727153736D515646645849425171464F6F41382F544D6E5650597452676E414B465054534732504968466F384B6834664F612F56446B382B4C5541716A7270436C46616C582B72735133706F5A5667366B507968746D774A4C6A4F475573744E2F7377743539682F487258332B43776634306D706F613866544F54586A31745A6451317843434C78694731352B51416838466C39614361637545354F586A514C5949392B346B634F7A775A52772B66425258726C795246484C4439476F7357546F507139597377707031793941776F31517132795445656530697355443568346D33714B5635624670556932344D627735395941436A385469757464334275372F374268664F645172746F7149794B4D44592B76517953525434475A635147426B48336D4341436B2B70433269376467652F66764D516A682B2B68556930447A4E6E6C3250487A7333597557737A5A7259776854364762446F4F6E7939495573675546562B36794B61774E746E565555302F4752676579774444334163754F6F39724568414375556C5A4B56566579734E79753267717548722F336344493152544568535977314150522B2B324F5664774164414E447259392B6A775476616550533069316E45624C7432693138766665415A4B6753695177695934387238506D4D5775474A304B2B6650714E6541753679386D4C4D6D4445744277532F3141534B696F306252426472584C4E6E545A43744843634641724E614B7479716B5A545A7950667144374D663651797231715278454A796D6B436938716C79716B50775A4276686D73566C525A5458546838364F4F2F6A6979775034355A7466346E3576444657566C6469385A51316565766B467A46395568394B4B4C444C4F7141544C4268684D57667152356E4773754E7A73614E694C3237644763664C4565657A62792B7A50565351544B64524E7138437131597577613839574C462F5A6A4970714C2B4B4A43414C2B4576687A4B5279394F565171556B6A4D4D4C334C564B6D7035707431745843335A77784844702F44652B392B69613562447954756D723977426C352F34326D73574E324371747069654430324D7645452F42346244724E484F53496D312B5461396276343153384F3475442B4E67795039714B686F527737643233487A6A31724D582F52644E68324245346D4371394E7369486452684E6A35422F4D5475577A544736417141576637434A7056696F6659356967512B2B702F712B66302B2B6148467A7238784E6474587A737775634A4374352F64626E553352626C34737178756F4E774251502F5677764633796B33706C7250354166355A595A503961422F454A39382B6A584F6E327646324667632F66636677355879356F4442414A6573536159414652697378744A506F797456576C61496F754B517043745A6D75644A534358534D58514F42516264484F61666C664B736C6B4A76674336755767314A69575A4D5656574C61716F747545445549715246314E5856355A6933616667434648512F376E543334504468382F6A357A7A35486439654946415358723179493131392F425574584E4B47327759644D6467786544796B694C454178742B35486976514161387A3475616B416F754567726C33706C6A54716F594F6E30586E72766C53715A37564D7777737637734C32586376514E4C4E4D4B4F73456869386E5A486C67734F426C475744516874714D4C355132622B48366C574638387447582B4F546A723655364F33333664477A6573674C50763751525462504B555649576774667949707449476D4259486C436671547435733730587633727A4D4C3735366A4C753933554B703272507337767877737672735768705057787657467770557270707357693574463341434F625577484337557172687877575968456C33384A3237357363427732304E334C382F43686855664A727830737957757462664267794E58525173366C6B515A427159612B71596F42735A692B4C4D32517534324E71472F723568584468372B7A484264773459444A5272616D705150343346764249704873326131516A626C784B7946316D6B5571456D32394F795957556468507842704557446D2F344B455871624E41444473364572775163766B72514570585654595774517A6171345A702F552F564C7A726A346D61526A4B7644575564764B314C50543239754C456956623838382B2F784B33725136496C3538366269652F2F344C745973616F5A5453316C79446A444348684A5239413642436B4F706844484F677A393848536D47506675526E486C306A33732B2B6F346A68382F686437654F7967724B385332375A757835376C4E574C70734C6F704B76454A4E6F66424F664E4253694832512F33683476574555694D7358622B4933627833435A782B6678476A34506859746D6F2F587637634E32336578306C3247674D38506E2B55547A636C557452426C6D556E4B55537261322F73454750752F76494C626436374B76646D3165796465666D304C6C693576684D386667354D687735544250382F4E5A5033796C6F45386F58782F69316E58584746766B6B7330576644314F69646E722F523971726E5675717377387631545A616B6D5778414B4D6538763134737574486F58626C664E375534706D4658342B6239614C6235506E3165677151574A4A544C6F37723648713164766F72656E44782B39662F444A6745484259337A523046416E78547A47467A4E6E4E614B6B6A436E58484E56612B6A457368414A424247306643674E424F4634576B737833434558617A3753754E55355A316B424B532F74716176505A707152594379473235514A757A5672786D4F3459777979717962487A387977515872783041372F342B646334646278642B444C4E4D7876773478392F46337565573439706A53466B6E444834375878566E2B51304573744D4977734A66316D6B3067476B6B6E37303341376A374A6C722B4F6A392F626830365A4A77654F59766D49766E5831714C6A5A745759656273656F5243586C69356F446F506A6A78516C4968424F72774B5465753544727A31382F33342B6F757A694B63655950587135666A4A66336765617A664F52476C5A4341484C6B4F4D4D485A7778433838334434794F7A6B4738545742386451573375397451584272456A716533346658763773434B31544D46474E6B30715337426E4B55674D417844577431504251625832476A6A71574F4F627750475A42664A48514E5349445674537776502B3664656846766A7535574A437235514F6E4C5A4B414A4469337571614E56717159586738545154707136544F3762515068362B786D4F346752474F4A484737713066696A4E2F3836724E4841304D626C516F4B41734B7A6232696F523156314F577272717444554E4133425542592B7636467169412F6F39614B69744179462F6942432F6743793949666875445236467259336E3148536249513772744259512F504F42415A6A4573327A387959596F7073706F756B69476B466A47745055516B6773753337394E6E3733327950593939563549643756313166697465383868356465323472465336655A47494F5A4B4E6444736B6669586954686542776B4D783568346F62485575686F37384837667A694377776450344F37646670535656574C4C39726D53566956316F364451687530595870454B4335757678463651536B2F4F4B34754B4F54656B722B38425468323968392F2F2B67684F4862384B782F734132376476786C2F395436396837714A794953336132534338746946694775764B6972514243646567753373457633377A43505A2F64526D333731784457586B5157375A746B42686C3565705A38506C6937454B526D4D6E7973446D4C397975586E524C6C77695241446E5443716958336147714C4D566D6A363939367253726F616846554C6C526261355A4A372B476A674B477867664B7743435A7471694A4964453331324C716D2B703338764C704F616A6C5547616C4356585A774A4D613477384C4E4735303464656F38506E6A336D79653347475362547074574A3843674F3958594E4132467853514E476A49647637516746424A6730474951474937586B75653075736D59775A74726F4F4546384D59615671667041484E666E476F5A586F532B376C353476536E756F684A396478626A6C4668323532342F336E2F334A443538377A437558327548502B6A42376A3062384E337637384B6D725973514C4D67694858577641544D734245724F7653415632664A4951593657704B397667475957422F656678506D7A4E7847504F5A692F71414850504C73447237372B4C477071537545583179786639474F4E514B30626765485943586D564E596A32396C7334384D56396650444F4B5852303345566836516832377471476E2F3648467A427A4C686B4646727A5A516D6B326F6F4C676567554370494B62436A5546724C743746472F2B2F4274382B656C35334C742F53367236416F7A76374D4379565932776261614C43517976415561577670684A7235727A65686759327173774F6273306563326E756764367252705871735767634570765371356C514F6B634537525337673856646B3279364C47556366326B774642726F514251594C6A6A444434334D735A6D70785461327470782B7452356650583579556344493168674F5670346D7A6D7A5764796F387649532B582F36394D3645577363414143414153555242564870703775484E4A6A434562757A316F626A517842767373696F6F4E433270706D426E76477A2B3434555A725739576771397279367561596331434D46355175724975496C3954554B6C4C774E536275636C70716174516550723749396A3339513338345865666F2F58384C656E33574C31754C7237336F363359736E3046616D7171674252644535366671557737446B484F35334C433765455A652B52367775456F446879346A454D48546D482F7668506F3772715038736F4350502F73362F694C6E37364B70746C654641555A6D426C2B767A42594758526E51374449415052456B53466643706230646C383466775637502B6E46682B2B65454E65766F6A6143625476583443632F6552617A5A31636936435870736C426F4A5045455732383977706E536F69657676614E6A41472B2F645253666648674B442F71374D4731616863512B6A4445574C35384F32307277716B777A4646306C4B786448696456537572576867627464575350676F706366366E62546536524B53663334664D49687A32745436384637526F31763347622B6D4935456F636B5173446B364F2F383332743455394568744E77314F5759794F6A736C39595A6B674C77754D492F4B45527A31764D694555454F36436E7877376B525A69495A2F6E65794B7842495A48773768793654724F6E476E466F5739614877324D6F6D4B6641494F75444276594764675A594A52493672613050446A75756B683949574F304F344668576966394341544E686647686C414D4738784A7A2B45797271393455315179615A754D69547178723550564C506B4233356438707845354B616763556E7246774371336E2B7645762F2F514F6A6832354A4F3751764158547366763578586A322B6165775A4D6B534F436B54664450445A6F54414E4E394D31705A47777A6D34646E3041527736667765656666494E5470793549662F664764632F672B7A3936446D733231614B697045437135487254706263675732534B6A31594538504C637649684855396933377A412B6565636D396E313157564B533835654573504F3570586A39745A316F6D6C36446F4231453269476F624F6E335A743943494D687A7A66576A41376A564D59422F2B6D39666963566775725A705A6A573262392B4546312F5A686B564C476D486C67474671504562515365355536797A63746F6645594C49656E2B68755473355354533673356431496F317A552B6D73695259466834695543773354723658463550444D447746427231414E674945345A5971465A4165532B562F6E7A4D44306A6D744A565336457852547A4F6752504D447071416E4D446F48787A47355974744F486675456B3463625873384D436A55464871327174625756517470734B79385543726774426971506669656B4D2B6B59696E3450486E3253464457744B37424531524E7A77746A51354E6D6C2F6739476D43372B666275314F35555A6C6358586A53464E4A756B4A4D7643467464457773473958672F2B34622F39456C392B64687A33653464525731754E4C54766E594E637A4737426E7A3235347332546E5A704631324E464659426B686D41774D7358727749424C783473795A4B336A376C2B2F68797938505947776B6967587A312B4B466C37626968646557594D61304D6D45426B4A37422B674262614A456C7438734432783848764F77435A4C3937476E763348734348763775434C7A34356A3679547862716E3676487939786268315A6465515945334B4F76703852584939305A6A6F384B4935626C714859453374723239482F2F31627A2F472F693876495A5963524D75634B757A61765256376E746D472B51746E7757736E5965656F48305A51474175617A4A525253425249553866344E703966755643362F766F2B645A505572584E54506C5278365876302B49596977714548775279646874616672414144494863636F45552F6A53585A7873726657637653343146573143315459444375303768436C6247437742514C6B314B5034752B5371426B5A77344F2B415678737659714C463974773575544E52774F6A6F724C5134514A533647664D6D4936362B6871556C68594A6C34664E5071566C41544E355151714152536A776D6F6B674241584277634B66476546696D4B63364E6B63586B4B6C566655336258586C42314A376143665A74466D4D79534D536C456A71306951394D706F56784166444F627A2F4452783863774F6B546C7845734B4D4C474C6331343562576465504846567953743750576C34486A476B435A31776D4C44564737416765744C5450414D78424D2B615476392F57382F776E7676666F71422F686A71712B6469363436562B5035504E6D4C522F4871556C7645594243674A656E34675579546132765A7A504138372F6A4A494A68783839756E582B4D4F767A346A4634446F393958515433766766357548355861386A5A4666425234317173337551337875526444414A68676F4D61745732746C3738502F2F6C49337A7A3957566B6E5441574C7133464D383975783635644F3948534D6F756B453368744934774541436B643074655253396B614E7A5850696549365469374D54516147323458535A7252385564596B596A544435515A472F746A732F714D725A544A73706F6E4B73487431386F6637654B716F574E4E7741304D7469387151416F50705A6F306A33466B70446367564750772B67715037626938476830327650556D464638353250686F596466586C516A756E734463324E614B75766B4A6371654953576F516946415273704E4A4A575954536B6C495546525A4B637738527A65644D58306265374C4D4656676358734A3668326C344462503750452B58693844734A4A4D322B664A75313045557A4770376B4F464B73615A6D41724D64434E47626A334F6C322F4F4633652F4875377A2F465748674D7931664F786B7576374D4B4C4C7A364461644D72555242696532555938635159517235537963793474562F2B4F33677641326A76624D6665665366783631393968725972397843774B3746735651762B78372F656A58556246714B7971686A777344636C4179744E6255687279497138427A627033646B596F764545336E74764C39352F3978414F3762306C7653633758326A456433363848467333504965417031494B70435245307650684E4133627A694C6F733251434277743930575163726131333848642F3879464F48476C4431687245697058543863494C7537426A783159307A3278454B686D476C77436A3852595335735130742F6135754B336B784D723477333657573050727442497476476F76754D595746456133697979614F3055615072737971526768545672362F5978442B426D6C44726D74434948427633566B45414668706F435968716C387A634A55764933725A70376E442B4D4B7869364A4249646A304A5679514C654B6C57384F652B6A6F364D547834796477374E426A4C45627A7A4871484279666C516F4252567936674948753273716F556851457A546F632F4648683238724833676861446D736B664D443239664267656C556D7A6168566266564639586273462B5A334B75336F55494B5A365458506173714273436B7062754E4D396769382B4F59352F2F766E62364F727352763230616D782F2B696D382B4F496572467A546A4C4B4B6F4442747957414E65457A727254734E50433430484453584C634439675634634F64364B583733314A5534657534487769456579552F2F7A2F2F6F69746D786668647236636E6873746C2B6D594B664C5A4C436238614E4E4F6A654E4D55515363627A396D792F77336A7466342F6968757967767138454C72382F43717A3963696655726E6F61644C69475242426D4F7A5046355A4D41427165634650744F5379327A5A6144534D632B65363858642F3877464F6E626747327A2B433952746D346F303358704A32324E7236616941624A7974496C6B7174685072657174556E4B77484E7044334B6464566A694357564C6A6D544B614D6371444372752B5A4F714267425A677958526B4749385150644A394F327A496343517A30476A552F344F514B44782B4A3336455064495463774E455A315A36485567756A594A665A6573412B4C535241473368376249304D566A687735676B382F50504E6F6930466755477654416E426F466C7444536255754C53744354573046716D555358314A4F6D43676D54346F5767397265354B4654777254564F67517A4554546E326D53692B577933647545466D7979564567507A51646D6A627054653948795769723047314D3457456A45484237383568622F2F722F2B49793631334A454F30624F6B79374E37394E4637372F6C71354C7474487A5A61466B7A41746E7671596B4845686A536F645143775677655772742F485757352F6A36382F4F6F4F64754749334E5A6669502F2B6B563748706D4936593156426C676541694D45686C2B344A4561676731504A6F36734A3471526141532F2B4D55482B4F6A44677A6837374145714B2B7277336239596A46642F7441524C35322B416C53794737575351355241467978467252697359394A724748674B6A6233675170303632342B2F2F39684F634F58555467644159746D796668782F2F36425773584C6B4D525355464D6A5746566B714C58355039654B36624A6A6D4D4D744245784753366558373131572F6E7366685A74664C386E2F63326E3537586751664776644A59675946764B6832587551436B464C6C4A694151477A324D796935723351533047335859396E727579375161434B6B67466A4C35505A334C463433526E4D3249352B6765483450583763507632625A77366459705A776B634459386E53755136466C41686C5671713670675156566178386C364F7376416A6C78595669796E6778374E6E5747454B354C5054335134554638707078696377774E67326F46526761535045392B7078714D632F445053506A643467464F506444516148506B5650455442345A7771336E4C2B484E4E332B4C6656396378664267464857317A6469776352332B6C2F397444787162612B454C734F335351545A7579497154746167456A66795839435070784E485650594466764C3058372F2F684947356375342F6161515834362F2F34765052387A4A6E624B4A4D4E5953566838356F736636354A794174504D676A48696D4D34484D62502F756B50457674635045324F314578382F79664C384E4C33356D4865724A57773077524746686B47385A614461477A4D75464A326758437655736969742F384244682B3669702F2F77396534654C344C5257564A37483532456637794C312F4433486B7451704D6E6F357A7A4864556C56583963457946634B7932596D6E576A5444773863386D397A753459684A39566136467472416F32643070642F58386568394D374F495777704A5244337378455348367636656332696C47566F317442795141386A30666B5556326C66467868674B636544442B6E56734C396E496B727A48524B4E715952474832445134676E346D4978576C746248772B4D645275576B4A456E75655347686D6D5931734357316D705556705849484E715345452F51444574677136746545426645354B7A4E66466379573657506D466B5679574762433965466F393862446B66474C316F62326F5769595A6B6842392F366B457A5378422B3977595A765379616C42783064742F484A7831394B73652F6135516649705031597657595A2F74502F2F687157725A694C386F6F41736F6A42536A4F6A6C4D2F64477A6541317364514D69316D6D577762766665483864766666344C667650554E4C6C336F52586C6C49583736563776773871766273485435484469654D4278506A484D35444D306B5633484F706730546548676B676E2F3468312F676B772B4F342F4B46507378716163495066376F574C3331334E5759327473446E2B45466A6B5A59754F2F72434D576B4C396E4455443331716A783958723366676F342B4F3458652F506F62324777395150794F41463139636A702F2B3565746F6E746B733632785342766D304B656B674C4267714A3831552B55334B50503934645037576E62465456306F4655595662552F547535496C2B68356B65474248474E6D564575686F354E544B5A464D61724445334C5A5159316546643354613255445077542B6F3170646A4A44474D78634D7461682B50666B414A7A416F59664445556F45425948474B5962334F59753372782F74375A3234316436462F562B6666625446324C68357161776F4E536774426B6D45704956553135524A4F32746877417A733467585276476D76684F6172365637784F6330374D30744464307235546D347141544E52576A4E526E31544E767A73576D516F6755775044694C4D6A5072434E775945526E44703544682B38397A554F37372B4F753363476844763156332F39496E62753259535A4C5A586953746B35376158664936426B756A4F585166476B504C4338416654324465476A6A372F414C2F35784838366475694E443062377A673031342F62733773584C4E416E68394D5467576755463962586F78574C2F495A4550435752726F48385850667662502B4F53445537682B35514661356A5469687A2F646742646558592F6D7069624F354A5047704C546B4D616C6C4F534D32414174684B5568456B785A4F6E626D43643937354270393863423733657363776232454676764F6444666A7844312B562B325730667A36394B2F62415136566B36686A6D4D5A46642B2B30613650477661415A497252502F317054725A49766A54743154324531776E4272505273715A35537941796F4D62644D5A564E344258414B6A37354C59636270644C6B7A7475594C4377326E6D37472B30646E544A7A7175667541317734312F356F59477A64766B714362776F6D4635727032736247616169727235622B59722F776C63776B4F7270486A45573445437A644578417938547A6E63347031384E462F4E616253545148526F4A7650435574584A39626C696B4F54335A724A7438674E4448314E2F5041634D4369554A4D617852344D703173382B5043307056332F4177744F3731754937627A79485455387451306D5A58305A6F75682B546757466E624467654C2F7147777469372F79442B33372F3746436550646F68722B6677724B2F47644E3537463276564C3441386B595075533842465972493034744230454273644C416F4D44592F6A5A7A33364F6A393437676336624935677A72776B2F2F4D6B475050505336696D426F646B66307553704B49664830766A6D34436E38387064663463432B477A4C4D5965573657767A77427A76776E56646645766456535A55363258766350585664346E694B6577713566397936543355662B427A586A444F36334A514F74355652734B67315547426F426B746E4561754136336E6F5949563844507576417761427872476C725A6375346571316D394C42783737766D3964374877324D35312F633676446B71616E594A3841477066723647745457565571367255417131795A4955354E7036422B4F424F4B616D7455436E77353164676533504C3553787855556273724256446448684E3439434367484944636F334D43677855696E675042594646393975523866763338534A34363379717A5A6151313149737776762F6F30466978735274413363524C32513844672B4270594742794A34744468452F6A372F2F49526A68793467614B534948593975776A662F38484C574C742B47554C464A46676D346550774D436B61306E31686E6F6B6A5052304D4459594647422B2F667749333277616B682F78485031325050532B7451584E6A492B794D417A746E4D57526B51553542735932664E5A43423454692B2F506F4933767A46567A6833756B64633144576271764839372B3341383376326F4C796958455A5A6D72714F556B4A79467354566D4F54753463344C7571487575495835386659692F773764686B4774674D614E6D72596474315775653668787932536C71645A414C59686D767634744C4161427761374D79323358634C503946726F3637347243756E6A6831714F4238657A7A3278777956736D756E645579452B5556526169717168434F455831445031756B632B4D634E61326D63366545443855695473376368595168793445443550755953584663654A3463746148574C647841344F75616E584C664748585639446D2B78337A4F6A4E45784D36654D6232356D46486E685A43796B306C6C637658594C6E3378344646393863677974725665466C764C63633776772B68733773573754664652552B75484E7A65666C4562306B41596F677955484257446A723857416B4573574A552B6677642F2F58687A69342F784B4B6930757764636479765047393537422B347849556C5762674C306A436B3274706C55496651654A684E69534C2B2F64473849742F2B51302B2B656777726C32356A666B4C5A754F4850396D423531355A6A356D4E6A634C686B68676A467955594B6F664A47484665626D666E454437385944392B2B645958364F6F636C686C665733664E786666663249594E6131664B656B70674B73794466495A5058537474746541494945504E47466372356865485933394D50347771716A3847484872764E4444582B2B672B6C763675696D3671652B3047686E362F544744355637685333482B453030444D384C3478644E323569375A7231334831796733303976536A375572336F34477861664E71682F77635A6734574C70714832726F796D5A4C4E65675762692F79575754524E33326D4D51464249384D554241563544457A657A52553351726677586E686876486866475864427861785175316B4D787873526B6C416D2B63373059426869713763793050516C38785A5778454538436877366377362F652B6C6A3454687A41745837644A757A637377343739797848793978364642655248476B3246354765634230514A694E7973774B2F735667453579396578742F2B35343859724345554B734F476A637677326E64335938753246536972636D44376F724245573350634A517439496F5779645544662F54442B355A2F6678716366485554623151374D6E445564502F794C5A2F4443613477785A73424B4F77494D447652557471556F4531454149567935794D36396A2F48575778386A476E557764313454646A2B3343712B2F76676C7A57365A4A7836496856687036756C6E442F4D4B5A4E54496241434858777A315A384655422F536E41344C465557627039663363477A4633342B7A625175544E672B6836656A316F6A6655376C794231544B4B6A554A644D5949786C6E774736795941524737344D48754E42364765664F74714B7273776339643059654459793136355935354F65776E585870736F576F716936565963574749466941736D4B7A4C34576567504B716C44314C76684B746844616D36413353785647757657616E4A71594E546641314A54416D72614B61664D503563592B497A414644676C384F61574F70793475324B78313437393350384F34374836507A3169447136357178627630797650544B56717A66744152564E55574146524D796F7030785979745669796F77496F6B594C6C2B3968722F2F767A2F4456352B6651695A6A592B577142586A397538384A794F6F6141724459566F726374674D5A377462446B4C6F41547461505344694C662F725A722F4442653374782B65494E7A47697177342F2B386C6D382F4E334E6D4E6E55434A757555785A494D68506D6D73496F5635674E34747A7054767A797A592F787131392B6848544778717256532F4438532B7677367176724D614F68496C654C4D56615A574A72736B6D70577973777A654868676D577078425A59372B2F527451717A75725274492B58746A514B7031464C355834387A4A4C70763738355374795972524C6678713064534350416B7755676B4F70444446524E5A4737724462382B52706E4439335354723448747962304973676C7A73424B5A756657754D7759475966385A4B6C4331426455796F427459362B4B5330792B78326F7552532B6C47737643396D4E7832637368466F4C643435616339414B6A4D6D3536796346526A36326F5056786A342B6361444549444770675475493463667755506E6A2F45337A3677546D6B6B6B484D6D74574D37552B76785A356E4E324C78306D615556704B6D6C4961644E6B786775586B756978474F523348393569333834392F76785664666E4549736B734838425533592F657732374836472F647246384E686832664A4D5A6838346E4A6356684D3155734F504438464143762F376C752F6A6930794D792B5A436A6272372F7739313439705731574C526750674A4D71334976427735397A6E58736959636A633753384F48376B477437366C342F772B33632B685755467366755A37586A314F357578652F6453564A546D4F477950386E3159514E56457731545A32572B31796E2B4D517A587876516F63316543545233704F5A5A6E634C74506B623959736D466F5133694F7462326A745971717356444A42476F7078705A676F61752F737772486A4A334C41364D664930475047352B7A63395A54447A42353555665342612B76496C536F54346166564B436F77553749316D7944457752796C334B526B75544F504B5A6278354E3041554864487263526B554769773963645A6A447777786D4D4F49524F532B7331307159577378346445496F724F726C73436A722F3550392F466E6474444341534B73575478416A7A7A346E6F387657734E5A733074677A2B516873386852535133727449466A4E4659424466624F2F444C6E782F46336939507951547961544D717347624E5371786376526A544738746B326B6738467063394E65437870524F504A45415041676950707648355A2F74782F47697278427654476D727838717462736675465A56693563696C386C67666B3933485365434A70686B4651775351794D59774D5A374433697776347A61382F78743539782B44335665414850336744723335764C6259394E527342723248326D6F53316D497438686B716B6932624362454E6D314F456B46457775384E476C79356F575666646A63674A6B736D73302B58573339644255726F44644655734B4F42785758347A6C563046583130795670636F486A364D4635536348426D73636A757774794148683136363334396A4A6B376A55326F62426756483050596738706F3678615A554167363455703449307A35776D3038325A6C68583353484C37786B78726A4B43436274695248716C387533314472574877677453315569737957534D38716356516B456D6A557335696147484F7347775A664A4D63515741775A5570367753697574393345662F342F337362567935305947303268704C67535432316269476565333468316D2B6167764349497638654D425A7273536732485233476A76514E7676336B4D2B37342B4C5250547136714C4A4B5664563163746E444A4F2B6F756E2B733065456F6D45745035366E464B68694354694544626E6E547664634C49423257686D7836375632506E73497178617655786D33644A615A3458305A6D597155526C466B6B4E6F763947507A7A38366877382F2B464B476852555854384E50662F6F5476504C475371785A30596967654836357A564459706954315372704C76462F387732544A4C456B49544F564B5452726F774F33664F44336C4D5139332F656C5262335848484372676D7349562B59474E6A417A624D39364978686B4B4E50664551705552745378505A6A4849377A4D422B4E4251474A65767475483469564F7952514148726E5632334873384A5552644B56494D4F4832625178475969705567576F59336D373069744756524C35522F797A3575334C4D7470326E5570644A46553276776277634D61686D6A32535A62444937416C2F3339374B786B6973695636653862776636764C754854542F6268334F6B724742364F69715A2F396F584E65487233536978664F51646C52595A554B4A714E55374F354736674847496D4563665A434B39352B387876732F6549634276716A5A706831674D6B436A697731485955576973596E6E62447154446F484D30746B637849737363517743674A6C6F6E445762317145486273585939667537554B586F464A53594367315A32446B41593465766F4B50336A75463438664F3458372F4864545754634F5066767744765054714673796630794331474E6D3953625A6559347A4376326C425743355556354E7358383755316159717479672F4754416D757A35756936414B553632422B2B674B4442566966632F346943534A4255315368752F52316D6C2B6E37596E754332474F37683241304E644C583364564C35547775376C646D4E4D3451384F6A75484B315461634F6E4E4F68765278344E7131713132504273616978624D6461687061444D5959793559766B4B79554274506B662B6E6B515865466B7864676E696531324653362B56414F6B706F2F437139616B4B6E7146582B73786442306266346D54496F784B42596B39325644534D5A742B626C327452646666336B496E333936414E66614F69523175577A6C4C477A65746768376E746D4568664D6278797636484B334A6768314661334230474564506E4D4237767A2B49672F76614D447867736A79576C357447517251395539323255792F7A716B4935526D67367937676A6A6C5136696F7A443355396A736930416B78526B364F35385A695665656555464E4455337947616556745A51705857643774793767342F6550344950337A324A4B3564764970364B5948706A413535372F686C733262494A6332645051326B70422B42787A6866644D5534324D464E504643796D4E64627365536662667A305566503970774A6763664373414A6C73506656353557326F524E46744A6938454A4C587A774E53582B386633614B753047787554736B7873495577626A475A594A544F77334D444171467550306D584D794449477A61322B31397A776547457A586C70555659396E797856697A64686E71362B764D4A69462B446A7A67695A6F304C4D4767794666727754576E74744A4B707476557170586863336B4E6E2F4E5958504F4D7073707454375851526C755A486D5A3971416154654A666466546B6174386370526E69452B33526B3064462B4438654F6E7355332B34376A78496E7A69435569714B6B746B714673752F5A73776B765062384B4D366450464178484B677555563132516B5049594C725266782B6566486366596B3938734C49756776516D47784A6450655751416C75356A387347436F515059545962475167522B334A3437467730494D4842305A52642B394D64782F30492B6175674942354274767649363563317445754F3173526D494D6F317738754E6E5668562F2B346A4E3838496354364F7269786F737370685A6879624C46574C786F435A7161754531424D57727275526C504353724B693146635741432F624E58417246414B486F66624E334F4458362B307A664A366A43585247625730726D496A6A6576466F6465754F4554583161334D3548634E56584939482B4C5175636230362F74565749552B7A7459413870647966527669506241424A63666655737152624843544138626B724E56556C6B457478364F4151566471594741455639717534387A5A387A4C766D42756D33753538384768677A4A347A5132494D3371416C53785A6777385A56597649314D3158674E374746753144446B316554794A6D6F4C4334704D46517A634948346E4C4A73756444756C4A7862382F77784F585154592B523959576D347966706B413555733474497A6E625738694934354D72617A343959396E446C31465A6376586366316135316F622B3947504A3143525755685A72625579635477762F7A6856686B4972665561545447614C596E766F6656534A376F3637694F5443714B716F67486C56576241645745686958427036646F4C4248776F7A753148534470484A427758453835646E4961474274445630592B624E7A766849497935692B71775A3838757A476D5A4C5273373268367A45536258682B76533174474A3337793948782B39637835336267386A6D326258496663543538367962434C7A6F374B7155506873632B5932596547435757695A3153694D614E37485549456C4C6A41314D6F4E3762742F73634D4B685A4C394D2F7A7548452B546A4E6762486566713475376A717A6A4B35552B313858744F3846457831686361336E63367861416B4D376F7046594F6731757431715662624B344F62663271516B734D314E532B66335455376850696B774267644863625874427336634F793878426E6654665377776D707272484D594A544E6375584451584B315975787252705A744E4A325A4465533163716E335869795772356E774C6B42675976516A64654A35695551365861666172637478747755376C6144316B4F34644B616661704E6F59397466483578353452746D5530676E59336A33506C323261446C367155753347676251452F5058517A6C397151754C36744659314D645671315A694D31507263616174585779463469366733704F706A695A7863686756505A336F31745347437042734A41424C696556554F6D597153577939376C6B36627779637053436C6B3753662B59476C786B4D396165456A6A41386567635656534573587278494C49796B695746496D7679644671753774776348396C3344467839647865324F59574770786D495236557A6B6A6B482B594171577A3167593871566D4E74656A75616B4F303266555957627A444D79654D78734E3036616A704E51766B79544E316F624D416E4662676C77794A546433536757663636685A525157473230336963797251376C517350364E2B765A7451715055726F51785A374149314C6162754F706536323779546645333565446F645838394E4165482B587933495A4575694756517963456B3770797646344C76742B673278474B78386379666875336347486D307847715A584F64774B724B61324576506D74574446796B57796F366B43673570484C59594B6A75623870526C4A614F62474C3352724468332F3734354C33454C75647132303176456B774A412B3639783258704B645971434C75747831394141414941424A524546556B41783548686D4F6F71507244746F374F6E44363542576350394F4F39707339474272675A6A5278475A5A4767755343755333535437466B36577773576A776235645763356D343274394741556C304530613763323835686237646A736B3679547A554C6B366166575165754B5458475A4959347939616B544C6D5663537275517953535243544B375A4454714B32726C2B2B6A7755756B53635A4C6A744E6F686F5A47634F7636494B3563764938483977637847683342794A6A5A4C70704D5559365947656766776F4E3751314A304C43737551784833453677716C667534644F6C537A46733047374E6D56324E3655796C713630716C6D596E646937717870706C78362B5A4B6D5A68443737454B334F54436E4537336F39437171387A50365267627259537241745531706441724D44533736613573457A43714844516A7064364847784275432F4C6F4F6B592B4B38584E4B626C5834366E545A32554B49644F316A77564754573270512B4967632B787A35737A433075567A5A5367436165526D2F77746A4D565262384D546B6875596F48695937592F61303441566F347A7746545766524B69434D6A35723730654B54682F74636D786C50626D446B2F56384B76674733524267634C4F61683575474F51576166766B546349324E7A626E663134385478387A68382B437A7533423745766434774276756A4568665554792F44724E6B31574C46795068624D71304C4C3745615A47387539755832426955307A37714B6B47555A4C643145484D57516C73426341795262704468774F713556522B6559735A6538375A7364797A7A733261534F7368744F506A306C4A6762335A5A6C4D53494A564A35585A524E52767170464E5A6A49306B4D546F53517A495677566730676E416B6875486849656C7075647339697073332B6E487A326C30387542644750414C456F365A6A6A685A383175775A61476971784E4C6C4C56692B71676D4C6C7378415A59585A383574727830555448352B5A49534568356D6A7A684846753539774D4D334E53503242474B786548354E4C3257716C32753864754B364F74714851546461383972716C4F4E4E63434D612F646E59335362534463774F4233364C463544415747576F5A7679307178726B5272546174425948446678654D6E54346C4C50546F5351666674766B64626A4F6B7A71703253306B4B686D5339594F42634C466A56692B765347636349667837756F68564177614E757157414F4C6D704E626A706E64576E6B52626B3655576F5A784379486A4C426D3035715A35573277344D534D744A774C4461444F534D396C305133504D626230793947314A4E66427A7A43546E4263585132645748533633585A63656863326376342B726C57794A55666C384A366D716E59396E535656697976416E4C567337457773564E4B436B792F65764772484E556D654637366664504658684F64756D65354F2F4A78532F7A6D596E4A6737786C796B38335A3543633577383551692F6846486B566771486842506F65784847377378386474783667703373514E323530345072314E7654306473733943666A396D446D72435574587A4A4374426859766E594F6D35756E5355784C77387735774777537A746252736B53443936766E394D497931597871597A32624835784F3772317672564F376E43417139626D34797044774C6A524549446D30396B4E58494A5746344C4649336444515458334F54432F587A376A54776F32494D756C494D76416D4D346147774D42684F6E44714E747173336E7977724E61756C7757476E586E564E7055773358375A79746C674D4676686B734670756A6852427749766D695774514C61625554374A58617277793652364A4D786B552B61794741617538626A476F79686352645A48645A6C34444E4859495A6A4D73327443663536354E536479383259336A7839746B51427233314C742F76772B44772F6451586C614F78686E4E574C74754E545A7557594346693572524D4B4D4352635542324E79754C4E647A4C683169306C795642386154435032547643667676302B754F756559764C6D445046787431766C4C314F794D6E693270722F443671564653575937617953413879733366527A453648424E6774463634676B755872754C7548584B427550473754356A457A624E717357544A5569786150422F4C56697A4567766B7A4553794941453547396961524F4446584964664F526A4F336D674D656A475778764761536F566F414664444A69524E566A6D346D68414B417A34324D6348646430354D6A6B4D734638556F503533326874304C6C367335327559476867506D6A674E462B533768536A44473449656C6A4333774C467334537268534848334479344E7231693842526E64715178446C53626771355A707530434B4D44313752516F77473343703661322F77436D6C6246695446476670757268344468496275586C6B4F704178366B346C344D44735A6C7338625470793969372F346A754E37576864486846494A423769426267726E7A6D37466D7A51725A4C32506534694C5A6856566D514A466F4B7470513937424F797A5A632F7A32416B6238574E34796D7368683578574355782B52646B526730353847563465754F587A4A774B5535775361556C4A636E317548797041316376642B486D7451666F3768724179476966424F416B68394A565872786B48725A74333454474761556F4C664F6A714953375958466E31596D37524A6B554C6E656444526E57736A55735245653356585662444655432B76706B734B746C6F465851724B5A6D4B666C5A7869434D6F666867664B76797054484C6B32536C64417168764A6357492B644B30574B517758447378456C63756E674E51304F6A754E2F3747486274786B3272704D42482F354D547A6C65765734446D3569594268745171504761764379335538557431787874614447314D306B4B4F504F63334D596B2B74415A692F6A6244784D7A436D522F6A3530364F4D584B426F51677A66585A6270737378674C312F62777958576A74782B7352566E44742F476166506E5A496533326C316A566977594447574C562B4931577557537278555631384F663847512B50535354636D6B7059444863354B6454556C62735A6C4B5A6A484D70646D6E49743039695A6D59346A32734A6B7838544E35446D7A5548732B65486F547A7037712F364B5450595455732F5759654D5A7A4B4A7562394846683662625656656A49356B63623933444C66616539485A33692B6262726132586B4A76627863697353455A7A544F6A73523550506255424B355976784A7835445A677A7278364652626230393574392B70686B6B46486F67424F434A3173737745686A534D6952596C466B62576A703954375337544673684D6C7332736E4275354A5256593745437557796D5151472F3962343146434F444664764D6A4130786E44484844706354647851756264732B4D70696548684D6745464B794B574C625A4C5147427834444C743231657246446F5737704952785268575772356F72517848596A30467A5234756846566C7166513251794F6B7841626B68714C6B487030334F553774644B674D4D39344F7237426163695736474B55685A794B5243364C303769757333756D5644796A4F6E4C364C7A56692F75332B755867395855566D485636715859394E523672466F7A467A4D616131476547356C6A4F364D6D4E73364E6A6D47566D7534427453365062647948636632653479443969536A34457A343264537A7938494879516D615568657A425157343143397443577A65547A6D4F524C4959473432692F655164584C74305343334C69324256306472584A39733763654A5162374441312F395457745A673970306B4B68675646764A6C5271586477527248685774486C385A6D2B6979776E6642682B316A684C5031646E6B4E5049626438777754376D304F79324E447136587976634C49714749324677504363465072394A554C36324D6A6B62355136364E656B7A4D5342334A46584C6D564A4467324F3464724D396C3557366762362B51517A3050595A457948344D626C646356465167774669315A6746716173315778676F4D765741334D50673641635074747A543431745473564C796F764F76306547424D6F4A553772435237455234444C70787478356466486344427734665232646B6C35704A646458506E7A634B7131637578627430714C466D79454E5631526641484F4351686167707770457534396F385450316C3674466D662B666348686D624265493650536C6E6E6863735531777851544433625443446974646A49704A6B5238324A344D4962686F546A36377363343352746E7A707843612B7346504F692F4A35515354686C5A733261563750433059644D534E4C644D6738395077552F436B364531596947517352657A56737736636F7137415959364243717748456D714C704943512B4D4D73532B35466C652B583576586C486245674A783932615348553637593271427059585842655379314770716463746450394C58784643377247436C444968775A696544366A567334652F344332713632342F3739666E52335053597274577A3566496537735A495377756C394B3162506B2B484F616A486F536D6E466B7936535A685834756C797755434A4D645678644A67584752457568792F5634594D6832756A6B6153544A683430465045753033373250666C7965783738416858472B2F4B74717276723461382B6650776F3664543248786B675543454F34457858793962443770346637635764675A3032786C487379566D6A6F44737A32362F646D2F70385634556D416F47447A436E4D3354624352716B7A5266476F37734E3669467A7741385467473337735731613764782B75523548447877444A637658555650443764754C6B453933632F354337463935306F735844774C30786F7168445663474D7A49476A502B5950786C6F557A5377656C30584969505A6F7039766A4B643231564F3347674B71575438704B64326F75567A44334A54734C413230392F664C334547682F6E78682F4B6B75794E7866565170364672705A78566B576E51633531546C75464945787642774244666162364831346D5863764E4746337034486A2B644B635249686763477356484E7A413561746E434E5A4B51712B2B487132467A37624B78644A456C776B6C32375463546E4D4B70473961594242586F354A6757714D6F57354B6E75592F4D5550443470673849334745535245797147513268443473632F5A6E546E5469384D454C3250663163585464376B616777454C393941716863367865757753624E3639426457323562415047343543375A476F64394D306432426B4F594E6257644E595A7141323575796C39574C6F4A4534782F4C67373645337969502F6B6A3567535949644D34776E314F34374746764D353479473847764D6E48504D6A516E57477830304F4E6E70534E37786B2F325659494873637676534B7350486666666F41726C397478354E415A6E447A65687036376778676253614F386E4A3443726534534C466A634C4142706243694834346B6A6E526D443177663472526F4278736A496B4E424F4F49725644517970792B5432342B43774E5A3054594E5A33597573797234485036557861756C4145426F56614A313153396E54366F564A4A3950766346756A787743434A63415258723133486C617658634B7539473366753944366545734A304C597463444C7A6E7A70324A4F664D34644D3345474252756E392B5041753743797133564F5541356261674C57726258394B7A4F476A555A6E6E7A4D594461334E33514438386A74473533374B793146723579477A77594E386330694B394C487A4146617A3366673834395059662F656B2B693964306649657930744C544B2B5A75753231566978616A474B7954494E704F414C3041656D363252756D696B4D306831677630682B444B68622B3378625A6635506C76462F355166565464414B39465443774C6D7A34773149386E3263575A69764878683045536A6D5A4A6A715A563937676B7854457569364875446F4957364F637737486A3135434A4A784555596D4435755957624E7179434D2B3975463473634645784655314D3650585A68435775446A63455A5675436567796D346B32725967696D314E786B437366696F2F4236417967714C4966584473676D502B3671756A4A7174566A4D766D776C4761704D38586955473366733448624A7071703854375959724D634D44343368367655624F482F686F7654483047493874734248563472424E3132515259766E7961414142742F6A2F526735594C43543265757845434D77664435355855326D30744A46374732542B737A6655484A734867324D4C494568466545435A4C4A656845636A364873517873554C4E37422F37776B634F64534B6E7276394341517A6D44327641567532624D61574C527577594E467356465756695A594D427233494F44485A2F384C4F6A667730552B7749444866784B752F76387677317266796B38757A4F736A7771486E6A533430312B6E376F4B37717A6551386353792B704F7230344E444535344650654C666658704C4F7841534D4178466D61712B774575582B7A437671394F347371566D2B6A7476533057706D4647476659387477356274713748676B55744B432F33773745596A4A763468356B6A64585634586B59514A774F4474524571524F344A474A675347476F4E4E4D4E4A4631324C67384C737A6D306D772B397756377A5646645079774751362B6C53756C4A41497239334168645A4C51694C7336586D41337274446A36353862392B7855644B31314C724E73325A67336F495A61477730425436784747784738766C6C616836334759756C755A75525279726A476C4E6F44474C2B4A7133415A42504D425A6E4A684E396D4D624B776B57596D78496B423251494A737273372B33482B2F4655634F58515752342B6345686567764B774D43785933594D33363264693662544F574C312B4F6B704A532B543636526A4A4468476C66376C486834767A3871514C36625A2F54494F2F6631644A4D41517A47462F6B48313445623565545377747A4D6B787450653379733863745175455173677A7664517A68783941704F6E577A466D644D58304E3035684868794448506E31575037302B75772F656D4E6D4C6567576469387853454452444E69307779505545334F352B6C61355A5747376A7A4C4249655A30476A6163504E4B53625539313546627645566A3066475967733952766C533554735756556C6F4B34784A6C43664437575541304F386636685A4C444749506371497558722B446935617534316E594C67344D6A75484F372F394841324C56374333756F55465A65676F6147477379644241772F6178675A4468723254514347576851756B41474738534D4E4D4D787A55774E443678647932544C594C453236654361435A4D4B482F6E735A6E4435354456392F64526A486A70795837464E687142434C6C737A4739703072734F6D7042564B3871367173526342664B45785778684C6A6D3737547432596C653378454A595074695857446834582B7959735766776F774A7465392F316977506E5232596848564A655876756D653548746D3455715A5631667A4F31697643673841776C427750526B665348434F44377134482B47622F4352773565416B33627478454B6A4F472B51736173587650466D7A62735637473970535832624C6C672B363951572B4E54462F6856736C734C76506478744978643558495555357934506757594C6842707473617136762B78774244377774644D68374844597A526B53686172317A46306150485A56496C6D5250583268375477636468434E7A4A68365061353831766B5662502B6D6E315570625847454D4363485950577A6243696268596A447837566763346B372B6B3252495454356A736C426E5A4F5547626D564563456D537A69794B5653516F546465432B422B6450392B437A6A342F67774466483064383368754B53516978595649326E6E70364C6264765859656D53526544757973594634766559744F583472465932326375757063723734586478483474485064787A58763959735833302B3055736E7878335578364D6462654A6C52616D79446B744C536762316B687459634C634B505A6963482B37334B35545751744F68753237354E687979566A734E507456434C6B76467365526F7864772B4F415A4844375969737358627770726C387A6A74657557596466757037426F655130717130494942426E6F4A34414D317A68665A35693067392B346832434B74336C4C6F5A364457387354434252733930354C536F48583930336D536D6D735164644B64377656754956754764504D72504F5A416C38596C362B303465446849376A643151764C3438506C53342B5A5855754C77566F4578386B7A33626C6B65597430384447582F4563427738735A516B3843444E4962714D484E5270416364784E4C526A45304745486270514638383357725749764F7A74736F4442564A6A386A47702B5A6834396146574C687744716F71716D5358556E6642694D44517745345972466E365632612B366E6836396C48436D5176572F3230685959373233774D593478324D346C4C6C4C6D7A43464A44635673336A32786A5473324A71576D4D2F416F58755457376E4A516534327A75414B3565364A4674312F4168376F32396A65475159303664507737505037634C474C624F78637656434752376839656C575A53356754444B4C376B374F7159436861303342567264554333394B5774573647642B72314242336F592F504B7A44635A45537A4A624A786F785159374F413763765159756D2F666B367A6575544E58482B314B50667663446F6B7857506D655061635A632B593343444130686D4367545976424743506F38794F535A4A6463566C366E316144576C70482F3377494D38707855657776714D53716D33576556774D6B476B55686247426B5A785933725854683636427232665855475A3836636C52314D6C793166684231506238546D4C59757865476B544B69747163364D31756556742F6A474279435A666C2B64436D58666C4D7A525443762F2F33344368674A42366A4B6E4A54417A4763335234547547516651494E2B644331596F59476E78747A796745387958514751774D706448634E3438442B4539693339796A4F6E3274464F4A7A416B73564C38507772613742703832724D6E6339656E6144734E554B683143425A475068503848414468734C7337757254446B6F396A447672784F3978422B46617439412B454531616A4F2F59356572355A755762774344742F453733505869395152772F6576375277506A4F6431393042675966694275306274314B4E4D2B71526C304F47424959635A4A354468674D77684F5A6C4143443259514A774C414E46567953704C6D63746F6B353869736D47514D4D53532B357A314F4762436145574D7847352B33624F4872304E505A2B6667486E7A747A412F6674337055367866667336504C3172453161756D594F61326D4C34765555436A47786D7848554C504E4A7A6E6E2F6B5358726D4A6C417454754971545836372B4E332F646F2B48754C542F536C644B2B6A666356307733694743514E4466374B33683970736C4B487159774A4A3246787030797539784F42416233506A547A663457317A413134556E3745773336306E722B4F6666754F59753958683348395770653077533563566F55745739646878394D623044787247736F722F564C584D746261444936622B4A6A366F72384E4750797364675079643357724E50756B625133475975543333584E58764E303144624B7764526943417550556D624D79685A4454496738665050316F594F783465704D546959354B566D484F334A6D79522F61736C6C6D536B704E387375325468695735494E3667484B394971634E4B4C6A544274786E414A6A3034756372315A473555786F6C494470367A6C3778574B65376348634B5A733666782B6564662F582F7376596433566565644C767963666E545547354B514B41494A5553564146464645623859476A4573534A3348694A44503333696C7276722F6B337258752F57624E6D6A755A695763534F3434724E7259423035744156416C454C354A4153454B3953366566627A322F64372F6E6242304A4357776E6D566C66396C6F73435A32363933366639396565332F4E4439646D484567786D5A53654C6A4F62326C395A672B636F46794A36534643576F4F656B4F43486E4F744170474B57444575465A524470543434524D643333486C787350792B3375376362383067534C376A58794F587048502B464347496D452F59434D39526838634E7350345243493041516837573053664B3569497474596762743575514E585A693149707633506E48697A574552544F4C4D5A4C72327A412B6F324C4D572F424C4B536C4A526D674378766371746A6F4D745A61787576584D4A2B51716E6D77474B6E30414454747731786E696F3650734B742B6E786A626C733164544C716F326F6C6D316B59745342793739733739423669707659366D78363053664665666E385269564B356245656E7436784C68744B493568524A387A35733356775A51386B4D546E65346F33554D503961416278532B6F4C4962794D33557672775462566C5759555363346D674C436D674E395047736B4666323949567974755974766A707841315A6B4C75482B3343636E4A61566935616A4732626C2B4E6C52587A55544139537971767172484A416747476168614962592B6A2F477631326572676E6564334D496B3279352F6A4C63686B5761765236334F695773503345564E4D676D4C786A4359654644623638735354464A553874747063644B2B4C3167514F427130494265336F366666683462305748447479487438634F6F6D6D70686145677934734B70324C6E612B73526357612B5369637A62484F6A46574D4753456D5074706B774F4131354C726851745A64664B79484553693044746F533844734B4942427A7056516668674B47575454636E4E615661722B7055556B4467355676456775763164366432474A515634706A64456B69584C686F4C6B71584647484F6E474A703142634B734D477570595667394B387077667A436D67584A337A552F53674E442F383373537646765A4956794E6E636B3645486A777934634F3345422B2F636652633356472F4148426C47326543353237646B752B724955526C4F695A687975714D44482F4479546A7246447079373158316A516933654E347136427347724E77444A626F476376537833343657422F76414C6666303567524D324C63584A683456575A7277453566747876724C614154496E7942653059364C47677275594A5076336B4731796F766F726D78774E4963436468546556535647346F77374B564A5A692F4D41394F647842573078774D42545A5675394C5662444D667A487946655330314F4452445736386C766C594831647A6C7A5445475855534F325459334B2F463333685052715049524E425245694567724B34484241742B3975773059487662685A74306B57616D63334C5249656B614B44497468566D7278556C4B3243364C70574E59762B45564A62365A766C3579534C4336576D523438426869475578776659366764696C2F6341742B7745786572622B487272302F4A763665745853695A4E7857627471374171337433594E3643416E695349737063686C57684D51614D75423365434A35316A3058384D506559753648586852724772673475456A557763624C6A7679347739426931324F59782B6C795A48515443515862716A53426936345576794D3072426350394361673655344F76767A3641432B66756F756C784A334A7A7372427931564A73326C714F796F317A6B545056417A643165696757775A3731494E654B45742F546C75465A3135614C2B646E4143456E566E67645472364D723443534A716C53397070337258672B70716E76706F72462F50694B7472586675505244524E51717573594E76556F75526D75614F3542666B6F71696F5541545835737A4E52315A32706C674755516568414A626449584C31444D4C444E71764D7A64434E4A6D5A6C445155453169376F52724834593447547677746668795242774D632B677241547A592B4773652B54457A68383643797558627368493845326246694C506274336F6E4C64496D546C734C4F4D4630595669506739684B30726663693669716F75696E4C6E644362394F527A382B4541782F69576A486F2B4C664F55325466775A6B775866706E7A455A466763392F486E4F4D4E5272314F7333476537692B70785768444677574B784E4D6775515176464C55625130646B75737731506E716A4356352B666833637746586C54436C46524F5163763731364373764B5A794D2F4A673830786848416B69464241735771354472684F56447032664F65506249555237346A732F4A70734B504547314F41595851507A2B656943327752454B69344A696375755853354E4D6446394772726E57326E584475446D726274434F326361656E6A496833743348302F735369316356427A4A794B53676379464B532B63684C352B43586D6F4D675052324F353043444D366564746E7343466B702F71746F786272335735614B77614455774F424370347133567352514D59644B4C7662322B55585A3733662F76682B6E54312B4164325245477656663366734B746D2F646A41554C703850744752494F464738533331504D4D38466C54412B537664345134644A787A7264615A574E6552434451677069433272416949556150535376705A69646C6249487665564F6233382F35714671466D654D562F3734796D536F4B4444563956716251577467545472704F47486366504D4B5679375834394B4E5475487178476437684349704B7372483170635859746D4D4E46733076526C494B757947425549424A47466F4C746467564D4D5A506D6574675753393450626F7542677831335855517A745A597576536B4D4246725A6D6F36663966427541614746493637656E47313572713074684959346241466A6657546944717A6A704763346B4865314279556C633148596A4B6937704C492F54736355585974675248687A73783259434E6C53785154524A715152356F7864776F477A46542F434962496C6955706A4E584E434C782B6E356A6A5131395834345066485A534D5230707141746175573455662F4F413172467052676578734E367A4F586D485A4B6C2B566F326E4E46316C546E474E6A7376544E4E374E53763933436971563735665743443750725265413858307969587835662B66355441304E66427A4E417A476C545A715255766F4B70634B61334B655A746B33344D55766970614E673334684E6D36716E6A4E37482F302F4F6F7137736A677A6E4C56387A4236362B2F684933726C324C6D374854703157424650687969533655477774676442415A54786D5076694C6D50516F3348566B494A584E41366D4F5A373850662B2F6E377038694E494D6A4C54705071764C595332474A7259367663487064437275564A5861712F68354B6B7A4D7258563755374376547554574978583937366B6C41697A30314661756742704758594268753669346D36645150466D6B67686643426A383067487139536E65436F4E6D71774D64375232346450454766762F62417A68393468704752675A525844496465312F6268566465325946354A664E6874336B5273624650572F55666B4C45624259614E2F483656732B64463042666965774F47344949454E6E305834376C5754416C4E526A48357A325578766855776A4D795641414D687A6F7A433449415039323933342B4D5054754C4934574E6F626D3055746350583374694A313135646A78577253754267586B4F4177636D31717174506843626972356C78655455772B42314A355742637767325A4C72534F4866546931326C5A2F7038554A757239366A5767676146317A646A645361437A3876323074554D4B664263765835484B4E7A6662327174334A6E616C586E356C6939444F4D7A505473475470497551567043496C4A546B365538385369734270534F626F336D2B656841362B31596B726F5441657A4771494142766C5439685951305A6E68444C7641535459632F486734554D634F6E674B762F6D585439483035496D6B6864657458345A5858392B4946537457496A737A41316270764E4F2B665778477451712B32654B6F32687A4E46652F764241785235524348555030595536794B357A7645573479347879555A454C76756B56484674636B696C47396E353737547136534F5164316352644F58574A454E5A4B7872494942677849637775566A424B656A7673654C4D6D625059392F6B2B6E44352B46594F444931686275527876764C6B57573363735158714742303548736F6F4E5464646764462B39724B425246304A587562586E59624F71326850586D5359587968307978424E30756C62547A485632532F382F784E6B5970766B5931322F63464C34554B393944517A3563766E686A596D4473655857485545494944464977436D5A6B43444349584836597936726D59756A55724162417334476864676D336D7A356D474247613541674666514D49656C4E7737566F64396E392B424A393865465347426934745834673366726764477A59767876547048445873674E3057523645323668522F5047436F6138534B50672F526370726F694A394F704B61326D463568627362537262546661656E2B6356386342595A782F6751477055647073516D4D7346386D797A715143352F5868676350372B4C6777612F7832636648636639754D32624E6E6F61644C79334471322B73772B79697155684B7A4977546D4967562F6D49377A2F4D4267382F5849774C30525642414954574A39517A5655364F4C68654D426778313839783830694B677A39594E5A455A3855474B53456B45544955574D4C532B6468787377737047636F735455436733554D4676513076647A63344D3767572F3839616A454D2B726C534F57657754663473753873676C504A544A382F683034385034637A4A4F686B76384E49726C586A376E5A3048316176534141416741456C4551565259744751616B704E53594A4F5A325571525777565374466975714E4358616A794B75564B78724E52336F5857385749467654486C4E4C49345A4747594C38703858474E724B7968424C63586B567931564A5141646B51354E714F4F39674B4146325A4367576448637A5470302B67692F335863434A597A57794274617657345458337479417976584C6B5A47574B2B376D65467064305A513356432B35726E627A63786C5536773158787867366161426670344E74616733346647707341492F34686956614441364F3466536B77594552334C332F454F65714C386A676D4844595374724C78426144775463444A6F6F68734D41336F35444153492B4B4843657753636D68314D343143314B374D4F4D44497A624F574D79654C595241534B6D4663776A38563138657862355044364F707351387A5A38374537723172386671504B6A467A64686F5333496B4B474959366E566963434F42327854525136556F786D4F66787A4B7A555A4F6E59556673766E32793255456F4F4B4861595A6B4A452F78685853536639653154574B7437697862312F3350372F6E50793737393971634F5052417A6E4255516F7859466774586F534565684F51344E76765478634B6A386969656A7477766534696A683638685150374C2B4C786F78624D4C636E443772317273476676446B77766D41573753774E6A394E642B466A41494341367131784B644F73625174484D4E494F31794D63766C38334E306774493235752B363243636769514D4768314E53695A447A4D556147413550547A6A6D314E63486A6C4A6C7969356373524D474D5443516E7131484742414B48326A506F5A72736F66384B684F50336D32454C764E507962466C765453505A482B754831443247674C34793671353334374E4D7668574C4157524D55526E746C31777273326C4F423350786B324731754752476D416A4A57596B6B515A4E5A4C5656466A4B5563466476364E4631522F6C7678786E4C346B4D7A7437334E556C4771376D594473756868686C4556517679616A6A4F77496A4A4432483567314D6A525634396845663038537A612B4D5849774E6F6B3453517646774E6A6C4770326C69365856336A43437A6859585765467455644751776C77575A4A6C625475734B385472613074754869754870393863413658717538684F5457433956766D3436632F6578554C3535636850565550686C47465036714E794F3078436E4C38506D614C516D7642724A54575056626175614D74516178476F624A646D67366969735955626C437A2F4E547A6C48534F746867455274324E57794C52536347312B2F65614A72595965707A78314B6B35574C356943584B6D4A694D6A497A30366169776547465A336A453668672B3778674B46766A54383843473967474C3164515A773566682B666650796C5444584B6E54494E4B3165565973644C7937462B77304B6B70724F6F77355A4A69714852477169304957665A6B63646C4D3879757345454E7451797A577864644375505534777979365154727A47774234744B31436F4A7877496D7A414E2F526C564C414D4D63313436633252352B4136666E526A723778543147473752674A414F6C526B5175696D4C48366E3635446A5157476371574349633635554D414952666F6C6458726E5A69632B66763863397538376A5246667430796F2B735776336B446C75676F555447566D6A785A4A75616C61494F4E5A774741325362576B4B69564C445178646C39436730442F35397867774F454A675A425177794B346C56306F446F2F487845395263753435727462665133743431755572497174564C526275573271374C6C693947646D366944464668756C59582B4B53444C384971746830577031314D726F3474654E493845526E525A5179783149306D597636735151544441665231422F484A42315834364D4F76704F3932546B6B78746D3566676332626C364A73385578346B7168697A675771656F41703445572F6C3251306D6B74744958686A394F34587A31574B4E692F4672592B4A4B38554B67496F7572352B70666D727958585255746A457957425077596D443862734733426B61553747646C7150754D513267456A4D50695A75694E5461575A336F427472515A7055437251504F65592F4D335954347241526A56307352674B474747346A504548704E414D7765767A6F666D524635393863423466666E41595459386659575A68416437363653377366475556696F715932565275746270333671654F59585257536A57547156466B756F346856424A6A444C653530303962454F307961576175386A42594D314E4B4B575A587975634E5971422F42492B667445694D5165316178687750376A2B5A32474973586A4A5058436C4B78684D594C504152474252444D414F446E436D686845685074387055365A506D6774496A78525267574C716E554C41544E71634E493734524E4E5A33344D50337A7544416C366651324E694577746B46654F64587537426C387A49557A706F4375384D7254667053645A566C775A384B4B45723756656D6D536F3842574F4655626B44306B46485853714F4B346237355941316D6F734E695557326145534E647152654E627033566844764E323147556C416B69677A47753132674C45774F632B6C3642454E394E4D514E554F6C4A70325A7250626454334631466E552F2B466F51663854437A4A72447656724B54376C626A307A65435039636A7A727848593241357341675A3778533052796E5579577A556B7166694F316A434F6648305448377A2F44577176586F633749525862746C6667687A396468347056354E75356C65696141454944784F69714E4E4B312B6C727735305441304F6F6747687736437857726442764134465174756C4B6952426947426B624C307A5A6375485246427364774F4F583161354D453336566C4A5A484D7244544D6E6A3154354850534D7033497973714D546C5369456945506B663833356833514975674B7377374B4E57654B5531776C4778554B79733466736B5A41416137624E31727779652B72636654496554787066696A3656582F33447A2F487867314C4D5856716D75784D4C4F697052616C6F43517A414267667065337042726777764268756E776E514C6F6957484D4349324A58366771652B73757372744E5761656549787A494F433434454B326F4770344D744B7A4669736C352F317151684B4A61614A63794A32527355524935767578534D6D47486659534F796A6F4A6A64574462775A52577358463532766A3447524752344F6675546E4B55654E6A7A466F5A45726241703833674B47685166562B464C4532566A6744597755516668616C2B6C582F66434249436E59734330662F6E544C3938645150735944533138335863697963346937784B6C69464171492B69625039504861504E4A43707A59597867593478394E516F396D3859333477565A345452317A654D63366671386676664873476C797866674736422B38434C383847644C554C6B3144314D79732B4779756D454E3278486950596A7530667163596C5A5A317971343262493051445974443933716F4D694A48415954693156304B79796670347142666D4F79453931746B684D564D4268734E7A5733676F314B6E492F4251544B546B6769584C4A30666F636A7674476C5455544B765348534645684D39555233533943536C596374444478343030793530612B4D6F59426872516D576C674947424964545650734C483731666A35496E4C364F6C7452656E6957666937663367483639637451556F4B73313638496277617168754E6F4F414A746264333476476A5A6A7870617350495341674F707773327031324B6A7249516A415939786941713843657451566B4D6C595945334A7765784F57727A6271447262694B384D684470516C566C78756E52316B7448486A43693874304A6565635738574B5A6D566E79375678325A5269753970522B627370426846676A4537664368784841555046464B476756624A31726330647147396F4645616F3336395545735836475947774168395471476F7455337372624737484A643243387078786E43696C364B45576A6331696B30534762416138614961726B704467787254702B5367717A414933534A6D344A45446B39644467353274696D54642B6D3043594338346E3439412B2B6641555468342F68355A48647379614E51317676624D5532313874524548654E486A73436242473750417A4C6F7A4B476F3046686D625A616B2F4548487872537A67354D414C526B57667877486A553143776B51744C4F2B336F486366584B72596C644B5934424950366E544D6E417368564C4D4C73345430627873766847705A435A2B644E6B414B4B4F4B63772F6964676F3264435958796461735179576A555559746F545233644F504B78667634354D504C75447336526F4D444861675976556973526872317978426F6F647547615535756574786F5A4575444D6B65314E586477766C7A6C3146337251456462554F7732354E676333446F6F6C6F384249486B6D7956545A68564C6F5035726955726F324853724C514E34616941357A4671325848496B79334879716831756C775042454630506D6D535663737A4E793848382B555659764853655341776C4A58426836385644674A6A6348766E56484B7A7A595374437871525A39624361667A457948415446774B725031654C593054506F3652704754383877516747483945624949686256666555696B6B3341446B7066674F356B3746417A765366696230576B375669414A6D437A4973537557497446377647382B625078367435794C467578414659374F2F3049446D4D327544466E55414F443778476B75304B78676141586261314432502F5A61527A383669717558657042656B595366764C4C63757A3534587955464A5567776561424E574B4448787A30715A6E5135453746436E7A614376426E7A4F72482B48444B46564F786733792B4E4371702F357372332F773931684C4C78316E48434944794F5977787274586451474E444D2F7236426E47782B767245774A68544D6B4D6F49544E6D46474454356E58496E35347568524E2B43433961587459556954664D6E586F36754F6158595048507A4C4964433477492B766F48684266317952387534507A5A612F44352B37467577314C3839372F394B5661744C454F697879566943676F59617259424D77714E6A553977386549564844396168664E6E623647396C664B674B6241373153525147535A44687132775156554B57626B43786949785474314D48654579637A4B514E423857306C67416373615971716176362F4F50774F6362684E3168773979534571797058496164723679544563697053576F3470584A39434F54344F73586F2B495036735446676B4776463179754C2B5052704630346372635A6E6E78354379354E2B39486235346663792B44516D546F6E4B4E786E4E674E744A59466A684333716C4B71305053626E477856576A6B474E68507A356A4637476A346B71462F4636357032784959397238762F32506C37436D6368476343634E536E4C4D496F39697747424B66384A71706F717341493079696141523976534D346675515350767A644A5A7736306743374D34493366314B47482F78384B5A597657596F4565364C515337796834656963515655502B394D4167363455703037564E7A3453375670535169696E4D796B774F4D3659752B577357544F45397032586E79714C51562B306C4954456D474B4946746379436B46635148537A4F424F6346307A315979676C776D6846456B483039772F68354C4772325066685A567973766F6467714238627470546946332B39523443523446594C56587877493030626949547870493054676D376A2F4F6C4C714C6C364231306449794C643733433456424F4D3742444D5862506D77526A46434F794D6D70774B6C694F77327458435654474652576A5271756D467651494F536656705635487061644C6768346148784F2F6E545A78566C49584E5739626A355665326F626934454B6E4A394E464737396D6A674461714C694C31536A58536979322F4E6B4F4A50474B447A7875532B52365872746268384F455461473370784D69514877456630395A4B505A373367547366693532636C363261573354736F54355656536D557579557477435265476C2B5035386D4E6762455A64336932416C41717965634C536C474D313747386642486566477539314C4873446C366A4D42786751694C6D536C6B4E71367A6A4A4149445952643867534763717A3647332F393748623734354B616334307437357543746E322F42386D576C79457031773262685A2F454C5765547A6C4773346D684B694C59444F444C4C7A546F79724D53355A5777722B54624E7574625851777A413164563366573230783941792B573366756F766C4A75326A5A587270594E3748463448424B43713456466B37487A33372B593077745349556E30534E66534352796A426C38327354707746746E455A3458474D634F58385A6E48313543375A56365542426877355A462B4F56663738624B35615579534445474447587165614D48526F5A466D66704F33554F304E48656776323951466F6B3051446D6459745859776B6A584A7877636661466A514F4136556D7A594B44414D536A4F42784D42305A46684E4B4F573571574874415A6D7454582B66664A797042636B6F5831614779737256794D2B6E78526772627A3861474B4D7234334C546F3841776648775A43756D513361752B38516D753139325746737741777870595655706370616E67442F59674743547A6C464F5031494A5556486744474B786747384A7A5845445341324F4942476A336862522F756F624267412B65784152687671714552676A4678555659556A34665263577A4A4350476865765145362B4D674673796355613741652B51416F59622F744177366D36637877652F75344833337A307653597A4B4C64507734352F74784B614E613543575A41654878666F446171477244665035674B4558504B38662F33454E36714B7542704C752F744F566364323377553176504743304E4C644C5175666332617354413250366A4A77494F3645574C70794C4837373142724A7A71466A48486D7331684A4A5A4B62317A36534263423939307066676341756A5A46694D6B425A586A5279396A333065586365314B412B794F49445A746F3858596A65584C46734A70534D554C306F314D45517566624130494249442B7A6D454D557452575A32634D70524C4A326F51354F576473366C527558734449476B6C6762376F4F42756C5075563057424879713056376F45555A546A5034706773574F6F4D774F34594435784D51454F43636A47527273576C334D55713663456168726E393041426E66756F65455176443471366A47776F43784F574541676A6F2B634930455579334B464C56356A416366674F4A71704E55356A6B67542F51526B52514B6C4E416F4D4C6A2B6450525A696B704253346E4B5348713853435457616F733362426769746E56672B5A4D6F464D4D545048353045774E49494844545834365030622B4F412F4C71433934796D575671526A3139367465506D6C4C53677379454B4357776E6736665068745661796F6A46796F6162336143594436654B3638596976302F4748627066567A32666A6B68346E774D6430646B734451377453445938653439373968784B33737558313838384F5451774D69694851764D2B6457347A585874386A36566F46444B65512F4F7752785A48534374526D306941764C4239374D57413077753449534F66584C2F2F62486978647367414F773256514A6C436C42776B4B67694D636369446973794F4D45614F7A7A676F723650397168517465744C484155486468644D4575746F7A55383358685470746B4C51326B3534727233596B7136677A4D6E573756572B4155396654596459322F77757736564555306F2F585744417952307A53306F434B63305747543354637376784D41536A4E4B4D596C317459515A6E566874526D5877597563737956395436556165486338416C7351764E61514D6C38374B7A3650516D6C2B34634534584E77652F69453949697072425041645468704E556C733357473731384B69756C6742474F6550476F3652623237377544332F39484E5A343865597A434F6344576C7A5A6A372B36644B4A365A693951557438774A484138594F6D57754E784674565A695630756F6875704448617849504446626736644B4C752B6879525476394E4443474272336F614F38424B392B4E6A357651327A4D6B584C7666762F665A354D416755334868776E6E343459396552314B79552F4C642F414C4D6774675A75446C556D56374C354F696650436E745776464C47595939476D4F49596B4D6F674A3765506877377A414474484B3566665171486578676274382F432F2F69377437423879556F5A724B67445766594D7138795557726C304B3654514A366568463050736E4E534F7170342B6C764D6667384B457638566449743178463631457933645257527A6A693431364F334E48487239684F4636755279324A614E31457055526A373655384A71304D7A702F6154564A57526A59467149794F716B3345636150473278654D564B3275532B672B65654F724B4B36554F4B7871497A4A7647685A704B764E4C51533863564D43773267634D7244503444696B39336769626953786F625733486B5350583849666656654832725475596B682F42786D326C65505031505668594D6874704B5234597061526F566F6B68432B734F4F6F6251466F446651314E4375474670786930335A6F6C76444B757558536C32394B6E43494463746C38536F51526D317072536D42676548304E37656A706132646A51305070494F514C633741652F2B367954413445516C41714F73624348652B63586253457853685449426874734E6C31314E76394831436E4E423730574151656E4E4439382F6835714C7A624337427246685779482B35752F667773716C6132436A33453030773850426934706A6F793643645277356E4E484C584465765043634D4A6E79614C47786A7A555A6C39493158615070432F427338487A424D6441685467644C416E456F63694C57774132476A716D316B76456A625634572F5A77446A47576355713274515143492B706179427751786566425974416A744A6678473361456D4A474957646C58446C32696C673844576339326446613273485468792F6A73382B726B4A4E54523038795836733231794B482F2F6F4E5377724B304661696C744E664E4C585557593371494B63426F6132326A49706D42516A7630724C367035777255456C4D5A51786A342B50552F6166344A465576643170744C4F71526A612B6C6A71325A4F32326433626A377633374D726D4A424E6C332F33586678425A6A3276517045615A4A4635584F7736392B395134386962514F6A6C676D79684B536F70646D7A576F5258756E4C4E5149696B66496378324C774F67516A516654324465436241395834384C317A714C33554446656946327333467542762F2B456E57466D2B426E595A6D325557496C597472577252304B307730782B2B6A2B582F3750635944786A50416F522B6C2B6346686E6F2B515338526476546772364F4149525A424236693669476A653143646D303434394F364D5971522B51537A732B4D47537A6F394B4C6F59664C624267746C4A36714541384D387473496A4C4E6E37306F375164585A43784B6E624E7136426A39372B7A57735846596B54467466514D6B766356467A505448654952745778367371376A443079617732654C32717071486E582B6A59773177423533666C776C643145414C47686F43666762704E6B6A49454871304A72595147426F6467506863776B6C4F6351694A6376475152336E3737783869656B697178685A716F615950484E5A704B2F714C41674D3243727534656E44683642583851594C51676843355562703647762F6E3748325031386B6F34374734544D425270545A776F6F5A707A325367716739415A3475613552652B3171656F37756D3778596B44364E7343496C384D5A3630714E33704848425959735247504969757749334746316E55546246654E637867794F69542F48654E38713168357359484D53594C444E674B3578474A79784B416C68492F6A6E666D573247416F596E546837356A623237667353565657586850785A75613453762F6A466131693173684470616251794B7347683358416C6C44455747426F63744269386A35703171354D37476867362B385431454B4F446B435046643344414F2B4B5464447542516543306458534A78576872613550332F6532372B7965324741514743337830705268387A35704E3868665465615248754F44323245554D67624754793237486B4D386E756C493651385576504847424C3479427752465556393343652B2B657849567A392B483164364A795578482B39682F65784D706C4B2B46784A52765A6B4544556859705379675559697371677A65683443312B547966534666544534784A3574426B6255394D657473306E6E58597A712B5A36386779396574466D636A6A4733375555734271334D3546324A346D724646516131646254704F4D2F344C6A6F6849516B536C6265534A414C392B625A574C38366375596C396E7834526C6F4C463673667179685834785474766F6D4A5A4362497959363655756E656B6850736B4661375437714D73686B33566548545068616158382F386147467750744359385646306A4B4978734A6A4359386D5A733866527071354B5A5455784561337348376A39344B444D457562592F654F2F67784D4449796B364F4A43596C594E34386C5A55716D445A46674D47444A732F75736F68386A6744445A6F6550556975475A49356568424D426735736743337A58617837682F58382F6A644D6E6174452F32495A566132666A622F3768423168545559456B54354B784D796E4A656B57424D46616A415179355030596A2F4C4D572F5753505077395978675047474664706F6B584C44336C42594D51506868476E346B38476A4E476F317A4E464242696D3732424F524D6731346A6C61766449713050343067464F6E62754B6A50787755595461484F3479313635626878322F7451635779755159776C4B756B6753484362434856634B546A6936677252626D636F504959754F4F50427779744F716A7049585362574F7A6C36386961364F3862514650545977454E4B55333967384E3455462B5070302B6653692F4A527838636E68675936526D6553467036736D457864694D724F3157416F64487063437467734E424863506734686457756C454830596A563337676D37317354794472454630526641766474503864483731546830344452362B397451756E676D2F75627666344C316C5375516C70706F57417A4662745633524E69776B7A5468504D39696635486E2F415559616B642F586D4277386C4C726B7847634F584D666E3378304244565872794D7879597256363872773568737659646E69596D526E4A556848427738464D4449415A41655276306D68566D6F714B694D6C314236447071367A556D5A676D6976666D6938314D734C686C6748347647467870377865507759472B7556393664304D4441336A535573726D70764A6C657162334A55694D446A4B6D4B375579362F7351486F474238496B524C396750444449364E5A7A31353448474D4649434D467752487138502F72644F527A342B6A69616D757446492F65762F767074624E70596A7179736547416F7270764F536A4834693659714A316E6C38517A5432433731665044342F6C7770302B66467965664566354F784D63716630474B4D476967546D30496C77746B5457677936556A345A53555A676E447A78414A393864426933627435465970494E71796F58594D2B655456685A506E6463594E426945426A63594D657A474D384C4446332F38506C4745416945704E6469654569786C416B712F704F70532F3441324A504247494E2F2B3832764A306E585A6D5335497755462B56693664436B32624669507A4F77454362365642493462424159626C4D695A6F73554957456A4A4D4A54486A6371734C7649706F4A444C48357433594C46546654434972725977506E727645765A392B6A5875503769444251754C38644E33587347324C6373786658713669416D723453644D36704D7A786341373167764E4330417A4C7748354F4531432B674A785A7A453355436C676A466D4B7A30544A654D4234506B6A39435A383161664139535978685A4B576933336A4D5741466D654468694F6E5A4F59317770576E50726F49777761326E79347469684F6E7A342F676E55317A3943636C6F497939664F786537645737473259676E53553177494374564548307A46717666584E412F392F6A702B5A4F2B4C54746671783352624B392B4676327441616176424E634465485761712F4635562B43556F6D4A55694D4D697737656E706B513333482F2F33627964327061626B6569494642515659736D514A5671396568627838647536705970305A474F4A4B635265334B78365037722F67387A534978674F473773447336374867342F657138656D6E42314662633030616F3337346B2B3359746E555A46697A4B68343341734468673451756F5A7954416944586A50413877394A786F6658483164395239462B59623836786C2F503866594979657742512F58464947656B34494448627971576D354C5530444F50444656587A3458685565503235425A6D34514652766D59382B757256692B5A44375355313049787330303065334A516A6569564C6452353942706567304D6E585452494E424275675947315176356D4D35326958576770526852676767367139585231597636686B636D594C77334D544379637832527156507A734768524B64617457346638676D797765555544772B577877654E306B54566D534851614244656A434B67354C4C454158485762615A616B78653455437A4938464D466E48353748483937667A79595235457A4A78355A74713742727A777173337A6750646765466C466E643545536D7348544C78646F33645533444F42646467444E537550706936683146697A52454C596435444A656739396C794E6E384242692B514D656E326D63434949424478435947665676315234324E382B656B31765039766C39445230595770732F796F334C594975312F5A6969574C69704359594564413544706A6E6F61693636755572506D2B3651314C697A7072566930426F6F4E77507366637736476F524C484A5367544C384244355A4B6F646D674838302F5A4F3144632B526E64336C377A50762F7A544A41572B67706B4A45644C473538326268353037647949766A38425157536D7066487673426A42437A776B4D3572356A6D51344C4A58477349534849666656464E5435382F77444F6E4B354665737055724E2B774772746658594B64753566413776544B6864624173456B66646C78684C3434526F6D6B452B69497069365734585A72344B436369386A616D59774C743262384134336D414559592F4D6768724A46306F47506365314F487A44362F6A76562F66524739764830724B6774692B64376B41592F614D484469456D61736F52657251786375594E686A2F716E584C31464E55374B48764D52652B626B496144786761584A70457143324B70714A333966536971626B4658563164346C72392B702B2B6D7468694C437962477545772B336E7A356D507231693149546650413769416C684F32667A45676C774F506D684D3849484777776951363874305A39655A3342557277706A68705470382B2F68386D45746241536163584A347866787766756634505478576C676A575367745859793972362F437136387451306F476163574B5A734171734257736869733152465856564530576B6E6D50437249705031504846526F4D2B6D6530336A464B7870383361625362594D5A4D4E45662F4C462F7265663465727A7631504B39356B6564384C7A4747325A574B6E314A6C6147655A6C73346F6A684C54506A5972624D6A45304E4141627479717875636633634C763337324159653841566C616D345932334E6D484C706733497963794569364A6F727268316146674D625248302B3275416D4947687251487674646D436D4F4D4D5665514C5248733156477572367663654766476A70363858625A31504A66676D5257525359477A64735478435263414643785A677A7077357346674459435763387931496E6663346C50676176314138695643374B7672762F4C383558537550323169597379486F6336436D356A612B2F756F77446E7831446932502F5367716D6F7458393637433772334C4D574E576F6E776D43594F7133396B6731526E7149464670484A504A5A4A436C51616C54787279773051424F52393353763641505270726D51484430696C544169464D61664A46464B323749784D71444C2F5232347A33352B7761476C4F7669356872475A6158303135444647416F4B6E38794756476C344F6C3939466E2F3433546E732F376757466C73494C2B387477757476626343715A6375526D705173795A734957627452624979324748724236382B51446C47796A6B326A786A52703041774D48585472394B32756869755768424A4447426E32437A6936657276523174474B70323174364F72737772752F506A437878566931646C36456747447750587632624F6E674D674D6A776535526B35564D6C694C65687A6344686C6A67654748743067543841374259485167486E57697362384F525932667835663471584C76536A436E5A7564693266546E65666D63726975646D774A4E49563072356E7451587057736C356C554B537172797A582B615036504A6A767870706F70453478764E6868326C7754534F564F466F32507746474F4D30456B5733465345524275476A686C504969743775494B724F584D572B6A302F6A79494537384867632B4E453735586A397262556F6D37394168673678447A38696E6F4E70637A4C4A352B6A415771386A3861514D595042337666444E503356636F63476866327258533768597A4572354936496A316472576A6963747A57687061592B33793073414143414153555242564546485A79632B2B635078695947785974556341555A3565546D4B6967694D79484D4251344E446D7A376434616462577A57514174346559632F6172496E6F362F486A314C6B6166507A78435277355643766B7765303756754A6E372B7A416B7558546B5A4C436B62564B6E63494D44485779796F7A796438322F5A395A4A673961387358356E727452664C4D615931744E34594154417A49385072552B384F50545656527A3535697775566255694A7A6344502F37464D757A595534623563346F6C4C6E5659715564474272566569324D7468755A5252555530516D71775A547777744C756B487A50486D65615952414F444D703055584774743678514A6E5364506E67674E2F664E504A7746472B59725A6B666E7A353250466968556F4C43794577326D6F664E676A3070784450566C7970657977536B4F522B4A5A78676D756A58536D6D57793069705338454C784549556E554E4C757972645866773452394F347231336A384D33597348617967583477592B32594D763235636A49536F4254386F617178356C5A4252495A4E626465496841725461797156536A5854636E6F61494B686A6D33474F6B6A6D76385274466C5161494648525968504E4A3955494E426E7634316B4F3058384E5638703864734C754858553673595572757A636C5534306563484B724F476B70465046685A43694375746F57485079794369655058384C44752F32594F3739414C41616C56334F6D5A43504A6B3667453947535337766A41304E7052386345335031746245773041626F726157716A7670707242644B6F2B396E7A46357658376D4248316F6556704235363274364F78385A4677715062764F7A3278786168594D7A6579634F46434151594C665654726B4A35374B386D426C4B4A7843795745326B7A4B5634796C613865504D53697271586775696A6576676D6632456A4F59762F32774876752F7549422F2B6363443647676278767A352B646931657A3332764C594A7334747A3448485468614C4649446A55542B303743723364365A6147464D57386A625677526B6D4833384B427434595A3074735173746746484A5978716838763871622F4E5941524C2F413564694F4A566234564E347061577951516B754F6B674E486246634870343766773859666634474A314C587A4464717861757742762F39554772466B31462B6E705373315344724D4F566C7857616A786761496C4F632B4657423969366D7132544C446F49312F47482B6A2F46317A6A4F4F437956384B61574E725331742B504267776443437A6C79364E4C457746692F71537A437748766C7970584979636D426C537039446F754151346B70473843774F575349444C643054516E68467A5037392F454273426B5933475734457A6433744F487734577634782F2F314F523431644341744A5147624E6C6667375A2B396969584C6970464B6C657A49534A52637074736164664476636C4832305353656F507332444471364F627678764D76354C38434976314A7846734D4544506275454268736E6D703745734B424C3272782F6D3850344F3639613068507A3844654E375A6739327572734C68736D7454446F6F58674677534756694C5572705265394C514972464E777339547672564F31356C6F47535955692B4F414E53664439714B6B4654317061384F6A5249346B7A6A6E357A65574A67624E35574C685A6A32624A6C4D765A4C3543674A4367636C634D694C557341674B475271717931574A3944756A485A664E44413072796B6547477A50374272737761574C6A586A332F334B6F2B6931776C4E6D4342535634353564766F484C44596B7964796A696A583442684E706E61497468746E506574334B663459307A512F5A7A492B4173775868515958677950394B506876672B662F76347176766973436D3264645A6737667762652F766D72324C4235425759564A6B74586E66597176717646304736566A6A46705A66523761347368546E6A55773141575130743073756562326C4945426D4F4D453064724A67594730375545426F50767A4D774D4159624930786A7057706339515651384B4374445755775A4D6D6D4B4D5379474F444266772F714877363534566A6F41566A334846486452306F393949313438664E694E7A7A3673777637507A3643747051333565626E34775939325939764F465A67374C78633265784363776B475058376D6E4D63756B7A4C49364A79552B726E526752576E4A304C625341486C4F584E42506B50704A684B36555546496D6D3038783054762F4B5677704F5876546C2B44765A75636F586E5136546763724D76725A5938394775622F36344739426F3674512B6A63695954533350734C56433033593931454E7A70793441597439414F73324C4D505033396D4C7865567A34504C3069595350322B47426A5A3647314B6A4D465672312F5858686A6D714B3568684475314B386C32593669463734656D534164726D31316442705863327A6F6B5451304E41494874512F777630486A586A553243527A76382B657170305947447465726F67735772514969786376466C5536625448597645534C77585374466A7A51343866302F78585068595769694C512B556D4843595663445A324B5A496456577161547A5178674F684E485447386246716E723832373938675A724C745841356E466933666A5632376C36424661744C6B4A7554435475564B6B525241374137535374524B6E686A44756B61496F77554D474C5631656547686270686B744B6C6A4B56746C476A306937794C34557A2F38657359597A623479567064783761325468786A6A5034414752786A744F5079476C4F792F397231797A69347678614876377950527738485554417A41532F76326F67667650555370732F49684D33644C636F6C646973544B6B354532454E75586F6F6D3130725551434C73356C4D4363374C7A47344E6A7443746C44734931545633486D47596175686B59656E59664A58627550576A417A5673503046442F574C4A556C7937636E686759722B785A4B7861446351614251566F5558536D4855785834586851596E4C5A4A414D55445138415238634D62356F676F463534302B7642502F2B64444850766D4C4C6F37656A473761427065336C4F426C335A56594F456970766B7363464A596D6277725A72534D68522F64785179515548326369317154304C356445503458594578734130586456796E46793069774C6877342B44572B326E635A56382F334975684C52576C354B76612B735230376436314439685150594F7354615534373344492B4C7353707232624A48364838784452705132464B4D593046686A6E727044644762513130656C5944524B6479746655674D42696F7378426333396945363356335A44676C43595A6E546B3069754C5A7A312B704957566B5A43413443772B466B48534D575937776F4D4367337A7741354868684B6D6A4A41615638455132344D39696267502F37744B33793537775471617538674D636D425464764B7350664E646469385A5456534F567442784F594A446E58627A4336537668694D4F637A4134504E65764937784632424D4441774C6769474B5833434B6B513833623937432F692F32342B73767A364370635268546334717763647338374E717A4363737235694935685A4E366832414E572B47774A73415374694A457953417A7863526F52497143492B51624251777430616D425965624436665373426F5A327958543255674E4471785453596A796F66347A61617A6652394C68566D706B6D426362613951736A713165766C7543625A454A562B566241494C334462564F754564306D37514F6158536B6C44715A596A4A7A765465306C4C65564F7130693138306A454159664E685968314749484941494A424F794B425442773766413266665867456837342B4C5279624A65557A384F72726D37423739795955464B5441596566374D744A51626C4973446179626D497A47476F715652587558575857506378516D72587754474C78726A4655734D6F7A78685934784D2F7A2B794A53514D61365570732B596F6749354279324351426430744F635133364B694D6A7161466132494D624844436E387741654767445330743354683173677148767A6D4A4378657559486A516879316274754B6C6C35646A39646F6C6D4A4B54434B656248586F4255586D33555A794F4C5151795669446D4371735967742B6249782B7343496147344B533745714834484B7664616977445A555844595A38536F314F3749304A426C593731427A6974437768464F50516E694744414C774E742B4867307465767A6F712B33463366764E754C6174647379534A4D573438716C4F784F37556974586C3051714B797578617455716151486B74434C75376C542B64726C735348516D6A514B45726D6A48563737356E565851725553643959536C454F4F45434E6D364C6C6873493468592B32546F5A4353516765733154546A775652572B2B4F776F47687366497A5062675930624B37443331613159746E496D306A4F544F5935643269423141553952524D79334E57376F586E77546A6D776E63554435766B6C2B4C396A6A2F554B676535346E52336C6C636341517A70626D5145306356524155704F506F6E6D797A364C496B62384D754754423673666F32767637794F45366671736254703833496E704B4A3131353746532B3974427A7A35733243777857434B3446727747746364325852787835385677636949513777736345663746665465634E6B316570474B542F43594A6367353563494B755274784349452F664435672F42542F4944414341555144675A696F38594D55694748466C4865396547447837683836626F416739626F77766D6245774E6A36664A5A6B5130624E6F425767335033694851473067792B576363676956426241484E427A77774D37626F6F533849436F43727738562B594D797769716C416E7762714E593849736941513961473065774C6B7A64646A3336584663724C36477761464F455758593966496D76504A71425759587A594454795979476D71596B2F4375626D7373584F2B4B6D714934486A4F645A584E2F6C4F58393259436872467A7530372F6D38774B44575656434572614E7571504557306D396A633643764C34773774782F6A384D487A4F4847734776667650344C6445554C35736E6C34383465765974326178534B39464C454D47776B635A694756634C574D6A784E5A55393279724756353142386B6D41353442526963686B553645475663435654714359734634424166497961525944735567443851676A396946626C5163445342776135566A7975324C624E5877794D6A65484376415866755042426773503331394D6C4A596F78466936634A4D4E6175585375755648794D5156644B363962716A492F5A6C644A6730616C535256645856576E46726E55674742344339562B7453444B6F3557512F4F7541626965442B6E525A38632B41534468326F777431377435447353634B61316556343836314E574C3569735842764F417778426779586B41746A427A4E587071457059344152377862776C614D4875337758544B6937485564332B474F7A61796637776C705A35626B74426A567466564542506658323668714A3378344B6F37362B46786572622B4C546A772F6A5A6C32396A417165506A4D4C32336457594D644C3637426F2F68784A33466A5936324C317951596F7158786547796F5A496B5735716761467732706A7A4D4552624F7A50486B49775949486252584677395271376B7952416950744774634D77686952346A316135795A344E7369394541774D492B756836715848476F7373727969452B4441344D79735371786F596D4E44317551552F3349493464715A37595970544D7A346B4351775A534A7241656F66357858584F476D75596B3657775464785674526668546432474A6D385834784D59436E504C3172585A6D4E50726844777A42476B6D56426D7A4A5764746373467063364F6E796F765A71506237343742684F6E7A36506A7163394D7662736C64337238637275375367744C594C644D5353765558506F744F4378476E57735A75584641304D722B526B724B4E3531476A4E2B654C4B564E736E6A686E7136656C623837497A762B4E37796C6D505A544B4D74684647333048474661476B71316652597244417839347670557537514D71574B7453634C7164394B706157727577396E7A39374138534D314F50543147564639795A38364652577246754C6C335775777348513273744E5434484C7A336E4A55453265446A30534869744B5673694A56314E4E466F5A37646637786E4672384D757651462B784149324F463270384161535A546E57617764596A6B344435347A45554F68456246715841654D503067714A584343314B726C574964414245474F62516952793656694447616C4748697A4D616D3570515650323972782B464572576C7661636572454A4A53516D625054497073336278614C77636F33535953386F4F344578686832695445304C346D3846323068526A636E305654716F6C73514E7273544E7370716373436B5A516A42534C384553395A49697041514764793658456C5341776E3672576835776F44756B7669756C792F656B49726C6B715555674E754637647658494338765163797A5848514C7052756C2B547A573466654D48547271466F7770663851506E5038654675386638793347694469726F6D627330504D41446464706A4E4C353546394F3954416F6435564B677845725A3932364D4451556C4B48785833353945736350312B4C3272596449536E5A67512B564B374E6935487058726C7945724F786B654559416E7350533441375971787770366173456E47655054324E2F507877494957776268442F54444877346A775A324763444142434C502F70316B31725958354F6F38785335445769304A7450675344314A43696D385857574974594D444F376C71416764595261745754556A766A39654E7A556A4C743348754A70617964753332715932474C4D585A4162495947514158682B6672366B54514E42722F5264657A784F69544530474D7A41304D5530375662787036673557414969776D79786349366356647967514B68506B4D3747466775445A317345486B2B71644F6D782F574A77304939624E2B7078364F424A4844316368667633486B6E71654D75574C646939617875574C352B443148514B43342F49644351706549747376696F756A746359464F33502B485045484A4F767778643778703841474E72464555593030304957443459474971682F514D486D616E7831384C44636F3246764878615846324C504B35757864657447464D325A71635A4753506152385967754A71712B476E5751582B74434F4F68526241584C694E52454A47735A59585A704250377743467A75524C436C6D57736E457554304C4B7157713659314E6731794242356A4452614C2B627067674E6B7067674B49684D69365669787237573452474E537170544C49344D67494874593379745257316A496D6E664E4E594C447958564652495231385644735842516352633159575136647078774F475475505370654958346D6864496C6E35697177694479455936704F3477345955324F68364F537849534567686B563353724E51443675345977746B7A5633446771784D34563355566E5233394B433561674A65326238584C72367A462F495635384B516F4579305567366A466941752B78797735586E3031787A766D36706856385635736A66355A6E763174675747326C4F4E35557162486861526E4B4150797A333139774D5037336167366551636E54317A436853735830442F516A396C7A307248396C544C73334C454770597357772B4E68584144594979705A6F3063796A315534347342526C35716361786D52466D6C323131482F6158427747503144777A4B7267335154646F776D756531495355307853674741643454436656357838666B5A345167463176776978306C677342464F596849444746794C456E6750632B426E44396F374F30552B683843346465736547757566546D77787068656D5247624E6D6956316A43564C46694D6A4D306D71336B79526B6E617536786A3851477141616834554C36535A5763754749543648737A5838506A55437A4D5A59777A494969383276687442596B32437838623070464D32353062784979672B6D4B62783335776C4F48722B436777644F346571563237425A6B7247346244463237616E453970334C555444444136764E4A33474768573661515374512F524D4765557230574C6E777564756F6249314630735836594773727A6278717676387663556936302B51366D64555A5A51756D433655466F4931426C544A515573332F4534467332356A4B6854784F663577485266456B4C75524531314145392B36326F2B723058527A63583450614B772F514E3979437650784D624E3235414E74666D59667970584F516D5A456C726369734D566A447248667075475963366737487877556A787367484333772B7A74586F51504F54707A4A666F36576C443930396E654B745A47576E696462596E446D7A6B5A2B66445863435857356C4466675A764C2F2B5149385547786D3069395877552F67625267614C57536D7145544C5647784A67334B2B7652302F764147376476492F61326A6F38616D69624742697A3532534B72685372333875576C51737758473648674950415950437446643149533963445A4D784D5668326338774B7A38733041695034652F383573416C4F2F4A43437175495337747771673158745945517054624332416756344C72745930344A7476547550776F664E6F61757847616C6F61317134727861757662555435796D4C6B356162434C6F51307178706B6151794D4559716172414C6C7534702F4B744E5A43597A346E6D38466A4265766B502B5A594751514A574F6672676C34326C4D4A774B4C6A4C4E474D4D4F615147784F62314C6D61763774424B3563474A4E55797A466F41733330442F514538626D7846315A6E724F486E734F6935554E6349375A45466D586741724B3071782F5A56535646524F513036573869536B50357359444B614D7539486F6463414D56544138714B543676523630506831455463304E6E4B2B715257334E4C545131746367474751674F49322F71464A51756E6F37566135646A32664A46794D765067674D45452B6470554E3263553250374A4D3667713855345177307056526B70415470374D514A63687748303950546937763248364F345A464466712F763047584C6B305352326A714351726B7075624B7A33667442715536457A774F47524F4777652F32384A3253586E786F4469754F656A576C317066494C554C4F36494B63754A6D4F53674F375A432F6B77736A6C57786A7A7035532F7241674A4D4D6A6777674650476836306F4E4C6C363768304E646E555858324F726F36656A4231576862576231694F6A5A74586F6278385071626D7063743343346456473677786C55743243306B54733435696363426D706158674C50445269344B753472666A5650325A674448715934324E6A6F73364F6C78484B512F475A45785A76326447535930766B34553771766D4B6170464B496C50345238775557707A6F36776E6763514D54495264782B74526C31463635693436325165524D6D59596C792F4F7859664E5356473559694B4B53484E6774493349664F557446336A38555338796F723673364E756E4F71505A6A4D70654878536F4E39467052642B75656A48432B6450344248747837697637424C6E55664977476B7053646935717763564B7775772B61744B37476B7641515A79536E79586A796B77426452637A46593932415633653850797550616B3147697A796F677032544F6A56763355562F664C4D446F364F6842336258376B31754D47544E6D6945516E775A476334684C54525844514861517278512F68496D6564512B2F30735545786F2F57414F504B4A3635332B482B6E7054676337376C524B6C3843493052545535564D5955646D6D55434152586D3845543171664D732B4D513139586F65627144556D35545A2B656A3032624E3244486A6F306F4B35754A74485158624134537A35534F6C51346578642B314F324733306B716F32454A5233324F48546878386D36616D5077383056446F32336B475237322F494334316D664E4168556B786856704C564B303030465761504448645346664273364F33336F715670434E566E482B4441313664786F2B34684F6A76616B5A36526775493573374631527A6E57724A2B4C4251746E496348746751556346736F6B6F7A5A466F313031576D7647443179556A426B5350636C71666A6973654E545168322B2B75596833332F30416A513064514D674E6C7973424B536D4A36422F6F776F6833454B6C70695369636C5930333339714B54647557596D70326C6C694B4B487332784C6B584B76674F4256687643556B386F6538747877796F63514D4236622B6F75585A5856477271487A6142632F6D61486E644D4449774670666D526F714969366541724C4A794A3949776B7158777A585574674F436D5952694E72647943426259714D666178574F566E7454756C30726C674D4D6E4D64616F36327368414D75474C74727648416F50764449672F6A684A4178316F6F6D384E6174787A68782F424B4F486A6D443270726249753165584451624B7975576F727938424374584C6344552F42523445716C4278516F70712B742B565632484936706B794C30544D6F6E55444177396831787A6943624F386639357747442B56454D354A576F687A4E6B655A5856487A783033616A7A4D366D6833303662474B386847775A694F566A706156593667707659422B554F34644C344235303764516E6433487849534C566931746779624E713342697458466D46334336613473734470674A2F644A4474316E4D58727A3465424B736C71626D706F6B4E73334B6F6A35785548684B46382F66782B65665863486E58787A41304F4151436D644E522B6D69636B7A4E79385035382B6652304E4341337434427A4A36546A562F383153377333464F424B526E4A306546427771494E6B4359536B7343626B3332442F7044305857685244722F307066507849446F364F6E487A356B4F635058734A4466564E4D71327075616C6E596D44516C574A57696C797061644D4B6B4A7A696C7068415777794830774F4878516F585731744E50642F78456A6F364738444D684D75744B745061375449334C6F31645A4B7941716D425A736C70685476507859474134684F7333366E4871314355635058514A7432382B5153446F513335427067684372317139474B76576C4B4B6B5A416153585261454D5378565636755667744438664275734672636163684C58433641564B614A73335646746C33392B47447A7247326758564F332B6D6F5448424D4A346D546B56522B6A4348556333304C3155466F524E57573445754B4E33396F68376365547742565366503439377439765132523543317052456C4A624E7873624E7937426D3356495546724834793568434163464F6E65465234675A78566A6E4D30634A2B4554696A7855354D746941354A56486978694D487232482F463564526662345779536B4A57464F354542733372305A757A6E52382F645652564A32356A4D65504F6A437A4B4176762F48496E64753671514D46555673344E34514E5734333144736864515A736676492F32446F67636A59763134582F33777778734D774F38506F37646E55495A6D6E6A6C7A44672F754E3067662B4A504866524D44592B6F3054345367344C2B387646776B4A6A6E6853585246675746334A4D446A354C7876706C737467455031664F7446727A6C524F6E644D53676848343571426F516D46343939774931435576754B494A4B6E734E4D4D684F3772372F4C683774786C6E54397A4732565058634F50474E51794F644341724F776E464A595659743635432F7332614F51555A47523668455A44616F4275504C42616A45542B7549302F7A746A526A567A56622F65632F4E4E562B636D42776B61713451774E443135594944413539476648613050796B41376476314F506978527163713771454F336675492B69334943636E4834764C5331425A755253724B7865686346597550473636704F54524B59714E6D6F746F536F484854575A69305932306A49474241585231643076516E4A326467647172442F487848303769774E655830643765692B49352B586A39682B75785A6574364165322B54772F68794F485465484333412F6E54302F436A6E323747713639565974614D6E4A6769534D435067493861416B7A414D415A57584C7A683461486F2B496967785174664949434150345465336B486376564F507332664F343937646568474A613237716E6867596551554A456359586139617377665470303547576E69425A4B65314B365A357671594D2B5179574538595A7555575132697936557551436F487A6633552B684155585A426B2F4E735A554D4D2B336144446F51734867775068664867376C4E63765877503378772B684D74587A6D46675942424A69556B6F6E6C4F43445273717357486A5568544F6E6F724D544139634871594D4763797A6A6B4A6861496266444C62484C76796F3566677641677839426C7A7336707070756E6D387853416F7145524F436755744D70306F74314B454446677750424C4577776664714C7632434B654F5838575679396677704B5552446E73534D6A4E54554C473646427333726344535A5357594E6A4D64486C35544C317561365156494534436F71597A5769527166716B2B5A544B70793045314F54556E42306350562B5031766A364371366F376761764F3263727A78316C7055564B7841573173505076377753787A3535677961477279595870694A76572B73786136396131417975334330374C3959433261664B4E704D547451492F41476D6235566B7139305667452F5375637069334C6E64674C4E6E4C75424733523042556D6448373854416D4445724E564A5355694978426758584D724E53704C446E536D41576962776E5631525879716E2B4542564D316C5A44422B49536342744B68424A76474A61464B56346543686A4B464B7666755173704C70447557725879686F5A4443495259495539414B4D773048644456506F785470302F6851765546584B7975452F5050796E642B775652733262344B356373575946465A4355704B436D4631444B74717133543363546F5168313347464167566A30754E764B564F46573355432F654A6A777061526A576E715933306A7853324B4B74425948426C4B4E714E4C46427852785764522B5A3357785376534D314D352F5632536E573476382B50477A6365344E7A5A7536672B64784D336170765133382B356969484D6D46364D3868567A7347487A517051766E346673484E6130614958396350695A514B484B5A4151526A707332656C37344E6453744E506567784B34316764485831342F686671646F504F33373744432B2B4F776B627439755133706D6B69694B3748327A416E506E7A38574E362F6678796363486365724552585333325442395A6A62323746306A585A31467336636A484754366C595649706D737436423859526E64584C2F7036427A487348594C447A6849414B653957704B657A79713730617A73376D595736687A4F6E4C2B4A473357325230786B65396B3165344373754C70614D314A773578636A4A7A59624834314A694345493764343353726A5558785853616C7341514B6B474951676F634678567A54574970524A32396974395A5643306A356A3862495A3242464E4637436A736B563933563159766171376477367452356E44782B486F304E625A4B726E6A5974462F506E6C3643306A507059355A692F61415A79636C4E68732F735143486E6845724F763643724B5431564B4A7A7843515571734F57427A4B43763362593478484D58766D6277374B67786E6E7035746F424A7673306A7152456947754841784D727648486B6D36554C5363724264784E504351714870306458687836385A6A6E4431394757645031654678597763435068634B5A3837422F4156464B4A6B334377764B306C42616E6F50382F4378564644517569634E6F5259322F507377555359382F507A633630444A6D77565133585269396E586263716E754B665A392B67394E6E547143316451517A5A32666A78323976786561586C6949374E35733945766A7766617248334D56496277677A5A2B566839393631325048794B6B79626E695562776542414346306441304945624735704668355562772B4C6739306931354F5537414A4835383265585969733745793458466230394C524C726552635659314D66474A67372F4F4F4854453643696E7A46755A4636454A526A5A4355455071424B616B73387357416F55577A7A436F4F6D6772437639456952486467436B456E716B717A396F6E31543256685272656F717131314C4441306F4D696B6C48793577344F523461415561577071372B4C596B5370556E37386D2F5072426F58356B5A7553676F47434746436B7256693343374F494354433349674D646A513349696F794D313645534E356C5657372F73437870673836682F4A57736A334A54433447466E3970367738713965796732764C6F467154516D48535A6A6849336F71757A6D34304E44534B6E31316263314D3637783765623454443463484D47584F77614E46697246367A4749764B5A694D33333432633343513437616F3351323959306C732F7A68476932384B3546786257466E54324C77594D495362436971664E59527A3770686148443531463959567A364276776936763238372F616959316246694D517475504D71567238396A663763653371493168434670544D6E594566763730646D376157497A4D3742563264413268363149463764782F68356F3337614835435766394F395062315932696F5878543657582B624E6A305053356555597347692B636A4B536B4E33547765755837754236764D31754858724C6E7037426A4138464A6A5959724166673551516969486B35303946666B456545684F5A6D564C415342546C763168724B2F50655A7549674132757A4B6F6A536C414A6B727741414941424A524546556F6C4A365174714B384872712B67637A46437A72783179583859476858344F49463559496834436F43557468754E485254644C6851317935664175584C7462692F4C6D4C3469493437656E496E7A6F4E3032646D59766D4B4D7378665649687030374978613159536B704D3963446A5A5143564F587453312B7A347352767A65457A3954373974596F576539526F415274456857534F49492B42466D49786542775A674B35417878764A735651774E574E442F71523133645056797275594537642B2B6773624542485A31506B65437869496A336968557278646F755856364D347049707342495146676353544F32394B715A51556B62504F69783068364F733374484159426A35344D34517676794D5570365863657632646668435961785A5634712F2B332F657849705678656A717375446F6B55763474332F2B424E6472487950426163584B5661563436796662734737545975464A6B65563736654A4E3146793552613454327472614A664D6C64574C714351525A7877676965307136624A434D5077746E5459505050347A7231362F6A584E5646615659695236757664336A794F67597442533147586C346543715A394F324445526F2F526E596F4251365830597449335A456653726563756F326979686937554F47364D5544596977374267554C68525A463247344D4B493379553759556462507935667273574A592B6478356C514E6D68373167696F6C446C63594F626B706D44596A4734764B69724678413063634643496A4D30574B6C315937632F47736B464F4648624C375775327851714455506B596475742F592B474F6378385539305879517A664E64596F7A6F752B6E503461497A336C423238494146646C615351626170467847375631777063734B434153654768674A3432743644613163625558583642753764616B4A392F524D4D4466644A3169347A4B78464663334B78744C784D5A49764B797562446E6351347779745779424A4A684D4D5948716C6A776C6A4B327769677041526B3144446B423130334C6C44313756564D702F37352F483763766A61416A2F39774271645056755078347762595854627365486B746676724F646978654E684E64585459632F4F6F38667650727A3347397467455A7153377365486B44586E74396F3652743239746238645758523344753742586376644F416F4D384F6679434D704D526B4A43656E494348526973374F5676543239596A692B727A354A566937647257304C2F43653139526378596E6A5A3852696B4B6B374F44424A6A46473264495A5944414B44314A415A4D77766738626A68634B72653758694C6F544D355A715678633573724553756943465946446935556332416244484A6F43374D6D2B6749716C38416369356758475863434A645A6D634A736B344753475256585832397137636674324332717633686269345A31624431482F7345566F38386B705475546D35614A77576A484B6C737A487A466D35794D704F68385556526C714748656E706D55684C7959506252764B6A6F6B6D495262456F5635444B3957494E5A6441336153594B4943776D786734364371505476574868616E3237654556397268715351376172456B5232537035654E39373064665843626D484B6451534441774D49326F4C7752384C6F37776D69703875506B5245664F7273364A4F436B2B39546250594C682F69456B4A514F7A69724F78596C555A46693471776F4946633547624F77555A6D616C774F536736774453734F6B633556376C507573636A7142612F4E486B5A2F537A796D423542725A5257324679457342324F694E4B53386B5947455951503179373134723166313648713342473064375A6779705173765062474E727A7877383259565A79463971347566506E354A667A6D583737453756763335463774324C4546526357464D7047727362344F5A30396652575044552F5430506F556E305962703032646762736C43354F55564942516177766C7A6C31482F73426E2B5942396D466B3746686733727348684A7164524B6274363468544E6E716E447A786C31347659486E42775A6471576E5470676D4261794A67534E2B31585657323964793943594842717264702B31527A44324A4E4D565A625343314B69386F5578522F4D716842734D57447778696D4A546A342F4541716A72392B506A765A2B504C7A2F42426572722B5038755374343871514C6664326371424F437857624874476E356D4A4B546A5A79634C43526E524A43566138473047566E497A6D534F50676C7574304E79394F34454A327947713057725A6E6659345849724E304C353252796B714C345031526C354B4535574C4B6576637633662F71412B724E2F485A6E2F46446D5542613268515561685A462B6A75384D453762454E6E523464514C6B5A4341515267773943414837323977776A3748526A7339614F72713175794E686B5A535A677978593435632F4F78654F6C73724B695968384C694E47526B5A4D7469643349584E41533078776547376754553657464E37586B574D477853464935594178674F3967473245433557396542662F38396C564638386765366564737964563467662F33515064727938456E6B466957687165597150666E3861372F2F375953455554707465674733624E67755A746275374862667262714B786F5233685941534A7952464D4C307A44696F70534C467855677177704B656A75384F4B546A343769516E554E2F49466535452F4C516D586C61705176577978556B397533372B4C736D57704A3177345073393131456F764247494F416F4B34557153473565564F516B4744554D5468716A4C776A55347968565549304D455A4C36644355786C6B4D47534A6A576952436F615975725A703545516F7A377877556B4E48436D444E445A714445696C734552457A6C584A4B54544747476E434A4C33396A51677475334877674272756271517A782B3149624F6754344547624D4772484135453543563455526D6A68315A57616E49534D2B4250536B6767527658755A4F5351654A6D4B626B67616D533548566B6937534C756F6D6152474F6C6E446C786B6764446C567255636454325564534F704D57436F453476727944506E2B78712F363673536E6655515563727570464F54454B644838354A613452337843706D7A7237385076543341384A42566D6E433675727667437755515A504172375A772B4F433065424565736B70484A796376457968576C574C4B34474973577A304C423942515554452B4631544541707A31465566496A4474696946412F31725468366752596A77495968684F4677714459424752704B6979455A73496B7352674C4346674B6A4838502B4156797062734D2F2F63387131467972677463336949574C5A75506E7633774E5737597652655955422B376566344A2F2F73665073662B7A382B6A7248554A57356C544D587A4258596F66326A685A30744C616A75334D416E456C66757151414657766E594E3738596B7966506C5653314864764E2B506A50787847315A6C4C384156364D572F42644B786573774B6C70517667637476456B7A6835387278596F364568372B54424E326E6E704A4F5464723534635A6E73724E773947616A613246416B7246674733347069724947687165626167735245455567335A38384658536D2B5469336B6D47735236353051516C6741557144527442466447786E64675265542F4664467135674645643071616B47477965703149687855425A2F4F6A6A343875506359447834303473366A426A512F366354546C6A374A706476435966543074574F77507743374E5230524778654861736C6B3774385A5A6B2B3654536754585041326D536972644A666B594341712B58734648765A394349446371696542375A664B6D684A597269674A553538542B78316948434D316755717953364777334453666231694177583443706470744B476151567962786D6B6336374C546964314A47417177655A704659475057434E693838457042646B793754736D564C7347784A7553516C624D35684F46314D3641354A71745A68545A6461694E4D35624942656662654941494D394E2B71635755385355514D472F62774546443251544669634B785769317045446A6B6932574971525942393668377077356B51642F756C2F6E73484E3231644675327A56326F583478612F656C506A436E654248336331472F4F622F4873434A6F7A66513064594E6D7931463344797664786944513733533054646C536A6257724333487470334C73576A784E48675350426A6F44364F74745166486A70334136564D5855502F776952416B563636614C384E5035383472676A38776A4673334875443473584D5377464D6C5A486A5950336C574B694D6A4133506E7A7055757674797354426E3535614159417357645A5364563655325672315957524673524D3142347762513669457274437239526168745749664C786E7846736B374D6A43684A6855584F672F3877646B6138544752396A74426C33776446394534704B724F7351776A754E6E714C3652666A3533684336752F7252317A2B432B7739617854646C33763570617865616D317652384C4156505A30736C4B6D61445A4D3949767756447346743938486C63716F714B674644667A6D694A467A49425350646D31324B4E69743355594B57775443377A586969354779703736796E332B71555A3552754C3552766377756F6D6B6E4E62426E374332694243454C47556252537641634557625262306B3772526343782F7943436B4E555065324949546E63594352374F454C456A4576516A64326F47696F746E6F4B686F476F706D3555757664676844517033686A7539785A38426853355846376E537A3035474A697941634C683963444C44436472456F42455659774F74524734683145445A68462B68444E61314A566F7A7A44694E4F32454932524B77682B444345707830744F484C6F4D7637352F7A3249682F6565496A556A677530764C3856662F66586251693866484F70477A6456372B4E3237332B424356514E36756763414B316E6543654A4E3848376E5A69656A596D304A746D786269624C5370556A50446B6A78756546684C3635636649684442342F69397532627371464D79636E436D6E58465746315A69696C5470736A61756E587A74736A2B4D4C416648675347765A4E55766B75585449397749624C36765735644A584B7A7372354859444133516671354151784A4B5370674B416B6375695952424369653566504A502B367133473131665751734D4E53556E6647426F5734556431374B4D484A6E47427A793431486A674D7A2F75336533435938626E2B4C68677A594A306F5948475352626B5A4A6D6C35325A326B616B77387A496D34726371616C49544C484135782B51336D65666E2F30484642356D785A787146417A2B69557156333764625569536C7A4237335549683979624A4C4B4C636B326E3969424F2B5741534F5170556F666C544F34492F50632F62413751334459456B5573496A55315654614A704F51454A435636344851353458596C774F364D4347316D6F4A2F6E316F72365230336F482F624435557045616C6F4345684D56723833746469496A4D78307079596C49596A624F466F446446555269456F4557526D724B464353344D354467546F5937675475394535346B4F784A54676B6849434D4B546D4169336B314E386E58413650554134535541614130614D35537562677568494B595553477856476D4A474B425043777352344876717A43622F37354B46716539434E2F52694A32376C714F582F333132386A4A5338476A782F64782F75774E66505A52466135665562705051645A68754A6C612F634C3458725A304C6E6275576F4D56465358496D544956675843334D4857765857334338634E58384D3268302B6A6F61454E616867646C5A584F78596573697A43724B5155704B4D6F61485233447A786832634F6E37782B5948424168385847594642385948637241776B4A726B6C7A7144466F4673316B63575152574845494F5A776B347562692F785A774169466C4C397173314B565175304B5A71554B3355696B3477357A785631624A7047566C4C5A4D52534C6A4D546734684F46426D355439615A4C624F3374772F586F6A6E6A5231734A30526A5132743647676A6C7A386F515364624F336E682F59454242454944794D334C774E624E61314661576F4B382F41794577734D5938586368475041694750624235783347694864497465394B69374A526141736E436E636E52455755734C4B414D705178545063737A6D714C386F57615445702F6E543373704E32544179584D4162636669636B4A794D374B457557577450516B704B56526E6B62464F5661375636725A62436F366676517944683638694A73336832434C5A4D4F545A494D6E4D596951507744766947726B59572B474E634A6550533963435778527473487473534C426E5136584D773065647A4953457531774F564B516C75464753687051554A6942334C78734A4B65366B5A47656967536E41346B4A5532423357704757626F506271646F4B354241774D50334F50672B35493742795A714C4668704541634F642B412F62764F3459502F754D736E72594D2F6E2F74765964333239655A4C6270524359414E374632695249716B5346474E4574576F3372766C376A69545A44497A3938363766387938752B5A4F752F636D6479614A347A68324C46753235614C6543315570466C583233676D43424E48783176344F44674853736D54507A4A763331686F6A6935454A6769422B3533652B3837583937593353386777636558556A2F75712F2F6877705467767533622B4A6B79657534747970466A783936424C6748773244347769327841427131705A6A3335354E3246433356424A3168794D5A416239583775664E36303977355749544C7079374A3369706B69585A324C523542626275724552476C6B4D362F357A6E61576C36696F766E37364C685868733837736A4C5051624C745479566D5867664F48414168626B3553457969786F5761685075325963536D385A68447841784444366F6F504E533344534D614F6B51482B786E75634661446869474D4564453541615733783651385668496C4D6C4F5654614E59437A6D6F464153464E66495A767865546B32344D44343049687171726651626458514E436B2B4A7954614F3772773965547769546B3335345065796932365836784A43524D5377526D7450654D5745685756713145472B3975514D626954624F4C5A525A4574624C6D53664A786A5770756A774E6735754F586B4B4B424347487A4B6D45776C4D79717373684859466E793542572F4A45522F5738706851626B524177466D44635A4566416259444B7775577044676A5642764156444B4959704E727443436850625A6243344551684F6F37647A43756650334D5548662F6F63392B373277446564415A7564723532426C367044506E494A6B3437474167742F6A3338725043327745614F5A2B5655696A4D5A456F547069666D4B31704D6F4D526C4B71455259485277394D53456F3253396D37654545366967715749434D7A4653564C38704364345243505A6E656F30725961482F596A484345316A683857777639686754396B7865303754546A7836526C38667277425865326A57466D7A414B2B3873516C7676486C554E752B31367866782F6D2B2F78766E546A7A444B556579495154726870507573716937456E763372735750626169777363534935315241396C434934662B61364B414133502B68426236634879636C3272466C58696D303756364A7965513463535379416844453553634E34466A574D566E6A6333794F55577261694D4D4C546C6F6178662F392B464F5A6D693865517364593477346750636549724C4E6F77394C2B4D6A586D53434E52634E7274336C724A547763455A506A466D3530306A6C4951564B6B58674B357845305963655332515379415963443653676B627846444249495341757A65346D6537683530644861677032734D6F384E2B744C66316F71757A45344F444977675170782F6B345079304A4D45704B616E497A457A48776F556C636C505A4C32416E754C577444535044307A4134444669317467532F2F4F6B68624E6D3444706C704B6243594441684554337A647843526E75354A415531374B45444C427772493034334B656C7951484334656B2B5044387839787972703554316855356C6F4F35686871444E76736551765367447568673249695277536C6376484154373733334B5737567479496354454665626A34574C633545616F724B535A51585669544A4A684B522B5433772B395259716A6359776154484B364563456376546B797158386758477850423450595437384A427A7069596A4979735632626B7057467052697349462B53676F7945464259625A4D2B61553445754249734D415543634C416F54456A7565704E634874387546352F4479654F6E3865354C3773774F6A4B466C62555A4F48523049773463334357776E54506E767353762F7565487548474A4235674E5959774C42524D3732507350627350757656757773573470444F5A704B5A573778344E6F616E714B54343666464862457670344A3858614C4668646732363556324C6C6E4C564C5432663969326475453864455A504778757835564C747A6A53697645784837772B39347554373872716644454D41676E3337392B4849706E4A65496C68524146347568495658383756796663734249544A4E386D655A7A2B47616849527236514D67346C766E4745495862794B3061554B4A4146345250684A66554B4A776B305A5158386651364E654E44632F78714F57546F774F68544132416F774D54475061343561546C69456750554E53536842352B553642554263764C734453386B71516458463859687A33377A2F4178624E4E364F776368696E52694330375675446E627833477975575653453132435046434D4B72737844464F66713641694B6A6F54726B4270724371774F6E4B477731477A3378386832553839326D686C70542B6A454B6E7A752F7436504A316744324869416D544577466375587762373733334F6135636667537279596D793873576F3237774D6132724B34556830534E3547492B5968594F52456D323861495A3850307A4D7A634D2F344D4434354461387669416E58474D5A47706A45384D6737587843536D4A303079676364436779495A49464C564C7A6B476577774C46785369634B45545A52553557464B526A30576C61636A4A5442663542686F47452F595A6278426A6B783663506E385A58337A38415064766544412B356B5674585137324861785277306E35546C79386541722F39412F76342B364E59515338695442613365495A56713475785A466A47374670537955576C65624434356D43617979436C6F59786E4439626A374E6E7A2B485A7336637757797A49797976413573306273485862477051744C554C594D495A676B4C427A717A5134487A5A7A48754D6D4768756579576434715745772B656146732F74392B5042683852694F5243612F43752B6967466C4D7674544A6F6174467576536F7639656437746B47555A5146524E3363574C574B595A464B5746577A534D59786F71565359626F5175766734434C4D5573307767536E68346441726450594E6F61476A456B3065746550536F445831395178675A6D73624D4644476D695443624F4476736C456D2F765078307047636D59656D7951766E76564B64565A74725A5453577A652F39415030352B3854564F66485148375233445345797A5965757531666A4632386577764B6F4344707346426C4A584D676B55773262694859714B6F4D54327469553657783537356E6D78307738796B586D6A717570336452376C447A4C304D73506E4E5A4C7441722F377A5A663435707637516A477A664755706A68367277344744473146595543676C585A6D4D4A427962707A6B506F55675150755967675441386675716D737A38794B6D41373137675049384D7A456D365132704C782B6344676F486A683062464A5449784E53364F5431546F574A78595570364632665458576231324B6C6457564B43374D68393343524E36494B59385044352B3034657654462F44464A2F566F663267572F71653164546B346348516C5674637351306C705069356650594E662F36382F3465364E45664559545036584C7376477272306255626531436D564C63324132575558496E676A6438366565347579703232687266344A676542785A4F51367357466D4A7730634F6F726934554143777A4D4D596A6765384A6F794F544B4F6C2B516D755872324A70676650684262574835682B736364597643524444494F7A474B2B3939707063574C7868454E66453069554E5134764E30304E6F377471584767627249334B364B704A6E56526550536D4E4654454C4D4B2F547A684756495356654243685877686B52614955794D544F50526B31343862523147552B4E6A584C703446534F6A45334250656D53536A4C506F564A746C525961303946575652496F7578714B534C47526C4A794D703153376462565A4F474E366C4F6D3179597A6C622F4B632F665971502F33414E51384D654C436774784D353974586A723241455A6A4C456147666D48454C48457048316C6846654D4E37725257564B4E3176626C47596D53346B6D656C55483973496669365A332F3049595235476C6974434C6F4D2B464277784E382B4D45466650485A4C59794E6A557448654E656535666A5A7A77356A53646D533266364C7A4E3948776A43472F544277647078363354444246324B75787643506847644D66433049654E6E696E494858357858716D66362B506A51335055526E357743472B74336F3652314758312B5077464534786B7967586D584E45757A5973676D6231713946526C6F4B66473450656E71486841336B7A49564C7548373142695A484D7043656C6F2F316D2F4F786657385A71706558535657717037635670373636696173587575435A4E434D3733343771465174773650412B4C4679554A336B644A516A75334C6D4C797866756F50354742396F66752B414C5469436E7749546C7177757759654D714C4B386D4C6970426749563268394A6C704A593844383657356B65346576574773436C4F6A50746562686A3542526B5255695175585671476E377A374A68626B35796E4473484261533357794C5659464C64656B7A72704C7253667A356C656C4E4C493266745A626877556B364E4C6B5964796B6754436B6A3247324249554954654C32434B6B374C5849426F794D54655071305651623147787661306430786764596E49324A493947616B57694855596547694842515570534D764C78754C53347052764367487A67783270446B7372345248694F4F786D473071325A345A78754E4848666A3962302F69374B6C376D485948354562743272735772377A4F55636F69325552474D7651523979563947565659594C632B2F69484D695047622F3174372B6F6353757A33664D4761372F7A4C59525159516B33543554357934686B382F7659584F6A6A366B4F453159763745432F2B32762F777A4C6C70644B416B3050624F4B384E2F386E394A754261423943617969794E384E4F74716F6F42554F632F6C4D4748664437344A366152742B4147384F44367576786F30343865744B44746D636A364F33745154413867647A6341717865765277624E713055776F5170317A6965504F3467465361655047374836476766374A5A694C46316168553362536C42587477674668656D7732487949474762514E7A434A68303144776F72756443614B775A53585679417030596D2B766B45304E3762693542646E63664E614D2F7037585168373753676F636D4C5A796779733356434D4661744B6B4F704D46725341317A7344707A4E56535079386E6768475236665233504955467935656B35444B4F774D3244562F734D51714C7369494D6A386E3664757A56773168596F4479477A61626963304A3247612B7A57615535657A54444F51316A50695345792F6B6977354371716C415A3058736F72424F70475956365557596C7947526F674E73566B484C63765873505546392F5678435648573339676E314B637151694C544E56524377584C69704557555552616D7572736142594A594C38665053436E4D487742667959474A2B5168682F425977546A68514D477543596E3866527042373734374453614872524C7057726C3669553438756F6D624E2B394841734B636B556755777944484656786873476D552F78447A542B2F3450474479526165627868717136724A51786E67433576513374364479316461384D45664C364C70515A73515836396176516A2F31312B2F697732625349646B6C5150484B424E3932715678717048475A55596B4B674C4A696C784D344A376856714B386D68424A5267553877486867545539464A49527437656A476F346564754848744E68342F4A6D4C56684B7973544378635743546579445532674F3775486F794E7571515A6D705A6877374C4B5771797458593031363474527454516253536C572B494E54534C415A594C4536345A6B695736565439683733704866476A344742556457444F4838546C79376451482F764B48786549442B72454F765756324E6C545A46415250494B4D3654434F446B354B65466A5A6D6132634E764F7A436A43427A474D537A65555958686F4743394A7668635735305949314B4C48324C56374F7859764B45524B61714B637871784A36786C75375233694F5A6C30654255503539433568733542744A4845747331637164304173564A795044484D4D5750474535594F39654E48585769343978693336687651324E6769414470577777676472367065684A5572713746385253584B4B30716A37496B524B65385232304E6D694F6E4A434C6F36526A4578356B4E7672797264636E4B4C3464663056464361646C507561547836334349564C67356E626167727778732F32594C316455736B6B545354704A68554D33444D4D51784E7254383778504D666142677131394347616362596941744E44377678787A396577506D7A647A45344D49546C4B34727835332F2B436A625772555A4F726A4F4B61324B505242486545546C4C496A336D6570786D5A50656345744B7343736F3067457748716A4B7344434B5A545167617067556C774E6C7476772B59435536677461315468475375586D704732374E2B4954376A51426D35614B6664672B4A3937493445704B596D6F714B71414E743331416D49636347696447536B73614E764662556A487136327846534541366D496847695142483847304E626569666F626433483631486E637674556F4535775773786D3575666D6F72566B705444464C6C7855684D39737530513333794E6A596D4277634F646B46556E52674E455151596D5054453179366641764E546133777A5143546B792B5A787967704C5978516E3775696F685237392B3145635747684543456F696B3532533158356C5266426B3167477A654D345837556836504471355961686F53484B56466A685552416B753769396A725968334C7A65694D735862714F6C755133392F61507754486C685354444A334143624E7976584647484A6B684A6B5271634E57594E76373369457765454F64485970344F4445694148397658363478794D5948357647784D536B38416C4A2F79466742734A7030692F78654566466865586E5A324854396958343653393259746D71504B536E4A696E446F4D64416F7378754B4A5277624A37352B7876472F4F6D336C2B5563332B307878444259465A504B6C306B472B377437782F445A5A7A6677782F665034756D544468517679734368517874517333595A6E453579675956674D6C6F464B637A37784A777867624F78444D6449786D786950796C4247434E4A6D38535A66383131533050692F67675952746C4C523942506A6A414C416F5A7832595233623358692F4B6B574E4461306F62327444354D5466746E554356592F637650535A425A2F2B596F4B5646546C53524B646B35636754555A4F434A49396347526F416B6154465A6B3565516A364575476273634C6C477357442B38386B57726836355362753332755351674D6A6A4E496C4331466275786F624E7978485552456A424355524D6550314345306E50784D373363554C6C696A5368736730527366363064443445426376334661473451556D5864345868314C30474E7A383565576C6550573149314B755664793142704542494D75664E6F7834454B476B6D484547516B2B69526C7A5636324E564B68562F7A306D2B656672496A49554E51544A5868434D494263775937486668397130476E4431566A32755848364F6E5A784147517742352B5A7A70726B5464316B72556269784261656B434A4472535A663533634743636A41396F626D6C416179742F70777364486632436B7772347945524857685879545A6C67537941746B414F4A396A5345516B6270444C5053775A673050373841752F66563468642F6552434C4B784B526B6D67446B555779415A6C6A474E4A5670356F596F57386C78692F5A364438343533695A595867455553435971704152492B4E2B66504C4A64667A756E382F677A7130575A47553673587256556977704B784C38564344676D51313557634B314A544348704B4772734A6532626A587938474E547A797066784D6F706149354656534E7446676D6E2B587256324C4D526F597262395330343966556C2B62747462573343694A365A6D59484378546C59556230556D3966587972383542596B5331706D7462487A3645497A4D79434846653263324A79445A366354596D4676365563784C627431346841635048714C315761654D6F724C35534E7A5868727071724B6C6469724C4B504E67705138634B48587456775243382F72446B704179624F596C71745A4C2B31594F783851453861487145733265766F2B452B4934514970743366726F6A4D755974352B656D7A687648324F362F50476762666C48452F54784539654B5478537A725A6E6B2B6B70687055314E705463616E4B503153763472734D49785378535233644E6548482F62755063507255426479342B674436514E2B794141416741456C4551565474726178444277554776363632466E763262384C61395975516B2B3851334E4B554F3444484437744561495A6B624251665A504F496A48546B515255306249514A75686B6D4D32504F544B536E632F5331454D37554845784F546D4E77594178645858336F37787445546B34754468375A6A502F79333135425471454A6471734A4E68373059686A735347644744594F782B412B724D58337231532F4E4F563573474B7767436575696B56423345385A63586E7A78525433652F2B31354B6758425A72556A4A794D4853536D5558474354532F45744D5A5269534A78414858595A76684C73664A775456494A423942426B703266336E5A317455724F6D5A7A75516B5A474256476371696F754C5A613646343853584C39374775624E583050696742524F7555656D386239367948687432564750316975565958465341334F7830524569475A3249316A314F435241747A69744B4536536D2F3548307A41523961577037687971553775486637495A343948636249304A6A384C436D4A3558636E64752F644C4C4D6B704E58683577715272335A79436D45694A65534F477A45355355693544376C356D62416D6B4C72546A3947784954786F6649797A5A362B693458347A2F475174664A6C686C4A55766A424131576C4B3643472B2B2B6170677058686973504E4E7A36465A502F5273742F5955756C7972763665527148713567693348344F694B4B45456E35564B756A58714D634E694B6343515A6B354D42334B7076784265666E63574E3637666B3149694562566853746841624E3632522B653031363871516D5A5569624954506E6A3542772F33487770544E636D562F37355341426B6D6E6B3569594A4F4933644C4F7036545A6856695258466B2B787A49784D47635A4B734B616773364D486C792F665250334E32774A4A4A7948456F614E623846642F6651775A4F635143475357554573414B4966542F507A494D4167344466722F4D534E42726A4C756E6365724D62587A302B797334662B3636684B5257356B57436F6C5553586272357945504B5A434C41547846315335564B687138345178365345466F3430454E4B4F6F44337A6D476E635A6A6B634B4733574652636A4B51554233776553433549617632786953456B703569786466747155567061746D594A63724D7A346242513635746C45434942434170556868454A4F53556E30596A693776342B6E443933425A38632F317043364C45685975634D5348536B6F71536B48485862466D5050766B33497A6E63674B646B4141772B46514151426A78642B7A77774359654B6641717241346F4F5536534D4752654535506A614A70705A6E4F485871764177714D5165646372384D64723638544B70536978597652463364657051574C35446B6D363655437955457A39474B6C4A3742554A44794741574E447248554C49574B7733586E6C37542F616A785479783072773541682F7041566B32344C756A70486366623046587A3135515678646147414355755756474C6E3776585974626357537970796B4A6275775068494343314E6E54682F2F677A7136782B49793356502B41542B545341672B78673575546C597547415256712B7077494C69644B513471665848636E4F436842434A69636B67674C486866684F2B50486B616C7935656B7843757047534A61497A2F31562B2F676B526E434B5A494341496B5A61574D6379567A51716E2F594938784C78546A68423950516F765A4C6F6268386E6877366370396E506A3442733665766762337545666D55736A593645797A7955456E7868436859434D62666E37524C4F474430486F322B777A6D4641584C4166466E4245755371647744487A556D776D4779315372384734436B5A4B4A734F5274754530382F4E6A61466C46516A567130707854732F33592F56617975516C5A384447394548736F37456B4C45705343576C714747456B36522F51754D676D71462F61424433377A2F4571613856563348623078473572383755544378667667706264706267384E4874534D766B725063454447544E443059516D504669326A55706F645477364C676147724D6D496A574E714F5551676E34547873646D304E5438464B644F6E78656B424275684C74665569334F4D35537371496C77346A725179755631575553354E4D7458355A714A746B486853593656694956494D69784E764747513756384B42515848625A704E443166674E52474D71367078776849533846456850787443774877304E542F444A386139772B55493942676338794D724D773535393637446E514B33456C416B4F4E337A2B536479353059397A7078376A7842636E4D64412F4C48724E71636E704B432B7052456C5A4C6F6F574F4B55686C4A656467637171456D546C70496A6B62746777436F515434666553374E6D42475A395247434E4F666E454B70302B6668327438436B75585571426D42333732352F75516D556B34426B39624E5464684E6D52463535796A305165724E644878566A347A6431376B65786A4E4477796C444A796C466D4A7A686331534E4B5473393968674D6A6A676E677269626B4D6A546E7A794A633666666F43657A6B6D42624A4F655A6B3174756378307036536B77574932594D593342622F504B346B704B7A7938547A51453174376F4A56686139586A386D42774C59587A434A625358303151386D706A427048736337716D4A36495268414A46676B6877362F70416269785A6E6936663435562B2B6A6F574C736D43776547454D52324131476D45316D544554466155583549414D7638525559616D2F4D6A6F35436266624A2B4830745374336366314B73347A7745753565586C474D3762755879526873626945627A5353505537726573774B55597A4E53646554685450426C616E494F5169464C31474F3430646A30474766505855527A38785070623478507649547466506D4B3067684C61736F776C7147697446514D67303061626D61365954324A4667384A656436676B707154554B685862686256353067556A3846776A52314D6E6C6F453254456B536A426E6F4B317448426375314F4F39332F364A676F4579626C6D7A5A6A582B37426548735735444F624C7A6B67585531742F6667772F66763469544A2B366A35564758624A4C3074445173586C794D58547332597532364B7053555A534D6C31594C6B52425943754A6D49302B4C6E34556179776D684952436A49356C344546383764784765666E7348703078656B2F7333707856646533594F33336A6D4939445447776B775346663872612B76786951555A532F362F4D597A6F6641654E556F7A454C4E576D4B553849546330503864575870334871797A74342B6D68554F744B486A2B7A4573646433796361534B4D42716C476B324E753173566F58675A586662372B4E7375583957354A4747345A344B5948786951745349694A6B61476870475832382F686F5A474D444177694A367559517750654A55516B4D456A5A645044523366696E586350493563457A4B595A4250312B7272727759506E434F7452572B304F4864747A494D71336F397949704D55324553752F6466596850507A324C6D39636659396F64527172546765557269374433554333576253795648436363384D6A6879742B6C58504845754B6F38386B46323958526E72755178704F67634835394349355076633565454445484371346E524633754D4E65764B49797A504653306F7749594E613146637342434A53665A5A644B3053666C467A414872735645504B34304745476E6E4B48434D65473255794F6C54314B6A6F47715571636C4C454E4978787734506174446E7A77776566342F4C4D7A47422F316F4B536B4450763262385672622B354353566D47304B4B3433644F34634F34612F7643377233443237415034665259554C383748326E557273486C7A4C545A747149597A3359716B31496751463453446B364C4C496177566A4A576A6E576D46797A4A67786D2F4769592F5034634D50546B73314A536E46684C58724B6E446B6C62335973326358484861503150525A427062504864587831703642454F735968394A2F704D6549786C54526B55584656684B456A7A66613563615A302B667830522F4F3464716C70394C64662B585633666A465837794F6C61764C59484D6F44386844776D694977475A53382B734D726467664573436D594E63497054444379356B5348784845684E6B54694D68794B47507A6F4443506E5072716D6C5150536231765477527131706267304E47644F504C4B4E6F4753423049654D4A326B56715856614562456C42674658697247636B322B7A61494171344C68494C555662516948457444624D3470767A6C7A426D565033304E5451692F48784D61526E3272423251776E65656E63334E74647451695245376665413943376F63636248585A6A7865476352477579596B39655767465032726D3766616344587038376A79654E577165533558433970384B33665643474355385337374E367A412F6D5A68594A4B4A65524355667172537359504E597A5A666759343238475372614A696B6136747761394746763132584C767946502F6E31782F69374E6C72514D694B46617457344F6772323348776142317943366E76374D50517744512B654F386B546E7836466F30506E73466B536343326E6574772B4F6732624E3236486F56355754425A764B496E627141696144434D4247757168426D4D5952556C446D3847556273526A4C74432B5044394D2F6A5448792B6838583462736E4B73324C3637476F6550374D474744567668734647486D6F59526C65614E396F786E44535073554959523361666631726437535467566E667237376C64707962526F36445962536B582F494A747A6B763277644F79445038544E47384331612F5669474A38667634566777494A64757A6667707A382F6775323731734B65785068656555454B77466D6A6E30456F633253676971686E4D777769513232417A3052346A6D5935696941596E675449572B577A6F2B315A487A372B3842542B394E45704450514E497A6650695131626C7544516B52326F323770437644596A445730594672362F4D586E5736307152526F5272315067757736756762784B2B6D534173706D54424E39312F2F42536E767271484B786566794A7732315A696F7A3047366E52303774694C6479626B6738687037425159794D6A4938572B426856545170695A4151534C6739507537477A5676336366724D65514766736C512F506657533548744433564B3577777358466D5076336A3349546B3854475141313542345772517957376D67597A77756C6446564B47344C4645733879794643597457383243756B7079475A426230466D5163446A74755079685166346E2F2F77422B4574545579306F6D62744B676B4239687859676651736D7A534C6E6A34694138515A6E507136487531742F58436B325048366D377678396B2F335958564E4A55775579755463423367612B684579683241794A4148687141436D615549576A57684C5467754F54637A6767392F657845642F7549684844317452764E434A6E5874573439446833616864737745574F356B7871445155493071656B30746F54547A6857474A702B735573666338316747396A424F652B6241367A796C786462335736523257634455456C4168384F342B3764427A6A2B345157382F35767A38457846734737444D727A7936693773505643486E447737624E6177724A48516C5A7059366C563569357176696547356D4777724E6E50396B546864714253552F463448786F59694F483738424435342F795136573933497A793347316A324C63657A56766168617667444A715177317661526C4556694E4A4E2B6759576A554D544642664439466855533156612F486A786D66436745547A4F6B596D584468787255576E44725A6749766E4836422F7341563565546E597657387A6475786567664B7958446A734E736B784745344E4450544961444B72626B524F7036646C792B772F6D37714570645466626844446550716B585255734A6C35436E364D4D41364463324E363965364F476F65766349656C6C2F4A734D49304B5077516B78316646576871464F4935386E535761422F2B357666346557786937685079497449306C38742B327545487A4E74447545396D646A4F506E5A4E5A7A3837437061487259684A64324F6E377837414B2B39765273314E565577687378797738304734752B6E5957435A325A436F42764D4A627A654E7955305744593951454E3139492F6A6A622B767836556658304E62576A664B79444F772F7445453878744B4B366968624F754552333245594D7475737963662B6C59627850584C30325A664D4536645562435838556B7174424E7748676B45386539714A7A34356677662F2B787938773651714939735475666576782B6C7348734C413444616C4A4848456C6955454945524E4A3631544F70787131736536384741594E5A64597732424F616B727772464C4268624469433478392F4C6F62426643592F7477523744363743736466326F714B7941445A4847416154442B476746785A444246626D65595A6F45555A666C497A44386D387177776747702B476136685669696B52374C734C47475979502B2F486258332B4E347839645245764C41316974646D7A6673514776763730567457755843434D4C6A594B35376441774B5473484A434B68526E7875546F4745544E6F77627454666B2B5362556D4D47413645304C344745304443344F4973574C634B6550627552365579565249324B725472355A6965625671685A4B754C2F6E57555030637944332B4B5255745137796D4D4535582B4B584E6B67686B457638442F2B3739386F49462B43415456724B334830316133596433696C55456C7933484F777A344E545839574C31366976623462565A734768563762677A626433592B7532395567774A63424764473534427547514679485241626642544B2F42383945344D4D6377326A72373863467662754B7A6A322B49704735316454594F48746D493131342F68494C38685172704B36465874506F543558474E565A2B5559624276776C4F506D68482F3571626669777A6C4F5959686D35713547676E70434F7333474B5653642F4B7A6D2F6A372F2F346E3651586C3543654C64736962507A6D4D367571467945797A6932656C59595369374F5578676A5546684A54424A4362486F7134626530516948756C424D48635A482F58682B4D64663466333376734444786B4668633979796251316565324D2F4E6D7861426B65794155617A5233524A496747664741594E635334436D646F6C796A415977766B436B324959744E456B5277374335696B424C50372B5838376754782B65786533364237445A6B724239783371383965344F724639584B6E50797A43396F48434D6A6F356959634D6B484A6745436D57394978636C6D337644514F4B376475494E4C6C362F4A36444D626F344D444C31465532723176625953302F615137334C68784935784A695A4A586B4179427A4E4863304E7A387A4450696B32324E716F306E64645A396A4C6D45676F717155385872515154707671587A475548416D344B72463576776A332F2F65776D6C5A727954714670576A6D4F76376350726239634A557763664A4F433665716B46482F3768464336636534437036544271616B75785A2F396137447577426158466555684E4A74574C56777944504648453952684939384B4A436D4F5075756E52554B726C5551642B2B2B764C4F483379767378317246315467474F7662385052592F75513773794779617953377538306A4F684746666F6379697054722B4C663267332F41595968474E736F6B544535725079554D72435934585A3570467A3744333937484D314E37614A355162324C64332F324B6A5A7572454A4F64684C4D684F4A777773366F4E6A344E513456557351766751635A42715069686B30426F426A43354258492F4E526E47313139657849642F2B41623337336243347A5949466561526F3374772B4A5774634B5A5A59557959676F3371755A47674D6F776F613250734D6E6C51557368477A655A774137736D653658776B3254506764732F67666257516648715833312B4130314E44365544766E666646687837597A4E71316852495345676B4C51324454547A4F64744E6A4D4F5250533039464F45526130332B6C59527738736A3743436232432F414B735772304B65566D6B7A7566676A314C515561417A78624C486830624E73756D6E42356269357A45307A622B4771424E72705341697176456E72494769396D4F51377565392B6737382F72336A2B4F5434707A4978746E6A7855757A64747731762F6D514C797063754550346B3174495A473534386352316666336B5454512F62684E3539315A7046324864675062625762555468676B7A59376678386E4455674A35494E5269544B445135535956516F4E6F325938587078762F454A6676315070334836713775596E6E4A6A793659532F50546E2B334867344534343745346844596733444F4B733468383855496B686D7155656A65367065437053767637624F71732F4A48364B765A6251377A6B307031487848654733436C466B5279695552635830787056482B4E582F4F6F47623135726738302B68724C774537377837444C76334C736569346D515953544C4263724E34384F2B7571426C704F447A5236526C6852694443677353454D4C4A34765159303348324972303565784D63666E63486F38417879736F704562766F6E507A30735A4E6F7055596F656F514F794D4D46586978536A456D494A6E304C31366E5034776A4E434E6D645053424D4E52644943585468586A3675584730556F61475234464158356933446F794237734F3751537053564F615350774D7A4A63636B394F596E426F55497945305531614F6857476964596D2B6434344C6C2B74782B557231394854505341357876445153367053367A615652726A784377734C73573564725579755554694752416730636D353650626D6E44535065494C5448304E376B323459527730377839356B6F73696F6C4133716852485332756E443631475838356C392B4C7A682F52304B476C4746666557303936726175455168484A4F4A48662F3841626C352F69444F6E6275483470312F444F784E47626C364B43436765506277663233617552654543703641704457472F444D66545933446D674B54432B6B546E484D614E2B676238396C6358634F616275394A425072782F46643735737A3359753238377A4559486A4F774B78336B4D5665364E505A526866467546536439302F636F6633506A374472755A2F3737784C2B505041747A723051705053324D502F764337732F6A6D7179766F482B684255564565586E2F724346352F637A4F574C456B54466B624F3349656B7350436955724D61505759444C3259594C7448414946796E753673664E36343134682F2F376E646F616571414C5345465663764B634F5356336469326651504B6C374336535271634B5A47636A7371527A426F475277303451363947446742664B436939434F384D5564486A754837316A6D437757706F374D4459794A5166313674577263506A6F4C74527471304A6841597372454430395668374A326B694657426F474733784F5A354A30783331657A6D4F34634F58614C54454D36716B51667A552B4F765069507362323363736A334E54352B666D6F726132563064624578415368366C63716E636F77644337426933676579766137716C4C45526847457142384544537261474F706532444470696F6A45314B2F2B39776534645034324A6B6244776B692B66666453575751614B376D482F4945706448594D3473614E5A727A3375784E343144496B364E6A7362436557565337424B3639755163323659685176546F636A6752317278744D30444175436249675A57432F3343674843355774333850742F766F777246316F4543587A30594133652B736B75374E7856423473354D556F42773346624C5A773566345A626552416C55785A6E4D484755502F48507A332F64642F6D4E2B52376D7577784344536F70396A39706D4A4B31554F68466759356E342F6A71693974342F33636E384B7A3173636749487A3636567A78695657554F456B784768456C645A48765A584C6F713377705145575A34512B7A7454496A6E44374A4A36706E426F3559752F4E506676596572562B3968664E514E5A316F4B616D7057342F553358735757546375526B5A5573423556697A6C64587A5842572F52754C5145536B6669776F7350566E5433746C73764A3266534E6157683678337942552F34744C3837422B307A4A733362344B53386F4B6B5A7163494B527A6E4B57686E4C48504778524F4D587051786435496B67332B4C494C686F544663756E77444E2B72766F4B3231533644366B784D764B64647533626B73777332526C356550376475336F53416E5379705268486245473462652B4E6F77346A6C7235304A4335705A724652574D5174734B2F564B596D4A774159474B58306F53416A2B7168347A6A2B30546C3839736C4674447A6F463668373664495548446D36433463504878415743765970707477656448514D3439513339546A395A544F61476A74464A376F674E774D7261764A51733735516F4F6E56797771516E4A6746616B327A44436B7A30675A46787362422F764D58622B443966376D4D4F2F556453484D3663576A2F53727A36787462764D41774673707637654C3636304864742B4F2F372F4878576B4264354367334D6C456F625364324539744F416B6345674C70397677542F2B2F573978762B477544416E743272304E662F345872324456716B4C594F564D544E4D4B53714A4A74545367396E39424F73516F795646456567387A6C4D4C716B7642734D6B563431684B47424B5A773556593876506A2B446533667653794F4E796C5A62746D7A42396D306B4F36684330594973324279632B314444565A706969434755792B57532B596D523056463064536F786F496374485749674133326A6D505A4D7952527057566B706174615759744F32636C52555A516C484D457641595947576B486E66434E384D333838744F59666B76785961482F73595954454D686C4C31742B3669766131484943466A6F792B70536C5776796F6B6B4A6A71775A456B5A397533626736794D4A44562F775537334C4F4F3338686A7879626647544D3276537247507759666D536D4A3862724B5136446B7355324868594B4C4D2B4A4930544842544951636D584E4F6F76396D414C3037637749557A44564A525355704B784D37644E64682F5A434D3262366C42566C61616542343262423439374D48584A322F6939466533704A507039765149674842525352357131697A446F534E3151694F546B656D556B3450476154416B434274365630636650762F38464437362F4349655052684151556F4244723679416B655062635447756A56497343594A455943416D4B4F41794E6C4F3375774F2F2F6331444C3157346F56307A50454361784944696F36344D7339512F4C3073466B54676E6A44693973306E2B4A752F2B652B3465366442414856316D7A6669463339784447747146694C5659596368596F58527267347242654E526839616352375462723539544731724A52584D6D5041692F69506630646F2F682B4D6466346879373145334E4D695445364B4E6D58536D3231473342786F31626B4A6D52445A4F465A47384242454D736B50423044324A6F5945776B6C42382F65695A734C3631506834517830753065686457534C41794D6C42746274586F704E6D31616A705772793245796B37526858486F557A433959414747356C776948766A364753575375747770704943635443516C68566572367A627353536A45453547453532502B537174534378516B5258676A5A7A6E667332493630564F4B62314D5365486B746C4B4B572F3178376A7577776A6E746C633057796159624A77724A4C693967364567306D43726447474551776C6942347A2B556F766E476E4238512F5034664C4675356961397147344F414D6236315A6938355A4E324C563350564C54574E30695A3273415451306475487135415866764E754C323758713478723277575A3349797372447174566C574C2B70457573326C614769636F484D486C684D44686C6E37657273787A2F2F6E2F667878666E7236476C7A59584847416878396F7761486A7137486D725856556A34556544535464576D5A71786D542F7A6339426D396D6645394263334C4E74343335464B6236357949777A4A6E7543446C37452F47347552642F387A642F4B3772576E4A4666745871466C4C5933313157695A4745684969457A77685A56625652396A4F6359786D777A546F64416374774A496F42557053455A6C4C4A68796831477737314849694632377578463063616A31466C2B515461576C465A67546331364642555777326F6A695552417444464752345A6B73343550754D553468414A706542535273454E2B313545496B56566575586F5A61745A555967336E2B51745368533430464862444633414C657067626E454E4A5043773539304D3945454A45654630556936484859496A4642742B744F772B6979666567344D73364F3068354F50637835346B564E626B52536F795263473344686731495456616C57527143546A413179624A32742F4639444231697853534C46565A4B5039526F5A42416D43366E3648516A3537644C384D56744A46636D434777454B515A6D6E614C7A4853735139664833794374706268795376794D334C774B70564E64693962783157727931423059494D4B526D53304A6461474C667247334431796C336371582B4777623641474A2F546D597979716B78554C632F42756F334C55466D35434C6D35785441626B36584238377666664977545A38396A734873555377744C6350543131546A3636695A554C6975526D3633594D754A62302F454B536E4B757A316E526636386B2B336D47774F66342F6A45794E695777452F3833512B774F45644C4E4B70552F4365335058506766662F74504F48766D41736248706C4265555962583339794648647558592F574B61694273516B4171673370756868524843734D553079534A50777869334C53634261465551746A45704E636B736D524D6A683838614D53354D3964772F56716A51455A59445349734938325A445764714F71774A42492F3668644A2F65746F6437566A376C51794568785576437A4C53387043646B344838516765575669334773756F79595873704C4D70436F6F4D564F4972707A4742717969564A7438584D6B5149316C6873496843513059796463715831526F496A6A7379465A67377633473348742B6933303951344A59726535736658466872467853306D45784D45306A4F72715A63684D747A2F584D4762314B754A496E4F4F5463473030387945685170467643596A6F6F6444494536707339734E676E6C54316379705445547356704C4A6E45412B62656B5339382B716C52725331745171395A6D46524164617457343174327A5A69315A6F4B704764613458416B43686C59563165506E466733726A314159304D5865727448344A70774979306A5559426E684A387A61567531596832536B374C52327A574D547A342B6A612B755867496C753559764B7347784E396469373445615A526952424E58676D764F59627967764E6F7876782B7376694975653836506E476347336E347664567A454D54456B794776496E6F37746A47722F3631587334652F6F694F74703742434236384841644475786669303372616D45783265456E416946714743796E4D3263515A685846684344776E626A6A54586875706373654974314E43414834424B6E4D41676535635566472B744277727857587A6A554B315646485A79736D58564E79674A464668534F324C4D51513855797677372F4E6A653177704D692F6C4830724C536C44646B34795373725455466C5A4A614577746359705778414A7569535A70726F557835463537356C724A447163734A6A4A754567314B6466734E544250706E41504532322B767148784561356472306476447733446A6E7433487234455862752B53447847645855317973764C6B4F47304361753270736252495A536D337463686C45362B3963396E4F36675553597A4B68756D5454646A534A5378526361325173676A786D704C74496B725559694758564153396E574E6F76742B4F69316475344F79464B3268394E6F42494D42334643786569707259635737665879456C53574F79454D3430655A7771446733316F6574434A6874756A714C2F656A6A753337776C555768626659684A3276755856713147515830783243467935666773744C5733772B647859745849786676624F5A6D7A65566F6D4678586E43697875557A6A773350354E506174484E4436586D666B2B4977622F4851346454332B5742394D3935756F742B52355168486878544E616B4B544E4276784D544546503735312B2F6A6D3550583865535232676A3744717A42713865325950654F37624361626641627079513049724353445637527A7075467566425730615054673742354755456B474D55365365354244306269625A39513837433044324F6939444D65742F5468377530574E44625869785A69642B633466444E4747457A734C3669654750396567683149546B3543626D346D636E4F7A6B4665514C56793465515670794D784F516B464F6F5252706769473356416D4A7045556F5355724658683931756A6E7A453462647274446272446953324673616E32776542396E49564678696E426C7662652F4768597458705678727479666A3576574746787647756B334645637261306A414943386C774A6B6A6C5149644C65754E72544D31387739424A755961646338504847306238372B6D77495035662F7079784D78654D4E7A6F774538486B7542654E44352F69314E6D4C6F7362612F705236456D59424656597557344331745374527536345335565835794D784B684D2F766B7235475831635944586536636631367661687A7472643143772B72325270475A6B59754D6A507959444A6230547377494267736B7246565668586935323976785A5A745653676F7A4E505766436F4141422B525355524256415351494867754545516E424E5145303855627772647A6A6D38356D482B6C6C587866772B4161362F575338456567546C536E59715747633839542B5068504A2F486C5A316652634B394C534348576279724247363976782B45442B35486B534548517A49335073692B48676177796936454D67783178626E542B6E4F454B50556759416239752B4B6D66432B6477654159777A6B67464B42524F456A3477763963734F6F42445139336F36786E422F5875506850417345434457436E4C6F5A715A6E53436D584574503568646E4979484169315A6B6F30364B634843567455774A52766C4C576E35472F493552426F5253682B417944304238323969686C7250597151796A71452B7239524D506C54446E48593666635076514E6A4F44366A56755366467373646E7A39355955584738593766375A446B6D397931314B31315A6C4D3867424671386D487A6A56694454796C72435352746B4139464F6D427A6A5534327A482F45562F7131534F767356685756526459483264746D33513166713850593634704E443136686B7358372B446957664957446369516A544D6A4155554C736C46585634734E6D3270515556474D72447972314D713948694D472B7A336F614F38576F6F54364779316F626E714372753532565938506D34556C5A4D4C74677357636A4A7A634E477A635649563358746D4D366C5835794D354F52546873515954356B484472306A416F6D785A66317552697A7956632B3736474562746D74554C6145485250346B554E516F30386950366D4447444E686A356D4A742B6365656638695645367946392F65523566664859467436342F786453554436765846496E484F48623445464A54306847327A6767755363334A3848445348694F36385931614355744A69516C30517A7268367566387241615763496D554E6A4C785435507050334B44636536614735506844516562504E4E4B7A3050764A787048556A4C5A537378774A435849414A56513968684A7473655A45667071785A67597762546B703253547047464577676E777A457949642B533930586B7731344B4A4E306D732B564354676845314F75767859326A456851654E4C554B41776576343477636E586D7759762F77764279503046455458736D4F59614763444C37623566366868384962464A392B614855525875486A43366639577530504A34383747757A776C4F4F77664E6D4C4D375A473639746C76476E4872786D4F3074376468776A30496D3830676B337531745774527532346C716C61536E6A4E46526E414A425A6D616D7346516E7864336237634A6E4B433575566D5372724652596E334338496539416A49734C4D7A4737723231655066564861696F7A4249704C6D5559334377786A30484430435656666E5A7836334D65333639384F332F6A363832754434763473713032484F316435787156576B4E57737954734D68456D7A68784F41664B6F536B6F39624F706D587A7A33514370415A5A58706550335672586A3932437649544D385777784355676D78714A555773726A6E714D54693349557059436A6647616C484D6F37444D533349375369516270534957434B524A475664564A546B615448356A396A73346E7835444876447A79706542764D5855664665434F6145514B5935734D6F76425571794658706F3648696266637733444F384E2B68576F6A6347336D47346249475869446D4A3732676138646E3568475A33656647415954392F66664F2F356977336A333533736A78635646714635656961526B6D3352472B64413542444652444A4E343037536E69506351326D506F5549714A6E503667386B6247475155763052635149462B7136716A4C7A5A6159566632332B67724C74426754504362796F38505465507877474465754E7550367451595A5552787A4463734D51565A574E705A576C574C6A35677173715333466B6F70737047556B692B44696C4173594877326939526D6C416C72772B48456A6D68706230646B3269756C706E6E5A6570475659384F72722B2F48754F39746C4C4A596E714D6E4950735A6377394368564F7A55566855726A6147616535702F6478796C4E33364D714532746C52424668364B7A30504E2B5856654B4E423474506B785637304E43544170307170794E6E32566D326F2B6D7867345A637A337A7A58324A713473576D334430316331342B3630336B4A746443414D6C344B532F78464F5A696C534D783733534644555A557454397067366A4949637042634354324369656C775953434C4D43784D32734D4843525346545656703132346D5731643950474862733035674365364435546B5673777141435A504F5570756D4F57454859474D452F415A4F5877575349516445714F3466464F77444D3967345145785850467A3870515375625866527870554D5935365A6F573730574B6E74372B4954782B306F62424164352F4879356471482B7859577A5A76697979724C6F53613959754677346E5331514C496A36353170762B5259616854375135336B42677A4E4F7A776A46386A53677047546966456532516932476F69354E704D6F71564A4C4170783150454A776B5778543936753064787537345A5636382B774B574C447A44686D70496B6B6A78485263584A6B6E4E555668656964456B524670655549436D4A634A43776445386E4A3662513374364A47316565347562564E716D316A30333043776E30322B386377357476626B52684D59566B694E394A556D6A5A4F492B6844574E2B3879332B7850397563346A39524B2B524E677A392B2F78584F746A73564D56782F32706A3052346C48702B6C3330734D693247554B4B79714E53556A58316637434C37363468612B2F4F773257702B324979732F676B4E484E2B47646439365576674C4358744837553769774943496845304B5247576E436D677963635565555431694E7845594D4C7356634B4F75696B6D2F68716F6F6570457064537065345666564A33694D61647338764B42442F706D5A6B324955683237714370664E6175636B544347496B755A335A4C616948674D3847684A495243646B514448484455374D776472444D4E777A4F67374D49775162667047734772653164714C3931547A72663942683950574D764E6F7A696B6F78495463304B624E3679455973584C344464717541542B695A6F654C6B2B73655A587033542B454C38413857342F464F6241664B7A754C744A635249764F6567696C5961665A7456556C6930744B374938367A55533078426447662F385147686F363863574A2B326872486342417230744F424874695244696E4669334F6B394371657555695646515749746B5A675A554848454959485A3543773530686D51676A716476513843446F4B582F35467A2F446759504C6B4A7650655250326B306B435157715A5743696C42652B2F717779724E37513267652F6231346A2F5055484A457651545A786A38623935772F627747622F4C37654D5342394C34356A7856464A2F44554A46332F36612F76434B564F34345048534859476350444942767A73357A3946667434435745786536536578414348564A5247444A4B5652417377475A33524F6E78364669586751676642414E4A52536C547053482B6D4E72442B7A4E6D525367584C735646592B6D6F444E587A7639576836457A45784345734952464F67543478434F62366D494B5431784768357A44493758736B70463265623467346C7277693957703154446C4D5549616E38454D445134696E734E7A626A66304979653773466F302B386C6B4A446B56457545394F3362746D394339664971704D70736A366F73385247506E7558467A61394F7A6138367A6663594D6D4D7353627036507A6B686F76587A2B57566442597054345943654556654D4D565244355958364D4F3779344E725652326871364D4C44706A3438666449705A462F426F422F4A79596C5976486968564B3449497968616D493269346C7A6B3561574A3279667939497354312F484E5635665230394F486B73586C736C454F484B68415467467856557143514679345949565556576F655676436C7A754646474B666E2F584B385A39412F462B394B6A554566765759733257657A56536672326F50525978684D716A716A4B6A512B544C76394F50333166587A32795858637664554352334945323365757746747676346E4B7056557747747A694C57783277722B357952693655486B7045535934565A346F386D38384B494E715270743071764A526D4F53725436727671794A6155452F534D4F4A6C343535337A51796E6D61644944305878563072446C39637234574F494450694D783352786748707079574B346F6E45595A4C6C5A37564F39666A7155306A4A774E417843306E7437426E447A316A336375392B4533683461526F685341432F3247416B325932546C4B6F714662305A6433547059546178644D775A58696B72504534694A7230707064786C6674644A784D33386D536A35694744726F6E4E38733077503361766D30653154664B59455457722F306E614C6163355075454C71372B32563435667156573269382B785444673652715A4B6E5A44705056696D58566937473071676972313152687A595971324249634969587735636D7A4F502F316661476F4C793565684A2F392F463373337274514B6C314B63565270676B52762B3578372B6E3039776663316A506A587858734D4852494A573363306474616872523442304165516C4365464C555178462F42754D7848332B634F34634C6F526E3378304664657533595844596362714E52776D326F727465327067645152676A42674A674A46476D4E4B2F3555476F636767396E36317A434558707953535853543478626F6F31526831696E4F474F6E654471554A33664F52652B307968696D565577625668526965666F4532517459666A4150494D6B65586F764353715870424268686C304242494F635246536653586F7149692B74316B75674D364B437936353651434B4E69786475344D3674527654316A6B6765457943695A64356A7A684E3268796C53575657476E5475336F57377A6568676A54474A4979425645676B30704A3856337550554E306761682F3957625268744E2F45434B4C7575716A613867492F452F6E312F476A50382B4B6C6763725A307266457745646D484A6F344A5136394D324E445730346E464C44376F37787448524D59515A6631684161376C3571566863576F685674565849794D67575966573764783767337330574951367272437A44582F7A6C7A37466877794B5246314156474B576639377A48763764687A4D387870415161565A2F6933396647456C2F6931717A7A2B6942537036554B48666937556A557A4B494C6A69326561634F4C6A363768792B5A62677861717271374476594331324856674675784F776D65797768496D326A6341767958556356524B54374E6E42496D356F6C542F4D466843434E41794F4C537338575443736B6D6C392F2B65486C36723679414E586B646A7067334A2B7671567A44496249724A4C7176366E2F7276595171686967506F2F36556F61682F79376C4A5467444E54727177754F4862626836705234747A61314531516F6C46344F57467870475970496C5175716375726F4E324C356A4D784C4D43704D696B33646D31556A53516A48365A7352587066544A7054654E666B3338357459686B79725652586D456F346E612F49714F4C756670443631712F58716A696E2B4869527077595857717A48686E5250766936654E6550477270773731376A3944616F626949364D34353235475A6C34614D39467778717436656676523364777543646D6C564D5837356C7A2F462B6A55726B4A7A696949594E696977752F764779416154344B6C4E734D385630422B63622F76796B585964474F70654933797936313848336A572B75716C784D7A574F6F307A6D4737534A4568464E3956793438784F6566334D5446387A656B423152577467513739717A4576734E723463784A51496F7442636167575477476166543564786D715353585372505178644F564C47345A384C364F77536846576C2B4D6C64507257566F75756F6E77304A64374A7646454269474D766E722B2B37456577354A795377734E4B34635430687566334B673868465A4D4B3356547851753048476F65737439474D3774352B6448634F344E6D7A447479393034544F64676F504D54776B66356167454F6338356A7A6853445248434F386C4176507734583349544573534A6D306D6E4A7A4834454C4E31385749397941784B496A61544E6F77356D387537576C55366849376B654E7676437A58742F4450544E5A6A54554D71676871694454594A4F6379416532594B727645674F6C7248634C2F684D5271626E754C706B7A5A687069507579556A6D386F516B675875514354767343384E71443642386162624D51396575586A37484D4C3572492B7456664E6E50396258722F47762B362F564769446341336233566178442F4F2F45624A2F376769586D5875595A426A30484475482B374279632F72636670303566683855774B4E66366D7A557478394930363543354D51624974425359615269434D365A6E5976445248517A6E2B7154656478504C524D464E2F4C6A6D6C4A5565672B6C464D7358622B5A70763950756F78524F624D5443494A58664B4F4153533138644D77584B34704D517A566C5938564A6E526F785A78527574757A2B38556F6869486F695541416F2B4E54364F6A735133746246397061795962664C5568654E6759704E2B635076435435546B6777526177326B6967767772466A523143324A4564434B536F54735476706443697231516C7A784B546D4E4852564A48346839496D6D4C7A442B5A7A4844304E51763671667A446550624338757156617942527273794D662B68796A464C764159664C4859664969453733425041344941623362326A5167783839323454427676484D544C696C6D52524A66594B53354F6361734C535A515634362B3344574C32695176686468637254514465766A48782B714B4D4E58352B532B724F7154726A534278477A4438664F487530746E37646834673144333343394873384C322F547271587475456C6934444C514B654A41656E766B5A4879466A474E3451304E7A5168334F6E3775503071557359477875464D793064363961583464573374324A7857513463356751686136594171436567476E303839465343487A32386F6F36492F3268767A732B684A49377058526D2B715A41372F71452F363977534E37322F557044566C5631653932774850336F77457564476D515979713276443450767068715A454B6578642B4878537470553869385155526F7355486F61476876446B6153746345314F6973554B4A41694B41703659556E786C5A4B6D65384C3146747456704E455A344769307357594E65756E646977766C7741666D5473494641744E536B5A435A59596C582B494E7956616D353566563965654A483642346D4E4439667135687646384C7A4848704B49556D37486E346A64754B4F7942305549736C554D673534476743644F65454671663961436C755232395063506F36686843643165767A5035537859643553326157486374584C635A72727839455A586D78544C704A3754304F4678572F63665631714D3633557056537031554D4F36586A6135616B3578384B7A7A4F4D2B57466B7643665237362F374F2F4565684A6857366E627255496156473749686B7578425649534D595151695A6A7875475243304B77326A66324141446E736956717861684E6665336F466C4A45617A4F51522F4741364568495A4E48326771623569625A2F4761644E6763692B756A56536A52515A6B4C425A6F31346C6C764569576B6A755A762B6E70307A68422F434E4577474570526931306647507873444B473063527043455A6E6730374D7351646867744E674646734B356233494564485832344548445139792B64523975743163674B3777474774764D7A45746D766C6C59594D4749454E383161316468392F5A31534D386B5A7367766A546C4F7746474A79424B647A3243536F302F422B4D58516C5254643139414C773058554D625461304E467562647A63636D784478654A6B2F5464556C557035444C325938616570564A434D6848696F6A6A706A532B48626D774636756B66686E76534A4C7433644F79323464624D4A2F58326A6B6A4253465854467173553463476748796B737066574358484950444E4C726870762B65336F44362B2F6953744F7230783839753847523969566A6C3836776B37726E34776F54654D484E7974716973416A3046702F62343936556148673072496A534D6F4147746A3064782F646F6A5554776147426941785778462B64493876506D54335669327641527053636C6B7035446A6D32304362526971444B71754B625A685979504C2B726E3473646A3534614932486A37504E6549776C48697A61434E586531386444735966456A514D53674D776C4F4C506D54646F772B42656D545536486C4C524C4E6F665A4A6E6449735A4474706B6E6A39756B304E4C53386C53595158523557522F65586C4B647A48764D6555496F68436A365A626567704B51493237657378394C4B637047554A554D354C4546684972516D554147484C6372346B7958573759792F676645625852744D374852544A2B7A3831332B374D367059386853534D775A57664B36486D523073596765593753376D4A66793844756E6F55747A392B745647664850794A686F62577956785938574B516F6E3744323548366149434F424B743076486D4D4930326A506C4A3458774567416F3956426B7950766E3974787247532B77474959367A526F6C6C355735454B33327A767965564E524F36326C793455392B47733265756F4B757A577A514853797479385061372B314264765154704B616C55433543674C4543316F376948476775496633776244365A44494E3366696E383131793765792B7233303246597647484D763134614267654D6446564B3953556973756D314A77306265476854443143566B454E42476B56595A736970332F37672F695063753973697056715339756C7136506332444C505A477046536E7A45435A356F44745775585938326156566853766B697751776B4F516F485A354F494556674352414539444E51516948354C6B5853454E516D4D75516B2B6A35793569745165356B5379317A31747769616D6A4E516F784474356B53665930646F70717267726879735656726C52565A4E54697135784139546E556577574663466C56734F513949795938754E2B4F62303565773433726A5843375A67543376366132436F6550376B464262724A496B6D6C434E702B5046526F31513630666E4366524F7565362F4478626B596B6D7076773836724F386849466A4671696E336C3238592F7A756B4B61617169667962306742675A3654626F45316674627432524F4956715A6B7265534E6F76386E6C5479547A4D3433502B6A412B585058524753484F68634C4636554A352B2F796C65584953457554493051646A62454B6A37784C394A7069683579436638795042474A394A3955524A7A6851434B64464130564A4B505077594737424E5A5638514935763368755638383031534B4B44703253544A79636C795870365A746A5143796742472F4A3547616E5A6B69673944513475455A484C386462683456457869767633372B4E52533463493272444A7833524A376F314A6952317876562F714D63776D75374364432F6265616B42475A67705731367A41716C5856574668636950523070324358434F796A42776D4A5952686A62417A53396F2B49344A38305945445570747255664768506F55497174556A78473064356864674D427A634534515236673146636E6A56763369677844486E764B444744377144723265776F41626B6F736B6E35554358464A48682B2F4C414846383765775A584C647A4535345A505A693557724B3344673043376B5A444255564E7267504830384D354F7A4E314766624577776555494A3361684137626B42754E437865513347764E384647356C7A397950734558785862565063737678596E377271354F5747556C36554E6D2B4D33754434457136794D72456D3852683976614E6F66644B44632B6575346E464C743079344652576E69757252697055734F4752456A5349437875787A4E2B6863516A616456383276714D562B52343850714C6D4E554951302F557A4F46564B6233706A58496230474D5852312F664E444D4F594D394177737153596C4A6375424E7A337467542F4D7459315777434C7374396A454942686C63554B7675367350642B37636D5A3337626D76744651624C32594E4868356C52767435495050566939434C6D3342467447477A6F71596B746F4768424C705A56563643367568494C467859694A595545426B45426C596C794B556D4552624971684A4350324252716E526C6B66746366394342454A63336F70745566544D575A69736332466C6571453161642F6D706769636D7633613653665A5776574752346E5430565252657171586A302B385663764E343077516A6E6B676C6A554B6355716556626E777A6776426A4748526C53797331506B383278622F39325A4B55377842736F5857672F707164647334616871322F387552726134756658754351467264597A4466526561687075376962544A363161453559716C56654A4C333347627A68646764535647493044306A473930474F4851384B34783536444A4E375537356231556C67306E7435446735506F36687A4732544F58384B44684D5362475863677653734937507A32414653757178444234722B5433346A36797A4D5A6F756874704F444C306A61455965452F563977786A64416A474E2B436B4A6A766E684A52376F686776466649514B6332496732764433394541524C31574F7251575846784144526C78664A6E50753931543841614936794B416B457949336C6C782B796D3346304F44593268763630427A53347449703748334E6A51344C676B3877312B4E337544764B614F547773574C633478346A7947342B774267643569526B5A6D4B716D55564B433074515634655A78556F554769546A636F486278596E70727854626B467A696B69485431554A394353566A6A463541306B446172637043447344487337723874515157414866547A596C357776434D674C4A68794C4F736B6C56696D456442316F59387169386739785855646D704F482F4D392F61467031522B5A4F4169575A46676359703233376E547438526A7A4579547854424E504D6175335675516B2B455566452F4148344237696E72672F4830567674435961524369647070416E45346F4B71476D6E7565525333556F4C6547736B73323538626775536572516977616B6B314D4A59714C645778312F6377593647474A4A6C4B656E483535706F6B6D3977745175787374616653676F4B717173334A41755648737A58692F584A634C4A74636D67474D6156797A645158333958654A65796332313438353139574C4769577371684E41715750526E684B6A6B413564584A6963734859526D4358596F4353335575714D4E474769546E4C5867516D553038584A6A4D55332F634B785569586A73486B34516B50487174386556753757466E4F2B7068796B2B7A7765644863684C31456B4F596E4A7A45754874533968422F317458564C59624238697478554A797859426A4639654B6534642F6B7A7A67717A652B704F6B75564A5A496C63472F79622F70384C3545424D4A75733065436672704D33673345386B4741336979683851554765454F53537079636C6855413739644474393243414651503666597541737A68334B34624238706F6748594E495333504336557846636B7171364C3578595A4B536B3547526E694579587854396B4E6854546C54654449584434555A304F4A4C5541704531323277434F62444D435278375A4433614B6A5633786348487A30397146385639464F4C51505958667A51625972436C6F657A61496135636263664E366F3878395A32576E6F717938434A7533726B64476D694B50356D6B6970334E5171516E78394F4C6D5430736A4C36353974733550772B566E7047414A62776244504F706E38396F594279504D6E43686D484A5148357574344F724D4A35665752703557736559782F7565623859674C4A7A38376377514B2F4C79446569352B443366305A54716635412F4A37724E30486767466B5A4B624A656F6A784A39686C4C5468486E5A71614272504A4A737772335631447548506E486C716148776C465556716D42667350626859534D36347444596A76536331425671336F635A68546368364768734C72352B72794F5474317630316D4D5644564437444B4B63362B4671755956445369776C496F47495A723069575468505149647075534F524F4E466372505761547A484275306F712B4A397361344471364A4355794D6536494A74783854342B4D5947686D436532704B777347704B54635372413670584C6B6E7036546E7762576B39365A78366936347A6B4E3168564E58785068384942423469636351466372596733394167623069346A6D49574B57654863735874487065484D746F33436A63754E7A4961687A52494962427A6A4B313233676A31514A47354C58386F7558794E4B4F6E304D39356652354D546B346F44784C4E4659536B54517844735946516179394D554A6E424243743178364F6E6A2B516876436D53492F467A713846396E765230624D784A43472B78325277594856626F326F664E37534A696D4A526B5157354247736F724673766656636F384D374F7556794D31476375534D4378612B35594E6B55706556414E456E3036645567616B7061636A4E5456463556525276626C5A47494E4A56362F554F76505534796C494935544A73326B6149527459584D65674D4F5852674E534E5641686265677A3150554D522F74777676526379302F504761364636656D65624C5246475741565A79694764776346423950554E797579337A5246425256556873724C5342665A424667326572416C323176685641554C794D6A4F3137427753352F4F322B487A4D48565550687739474972794850496E35786573594868364769777171666834776671486835373577324A4E68737A4653555030664F5954384C4D6D79794B47326E37376669764C47423839305741794D595279765666494D5039644A65792B626C4F464A384B62336A63317551354B447379535736474772754C4F346474704C61574D4A426C384343624661575A56533854302F4E4B6C49524F645A474F66386B676A7A6F685358725A4C4635594B494D6D59716D6636346D424165576435676E684B75435A66556B726D4A6D43784C50457252774B516B324F3171494955546663707769495078792B4C714D716D57376D4946676B4C6E61633430684C782B6A6E6E4A715743306B5A59786D7044794E686F357436475556676C564A726C61677033767A356A534936643730472F44794B4158585A317142746C6F43694970785979307443514A42586E5338656153415A45477951586B67744B513035795A73734454486961554450555563635045424131445157635931685157466941354F575657535A516E73517048614F413832616C2B793253536E563346614D48665A346457776C465249513049456646304E417752786B4879525157563641313563466B4F356F596964354A49467369416A3235654D61626D6761586D76316D744954557034323153464A6B54416B492F7844784F3575426C506F6263587A5265546D71716A6A61766966654568786B4E5A6362726D7531664D62796A4E67675072657A734C47526E5A3473684D4D51684736447968677154524D396C74355064556B555A577257567A5652576E2F69336C4A65694E7673433254636956756E686F63612B556D693245735672707865565457343059587838516E4931366D48772F6E4E3954515A7954414539505253495557765042362B4666307672615953452F5748755938345453556C4A455133563553496B4F62496B61665836706D5654305243497375566D4B437A4B6B356958726F776268337855446766425A6B626844334B3750654B7547637370773143444B6A702B704448523365764B673970344269516D385A524C6B412F4E6A634646346B4C725463565169694C6E466F4D4A4356624F5A4375435A756C36306F684E42493470385859614E7758754B5A45324D3050574F6F39494D35754E71516A35457A45797044594A3449504678684E466C545935483877625958637732576435326A68626B695A786D443474755A475A53504A764D317A676735754D33714B7161706C7345674C3265474E3467764A61714657646C70597578735054332B576145492F4239656261454264455136456E59664C6F385367714748574B6171796141744A4A2B5461674B6C51455069704341384B6F4B59334730564E573841775335686A5938504B474D546E70456B2F4F36556D547851646E6867577071556D7732314B696379633852496A446A6859387A437158347A3168564F43586D57324F6B7170636132724B41372B587373484A574C4367434575584C705731652F697742552B66507058546D7665482B7949354B52304A4357535144797576374648456341772F365346353048474E53494F7A6676303659537A76367572437850694D7643654E526C63456563427954536B4C6F516F67527145447A636E4A4552492B766A635A515679756151775044386E6138764D794479505A422F636C4735316365372F2F4A61544F3836336D782B392F5849482F724376776F674C36663959312B6647366631794246336157666C796548316667502B304B2F4F67782F7450652B6838762F455572384B4E682F4C672F666C794235367A412F7750484B5747527971645A4B6741414141424A52553545726B4A6767673D3D, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `uu32` varchar(128) NOT NULL,
  `t` varchar(128) DEFAULT NULL,
  `tg` varchar(128) DEFAULT NULL COMMENT '系统模块',
  `url` varchar(1024) DEFAULT NULL COMMENT '请求地址',
  `src` varchar(1024) DEFAULT NULL COMMENT '操作方法',
  `msg` varchar(4000) DEFAULT NULL COMMENT '操作信息',
  `u_id` varchar(128) DEFAULT NULL COMMENT '操作用户',
  `u_name` varchar(128) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `os` varchar(128) DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(128) DEFAULT NULL COMMENT '客户端浏览器',
  `ip` varchar(128) DEFAULT NULL COMMENT '主机地址',
  `location` varchar(128) DEFAULT NULL COMMENT '操作地点',
  `ct` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`uu32`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES ('3826045305f54395baa4ff751d22b430', 'aop.after', '作日志记录', '/monitor/operlog/clean', 'io.nutz.nutzsite.module.monitor.controller.OperLogController#clean', '清除作日志记录', '1', 'admin', '{}', 'Mac OS X', 'Chrome', '0:0:0:0:0:0:0:1', '内网IP', '2019-10-10 15:03:45');
INSERT INTO `sys_log` VALUES ('98a45a848b044b30908da6dc0ddd1ecd', 'aop.after', '系统访问记录', '/monitor/logininfor/clean', 'io.nutz.nutzsite.module.monitor.controller.LogininforController#clean', '清除系统访问记录', '1', 'admin', '{}', 'Mac OS X', 'Chrome', '0:0:0:0:0:0:0:1', '内网IP', '2019-10-10 15:03:54');
COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `id` varchar(64) NOT NULL COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('0a87d161daac4a9888f8099fd76f1b3f', '推送菜单', '7d14fm1jkgijtovnkge18or2r6', 5, '', 'F', '0', 'wx:weixinMenu:push', '', '1', '2019-05-10 15:40:05', '1', '2019-05-10 15:40:05', NULL);
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', 1, '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', 1, '/sys/user', 'C', '0', 'sys:user:view', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', 1, '#', 'F', '0', 'sys:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', 2, '#', 'F', '0', 'sys:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', 3, '#', 'F', '0', 'sys:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', 4, '#', 'F', '0', 'sys:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', 5, '#', 'F', '0', 'sys:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', 6, '#', 'F', '0', 'sys:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', 7, '#', 'F', '0', 'sys:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', 1, '#', 'F', '0', 'sys:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', 2, '#', 'F', '0', 'sys:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', 3, '#', 'F', '0', 'sys:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', 2, '/sys/role', 'C', '0', 'sys:role:view', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', 4, '#', 'F', '0', 'sys:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', 5, '#', 'F', '0', 'sys:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', 1, '#', 'F', '0', 'sys:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', 2, '#', 'F', '0', 'sys:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', 3, '#', 'F', '0', 'sys:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', 4, '#', 'F', '0', 'sys:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', 1, '#', 'F', '0', 'sys:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', 2, '#', 'F', '0', 'sys:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', 3, '#', 'F', '0', 'sys:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', 4, '#', 'F', '0', 'sys:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', 3, '/sys/menu', 'C', '0', 'sys:menu:view', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', 1, '#', 'F', '0', 'sys:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', 2, '#', 'F', '0', 'sys:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', 3, '#', 'F', '0', 'sys:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', 4, '#', 'F', '0', 'sys:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', 5, '#', 'F', '0', 'sys:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', 1, '#', 'F', '0', 'sys:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', 2, '#', 'F', '0', 'sys:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', 3, '#', 'F', '0', 'sys:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', 4, '#', 'F', '0', 'sys:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', 5, '#', 'F', '0', 'sys:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', 4, '/sys/dept', 'C', '0', 'sys:dept:view', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', 1, '#', 'F', '0', 'sys:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', 2, '#', 'F', '0', 'sys:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', 3, '#', 'F', '0', 'sys:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', 4, '#', 'F', '0', 'sys:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', 5, '#', 'F', '0', 'sys:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', 1, '#', 'F', '0', 'sys:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', 2, '#', 'F', '0', 'sys:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', 3, '#', 'F', '0', 'sys:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', 4, '#', 'F', '0', 'sys:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', 1, '#', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', 5, '/sys/post', 'C', '0', 'sys:post:view', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', 2, '#', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', 3, '#', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', 4, '#', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', 1, '#', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', 2, '#', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', 3, '#', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', 1, '#', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', 2, '#', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', 3, '#', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', 1, '#', 'F', '0', 'sys:task:list', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', 6, '/sys/dict', 'C', '0', 'sys:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', 2, '#', 'F', '0', 'sys:task:add', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', 3, '#', 'F', '0', 'sys:task:edit', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', 4, '#', 'F', '0', 'sys:task:remove', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', 5, '#', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', 6, '#', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', 7, '#', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', 1, '#', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成代码', '114', 2, '#', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '区域查询', '1062', 1, '#', 'F', '0', 'sys:area:list', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1059', '区域新增', '1062', 2, '#', 'F', '0', 'sys:area:add', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', 7, '/sys/config', 'C', '0', 'sys:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('1060', '区域修改', '1062', 3, '#', 'F', '0', 'sys:area:edit', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1061', '区域删除', '1062', 4, '#', 'F', '0', 'sys:area:remove', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1062', '区域', '1', 11, '/sys/area', 'C', '0', 'sys:area:view', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', 8, '/sys/notice', 'C', '1', 'sys:notice:view', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '2', 9, '#', 'M', '0', '', '#', NULL, NULL, '1', '2019-05-13 11:41:03', NULL);
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', 1, '/monitor/online', 'C', '1', 'monitor:online:view', '#', NULL, NULL, '1', '2019-05-13 11:21:58', NULL);
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', 20, '/sys/task', 'C', '0', 'sys:task:view', '#', NULL, NULL, '1', '2019-05-10 15:26:03', NULL);
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', 3, '/druid', 'C', '0', '', '#', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', 3, '/monitor/server', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', 1, '/tool/build', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', 2, '/tool/gen', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', 3, '/tool/swagger', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('12n0a34518g8urdjo6kp83h5uj', '微信菜单修改', '7d14fm1jkgijtovnkge18or2r6', 3, '#', 'F', '0', 'wx:menu:edit', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1c46vji8nqgrlqa7ul078eufjt', '栏目删除', 'q6s0e7l6dcjfmpt23h9s865rqb', 4, '#', 'F', '0', 'cms:category:remove', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1j89195vskigvq3rn8mbgkjh90', '微信素材新增', '7tfveg4u38inkpjdoo8v2iki4s', 2, '#', 'F', '0', 'wx:material:add', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1r820fevh4j08rmv45a7jn5qki', '栏目查询', 'q6s0e7l6dcjfmpt23h9s865rqb', 1, '#', 'F', '0', 'cms:category:list', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', 20, '#', 'M', '0', '', 'fa fa-video-camera', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('2epqeqpe5qhp0qahik42q9djah', '微信菜单删除', '7d14fm1jkgijtovnkge18or2r6', 4, '#', 'F', '0', 'wx:menu:remove', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', 30, '#', 'M', '0', '', 'fa fa-bars', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('3575kpm4gei4ipdh4mn4peg2ct', '微信菜单新增', '7d14fm1jkgijtovnkge18or2r6', 2, '#', 'F', '0', 'wx:menu:add', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('3gl7pjf07ein3prthkop8d750i', '微信素材修改', '7tfveg4u38inkpjdoo8v2iki4s', 3, '#', 'F', '0', 'wx:material:edit', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('3le6nsatrugpkos20g28ai8b69', '微信用户查询', 'q61dd1i21oji0oe2891gbn37up', 1, '#', 'F', '0', 'wx:wxUser:list', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('3n1cgh99rkg1ronbe4kg6fukk4', '文章', '9ac78f629dc74ac5877b42c73a6d4f26', 20, '/cms/article', 'C', '0', 'cms:article:view', '#', NULL, NULL, '1', '2019-06-11 16:16:36', NULL);
INSERT INTO `sys_menu` VALUES ('4pv1d855iaj9irer5i8no4n61k', '文章删除', '3n1cgh99rkg1ronbe4kg6fukk4', 4, '#', 'F', '0', 'cms:article:remove', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('4sjsbjul38g3nod9jtqlnig8mv', '栏目新增', 'q6s0e7l6dcjfmpt23h9s865rqb', 2, '#', 'F', '0', 'cms:category:add', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', 1, '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', 2, '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('5aseet8o8gib9qubvs89rrfj1h', '微信素材删除', '7tfveg4u38inkpjdoo8v2iki4s', 4, '#', 'F', '0', 'wx:material:remove', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('5qnj96g24kj9uq49fq3ah8fn53', '文章修改', '3n1cgh99rkg1ronbe4kg6fukk4', 3, '#', 'F', '0', 'cms:article:edit', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('64ab927r2uhjtrkqpdr7if07q9', '文章新增', '3n1cgh99rkg1ronbe4kg6fukk4', 2, '#', 'F', '0', 'cms:article:add', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('6jjag243ocir0qkn0l3fn6npq6', '文章查询', '3n1cgh99rkg1ronbe4kg6fukk4', 1, '#', 'F', '0', 'cms:article:list', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('7bd0844c03214140a403dda2989d54f7', '微信', '0', 50, '', 'M', '0', '', 'fa fa-comments', NULL, NULL, '1', '2019-06-11 10:31:25', NULL);
INSERT INTO `sys_menu` VALUES ('7d14fm1jkgijtovnkge18or2r6', '微信菜单', '7bd0844c03214140a403dda2989d54f7', 1, '/wx/menu', 'C', '0', 'wx:menu:view', '#', NULL, NULL, '1', '2019-05-10 17:22:07', NULL);
INSERT INTO `sys_menu` VALUES ('7jb3d4916sg0frop9kv87mbpl7', '微信用户同步', 'q61dd1i21oji0oe2891gbn37up', 2, '#', 'F', '0', 'wx:wxUser:sync', '#', NULL, NULL, '1', '2019-05-14 09:49:19', NULL);
INSERT INTO `sys_menu` VALUES ('7tfveg4u38inkpjdoo8v2iki4s', '微信素材', '7bd0844c03214140a403dda2989d54f7', 30, '/wx/material', 'C', '0', 'wx:material:view', '#', NULL, NULL, '1', '2019-08-08 17:26:10', NULL);
INSERT INTO `sys_menu` VALUES ('9ac78f629dc74ac5877b42c73a6d4f26', '内容管理', '0', 40, '', 'M', '0', '', 'fa fa-book', NULL, NULL, '1', '2019-06-11 10:31:16', NULL);
INSERT INTO `sys_menu` VALUES ('q61dd1i21oji0oe2891gbn37up', '微信用户', '7bd0844c03214140a403dda2989d54f7', 20, '/wx/wxUser', 'C', '0', 'wx:wxUser:view', '#', NULL, NULL, '1', '2019-06-11 10:34:54', NULL);
INSERT INTO `sys_menu` VALUES ('q6s0e7l6dcjfmpt23h9s865rqb', '栏目', '9ac78f629dc74ac5877b42c73a6d4f26', 1, '/cms/category', 'C', '0', 'cms:category:view', '#', NULL, NULL, '1', '2019-05-10 10:48:14', NULL);
INSERT INTO `sys_menu` VALUES ('tleoggeth8jear08rs25amdtp1', '微信菜单查询', '7d14fm1jkgijtovnkge18or2r6', 1, '#', 'F', '0', 'wx:menu:list', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('tos8ndvbpch8ar2v3dsc9i9vg9', '微信素材查询', '7tfveg4u38inkpjdoo8v2iki4s', 1, '#', 'F', '0', 'wx:material:list', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('umkbsmd5dmgh9rb1008krur527', '栏目修改', 'q6s0e7l6dcjfmpt23h9s865rqb', 3, '#', 'F', '0', 'cms:category:edit', '#', 'admin', '2018-03-01 00:00:00', 'haiming', '2018-03-01 00:00:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', 4, '0', 'admin', NULL, '1', '2019-04-26 18:10:30', '<a rel=\"nofollow\">111</a>');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', 1, NULL, '0', '0', NULL, NULL, '1', '2019-08-22 15:45:26', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', 2, NULL, '0', '0', NULL, '2019-04-26 14:02:23', NULL, '2019-04-26 14:02:30', '普通角色');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色ID',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES ('1', '0a87d161daac4a9888f8099fd76f1b3f');
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '100');
INSERT INTO `sys_role_menu` VALUES ('1', '1000');
INSERT INTO `sys_role_menu` VALUES ('1', '1001');
INSERT INTO `sys_role_menu` VALUES ('1', '1002');
INSERT INTO `sys_role_menu` VALUES ('1', '1003');
INSERT INTO `sys_role_menu` VALUES ('1', '1004');
INSERT INTO `sys_role_menu` VALUES ('1', '1005');
INSERT INTO `sys_role_menu` VALUES ('1', '1006');
INSERT INTO `sys_role_menu` VALUES ('1', '1007');
INSERT INTO `sys_role_menu` VALUES ('1', '1008');
INSERT INTO `sys_role_menu` VALUES ('1', '1009');
INSERT INTO `sys_role_menu` VALUES ('1', '101');
INSERT INTO `sys_role_menu` VALUES ('1', '1010');
INSERT INTO `sys_role_menu` VALUES ('1', '1011');
INSERT INTO `sys_role_menu` VALUES ('1', '1012');
INSERT INTO `sys_role_menu` VALUES ('1', '1013');
INSERT INTO `sys_role_menu` VALUES ('1', '1014');
INSERT INTO `sys_role_menu` VALUES ('1', '1015');
INSERT INTO `sys_role_menu` VALUES ('1', '1016');
INSERT INTO `sys_role_menu` VALUES ('1', '1017');
INSERT INTO `sys_role_menu` VALUES ('1', '1018');
INSERT INTO `sys_role_menu` VALUES ('1', '1019');
INSERT INTO `sys_role_menu` VALUES ('1', '102');
INSERT INTO `sys_role_menu` VALUES ('1', '1020');
INSERT INTO `sys_role_menu` VALUES ('1', '1021');
INSERT INTO `sys_role_menu` VALUES ('1', '1022');
INSERT INTO `sys_role_menu` VALUES ('1', '1023');
INSERT INTO `sys_role_menu` VALUES ('1', '1024');
INSERT INTO `sys_role_menu` VALUES ('1', '1025');
INSERT INTO `sys_role_menu` VALUES ('1', '1026');
INSERT INTO `sys_role_menu` VALUES ('1', '1027');
INSERT INTO `sys_role_menu` VALUES ('1', '1028');
INSERT INTO `sys_role_menu` VALUES ('1', '1029');
INSERT INTO `sys_role_menu` VALUES ('1', '103');
INSERT INTO `sys_role_menu` VALUES ('1', '1030');
INSERT INTO `sys_role_menu` VALUES ('1', '1031');
INSERT INTO `sys_role_menu` VALUES ('1', '1032');
INSERT INTO `sys_role_menu` VALUES ('1', '1033');
INSERT INTO `sys_role_menu` VALUES ('1', '1034');
INSERT INTO `sys_role_menu` VALUES ('1', '1035');
INSERT INTO `sys_role_menu` VALUES ('1', '1036');
INSERT INTO `sys_role_menu` VALUES ('1', '1037');
INSERT INTO `sys_role_menu` VALUES ('1', '1038');
INSERT INTO `sys_role_menu` VALUES ('1', '1039');
INSERT INTO `sys_role_menu` VALUES ('1', '104');
INSERT INTO `sys_role_menu` VALUES ('1', '1040');
INSERT INTO `sys_role_menu` VALUES ('1', '1041');
INSERT INTO `sys_role_menu` VALUES ('1', '1042');
INSERT INTO `sys_role_menu` VALUES ('1', '1043');
INSERT INTO `sys_role_menu` VALUES ('1', '1044');
INSERT INTO `sys_role_menu` VALUES ('1', '1045');
INSERT INTO `sys_role_menu` VALUES ('1', '1046');
INSERT INTO `sys_role_menu` VALUES ('1', '1047');
INSERT INTO `sys_role_menu` VALUES ('1', '1048');
INSERT INTO `sys_role_menu` VALUES ('1', '1049');
INSERT INTO `sys_role_menu` VALUES ('1', '105');
INSERT INTO `sys_role_menu` VALUES ('1', '1050');
INSERT INTO `sys_role_menu` VALUES ('1', '1051');
INSERT INTO `sys_role_menu` VALUES ('1', '1052');
INSERT INTO `sys_role_menu` VALUES ('1', '1053');
INSERT INTO `sys_role_menu` VALUES ('1', '1054');
INSERT INTO `sys_role_menu` VALUES ('1', '1055');
INSERT INTO `sys_role_menu` VALUES ('1', '1056');
INSERT INTO `sys_role_menu` VALUES ('1', '1057');
INSERT INTO `sys_role_menu` VALUES ('1', '1058');
INSERT INTO `sys_role_menu` VALUES ('1', '1059');
INSERT INTO `sys_role_menu` VALUES ('1', '106');
INSERT INTO `sys_role_menu` VALUES ('1', '1060');
INSERT INTO `sys_role_menu` VALUES ('1', '1061');
INSERT INTO `sys_role_menu` VALUES ('1', '1062');
INSERT INTO `sys_role_menu` VALUES ('1', '107');
INSERT INTO `sys_role_menu` VALUES ('1', '108');
INSERT INTO `sys_role_menu` VALUES ('1', '109');
INSERT INTO `sys_role_menu` VALUES ('1', '110');
INSERT INTO `sys_role_menu` VALUES ('1', '111');
INSERT INTO `sys_role_menu` VALUES ('1', '112');
INSERT INTO `sys_role_menu` VALUES ('1', '113');
INSERT INTO `sys_role_menu` VALUES ('1', '114');
INSERT INTO `sys_role_menu` VALUES ('1', '115');
INSERT INTO `sys_role_menu` VALUES ('1', '12n0a34518g8urdjo6kp83h5uj');
INSERT INTO `sys_role_menu` VALUES ('1', '1c46vji8nqgrlqa7ul078eufjt');
INSERT INTO `sys_role_menu` VALUES ('1', '1j89195vskigvq3rn8mbgkjh90');
INSERT INTO `sys_role_menu` VALUES ('1', '1r820fevh4j08rmv45a7jn5qki');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '2epqeqpe5qhp0qahik42q9djah');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '3575kpm4gei4ipdh4mn4peg2ct');
INSERT INTO `sys_role_menu` VALUES ('1', '3gl7pjf07ein3prthkop8d750i');
INSERT INTO `sys_role_menu` VALUES ('1', '3le6nsatrugpkos20g28ai8b69');
INSERT INTO `sys_role_menu` VALUES ('1', '3n1cgh99rkg1ronbe4kg6fukk4');
INSERT INTO `sys_role_menu` VALUES ('1', '4pv1d855iaj9irer5i8no4n61k');
INSERT INTO `sys_role_menu` VALUES ('1', '4sjsbjul38g3nod9jtqlnig8mv');
INSERT INTO `sys_role_menu` VALUES ('1', '500');
INSERT INTO `sys_role_menu` VALUES ('1', '501');
INSERT INTO `sys_role_menu` VALUES ('1', '5aseet8o8gib9qubvs89rrfj1h');
INSERT INTO `sys_role_menu` VALUES ('1', '5qnj96g24kj9uq49fq3ah8fn53');
INSERT INTO `sys_role_menu` VALUES ('1', '64ab927r2uhjtrkqpdr7if07q9');
INSERT INTO `sys_role_menu` VALUES ('1', '6jjag243ocir0qkn0l3fn6npq6');
INSERT INTO `sys_role_menu` VALUES ('1', '7bd0844c03214140a403dda2989d54f7');
INSERT INTO `sys_role_menu` VALUES ('1', '7d14fm1jkgijtovnkge18or2r6');
INSERT INTO `sys_role_menu` VALUES ('1', '7jb3d4916sg0frop9kv87mbpl7');
INSERT INTO `sys_role_menu` VALUES ('1', '7tfveg4u38inkpjdoo8v2iki4s');
INSERT INTO `sys_role_menu` VALUES ('1', '9ac78f629dc74ac5877b42c73a6d4f26');
INSERT INTO `sys_role_menu` VALUES ('1', 'q61dd1i21oji0oe2891gbn37up');
INSERT INTO `sys_role_menu` VALUES ('1', 'q6s0e7l6dcjfmpt23h9s865rqb');
INSERT INTO `sys_role_menu` VALUES ('1', 'tleoggeth8jear08rs25amdtp1');
INSERT INTO `sys_role_menu` VALUES ('1', 'tos8ndvbpch8ar2v3dsc9i9vg9');
INSERT INTO `sys_role_menu` VALUES ('1', 'umkbsmd5dmgh9rb1008krur527');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
COMMIT;

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '任务名',
  `jobClass` varchar(255) DEFAULT NULL COMMENT '执行类',
  `note` varchar(255) DEFAULT NULL COMMENT '任务说明',
  `cron` varchar(50) DEFAULT NULL COMMENT '定时规则',
  `data` text COMMENT '执行参数',
  `exeAt` int(32) DEFAULT NULL COMMENT '执行时间',
  `exeResult` text COMMENT '执行结果',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of sys_task
-- ----------------------------
BEGIN;
INSERT INTO `sys_task` VALUES ('bf1c60009c104e93b2a2d4d573087ae3', '测试任务', 'io.nutz.nutzsite.common.quartz.job.TestJob', '', '*/5 * * * * ?', '{\"hi\":\"send red packets of support,thank u\"}', NULL, '', '0', NULL, NULL, '1', '2019-05-10 15:23:35', '');
INSERT INTO `sys_task` VALUES ('f360145693b64ce7be07535233fa3494', '微信获取TOKEN', 'io.nutz.nutzsite.common.quartz.job.WeixinToken', '0 */5 * * * ?', '0 */30 * * * ?', '', NULL, '', '0', NULL, NULL, '1', '2019-10-10 09:56:54', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '用户ID',
  `dept_id` varchar(64) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机号码',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` mediumblob COMMENT '头像路径',
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '小明', '00', 'nutzsite@gmail.com', '18888888888', '0', 0x6239346364656430306262663433363961356364333565666239363762653935, 'vM7xT6KolcQbX7xlYfjisIJkrleH3De2t7wnmZ2zIB8=', '6dXimQAQqHBXkhI79IRKcg==', '0', '0', '0:0:0:0:0:0:0:1', '2019-10-10 14:48:48', 'admin', '2018-03-16 11:33:00', 'ry', '2019-04-19 07:06:38', '管理员');
INSERT INTO `sys_user` VALUES ('92f5c91df48644a1812c55c164716fa7', '108', 'yuhaiming', 'Tom', '00', 'nutzsite@gmail.com', '18888888888', '1', NULL, 'I5HArEABibh3QIHygtY/RlYjhZq+/THnvr84VEm41Wg=', '5wQghHKKPJZ8T8fp3xREeQ==', '0', '0', '127.0.0.1', '2019-04-22 07:59:47', '1', '2019-04-19 07:48:19', '1', '2019-04-22 07:57:06', '');
INSERT INTO `sys_user` VALUES ('a14731cfa4cb4e46b1f4eb1061950c6d', '105', 'haiming', 'Tom', '00', 'nutzsite@gmail.com', '18888888888', NULL, 0x3961636163663138663531633439646638626531356230373265396133306333, 'DymenKivzL744ODeXSLyvkz6qnnP3qhgdtbpwZ9Txyo=', 'gA208ZKZ684tEg0Jg+UhSQ==', '0', '0', '127.0.0.1', '2019-05-09 15:19:49', '1', '2019-04-26 03:00:24', '1', '2019-04-26 03:00:24', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='在线用户记录';

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户ID',
  `role_id` varchar(64) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('92f5c91df48644a1812c55c164716fa7', '2');
INSERT INTO `sys_user_role` VALUES ('a14731cfa4cb4e46b1f4eb1061950c6d', '1e1017b4f424435899adea31249f45dc');
COMMIT;

-- ----------------------------
-- Table structure for wx_material
-- ----------------------------
DROP TABLE IF EXISTS `wx_material`;
CREATE TABLE `wx_material` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `media_id` varchar(128) DEFAULT NULL COMMENT 'mediaId',
  `type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '素材的类型，图片（image）、视频（video）、语音 （voice）、图文（news）',
  `title` varchar(128) DEFAULT NULL COMMENT '图文消息的标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图文消息的具体内容，支持HTML标签，必须少于2万字符，小于1M，且此处会去除JS',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图文页的URL，或者，当获取的列表是图片素材列表时，该字段是图片的URL',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '这篇图文消息素材的最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材';

-- ----------------------------
-- Records of wx_material
-- ----------------------------
BEGIN;
INSERT INTO `wx_material` VALUES ('59235616fa114a80a311ab6cc0403aa7', '7WUSDI7br8Fhr4XY4CnyCLgkOniEm31vljty-G_agmw', 'image', NULL, NULL, '584fa710dfd04428acc4a5fe1a8f7f28.jpeg', 'http://mmbiz.qpic.cn/mmbiz_jpg/g0AQ0ZTQibD2yHaO6Yt4Le3epFJ7vSQse00Ml0Ujd2f0D6Om8O4TkAaTtOuGibQaho3PibFX9bEDgOtaia2j6rCREA/0?wx_fmt=jpeg', NULL, NULL, NULL, '1970-01-19 09:22:27');
INSERT INTO `wx_material` VALUES ('5e845049b8ac43ba87b2e191dd94c88e', '7WUSDI7br8Fhr4XY4CnyCK7YaaoyZq9qzvMvtK3Q_bo', 'image', NULL, NULL, 'WechatIMG9.jpeg', 'http://mmbiz.qpic.cn/mmbiz_jpg/g0AQ0ZTQibD2TvmgKzNyJJ7tjeUtzKFyviaCiaup7A7upvlq7hDXzPpW85z8G9c4Yxx10bBmP1mibkHMXMrSteMTeA/0?wx_fmt=jpeg', NULL, NULL, NULL, '1970-01-19 09:16:52');
INSERT INTO `wx_material` VALUES ('f36ab3e1dc7d4918998490a1cf4ff8f9', '7WUSDI7br8Fhr4XY4CnyCK7YaaoyZq9qzvMvtK3Q_bo', 'image', NULL, NULL, 'WechatIMG9.jpeg', 'http://mmbiz.qpic.cn/mmbiz_jpg/g0AQ0ZTQibD2TvmgKzNyJJ7tjeUtzKFyviaCiaup7A7upvlq7hDXzPpW85z8G9c4Yxx10bBmP1mibkHMXMrSteMTeA/0?wx_fmt=jpeg', NULL, NULL, NULL, '1970-01-19 09:16:52');
COMMIT;

-- ----------------------------
-- Table structure for wx_menu
-- ----------------------------
DROP TABLE IF EXISTS `wx_menu`;
CREATE TABLE `wx_menu` (
  `id` varchar(64) NOT NULL,
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父节点',
  `ancestors` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '祖节点',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单标题',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `menu_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单KEY值',
  `menu_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单的响应动作类型，view表示网页类型，click表示点击类型，miniprogram表示小程序类型',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '网页 链接，用户点击菜单可打开链接，不超过1024字节。 type为miniprogram时，不支持小程序的老版本客户端将打开本url。',
  `media_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '调用新增永久素材接口返回的合法media_id',
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序的appid（仅认证公众号可配置）',
  `pagepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序的页面路径',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信菜单';

-- ----------------------------
-- Records of wx_menu
-- ----------------------------
BEGIN;
INSERT INTO `wx_menu` VALUES ('059df47f55f14857a6c9248e42e9e366', '0', NULL, '游戏下载', NULL, NULL, 'view', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '');
INSERT INTO `wx_menu` VALUES ('7d82585bf89b491ea745fe9d36c471ac', '059df47f55f14857a6c9248e42e9e366', NULL, '游戏下载', NULL, NULL, 'view', 'https://adl.netease.com/d/g/qp/c/ydgw', NULL, NULL, NULL, '', NULL, '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for wx_user
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `unionid` varchar(50) DEFAULT NULL COMMENT 'unionid',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微信昵称',
  `subscribe` tinyint(1) DEFAULT NULL COMMENT '是否关注',
  `subscribeAt` int(32) DEFAULT NULL COMMENT '关注时间',
  `sex` int(32) DEFAULT NULL COMMENT '性别',
  `country` varchar(50) DEFAULT NULL COMMENT '国家',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `INDEX_WX_USER_OPENID` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户';

-- ----------------------------
-- Records of wx_user
-- ----------------------------
BEGIN;
INSERT INTO `wx_user` VALUES ('a9fd1db8d80643779d25257823e17932', 'oBUra1bBjA56noZs02ygU15xasLk', NULL, '🐬 。', 1, 1553145894, 2, '百慕大', '', '', 'http://thirdwx.qlogo.cn/mmopen/ic8nfBKbt4rkF1Lr1x6ChUN9oyNDcLBDpMH2HOqVN6KaujChk73gstcOO3TFI4UMkic84FgOh6zBTc9AEqVAPlYNOQNboQejsN/132', NULL, NULL, NULL, NULL, '');
INSERT INTO `wx_user` VALUES ('d9b6266dc5014775accec906e24d8dbb', 'oBUra1b3Xjbp9FyWPLxdH2BSuRQw', NULL, '亦城', 1, 1557476226, 1, '中国', '云南', '昆明', 'http://thirdwx.qlogo.cn/mmopen/SBbbMKsS7SusiaV8qOib9ZVjlevRBiaXCRGcb2biabpaFT9tSH83Tiaza0jbHwPNy6nXnia8o4xOlUtJ9CjlKCJYPj4xecNec3ayRJ/132', NULL, NULL, NULL, NULL, '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
