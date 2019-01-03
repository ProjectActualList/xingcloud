/*
Navicat MySQL Data Transfer

Source Server         : xing
Source Server Version : 50724
Source Host           : 132.232.190.138:3306
Source Database       : xing

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-03 14:51:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for job_execution_log
-- ----------------------------
DROP TABLE IF EXISTS `job_execution_log`;
CREATE TABLE `job_execution_log` (
  `id` varchar(40) NOT NULL,
  `job_name` varchar(100) NOT NULL,
  `task_id` varchar(255) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `sharding_item` int(11) NOT NULL,
  `execution_source` varchar(20) NOT NULL,
  `failure_cause` varchar(4000) DEFAULT NULL,
  `is_success` int(11) NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `complete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务日志表';

-- ----------------------------
-- Records of job_execution_log
-- ----------------------------
INSERT INTO `job_execution_log` VALUES ('071eab5d-cf95-4d4e-9346-5570e5a9303b', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('0ac3bde4-f47e-4632-a03a-2c40e99ddb93', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('0ce99951-d056-4224-8f73-73cdcc93faf2', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('171a4207-afac-43be-ba81-7a584c906caa', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('18d59cb5-e897-4aca-bea1-6b7e108446d3', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('1b1c5846-1552-4a8e-91bd-e6d3de5d94c1', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('1b1fcad5-4c7f-41d3-b1f8-1d3860f026b4', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('266ab0de-1874-479a-885c-e9781abd9b9e', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('2a27c1a5-d3ad-44ed-a2ab-148819373e85', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('3faf189f-5314-4e0e-8d6a-c928aebcb38b', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('438f7c31-8259-4958-8c90-100aed490b49', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('504febd1-b31a-4d38-a170-efd3db6bea2f', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('51fe65cf-0737-4e48-9eb2-44ea13e32ed0', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('53109268-cd42-4907-a8c5-19fa09f37415', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('55619ab3-c175-4715-9b04-d113b36fe22c', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('57178f63-87ca-40eb-9c20-aa8354e38c9d', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('596d2c37-a0a3-4b41-9116-47698ae0db4a', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('59d0d17f-7123-442b-97ce-f204efbcaf0a', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('5c142495-165e-44f9-b474-62a073ffc2e4', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('5c354343-2ec4-4a6e-8b2b-e155a9579ebf', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('60c7c895-530f-4b11-9951-ceb62420d9a0', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('691621ca-ad2b-4488-9c05-467c06b488d4', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('69bc4ba5-edeb-4a06-ae25-b1bca551fa44', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('6b574430-c288-41eb-ab47-e761742e31ff', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('6cce85aa-9692-4cc8-ae36-bf5e716582fe', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('72840364-617f-4311-a48f-977fe199ad66', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('72f5b255-6253-491f-bfef-bb738244f448', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('7327be6f-8601-4f4b-adc0-ae656a243a8e', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('7630f8d1-6d7e-470b-9b86-21d74bee4392', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('790c91ac-ff55-4f42-b13e-a987e89feb40', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('7d2f9cbb-2bb4-4277-9f2d-ef9ab4e77a9c', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('7e904a07-6f2b-40e5-a5ee-6b3c32b14497', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('7f8c2fda-81ef-4fcc-b996-a5b8090ace9f', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('7faf9f13-f0b1-4042-a725-8896ff74da2b', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('809b4c76-0ff8-4dc6-b10b-c437bea1decc', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('82554f27-d1d9-484e-b207-36bafbfe894b', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('86b33862-7086-4790-869f-238cf228e36e', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('86c1800b-657c-4d47-9ce8-befe5da31935', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('885de21d-7a38-47ad-91da-b61fcd75e7ba', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('8af99ddb-1ec3-444a-b9ba-da5989310385', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('8bcaf102-f0ec-4730-8646-5f13b35134ad', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('923058d6-f53e-46b8-92cb-893249f88a08', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('9299b690-5022-4f17-b9d8-d6d4995554e7', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('9928945a-d584-44a9-b133-02e5829d8f5c', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('9b63ec53-8d9f-4f62-8a23-87e328910065', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('9d83ee87-0745-44ee-b660-579bb769b8d0', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('a8ec9925-0b4a-4f03-8d29-76714094ebc6', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('a968ac8b-9aa0-4500-b6fc-5929965cde41', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('ab0da059-a96a-4e99-9387-d07b76cc1300', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('ac80cdab-cbe4-4683-aa09-dc07590b5ace', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('ae342af0-fd6d-4929-904a-60eee112736a', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('b0665ad9-a420-47ba-a852-ab134bec2a74', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('b99a0133-5cba-4996-ac08-787739134e1e', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('baa7adf6-0bdb-42f8-b680-e94aa6882aa5', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('bac7d872-cb8d-4d99-a976-2275e732d0bb', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('bb183cd3-c57c-4dd6-9247-5f811db63b37', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 14:00:00', '2018-12-03 14:00:00');
INSERT INTO `job_execution_log` VALUES ('bca778bc-09cf-4fcb-a6c4-707e4186ad20', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('bd0b97cb-1966-476f-9ebe-13ddb723af31', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('c4bf2626-c548-489b-b64f-ed4ebd8c10b2', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('c8268aed-ca12-4d8f-8f97-93c49425e291', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('d0c11201-5712-48c3-bd1b-2e1fd815c51f', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('d5bb2743-1e22-42f4-9c93-c1915c4f3aa6', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('d8cad708-e95a-49e5-b7ed-65169e6b9175', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-11-30 14:00:00', '2018-11-30 14:00:00');
INSERT INTO `job_execution_log` VALUES ('dda0f80c-21d9-467e-83cd-49471f43baeb', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-12-03 17:00:01', '2018-12-03 17:00:01');
INSERT INTO `job_execution_log` VALUES ('e8a59495-8237-44c2-8a42-57c34794e4ee', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('e8f23a9b-6679-4df8-a776-c8b0feab2613', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('ecb02f59-ec25-40ed-8900-fd6e609335b2', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '1', 'NORMAL_TRIGGER', null, '1', '2018-12-03 16:00:00', '2018-12-03 16:00:00');
INSERT INTO `job_execution_log` VALUES ('ededf2f8-9c55-4578-947c-d45fd9e23fc1', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 15:00:00', '2018-11-30 15:00:00');
INSERT INTO `job_execution_log` VALUES ('ee078952-505c-4071-9894-4dd512725a7e', 'spring-simple-job2', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '0', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');
INSERT INTO `job_execution_log` VALUES ('f178ef4e-1e3f-41a5-9b4a-1accab86856e', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-12-03 15:00:00', '2018-12-03 15:00:00');
INSERT INTO `job_execution_log` VALUES ('ff720b81-a956-4e7a-9aaa-4c7cf3cb2f4a', 'spring-dataflow-job', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 12:00:01', '2018-11-30 12:00:01');
INSERT INTO `job_execution_log` VALUES ('ffd0eef2-a967-405c-aaa4-2018886665ec', 'spring-simple-job', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', 'lengleng', '192.168.0.58', '2', 'NORMAL_TRIGGER', null, '1', '2018-11-30 13:00:00', '2018-11-30 13:00:00');

-- ----------------------------
-- Table structure for job_status_trace_log
-- ----------------------------
DROP TABLE IF EXISTS `job_status_trace_log`;
CREATE TABLE `job_status_trace_log` (
  `id` varchar(40) NOT NULL,
  `job_name` varchar(100) NOT NULL,
  `original_task_id` varchar(255) NOT NULL,
  `task_id` varchar(255) NOT NULL,
  `slave_id` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `execution_type` varchar(20) NOT NULL,
  `sharding_item` varchar(100) NOT NULL,
  `state` varchar(20) NOT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `TASK_ID_STATE_INDEX` (`task_id`,`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务轨迹表';

-- ----------------------------
-- Records of job_status_trace_log
-- ----------------------------
INSERT INTO `job_status_trace_log` VALUES ('04212978-c410-45ed-8c4f-e68387d0fd05', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('06429f8d-84d0-4a44-83a0-d058a2925ac7', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('09c1eda3-3384-4fc5-af62-33e39cc9df48', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('0aedb2f8-3b7d-47ad-b76b-1065d71daca6', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('0c0c9168-29c8-4b51-b78a-c97066fdf3ea', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('130f458d-a6e9-41f7-9415-b5d051924ef6', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('1b6fdc3a-819c-4dc2-970d-8aa01a4b879c', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('20f69404-609a-47ed-b1af-d0dae2e24594', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('21705123-1fd9-4e4a-b7d3-63b7c16bf5ff', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('24dde237-c186-44c2-b93a-81edd6a9c1b8', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 12:00:01');
INSERT INTO `job_status_trace_log` VALUES ('2f5fd775-0c73-439e-ad1a-14853890a210', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 17:00:01');
INSERT INTO `job_status_trace_log` VALUES ('3066d315-36a3-4ae4-9e78-b8ea683bbd3a', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('31efd4c7-c6f1-406b-a07c-ab39b128b3f2', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 12:00:01');
INSERT INTO `job_status_trace_log` VALUES ('35f60634-3beb-466e-b236-7348984b96a8', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('402b0c76-e256-44cb-b554-358a1f0dd68b', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('4d951975-e4e2-46ba-b59f-719989ece5a1', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('4d95fa7d-c47d-48d4-b910-744469ce2e01', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('4dc571c7-7785-4631-b5ab-e5b9d78f5a7e', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('4f6a9f13-4cd6-431f-959c-7c117fea3702', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 12:00:01');
INSERT INTO `job_status_trace_log` VALUES ('59d0b4c8-f58f-4f4a-91be-5602dd202631', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('5db6982f-146e-400b-b8bd-ab9c7dee4b24', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('5e46b4fb-8166-41dc-94a4-0d65323deb24', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('5f00c386-520e-4ba9-816d-e6e01009c9e5', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('6035f623-afa8-4a5b-9ed2-de2824cf631d', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('6a4e7703-c1cf-4c5d-b7f2-d4529714ec5e', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('6c393f32-31a9-44c5-8164-ea0f6bb9b79a', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('716b674c-cdd7-4176-ba25-9e1d55230714', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 17:00:01');
INSERT INTO `job_status_trace_log` VALUES ('71c36e5f-c554-427b-ac8c-2aa04b725a9a', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-11-30 12:00:00');
INSERT INTO `job_status_trace_log` VALUES ('73d6934a-8ac4-4e3b-ad2e-c69e37496206', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('7516172b-b4fd-41a5-96c8-386cc9391a6d', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 17:00:01');
INSERT INTO `job_status_trace_log` VALUES ('7780a559-2596-4673-9301-b45313a58ae0', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('7a411e61-2e8d-4037-a699-84492cde28a6', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('7b9d9b0f-03dc-4425-84a5-28c24a66c754', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('809c5aef-72f9-4955-bdc9-4dbe497e2477', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('821d5639-9a0c-41d9-9a42-9239adee34c3', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 12:00:01');
INSERT INTO `job_status_trace_log` VALUES ('86e8d5e8-9c00-4529-a38a-6f518b8ab305', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('8d0fb85c-f9f8-4ccd-9223-51aeeb4e5a7f', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('8f1411fc-6fe4-49f8-abab-5f0184b951d5', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('939ede1c-6be1-4e54-95bc-0799de9a1d1a', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-11-30 12:00:00');
INSERT INTO `job_status_trace_log` VALUES ('9a509a91-6f07-45db-bbf6-402e1c471ee1', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 12:00:01');
INSERT INTO `job_status_trace_log` VALUES ('a4a76ea3-2742-4036-bce9-f27b0980fca3', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('b46d9c6f-358e-40c0-8f1f-b215ab455a9b', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('b82ee56d-4d46-486b-b26a-f50fb2c8fc6f', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('b931a6fe-85ae-4b18-a857-f7ecdd933d35', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 12:00:01');
INSERT INTO `job_status_trace_log` VALUES ('bbed07d3-b5cb-4b63-be6e-28a642562e7c', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('bd407b0c-0a73-4b86-b194-5f33ba03a14a', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('c22be05b-efa2-44d6-938c-3deb7ab0edba', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('c38949bc-40fb-4af0-824e-2e85be00462e', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 17:00:01');
INSERT INTO `job_status_trace_log` VALUES ('c45024e9-a34c-4894-963f-ced333440153', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('c51477ac-c37d-48fb-807d-4aafb1800f6f', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 17:00:01');
INSERT INTO `job_status_trace_log` VALUES ('c7aa10d3-9823-490f-aa24-92ce68037836', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 17:00:00');
INSERT INTO `job_status_trace_log` VALUES ('c94c32a7-df68-4c96-809f-fcbcd7f212de', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('cc4534e9-33d9-4353-9f34-67ff36e25d4b', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('cf0b6d50-63f2-4a7d-8582-9bc69138ac92', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-11-30 12:00:00');
INSERT INTO `job_status_trace_log` VALUES ('d00a44a8-4f35-476a-9b9b-998ac1808a21', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-12-03 17:00:00');
INSERT INTO `job_status_trace_log` VALUES ('d88bf0d6-f101-4f88-a686-bff101777d78', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('d8ccabdb-39fc-4fec-8369-be846c9d3e03', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('d9566403-8757-454e-97dd-f67f42c4aed0', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-12-03 17:00:00');
INSERT INTO `job_status_trace_log` VALUES ('d9963ad2-c071-48ec-a869-d0eb4e2e0451', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('dd452030-55b1-4eb1-b25d-6cd434d15e47', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('de8b7872-d35b-4054-8794-fcd03989c8f7', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('df184862-58e5-4158-a390-6bcbf25dbef6', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-dataflow-job\' execute begin.', '2018-12-03 16:00:00');
INSERT INTO `job_status_trace_log` VALUES ('e6014183-c712-4887-afe5-7e653388e6f8', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('ec5f1bdb-5a2c-4977-a275-ec87db535114', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@24646', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job2\' execute begin.', '2018-12-03 17:00:00');
INSERT INTO `job_status_trace_log` VALUES ('ed1f5448-b266-403e-93e6-28100919ccac', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_STAGING', 'Job \'spring-simple-job\' execute begin.', '2018-12-03 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('eef1f5e9-95ad-4eff-a2e5-e431015afc6b', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('f460fd48-451e-4a9a-8cb4-19c9a4af5daa', 'spring-dataflow-job', '', 'spring-dataflow-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('f9cd13ef-2f33-4e08-b91c-e7c193ea12b2', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 13:00:00');
INSERT INTO `job_status_trace_log` VALUES ('fa1a6947-e005-4ffd-98bc-c9de5f4ce7e2', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('fa6c3023-7379-470e-9064-d4b9b0ae06de', 'spring-simple-job', '', 'spring-simple-job@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-11-30 15:00:00');
INSERT INTO `job_status_trace_log` VALUES ('fde44f13-c1b9-466c-9899-c2606ba0a721', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@20168', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_RUNNING', '', '2018-12-03 14:00:00');
INSERT INTO `job_status_trace_log` VALUES ('fef44c10-9d86-4410-b723-a92464c5e4ad', 'spring-simple-job2', '', 'spring-simple-job2@-@0,1,2@-@READY@-@192.168.0.58@-@59736', '192.168.0.58', 'LITE_EXECUTOR', 'READY', '[0, 1, 2]', 'TASK_FINISHED', '', '2018-11-30 14:00:00');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  `parent_id` int(11) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '山东农信', null, '2018-01-22 19:00:23', '2018-09-13 01:46:29', '0', '0', '1');
INSERT INTO `sys_dept` VALUES ('2', '沙县国际', null, '2018-01-22 19:00:38', '2018-09-13 01:46:30', '0', '0', '1');
INSERT INTO `sys_dept` VALUES ('3', '潍坊农信', null, '2018-01-22 19:00:44', '2018-09-13 01:46:31', '0', '1', '1');
INSERT INTO `sys_dept` VALUES ('4', '高新农信', null, '2018-01-22 19:00:52', '2018-10-06 10:41:52', '0', '3', '1');
INSERT INTO `sys_dept` VALUES ('5', '院校农信', null, '2018-01-22 19:00:57', '2018-10-06 10:42:51', '0', '4', '1');
INSERT INTO `sys_dept` VALUES ('6', '潍坊学院农信', null, '2018-01-22 19:01:06', '2018-09-13 03:29:10', '1', '5', '1');
INSERT INTO `sys_dept` VALUES ('7', '山东沙县', null, '2018-01-22 19:01:57', '2018-09-13 01:46:42', '0', '2', '1');
INSERT INTO `sys_dept` VALUES ('8', '潍坊沙县', null, '2018-01-22 19:02:03', '2018-09-13 01:46:43', '0', '7', '1');
INSERT INTO `sys_dept` VALUES ('9', '高新沙县', null, '2018-01-22 19:02:14', '2018-09-13 01:46:44', '1', '8', '1');
INSERT INTO `sys_dept` VALUES ('10', '租户2', null, '2018-11-18 13:27:11', '2018-11-18 13:42:19', '0', '0', '2');
INSERT INTO `sys_dept` VALUES ('11', '院校沙县', null, '2018-12-10 21:19:26', null, '0', '8', '1');

-- ----------------------------
-- Table structure for sys_dept_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_relation`;
CREATE TABLE `sys_dept_relation` (
  `ancestor` int(11) NOT NULL COMMENT '祖先节点',
  `descendant` int(11) NOT NULL COMMENT '后代节点',
  PRIMARY KEY (`ancestor`,`descendant`) USING BTREE,
  KEY `idx1` (`ancestor`) USING BTREE,
  KEY `idx2` (`descendant`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='部门关系表';

-- ----------------------------
-- Records of sys_dept_relation
-- ----------------------------
INSERT INTO `sys_dept_relation` VALUES ('1', '1');
INSERT INTO `sys_dept_relation` VALUES ('1', '3');
INSERT INTO `sys_dept_relation` VALUES ('1', '4');
INSERT INTO `sys_dept_relation` VALUES ('1', '5');
INSERT INTO `sys_dept_relation` VALUES ('2', '2');
INSERT INTO `sys_dept_relation` VALUES ('2', '7');
INSERT INTO `sys_dept_relation` VALUES ('2', '8');
INSERT INTO `sys_dept_relation` VALUES ('2', '11');
INSERT INTO `sys_dept_relation` VALUES ('3', '3');
INSERT INTO `sys_dept_relation` VALUES ('3', '4');
INSERT INTO `sys_dept_relation` VALUES ('3', '5');
INSERT INTO `sys_dept_relation` VALUES ('4', '4');
INSERT INTO `sys_dept_relation` VALUES ('4', '5');
INSERT INTO `sys_dept_relation` VALUES ('5', '5');
INSERT INTO `sys_dept_relation` VALUES ('7', '7');
INSERT INTO `sys_dept_relation` VALUES ('7', '8');
INSERT INTO `sys_dept_relation` VALUES ('7', '11');
INSERT INTO `sys_dept_relation` VALUES ('8', '8');
INSERT INTO `sys_dept_relation` VALUES ('8', '11');
INSERT INTO `sys_dept_relation` VALUES ('10', '10');
INSERT INTO `sys_dept_relation` VALUES ('11', '11');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` int(10) NOT NULL COMMENT '排序（升序）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `tenant_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sys_dict_value` (`value`) USING BTREE,
  KEY `sys_dict_label` (`label`) USING BTREE,
  KEY `sys_dict_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '9', '异常', 'log_type', '日志异常', '1', '2018-07-09 06:16:14', '2018-11-24 07:25:11', '日志异常', '0', '1');
INSERT INTO `sys_dict` VALUES ('2', '0', '正常', 'log_type', '正常', '0', '2018-07-09 06:15:40', '2018-11-24 07:25:14', '正常', '0', '0');
INSERT INTO `sys_dict` VALUES ('3', 'WX', '微信', 'social_type', '微信登录', '0', '2018-08-16 14:01:45', '2018-11-24 07:25:16', '微信登录', '0', '0');
INSERT INTO `sys_dict` VALUES ('4', 'QQ', 'QQ', 'social_type', 'QQ登录', '1', '2018-07-09 06:15:40', '2018-11-24 07:25:18', 'QQ登录', '0', '0');
INSERT INTO `sys_dict` VALUES ('5', '0', '正常', 'log_type', '日志类型', '0', '2018-09-30 02:33:53', '2018-11-24 07:25:20', '日志正常', '0', '1');
INSERT INTO `sys_dict` VALUES ('6', '0', '未提交', 'leave_status', '请假状态', '0', '2018-09-30 02:34:45', '2018-11-24 07:25:23', '请假状态', '0', '1');
INSERT INTO `sys_dict` VALUES ('7', '1', '审批中', 'leave_status', '请假状态', '1', '2018-09-30 02:35:16', '2018-11-24 07:25:25', '请假状态', '0', '1');
INSERT INTO `sys_dict` VALUES ('8', '2', '完成', 'leave_status', '请假状态', '2', '2018-09-30 02:35:58', '2018-11-24 07:25:28', '请假状态', '0', '1');
INSERT INTO `sys_dict` VALUES ('9', '9', '驳回', 'leave_status', '请假状态', '9', '2018-09-30 02:36:31', '2018-11-24 07:25:31', '请假状态', '0', '1');
INSERT INTO `sys_dict` VALUES ('10', '0', '自营', 'sold_type', '产品所属类型', '0', '2019-01-03 12:51:52', '2019-01-03 12:53:10', '自营产品', '0', '1');
INSERT INTO `sys_dict` VALUES ('11', '1', '商户', 'sold_type', '产品所属类型', '1', '2019-01-03 12:52:35', '2019-01-03 12:53:11', '商户产品', '0', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `service_id` varchar(32) DEFAULT NULL COMMENT '服务ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(1000) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(10) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `time` mediumtext COMMENT '执行时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `exception` text COMMENT '异常信息',
  `tenant_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sys_log_create_by` (`create_by`) USING BTREE,
  KEY `sys_log_request_uri` (`request_uri`) USING BTREE,
  KEY `sys_log_type` (`type`) USING BTREE,
  KEY `sys_log_create_date` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  `name` varchar(32) NOT NULL COMMENT '菜单名称',
  `permission` varchar(32) DEFAULT NULL COMMENT '菜单权限标识',
  `path` varchar(128) DEFAULT NULL COMMENT '前端URL',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `component` varchar(64) DEFAULT NULL COMMENT 'VUE页面',
  `sort` int(11) DEFAULT '1' COMMENT '排序值',
  `keep_alive` char(1) DEFAULT '0' COMMENT '0-开启，1- 关闭',
  `type` char(1) DEFAULT NULL COMMENT '菜单类型 （0菜单 1按钮）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '逻辑删除标记(0--正常 1--删除)',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1000', '权限管理', null, '/upms', '-1', 'icon-quanxianguanli', 'Layout', '0', '0', '0', '2018-09-28 08:29:53', '2018-09-28 08:53:01', '0', '1');
INSERT INTO `sys_menu` VALUES ('1100', '用户管理', null, 'user', '1000', 'icon-yonghuguanli', 'views/admin/user/index', '1', '0', '0', '2017-11-02 22:24:37', '2018-09-28 09:00:41', '0', '1');
INSERT INTO `sys_menu` VALUES ('1101', '用户新增', 'sys_user_add', null, '1100', null, null, null, '0', '1', '2017-11-08 09:52:09', '2018-09-28 09:06:34', '0', '1');
INSERT INTO `sys_menu` VALUES ('1102', '用户修改', 'sys_user_edit', null, '1100', null, null, null, '0', '1', '2017-11-08 09:52:48', '2018-09-28 09:06:37', '0', '1');
INSERT INTO `sys_menu` VALUES ('1103', '用户删除', 'sys_user_del', null, '1100', null, null, null, '0', '1', '2017-11-08 09:54:01', '2018-09-28 09:06:42', '0', '1');
INSERT INTO `sys_menu` VALUES ('1200', '菜单管理', null, 'menu', '1000', 'icon-caidanguanli', 'views/admin/menu/index', '2', '0', '0', '2017-11-08 09:57:27', '2018-09-28 09:00:45', '0', '1');
INSERT INTO `sys_menu` VALUES ('1201', '菜单新增', 'sys_menu_add', null, '1200', null, null, null, '0', '1', '2017-11-08 10:15:53', '2018-09-28 09:07:16', '0', '1');
INSERT INTO `sys_menu` VALUES ('1202', '菜单修改', 'sys_menu_edit', null, '1200', null, null, null, '0', '1', '2017-11-08 10:16:23', '2018-09-28 09:07:18', '0', '1');
INSERT INTO `sys_menu` VALUES ('1203', '菜单删除', 'sys_menu_del', null, '1200', null, null, null, '0', '1', '2017-11-08 10:16:43', '2018-09-28 09:07:22', '0', '1');
INSERT INTO `sys_menu` VALUES ('1300', '角色管理', null, 'role', '1000', 'icon-jiaoseguanli', 'views/admin/role/index', '3', '0', '0', '2017-11-08 10:13:37', '2018-09-28 09:00:48', '0', '1');
INSERT INTO `sys_menu` VALUES ('1301', '角色新增', 'sys_role_add', null, '1300', null, null, null, '0', '1', '2017-11-08 10:14:18', '2018-09-28 09:07:46', '0', '1');
INSERT INTO `sys_menu` VALUES ('1302', '角色修改', 'sys_role_edit', null, '1300', null, null, null, '0', '1', '2017-11-08 10:14:41', '2018-09-28 09:07:49', '0', '1');
INSERT INTO `sys_menu` VALUES ('1303', '角色删除', 'sys_role_del', null, '1300', null, null, null, '0', '1', '2017-11-08 10:14:59', '2018-09-28 09:07:53', '0', '1');
INSERT INTO `sys_menu` VALUES ('1304', '分配权限', 'sys_role_perm', null, '1300', null, null, null, '0', '1', '2018-04-20 07:22:55', '2018-09-28 09:13:23', '0', '1');
INSERT INTO `sys_menu` VALUES ('1400', '部门管理', null, 'dept', '1000', 'icon-web-icon-', 'views/admin/dept/index', '4', '0', '0', '2018-01-20 13:17:19', '2018-12-09 16:35:12', '0', '1');
INSERT INTO `sys_menu` VALUES ('1401', '部门新增', 'sys_dept_add', null, '1400', null, null, null, '0', '1', '2018-01-20 14:56:16', '2018-09-28 09:08:13', '0', '1');
INSERT INTO `sys_menu` VALUES ('1402', '部门修改', 'sys_dept_edit', null, '1400', null, null, null, '0', '1', '2018-01-20 14:56:59', '2018-09-28 09:08:16', '0', '1');
INSERT INTO `sys_menu` VALUES ('1403', '部门删除', 'sys_dept_del', null, '1400', null, null, null, '0', '1', '2018-01-20 14:57:28', '2018-09-28 09:08:18', '0', '1');
INSERT INTO `sys_menu` VALUES ('2000', '系统管理', null, '/admin', '-1', 'icon-xitongguanli', 'Layout', '1', '0', '0', '2017-11-07 20:56:00', '2018-09-28 08:53:18', '0', '1');
INSERT INTO `sys_menu` VALUES ('2100', '日志管理', null, 'log', '2000', 'icon-rizhiguanli', 'views/admin/log/index', '5', '0', '0', '2017-11-20 14:06:22', '2018-09-28 09:01:52', '0', '1');
INSERT INTO `sys_menu` VALUES ('2101', '日志删除', 'sys_log_del', null, '2100', null, null, null, '0', '1', '2017-11-20 20:37:37', '2018-09-28 09:08:44', '0', '1');
INSERT INTO `sys_menu` VALUES ('2200', '字典管理', null, 'dict', '2000', 'icon-navicon-zdgl', 'views/admin/dict/index', '6', '0', '0', '2017-11-29 11:30:52', '2018-09-28 09:01:47', '0', '1');
INSERT INTO `sys_menu` VALUES ('2201', '字典删除', 'sys_dict_del', null, '2200', null, null, null, '0', '1', '2017-11-29 11:30:11', '2018-09-28 09:09:10', '0', '1');
INSERT INTO `sys_menu` VALUES ('2202', '字典新增', 'sys_dict_add', null, '2200', null, null, null, '0', '1', '2018-05-11 22:34:55', '2018-09-28 09:09:12', '0', '1');
INSERT INTO `sys_menu` VALUES ('2203', '字典修改', 'sys_dict_edit', null, '2200', null, null, null, '0', '1', '2018-05-11 22:36:03', '2018-09-28 09:09:16', '0', '1');
INSERT INTO `sys_menu` VALUES ('2300', '代码生成', '', 'gen', '2000', 'icon-weibiaoti46', 'views/gen/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-11-24 05:21:01', '0', '1');
INSERT INTO `sys_menu` VALUES ('2400', '终端管理', '', 'client', '2000', 'icon-shouji', 'views/admin/client/index', '9', '0', '0', '2018-01-20 13:17:19', '2018-09-28 09:01:43', '0', '1');
INSERT INTO `sys_menu` VALUES ('2401', '客户端新增', 'sys_client_add', null, '2400', '1', null, null, '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:10:25', '0', '1');
INSERT INTO `sys_menu` VALUES ('2402', '客户端修改', 'sys_client_edit', null, '2400', null, null, null, '0', '1', '2018-05-15 21:37:06', '2018-09-28 09:10:27', '0', '1');
INSERT INTO `sys_menu` VALUES ('2403', '客户端删除', 'sys_client_del', null, '2400', null, null, null, '0', '1', '2018-05-15 21:39:16', '2018-09-28 09:10:30', '0', '1');
INSERT INTO `sys_menu` VALUES ('2500', '密钥管理', '', 'social', '2000', 'icon-miyue', 'views/admin/social/index', '10', '0', '0', '2018-01-20 13:17:19', '2018-09-28 09:01:41', '0', '1');
INSERT INTO `sys_menu` VALUES ('2501', '密钥新增', 'generator_syssocialdetails_add', null, '2500', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:11:02', '0', '1');
INSERT INTO `sys_menu` VALUES ('2502', '密钥修改', 'generator_syssocialdetails_edit', null, '2500', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:11:04', '0', '1');
INSERT INTO `sys_menu` VALUES ('2503', '密钥删除', 'generator_syssocialdetails_del', null, '2500', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:11:06', '0', '1');
INSERT INTO `sys_menu` VALUES ('2600', '令牌管理', null, 'token', '2000', 'icon-denglvlingpai', 'views/admin/token/index', '11', '0', '0', '2018-09-04 05:58:41', '2018-09-28 09:01:38', '0', '1');
INSERT INTO `sys_menu` VALUES ('2601', '令牌删除', 'sys_token_del', null, '2600', null, null, '1', '0', '1', '2018-09-04 05:59:50', '2018-09-28 09:11:24', '0', '1');
INSERT INTO `sys_menu` VALUES ('2700', '动态路由', null, 'route', '2000', 'icon-luyou', 'views/admin/route/index', '12', '0', '0', '2018-09-04 05:58:41', '2018-09-28 09:01:38', '0', '1');
INSERT INTO `sys_menu` VALUES ('3000', '系统监控', null, '/daemon', '-1', 'icon-msnui-supervise', 'Layout', '2', '0', '0', '2018-07-27 01:13:21', '2018-09-28 08:53:24', '0', '1');
INSERT INTO `sys_menu` VALUES ('3100', '服务监控', null, 'http://127.0.0.1:5001', '3000', 'icon-server', null, '0', '0', '0', '2018-06-26 10:50:32', '2018-09-28 09:03:40', '0', '1');
INSERT INTO `sys_menu` VALUES ('3200', '接口文档', null, 'http://139.224.200.249:19999/swagger-ui.html', '3000', 'icon-wendang', null, '1', '0', '0', '2018-06-26 10:50:32', '2018-09-28 09:05:16', '0', '1');
INSERT INTO `sys_menu` VALUES ('3300', '事务监控', null, 'tx', '3000', 'icon-gtsquanjushiwufuwuGTS', 'views/tx/index', '5', '0', '0', '2018-08-19 11:02:39', '2018-11-23 14:25:08', '0', '1');
INSERT INTO `sys_menu` VALUES ('3400', '在线事务', null, 'model', '3000', 'icon-online', 'views/tx/model', '6', '0', '0', '2018-08-19 11:32:04', '2018-11-23 14:25:14', '0', '1');
INSERT INTO `sys_menu` VALUES ('3500', '任务监控', null, 'http://139.224.200.249:8899', '3000', 'icon-msnui-supervise', null, '7', '0', '0', '2018-06-26 10:50:32', '2018-09-28 09:03:33', '0', '1');
INSERT INTO `sys_menu` VALUES ('3600', '任务轨迹', '', 'status-trace-log', '3000', 'icon-guiji', 'views/daemon/status-trace-log/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-11-24 06:34:52', '0', '1');
INSERT INTO `sys_menu` VALUES ('3601', '删除任务轨迹', 'daemon_status_trace_log_del', null, '3600', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-11-24 06:37:31', '0', '1');
INSERT INTO `sys_menu` VALUES ('3700', '调用拓扑', null, 'http://139.224.200.249:8081', '3000', 'icon-line', null, '10', '0', '0', '2018-01-25 11:08:52', '2018-09-28 09:04:29', '0', '1');
INSERT INTO `sys_menu` VALUES ('3800', '缓存状态', null, 'http://139.224.200.249:8585', '3000', 'icon-qingchuhuancun', null, '12', '0', '0', '2018-01-23 10:56:11', '2018-09-28 09:13:56', '0', '1');
INSERT INTO `sys_menu` VALUES ('3900', '任务日志', '', 'execution-log', '3000', 'icon-guiji', 'views/daemon/execution-log/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-11-24 06:34:52', '0', '1');
INSERT INTO `sys_menu` VALUES ('3901', '删除日志', 'daemon_execution_log_del', null, '3900', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-11-24 06:39:03', '0', '1');
INSERT INTO `sys_menu` VALUES ('4000', '协同管理', null, '/activti', '-1', 'icon-kuaisugongzuoliu_o', 'Layout', '3', '0', '0', '2018-09-26 01:38:13', '2018-09-28 08:58:24', '0', '1');
INSERT INTO `sys_menu` VALUES ('4100', '模型管理', null, 'activiti', '4000', 'icon-weibiaoti13', 'views/activiti/index', '1', '0', '0', '2018-09-26 01:39:07', '2018-12-09 16:35:16', '0', '1');
INSERT INTO `sys_menu` VALUES ('4101', '模型管理', 'act_model_manage', null, '4100', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0', '1');
INSERT INTO `sys_menu` VALUES ('4200', '流程管理', null, 'process', '4000', 'icon-liucheng', 'views/activiti/process', '2', '0', '0', '2018-09-26 06:41:05', '2018-11-23 14:25:33', '0', '1');
INSERT INTO `sys_menu` VALUES ('4201', '流程管理', 'act_process_manage', null, '4200', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0', '1');
INSERT INTO `sys_menu` VALUES ('4300', '请假管理', '', 'leavebill', '4000', 'icon-qingjia', 'views/activiti/leave', '3', '0', '0', '2018-01-20 13:17:19', '2018-12-09 16:35:20', '0', '1');
INSERT INTO `sys_menu` VALUES ('4301', '请假新增', 'act_leavebill_add', null, '4300', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0', '1');
INSERT INTO `sys_menu` VALUES ('4302', '请假修改', 'act_leavebill_edit', null, '4300', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:09', '0', '1');
INSERT INTO `sys_menu` VALUES ('4303', '请假删除', 'act_leavebill_del', null, '4300', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:14', '0', '1');
INSERT INTO `sys_menu` VALUES ('4400', '待办任务', null, 'task', '4000', 'icon-renwu', 'views/activiti/task', '4', '0', '0', '2018-09-27 09:52:31', '2018-12-09 16:35:26', '0', '1');
INSERT INTO `sys_menu` VALUES ('4401', '流程管理', 'act_task_manage', null, '4400', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0', '1');
INSERT INTO `sys_menu` VALUES ('5000', '多级菜单', null, '/crud', '-1', 'icon-caidanguanli', '', '4', '0', '0', '2018-08-28 01:50:22', '2018-09-28 08:58:20', '0', '1');
INSERT INTO `sys_menu` VALUES ('5001', '一级菜单', null, 'index', '5000', 'icon-caidanguanli', 'views/crud/index', '1', '0', '0', '2018-08-28 01:50:48', '2018-11-21 17:48:19', '1', '1');
INSERT INTO `sys_menu` VALUES ('5002', '二级菜单', null, 'crud', '5001', 'icon-caidanguanli', 'views/crud/index', '1', '0', '0', '2018-08-28 01:51:23', '2018-11-21 17:47:40', '1', '1');
INSERT INTO `sys_menu` VALUES ('5003', '一级菜单', null, '', '5000', 'icon-caidanguanli', '', '1', '0', '0', '2018-11-21 17:49:18', '2018-11-21 17:53:25', '0', null);
INSERT INTO `sys_menu` VALUES ('5004', '二级菜单', null, 'index', '5003', 'icon-caidanguanli', 'views/crud/index', '1', '0', '0', '2018-11-21 17:53:51', '2018-11-21 17:54:04', '0', null);
INSERT INTO `sys_menu` VALUES ('6000', '系统官网', null, 'https://pig4cloud.com#', '-1', 'icon-guanwang', '', '5', '0', '0', '2018-09-27 02:26:36', '2018-11-17 16:18:50', '1', '1');

-- ----------------------------
-- Table structure for sys_oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_client_details`;
CREATE TABLE `sys_oauth_client_details` (
  `client_id` varchar(32) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  `tenant_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属租户',
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='终端信息表';

-- ----------------------------
-- Records of sys_oauth_client_details
-- ----------------------------
INSERT INTO `sys_oauth_client_details` VALUES ('act', null, 'act', 'server', 'password,refresh_token', null, null, null, null, null, 'true', '1');
INSERT INTO `sys_oauth_client_details` VALUES ('app', null, 'app', 'server', 'password,refresh_token', null, null, null, null, null, 'true', '1');
INSERT INTO `sys_oauth_client_details` VALUES ('daemon', null, 'daemon', 'server', 'password,refresh_token', null, null, null, null, null, 'true', '1');
INSERT INTO `sys_oauth_client_details` VALUES ('gen', null, 'gen', 'server', 'password,refresh_token', null, null, null, null, null, 'true', '1');
INSERT INTO `sys_oauth_client_details` VALUES ('test', null, 'test', 'server', 'password,refresh_token', null, null, null, null, null, 'true', '1');
INSERT INTO `sys_oauth_client_details` VALUES ('upms', null, 'upms', 'server', 'password,refresh_token', null, null, null, null, null, 'true', '1');
INSERT INTO `sys_oauth_client_details` VALUES ('xing', null, 'xing', 'server', 'password,refresh_token,authorization_code', 'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login', null, null, null, null, 'true', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_code` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标识（0-正常,1-删除）',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `role_idx1_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', 'ROLE_ADMIN', '超级管理员', '2017-10-29 15:45:51', '2018-09-13 01:46:01', '0', '1');
INSERT INTO `sys_role` VALUES ('2', 'ROLE_CQQ', 'ROLE_CQQ', 'ROLE_CQQ', '2018-11-11 19:42:26', '2018-11-11 20:26:01', '0', '2');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1000');
INSERT INTO `sys_role_menu` VALUES ('1', '1100');
INSERT INTO `sys_role_menu` VALUES ('1', '1101');
INSERT INTO `sys_role_menu` VALUES ('1', '1102');
INSERT INTO `sys_role_menu` VALUES ('1', '1103');
INSERT INTO `sys_role_menu` VALUES ('1', '1200');
INSERT INTO `sys_role_menu` VALUES ('1', '1201');
INSERT INTO `sys_role_menu` VALUES ('1', '1202');
INSERT INTO `sys_role_menu` VALUES ('1', '1203');
INSERT INTO `sys_role_menu` VALUES ('1', '1300');
INSERT INTO `sys_role_menu` VALUES ('1', '1301');
INSERT INTO `sys_role_menu` VALUES ('1', '1302');
INSERT INTO `sys_role_menu` VALUES ('1', '1303');
INSERT INTO `sys_role_menu` VALUES ('1', '1304');
INSERT INTO `sys_role_menu` VALUES ('1', '1400');
INSERT INTO `sys_role_menu` VALUES ('1', '1401');
INSERT INTO `sys_role_menu` VALUES ('1', '1402');
INSERT INTO `sys_role_menu` VALUES ('1', '1403');
INSERT INTO `sys_role_menu` VALUES ('1', '2000');
INSERT INTO `sys_role_menu` VALUES ('1', '2100');
INSERT INTO `sys_role_menu` VALUES ('1', '2101');
INSERT INTO `sys_role_menu` VALUES ('1', '2200');
INSERT INTO `sys_role_menu` VALUES ('1', '2201');
INSERT INTO `sys_role_menu` VALUES ('1', '2202');
INSERT INTO `sys_role_menu` VALUES ('1', '2203');
INSERT INTO `sys_role_menu` VALUES ('1', '2300');
INSERT INTO `sys_role_menu` VALUES ('1', '2400');
INSERT INTO `sys_role_menu` VALUES ('1', '2401');
INSERT INTO `sys_role_menu` VALUES ('1', '2402');
INSERT INTO `sys_role_menu` VALUES ('1', '2403');
INSERT INTO `sys_role_menu` VALUES ('1', '2500');
INSERT INTO `sys_role_menu` VALUES ('1', '2501');
INSERT INTO `sys_role_menu` VALUES ('1', '2502');
INSERT INTO `sys_role_menu` VALUES ('1', '2503');
INSERT INTO `sys_role_menu` VALUES ('1', '2600');
INSERT INTO `sys_role_menu` VALUES ('1', '2601');
INSERT INTO `sys_role_menu` VALUES ('1', '2700');
INSERT INTO `sys_role_menu` VALUES ('1', '3000');
INSERT INTO `sys_role_menu` VALUES ('1', '3100');
INSERT INTO `sys_role_menu` VALUES ('1', '3200');
INSERT INTO `sys_role_menu` VALUES ('1', '3300');
INSERT INTO `sys_role_menu` VALUES ('1', '3400');
INSERT INTO `sys_role_menu` VALUES ('1', '3500');
INSERT INTO `sys_role_menu` VALUES ('1', '3600');
INSERT INTO `sys_role_menu` VALUES ('1', '3601');
INSERT INTO `sys_role_menu` VALUES ('1', '3700');
INSERT INTO `sys_role_menu` VALUES ('1', '3800');
INSERT INTO `sys_role_menu` VALUES ('1', '3900');
INSERT INTO `sys_role_menu` VALUES ('1', '3901');
INSERT INTO `sys_role_menu` VALUES ('1', '4000');
INSERT INTO `sys_role_menu` VALUES ('1', '4100');
INSERT INTO `sys_role_menu` VALUES ('1', '4101');
INSERT INTO `sys_role_menu` VALUES ('1', '4200');
INSERT INTO `sys_role_menu` VALUES ('1', '4201');
INSERT INTO `sys_role_menu` VALUES ('1', '4300');
INSERT INTO `sys_role_menu` VALUES ('1', '4301');
INSERT INTO `sys_role_menu` VALUES ('1', '4302');
INSERT INTO `sys_role_menu` VALUES ('1', '4303');
INSERT INTO `sys_role_menu` VALUES ('1', '4400');
INSERT INTO `sys_role_menu` VALUES ('1', '4401');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1100');
INSERT INTO `sys_role_menu` VALUES ('2', '1101');
INSERT INTO `sys_role_menu` VALUES ('2', '1102');
INSERT INTO `sys_role_menu` VALUES ('2', '1103');
INSERT INTO `sys_role_menu` VALUES ('2', '1200');
INSERT INTO `sys_role_menu` VALUES ('2', '1201');
INSERT INTO `sys_role_menu` VALUES ('2', '1202');
INSERT INTO `sys_role_menu` VALUES ('2', '1203');
INSERT INTO `sys_role_menu` VALUES ('2', '1300');
INSERT INTO `sys_role_menu` VALUES ('2', '1301');
INSERT INTO `sys_role_menu` VALUES ('2', '1302');
INSERT INTO `sys_role_menu` VALUES ('2', '1303');
INSERT INTO `sys_role_menu` VALUES ('2', '1304');
INSERT INTO `sys_role_menu` VALUES ('2', '1400');
INSERT INTO `sys_role_menu` VALUES ('2', '1401');
INSERT INTO `sys_role_menu` VALUES ('2', '1402');
INSERT INTO `sys_role_menu` VALUES ('2', '1403');

-- ----------------------------
-- Table structure for sys_route_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_route_conf`;
CREATE TABLE `sys_route_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `route_name` varchar(30) DEFAULT NULL COMMENT '路由名称',
  `route_id` varchar(30) NOT NULL DEFAULT '' COMMENT '路由ID',
  `predicates` json DEFAULT NULL COMMENT '断言',
  `filters` json DEFAULT NULL COMMENT '过滤器',
  `uri` varchar(50) DEFAULT NULL,
  `order` int(2) DEFAULT '0' COMMENT '排序',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='路由配置表';

-- ----------------------------
-- Records of sys_route_conf
-- ----------------------------
INSERT INTO `sys_route_conf` VALUES ('1', '工作流管理模块', 'pigx-activiti', '[{\"args\": {\"_genkey_0\": \"/act/**\"}, \"name\": \"Path\"}]', '[]', 'lb://pigx-activiti', '0', '2018-11-28 15:56:10');
INSERT INTO `sys_route_conf` VALUES ('2', '认证中心', 'pigx-auth', '[{\"args\": {\"_genkey_0\": \"/auth/**\"}, \"name\": \"Path\"}]', '[{\"args\": {}, \"name\": \"ValidateCodeGatewayFilter\"}, {\"args\": {}, \"name\": \"PasswordDecoderFilter\"}]', 'lb://pigx-auth', '0', '2018-11-28 15:56:10');
INSERT INTO `sys_route_conf` VALUES ('3', '代码生成模块', 'pigx-codegen', '[{\"args\": {\"_genkey_0\": \"/gen/**\"}, \"name\": \"Path\"}]', '[]', 'lb://pigx-codegen', '0', '2018-11-28 15:56:10');
INSERT INTO `sys_route_conf` VALUES ('4', '定时任务模块', 'pigx-daemon', '[{\"args\": {\"_genkey_0\": \"/daemon/**\"}, \"name\": \"Path\"}]', '[]', 'lb://pigx-daemon', '0', '2018-11-28 15:56:10');
INSERT INTO `sys_route_conf` VALUES ('5', '分布式事务模块', 'pigx-tx-manager', '[{\"args\": {\"_genkey_0\": \"/tx/**\"}, \"name\": \"Path\"}]', '[]', 'lb://pigx-tx-manager', '0', '2018-11-28 15:56:10');
INSERT INTO `sys_route_conf` VALUES ('6', '通用权限模块', 'pigx-upms-biz', '[{\"args\": {\"_genkey_0\": \"/admin/**\"}, \"name\": \"Path\"}]', '[{\"args\": {\"key-resolver\": \"#{@remoteAddrKeyResolver}\", \"redis-rate-limiter.burstCapacity\": \"20\", \"redis-rate-limiter.replenishRate\": \"10\"}, \"name\": \"RequestRateLimiter\"}, {\"args\": {\"name\": \"default\", \"fallbackUri\": \"forward:/fallback\"}, \"name\": \"Hystrix\"}]', 'lb://pigx-upms-biz', '0', '2018-11-28 15:56:10');

-- ----------------------------
-- Table structure for sys_social_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_social_details`;
CREATE TABLE `sys_social_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主鍵',
  `type` varchar(16) NOT NULL COMMENT '类型',
  `remark` varchar(64) DEFAULT NULL COMMENT '描述',
  `app_id` varchar(64) NOT NULL COMMENT 'appid',
  `app_secret` varchar(64) NOT NULL COMMENT 'app_secret',
  `redirect_url` varchar(128) DEFAULT NULL COMMENT '回调地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(50) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `tenant_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统社交登录账号表';

-- ----------------------------
-- Records of sys_social_details
-- ----------------------------
INSERT INTO `sys_social_details` VALUES ('1', 'WX', '微信互联参数', 'wxd1678d3f83b1d83a', '6ddb043f94da5d2172926abe8533504f', 'daoweicloud.com', '2018-08-16 14:24:25', '2018-12-04 11:50:57', '0', '1');

-- ----------------------------
-- Table structure for sys_tenant_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_user`;
CREATE TABLE `sys_tenant_user` (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户用户关系表';

-- ----------------------------
-- Records of sys_tenant_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '随机盐',
  `phone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '简介',
  `avatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `lock_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，9-锁定',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，1-删除',
  `wx_openid` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信openid',
  `qq_openid` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QQ openid',
  `tenant_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属租户',
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `user_wx_openid` (`wx_openid`) USING BTREE,
  KEY `user_qq_openid` (`qq_openid`) USING BTREE,
  KEY `user_idx1_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$RpFJjxYiXdEsAGnWp/8fsOetMuOON96Ntk/Ym2M/RKRyU0GZseaDC', null, '17034642888', null, '1', '2018-04-20 07:15:18', '2018-11-16 23:31:30', '0', '0', 'o_0FT0uyg_H1vVy2H0JpSwlVGhWQ', null, '1');
INSERT INTO `sys_user` VALUES ('2', 'admin', '$2a$10$RpFJjxYiXdEsAGnWp/8fsOetMuOON96Ntk/Ym2M/RKRyU0GZseaDC', null, '17034642888', null, '10', '2018-04-20 07:15:18', '2018-11-18 13:43:03', '0', '0', 'o_0FT0uyg_H1vVy2H0JpSwlVGhWQ', null, '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for xing_member
-- ----------------------------
DROP TABLE IF EXISTS `xing_member`;
CREATE TABLE `xing_member` (
  `id_` bigint(20) NOT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT '会员名称',
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '随机盐',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '简介',
  `avatar_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `lock_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，9-锁定',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，1-删除',
  `wx_openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信openid',
  `qq_openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QQ openid',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='星云平台-会员表';

-- ----------------------------
-- Records of xing_member
-- ----------------------------

-- ----------------------------
-- Table structure for xing_member_address
-- ----------------------------
DROP TABLE IF EXISTS `xing_member_address`;
CREATE TABLE `xing_member_address` (
  `id_` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL COMMENT '会员ID',
  `province_code` varchar(6) DEFAULT NULL COMMENT '省编码',
  `city_code` varchar(6) DEFAULT NULL COMMENT '市编码',
  `district_code` varchar(6) DEFAULT NULL COMMENT '区编码',
  `address_` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `defult_flag` tinyint(1) NOT NULL COMMENT '是否默认地址 0：否，1：是',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='星云平台-会员地址表';

-- ----------------------------
-- Records of xing_member_address
-- ----------------------------
