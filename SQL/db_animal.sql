/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : db_animal

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 21/04/2024 10:50:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `num` int NULL DEFAULT 0 COMMENT '报名人数',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '宠物比赛', '值得一提的是，近铁萌宠节期间，商场在北区B2下沉式广场设置了狗狗饮水机，供口渴的狗狗们补充水分，还设置了狗狗定点排泄区，让狗狗无忧无虑的尽情玩耍，全程由专业宠物医院提供医疗保障。此次近铁萌宠嘉年华，也标志着近铁城市广场正式打造宠物友好商场，倡导健康的人宠互动方式。结合场内M Stand、星巴克、1013宠物商店等宠物友好品牌，开放室外休闲区域，为消费者提供美好且全面的“它生活”嘉年华，引领人宠共趣及养宠社交新方式。近铁城市广场购物中心总经理江雪芬说：“此次近铁萌宠节标志着近铁城市广场正式官宣成为宠物友好商场，我们在商场北区一楼外广场，B2下沉式广场打造了近5000平米的宠物友好空间。”', '2023-07-22 22:49:24', 'http://localhost:9090/file/d99ce4c694034be9867b3dff04b6de01.png', 100, '上海普陀');

-- ----------------------------
-- Table structure for adopt
-- ----------------------------
DROP TABLE IF EXISTS `adopt`;
CREATE TABLE `adopt`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `animal_id` int NOT NULL COMMENT '流浪动物id',
  `adopt_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '领养状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of adopt
-- ----------------------------

-- ----------------------------
-- Table structure for animal
-- ----------------------------
DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '动物名字',
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '动物性别',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '种类',
  `age` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '年龄',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '动物照片',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '活动范围',
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '身体状态',
  `sterilization` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '是否绝育',
  `vaccine` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '疫苗接种',
  `adopt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '领养状态',
  `information` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '其他描述',
  `is_adopt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '是否被领养',
  `praise` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of animal
-- ----------------------------
INSERT INTO `animal` VALUES (1, '沙皮', '公', '狗', '3岁', 'http://localhost:9090/file/2b9f0ea8d26e4b799fc0296aacbba89e.jpg', '室内', '良好', '是', '已接种', '可领养', '性格温顺', '否', 0);
INSERT INTO `animal` VALUES (2, '五百', '母', ' 狗', '6岁', 'http://localhost:9090/file/0032b0b010b0467ba3dca5debab29d11.jpg', '室外、室内', '健康', '否', '未接种', '可领养', '可爱的狗狗', '否', 0);
INSERT INTO `animal` VALUES (3, '笨笨', '母', '狗', '2岁', 'http://localhost:9090/file/1bec80e70bb548648062468685235ca4.jpg', '室外', '健康', '否', '已接种', '可领养', '小家伙非常亲人，很适合领养。', '否', 0);
INSERT INTO `animal` VALUES (4, '萌萌', '母', '猫', '6个月', 'http://localhost:9090/file/2002c13aa21a448aae2074b8ececa6ef.jpg', '室内、室外', '健康', '否', '已接种', '可领养', '小家伙们熟悉新环境后变得很亲人，非常适合领养。', '否', 0);
INSERT INTO `animal` VALUES (5, '茶多酚', '公', '猫', '4岁', 'http://localhost:9090/file/ca07c512aefc4efc9e8c3ede5f95347c.png', '室外', '良好', '是', '已接种', '可领养', '安静 温顺', '否', 0);
INSERT INTO `animal` VALUES (6, '团团', '母', '猫', '6岁', 'http://localhost:9090/file/96ae84db9e09468dafd6bc342daaa92a.jpg', '室内', '健康', '否', '已接种', '不可领养', '小家伙们熟悉新环境后变得很亲人，非常适合领养', '是', 0);

-- ----------------------------
-- Table structure for applcation
-- ----------------------------
DROP TABLE IF EXISTS `applcation`;
CREATE TABLE `applcation`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `experience` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '养宠经验',
  `pet` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '宠物',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `married` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '婚姻',
  `income` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '收入',
  `profession` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '职业',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '住址',
  `reason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '领养理由',
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT '待审核' COMMENT '状态',
  `animal_id` int NULL DEFAULT NULL COMMENT '动物id',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of applcation
-- ----------------------------
INSERT INTO `applcation` VALUES (1, 'IT教程资源', '男', 28, '有经验', NULL, '13622914569', '未婚', '5000', '软件开发', '广东广州', '我喜欢', '审核通过', 6, 1);
INSERT INTO `applcation` VALUES (2, '爱心人士小李', '男', 25, '有经验', NULL, '17638166578', '未婚', '20000', '程序员', '上海闵行', '喜欢小动物,希望能领养做个伴', '待审核', 3, 5);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user_id` int NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '漂亮的小猫咪等待领养中。。。', '![a07df7a8ebb49831.jpg](http://localhost:9090/file/378c7b437d97448098e2a9ddc7972dec.jpg)\n6个月大的美琪，活泼可爱，亲人懂事，已绝育，已疫苗，已体内外驱虫，喜欢的就带它回家吧，仅限北京区域领养哦！！！', 1, '2023-07-22 22:32:14', '管理员');
INSERT INTO `article` VALUES (2, '很可爱的小猫猫，胆子有点小。', '![dfdbbb1dff3ec.jpg](http://localhost:9090/file/0c4bd7e3e7a14d95914f9b306bbe46d0.jpg)\n很可爱的小猫猫，胆子有点小。', 1, '2023-07-22 22:34:36', '管理员');
INSERT INTO `article` VALUES (3, '我想领养一只咪咪', '我想领养一只咪咪', 1, '2023-07-22 22:35:02', '管理员');
INSERT INTO `article` VALUES (4, '我想领养一只大猫', '![20230422002996.jpg](http://localhost:9090/file/2d0b02f20af54b0994cf9c72fddf5a06.jpg)\n\n有没这样的大猫,我想养一只', 5, '2024-01-12 22:35:09', 'itsource');

-- ----------------------------
-- Table structure for article_kp
-- ----------------------------
DROP TABLE IF EXISTS `article_kp`;
CREATE TABLE `article_kp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `read1` int NULL DEFAULT 0 COMMENT '阅读数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article_kp
-- ----------------------------
INSERT INTO `article_kp` VALUES (1, '宠物的健康', '宠物的健康需要我们时刻的关注，从饮食、生活和疫苗这些方面，都是关注。而且现在到了夏天，蚊虫滋生较多，我们也要常备宠物驱虫药水，防止被叮咬造成过敏的现象；注意宠物的饮食、日常习惯等等，观察是否有生病的现象，避免宠物生病。', '2023-07-22 22:45:22', 'http://localhost:9090/file/cf8458f32077471f9b35d0a5a19715c0.png', 0);
INSERT INTO `article_kp` VALUES (2, '宠物的照顾', '说起对于宠物的照顾，当然给到宠物一个安心舒适的睡觉环境，避免受环境影响，进而影响睡眠和健康。定时给宠物修剪毛发和指甲，定时给洗澡，带宠物散步；要做好宠物的卫生清洁，所以你一定要勤快，不要怕脏。这样宠物才会健康成长，不会滋生细菌和皮肤病等等。', '2023-07-22 22:46:08', 'http://localhost:9090/file/0498deb2c29c48639b7aa5a5634c2c01.png', 1);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复内容',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复时间',
  `pid` int NULL DEFAULT NULL COMMENT '父id',
  `article_id` int NULL DEFAULT NULL COMMENT '文章id',
  `type` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '好好，牛逼', '管理员', '2023-07-22 22:59:01', NULL, 6, 1);
INSERT INTO `comment` VALUES (2, '这只猫怎么样啊,是公的还是母的啊', 'itsource', '2024-01-12 22:36:19', NULL, 6, 1);
INSERT INTO `comment` VALUES (3, '牛皮，这是老虎啊', 'itsource', '2024-01-13 18:34:46', NULL, 4, 2);

-- ----------------------------
-- Table structure for donate
-- ----------------------------
DROP TABLE IF EXISTS `donate`;
CREATE TABLE `donate`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '捐款人',
  `goods` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '捐赠物资',
  `time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '捐款事件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of donate
-- ----------------------------
INSERT INTO `donate` VALUES (1, 'IT教程资源', '1000W狗粮', '2023-07-22 22:36:04');
INSERT INTO `donate` VALUES (2, '李四', '牛奶', '2023-07-22 22:37:46');

-- ----------------------------
-- Table structure for feed
-- ----------------------------
DROP TABLE IF EXISTS `feed`;
CREATE TABLE `feed`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '环境照片1',
  `img2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '环境照片2',
  `img3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '环境照片3',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `information` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '相关描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed
-- ----------------------------
INSERT INTO `feed` VALUES (1, 'http://localhost:9090/file/be6a7e47f2bb4a09b6d3c12516eef6eb.png', 'http://localhost:9090/file/bf2adc7b2a464c3ab168227579acf3b2.jpeg', 'http://localhost:9090/file/6fc1232056ad428289245dbeba6c78bc.jpeg', '救助站', '救助和喂养宠物');
INSERT INTO `feed` VALUES (2, 'http://localhost:9090/file/771af318653d4a5186dcfdb5d247787f.jpeg', 'http://localhost:9090/file/7ffdcb881f8b4706872ac517ca0b1a4b.jpeg', 'http://localhost:9090/file/5ad5da456c7f4c17893fd1789053eadf.jpg', '救助站', '救助和喂养宠物');

-- ----------------------------
-- Table structure for lost
-- ----------------------------
DROP TABLE IF EXISTS `lost`;
CREATE TABLE `lost`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '走失宠物名字',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '种类',
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `person` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `status1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '已丢失/带领回',
  `status2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '找回状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lost
-- ----------------------------
INSERT INTO `lost` VALUES (1, '花园', '猫', '母', '李先生', '18992646461', '已丢失', '未找到');
INSERT INTO `lost` VALUES (2, '小黑', '狗', '公', '老刘', '13622456328', '已丢失', '未找到');
INSERT INTO `lost` VALUES (3, '小强', '狗', '母', '老王', '13622456699', '已丢失', '未找到');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '日常须知', '由于我们现在是租用工厂改造成临时收容站，是在室内养猫和狗狗，地方很受限，无法容纳太多的猫狗，加上费用很高，我们将从2014年5月1日开始，不再接受领养人的 免费寄养服务，如果领养我们的 猫猫想送回来寄养，节假日需要提前3-5日预约，我们会视容纳情况再安排接收，并要求领养人在送回来寄养的猫猫同时要求带回其的疫苗卡，要签署寄养协议并按寄养天数缴纳寄养金或寄养押金；狗狗就不接收寄养服务了， 请领养人寻找深圳的各个宠物医院安排寄养，恳请我们的领养人理解和原谅。', '2023-07-21 23:38:20');

-- ----------------------------
-- Table structure for rescue
-- ----------------------------
DROP TABLE IF EXISTS `rescue`;
CREATE TABLE `rescue`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `addres` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '照片',
  `person` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `information` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '相关描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rescue
-- ----------------------------
INSERT INTO `rescue` VALUES (1, '救助站1号', '广东广州番禺区桃色公寓', 'http://localhost:9090/file/7847e6c3d581419997931b23db6b3de9.jpg', '李强', '13622458965', '救助宠物');
INSERT INTO `rescue` VALUES (2, '救助站2号', '广东深圳', 'http://localhost:9090/file/d2454d309d0d4e95b2ac84c6234264c4.jpg', '赵四', '17823655664', '救助宠物');
INSERT INTO `rescue` VALUES (3, '捡到一只东北虎', '东北', 'http://localhost:9090/file/2d0b02f20af54b0994cf9c72fddf5a06.jpg', '小光光', '11763817654', '是一只母老虎哦,想收养的联系我');

-- ----------------------------
-- Table structure for salvation
-- ----------------------------
DROP TABLE IF EXISTS `salvation`;
CREATE TABLE `salvation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `information` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '情况描述',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '现场照片',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '地点',
  `time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '发现时间',
  `person` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT '未解决' COMMENT '解决状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of salvation
-- ----------------------------
INSERT INTO `salvation` VALUES (1, '小区流浪猫，母猫已经奄奄一息，剩下刚出生3天的小猫...', 'http://localhost:9090/file/552020861fa84ea29c02edc96b7ccb9b.jpg', '佛山市三水区西南街道S263(广海大道)', '2023-07-22 22:04:53', '张三', '13622964586', '未解决');
INSERT INTO `salvation` VALUES (2, '捡到一只猫猫双腿和尾巴骨折，麻烦哪个好心人帮忙送它...', 'http://localhost:9090/file/84caa936db50480ebea0da8b5b708791.jpg', '揭阳市揭东区曲溪街道汇源路', '2023-07-22 22:05:59', '李四', '18312666554', '未解决');
INSERT INTO `salvation` VALUES (3, '小树林看到一只流浪熊猫,快要饿死了,有爱心人士 领养吗', 'http://localhost:9090/file/1341cacabc1444e78ac14f0bc2b0b674.jpg', '四川神农架', '2024-01-12 00:00:00', '不愿透露姓名的爱心人士', '17638177654', '未解决');

-- ----------------------------
-- Table structure for sterilization
-- ----------------------------
DROP TABLE IF EXISTS `sterilization`;
CREATE TABLE `sterilization`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `animal_id` int NULL DEFAULT NULL COMMENT '流浪动物id',
  `catch1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '捕捉状态',
  `sterilization` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '绝育状态',
  `release1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '放生状态',
  `vaccine` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '疫苗状态',
  `animal_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sterilization
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('user', 'el-icon-user', 'icon');
INSERT INTO `sys_dict` VALUES ('house', 'el-icon-house', 'icon');
INSERT INTO `sys_dict` VALUES ('menu', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` VALUES ('s-custom', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` VALUES ('s-grid', 'el-icon-s-grid', 'icon');
INSERT INTO `sys_dict` VALUES ('document', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` VALUES ('coffee', 'el-icon-coffee\r\n', 'icon');
INSERT INTO `sys_dict` VALUES ('s-marketing', 'el-icon-s-marketing', 'icon');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint NULL DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (37, 'keyboard.jpg', 'jpg', 169, 'http://localhost:9090/file/b8f9f9da831e458080a7907745dd08bf.jpg', '25f8eadc1cf2150cb557cc494354c499', 1, 1);
INSERT INTO `sys_file` VALUES (38, 'qq音乐.png', 'png', 445, 'http://localhost:9090/file/607a2175097b4164905bfb316f4b135d.png', '793fd534fa705475eb3358f68c87ec68', 1, 1);
INSERT INTO `sys_file` VALUES (39, 'courgette.log', 'log', 0, 'http://localhost:9090/file/7716acb75ec042baa0060e07e16c75ea.log', 'd41d8cd98f00b204e9800998ecf8427e', 1, 1);
INSERT INTO `sys_file` VALUES (40, 'mp.jpg', 'jpg', 32, 'http://localhost:9090/file/70882b6b03914e38b4b6a7e025bedd89.jpg', 'cb887a9d64563352edce80cf50296cc5', 1, 1);
INSERT INTO `sys_file` VALUES (41, 'spring.png', 'png', 4, 'http://localhost:9090/file/94112e8435cb4406bcbb8027c68075b1.png', '3e0089a8778351ae5c7bde6df7eb61fe', 1, 1);
INSERT INTO `sys_file` VALUES (42, 'manage.jpg', 'jpg', 74, 'http://localhost:9090/file/81dc2c4e43dd4470b7aa68e834a6710b.jpg', '16a137ade22505a118af8a386c8b4a51', 1, 1);
INSERT INTO `sys_file` VALUES (43, 'wx.jpg', 'jpg', 61, 'http://localhost:9090/file/24c8262ba9a3400da653cd46ce991b3d.jpg', '9b6af0e36fde3ae55f06e225a110d103', 1, 1);
INSERT INTO `sys_file` VALUES (44, 'coffee2.jpg', 'jpg', 119, 'http://localhost:9090/file/c774308c39a94ae78e77fa1f18f9ebe8.jpg', '748e2639d25445651172798cebf169ab', 1, 1);
INSERT INTO `sys_file` VALUES (45, 'java.png', 'png', 544, 'http://localhost:9090/file/95de6cb968744e4cbbe19d424d99af59.png', '06f01286858e8e4ed47746fbd194c0ae', 1, 1);
INSERT INTO `sys_file` VALUES (46, '1.jpg', 'jpg', 13, 'http://localhost:9090/file/17cfd74665364bdaa8632fe3a7afd8a2.jpg', 'd4c3baabf8b467c225b39207fea618b6', 1, 1);
INSERT INTO `sys_file` VALUES (47, 'boot.png', 'png', 423, 'http://localhost:9090/file/abae37ca1a6a4bc2acecdddaed9af142.png', 'c4f07569176f8d71b5c852587035dbaa', 1, 1);
INSERT INTO `sys_file` VALUES (48, '0e020e1337474a93ba3b43a75b2890ee.doc', 'doc', 47, 'http://localhost:9090/file/ecdd73c8d44b4b948e81cd4df8f2c59a.doc', '9ace4fac24420f85c753aa663009edb4', 1, 1);
INSERT INTO `sys_file` VALUES (49, '3.jpg', 'jpg', 22, 'http://localhost:9090/file/a2d2da19bde9429c96d2e627b0f03a64.jpg', 'fb96c7d2e7f999f5e604cdfaa62ba9b6', 1, 1);
INSERT INTO `sys_file` VALUES (50, '0e020e1337474a93ba3b43a75b2890ee.doc', 'doc', 47, 'http://localhost:9090/file/ecdd73c8d44b4b948e81cd4df8f2c59a.doc', '9ace4fac24420f85c753aa663009edb4', 1, 1);
INSERT INTO `sys_file` VALUES (51, 'SpringBoot集成支付宝沙箱支付.docx', 'docx', 1762, 'http://localhost:9090/file/cd0c67fcbb1a419aab7f1deaaa566f40.docx', '56f866f2e95e515deef34e62b03d8193', 1, 1);
INSERT INTO `sys_file` VALUES (52, 'p538187208.jpg', 'jpg', 221, 'http://localhost:9090/file/bbe13e7e29c94e8d8eff233d289741d3.jpg', '737061eeafa267e3af608f983fff892a', 1, 1);
INSERT INTO `sys_file` VALUES (53, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 1, 1);
INSERT INTO `sys_file` VALUES (54, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 1, 1);
INSERT INTO `sys_file` VALUES (55, '109951166671773481.jpg', 'jpg', 44, 'http://localhost:9090/file/7fb997978b95479aa3e53f459238fc8b.jpg', '56a572901fe4a518173143c79d0a2f96', 1, 1);
INSERT INTO `sys_file` VALUES (56, 'p538515362.jpg', 'jpg', 89, 'http://localhost:9090/file/840647717fb4487cb4a2d9e1c54228ea.jpg', '89d9271ce23e02ddaf5701504237e76c', 1, 1);
INSERT INTO `sys_file` VALUES (57, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 1, 1);
INSERT INTO `sys_file` VALUES (58, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 1, 1);
INSERT INTO `sys_file` VALUES (59, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 1, 1);
INSERT INTO `sys_file` VALUES (60, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 1, 1);
INSERT INTO `sys_file` VALUES (61, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 1, 1);
INSERT INTO `sys_file` VALUES (62, 'p538203308.jpg', 'jpg', 126, 'http://localhost:9090/file/886d7e8105f94b8b9984606acdc77384.jpg', '8f1b6e5de88a499d1bdb1411b8e74ce4', 1, 1);
INSERT INTO `sys_file` VALUES (63, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 1, 1);
INSERT INTO `sys_file` VALUES (64, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 1, 1);
INSERT INTO `sys_file` VALUES (65, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 1, 1);
INSERT INTO `sys_file` VALUES (66, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 1, 1);
INSERT INTO `sys_file` VALUES (67, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 1, 1);
INSERT INTO `sys_file` VALUES (68, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 1, 1);
INSERT INTO `sys_file` VALUES (69, 'p538203308.jpg', 'jpg', 126, 'http://localhost:9090/file/886d7e8105f94b8b9984606acdc77384.jpg', '8f1b6e5de88a499d1bdb1411b8e74ce4', 1, 1);
INSERT INTO `sys_file` VALUES (70, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 1, 1);
INSERT INTO `sys_file` VALUES (71, 'p538187208.jpg', 'jpg', 221, 'http://localhost:9090/file/bbe13e7e29c94e8d8eff233d289741d3.jpg', '737061eeafa267e3af608f983fff892a', 1, 1);
INSERT INTO `sys_file` VALUES (72, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 1, 1);
INSERT INTO `sys_file` VALUES (73, 'p538203308.jpg', 'jpg', 126, 'http://localhost:9090/file/886d7e8105f94b8b9984606acdc77384.jpg', '8f1b6e5de88a499d1bdb1411b8e74ce4', 1, 1);
INSERT INTO `sys_file` VALUES (74, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 1, 1);
INSERT INTO `sys_file` VALUES (75, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 1, 1);
INSERT INTO `sys_file` VALUES (76, 'p538515362.jpg', 'jpg', 89, 'http://localhost:9090/file/840647717fb4487cb4a2d9e1c54228ea.jpg', '89d9271ce23e02ddaf5701504237e76c', 1, 1);
INSERT INTO `sys_file` VALUES (77, '77.png', 'png', 6442, 'http://localhost:9090/file/d25f29bfcfa945699ba43b86ba022664.png', '2abeff668cc22d82af3a82f7a504c0bd', 1, 1);
INSERT INTO `sys_file` VALUES (78, 'bridge-3825439_960_720.webp', 'webp', 77, 'http://localhost:9090/file/b7f128f8b77a408c965f2c0480a538a8.webp', '0d3839f085078f34c159794e99b101c1', 1, 1);
INSERT INTO `sys_file` VALUES (79, '222.png', 'png', 1175, 'http://localhost:9090/file/78ba9a04853845dd819d442132cec41b.png', '1cf035b8f674c68a9fb999df10c49210', 1, 1);
INSERT INTO `sys_file` VALUES (80, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 1, 1);
INSERT INTO `sys_file` VALUES (81, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 1, 1);
INSERT INTO `sys_file` VALUES (82, '109951166671773481.jpg', 'jpg', 44, 'http://localhost:9090/file/7fb997978b95479aa3e53f459238fc8b.jpg', '56a572901fe4a518173143c79d0a2f96', 1, 1);
INSERT INTO `sys_file` VALUES (83, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 1, 1);
INSERT INTO `sys_file` VALUES (84, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 1, 1);
INSERT INTO `sys_file` VALUES (85, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 1, 1);
INSERT INTO `sys_file` VALUES (86, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 1, 1);
INSERT INTO `sys_file` VALUES (87, '3.jpg', 'jpg', 53, 'http://localhost:9090/file/0601b66bb2324a278664c0cda7c25668.jpg', 'aab7e79dc76783ab67dd5359b2b428d0', 1, 1);
INSERT INTO `sys_file` VALUES (88, '109951166950559389.jpg', 'jpg', 18, 'http://localhost:9090/file/6e8f37f7009e4d18a72e1970d2762faf.jpg', '773d42f1cc4fc27f29388571bf3bc8b3', 1, 1);
INSERT INTO `sys_file` VALUES (89, '1.png', 'png', 207, 'http://localhost:9090/file/8beeeb12b4424fd1b4cdb1afd26aded8.png', '7403cb6d0a219c49f70dbf6c1fcd896a', 0, 1);
INSERT INTO `sys_file` VALUES (90, 'avatars.jpg', 'jpg', 104, 'http://localhost:9090/file/4fc3b359b0214ccea78244369d1015ba.jpg', '175983b36fa4c3fe3859bae75b6a0e58', 0, 1);
INSERT INTO `sys_file` VALUES (91, '647ae43313940.jpg', 'jpg', 24, 'http://localhost:9090/file/2b9f0ea8d26e4b799fc0296aacbba89e.jpg', '8b3d8be18f550d437ecbb9876a2c7c38', 0, 1);
INSERT INTO `sys_file` VALUES (92, '647ae03f1364c.jpg', 'jpg', 28, 'http://localhost:9090/file/0032b0b010b0467ba3dca5debab29d11.jpg', '6bfb27c0f43bf62a82da1ae61f638a91', 0, 1);
INSERT INTO `sys_file` VALUES (93, '6479a45592eeb.jpg', 'jpg', 19, 'http://localhost:9090/file/1bec80e70bb548648062468685235ca4.jpg', '0d76c0e3bf0e7de3065d3c5bab3582b1', 0, 1);
INSERT INTO `sys_file` VALUES (94, '647addc679ade.jpg', 'jpg', 14, 'http://localhost:9090/file/2002c13aa21a448aae2074b8ececa6ef.jpg', 'bbdb790ca496508d2aa2aa9e7c4a0362', 0, 1);
INSERT INTO `sys_file` VALUES (95, '647847c05d1a0.png', 'png', 117, 'http://localhost:9090/file/ca07c512aefc4efc9e8c3ede5f95347c.png', 'f98723b9f1760f2f60507bad8f2e82b6', 0, 1);
INSERT INTO `sys_file` VALUES (96, '647ade2c5ff8d.jpg', 'jpg', 13, 'http://localhost:9090/file/96ae84db9e09468dafd6bc342daaa92a.jpg', 'a4ee7ea3774bae83fffb8b8a2569fbb0', 0, 1);
INSERT INTO `sys_file` VALUES (97, '6cc450b8412.jpg', 'jpg', 108, 'http://localhost:9090/file/552020861fa84ea29c02edc96b7ccb9b.jpg', '6abf691cc65938994681624e40c0b6f1', 0, 1);
INSERT INTO `sys_file` VALUES (98, 'e47474c734f03c.jpg', 'jpg', 112, 'http://localhost:9090/file/84caa936db50480ebea0da8b5b708791.jpg', 'bdce72c05951c47e5cdd3088794acb01', 0, 1);
INSERT INTO `sys_file` VALUES (99, '96d9edebb2dee47da97af1615bc70681.png', 'png', 1413, 'http://localhost:9090/file/be6a7e47f2bb4a09b6d3c12516eef6eb.png', '461c5a55597c7abf2dd848c3d365994a', 0, 1);
INSERT INTO `sys_file` VALUES (100, '0f968a2e311a537808481139c65030cb.jpeg', 'jpeg', 122, 'http://localhost:9090/file/bf2adc7b2a464c3ab168227579acf3b2.jpeg', 'ed388493664d0fa27b67467d4d972b58', 0, 1);
INSERT INTO `sys_file` VALUES (101, '82406a049fb4f642eadd6677f8215199.jpeg', 'jpeg', 97, 'http://localhost:9090/file/6fc1232056ad428289245dbeba6c78bc.jpeg', '04d0e0038983a503c481f1f50b1808d9', 0, 1);
INSERT INTO `sys_file` VALUES (102, '8d895394c07bbbca85085cf39cadd416.jpeg', 'jpeg', 254, 'http://localhost:9090/file/771af318653d4a5186dcfdb5d247787f.jpeg', 'a314876afd1439067dec94c9d118558b', 0, 1);
INSERT INTO `sys_file` VALUES (103, '081f95e1f8994aa8d06b5974f69c5441.jpeg', 'jpeg', 160, 'http://localhost:9090/file/7ffdcb881f8b4706872ac517ca0b1a4b.jpeg', '6bfed10d459c3c0f0d69e69ee89c7d5e', 0, 1);
INSERT INTO `sys_file` VALUES (104, '7045837342e88b91078da885ec0e776c.jpg', 'jpg', 437, 'http://localhost:9090/file/5ad5da456c7f4c17893fd1789053eadf.jpg', 'bfb5600387beea93b2ddabf879753367', 0, 1);
INSERT INTO `sys_file` VALUES (105, '62fqcLJAPlTDl.jpg', 'jpg', 329, 'http://localhost:9090/file/7847e6c3d581419997931b23db6b3de9.jpg', '48ad2aaf13ce27abfdb3796ce65e6225', 0, 1);
INSERT INTO `sys_file` VALUES (106, '62fqcLJAPlTDl.jpg', 'jpg', 329, 'http://localhost:9090/file/7847e6c3d581419997931b23db6b3de9.jpg', '48ad2aaf13ce27abfdb3796ce65e6225', 0, 1);
INSERT INTO `sys_file` VALUES (107, 'R7w_eSvenaTX.jpg', 'jpg', 574, 'http://localhost:9090/file/d2454d309d0d4e95b2ac84c6234264c4.jpg', '5adb1e3a0968f2e21d79d0a2090b2957', 0, 1);
INSERT INTO `sys_file` VALUES (108, 'a07df7a8ebb49831.jpg', 'jpg', 8, 'http://localhost:9090/file/378c7b437d97448098e2a9ddc7972dec.jpg', '65fd54f08e2baad0cec297ede0c221e5', 0, 1);
INSERT INTO `sys_file` VALUES (109, 'dfdbbb1dff3ec.jpg', 'jpg', 93, 'http://localhost:9090/file/0c4bd7e3e7a14d95914f9b306bbe46d0.jpg', 'f9811a78b1f0763433d7b2d1a988124a', 0, 1);
INSERT INTO `sys_file` VALUES (110, '0722224400.png', 'png', 846, 'http://localhost:9090/file/cf8458f32077471f9b35d0a5a19715c0.png', '180b837b35f3caed3850193a9ac7feb9', 0, 1);
INSERT INTO `sys_file` VALUES (111, '2224553.png', 'png', 609, 'http://localhost:9090/file/0498deb2c29c48639b7aa5a5634c2c01.png', '8ade822210c3b0c19c65d7d22c8cb58e', 0, 1);
INSERT INTO `sys_file` VALUES (112, '22224910.png', 'png', 963, 'http://localhost:9090/file/d99ce4c694034be9867b3dff04b6de01.png', 'a33354f58d1be501da3590f62dbeacf3', 0, 1);
INSERT INTO `sys_file` VALUES (113, 'avatars.jpg', 'jpg', 104, 'http://localhost:9090/file/4fc3b359b0214ccea78244369d1015ba.jpg', '175983b36fa4c3fe3859bae75b6a0e58', 0, 1);
INSERT INTO `sys_file` VALUES (114, 'avatars.jpg', 'jpg', 104, 'http://localhost:9090/file/4fc3b359b0214ccea78244369d1015ba.jpg', '175983b36fa4c3fe3859bae75b6a0e58', 0, 1);
INSERT INTO `sys_file` VALUES (115, 'avatars.jpg', 'jpg', 104, 'http://localhost:9090/file/4fc3b359b0214ccea78244369d1015ba.jpg', '175983b36fa4c3fe3859bae75b6a0e58', 0, 1);
INSERT INTO `sys_file` VALUES (116, 'avatars.jpg', 'jpg', 104, 'http://localhost:9090/file/4fc3b359b0214ccea78244369d1015ba.jpg', '175983b36fa4c3fe3859bae75b6a0e58', 0, 1);
INSERT INTO `sys_file` VALUES (117, 'avatars.jpg', 'jpg', 104, 'http://localhost:9090/file/4fc3b359b0214ccea78244369d1015ba.jpg', '175983b36fa4c3fe3859bae75b6a0e58', 0, 1);
INSERT INTO `sys_file` VALUES (118, '20230422002996.jpg', 'jpg', 398, 'http://localhost:9090/file/2d0b02f20af54b0994cf9c72fddf5a06.jpg', 'e10dba03b11fc1403d0856c40a49dca7', 0, 1);
INSERT INTO `sys_file` VALUES (119, '20230422002996.jpg', 'jpg', 398, 'http://localhost:9090/file/2d0b02f20af54b0994cf9c72fddf5a06.jpg', 'e10dba03b11fc1403d0856c40a49dca7', 0, 1);
INSERT INTO `sys_file` VALUES (120, '3fdccd1cf9654b629f97630109cc0d2d10.jpg', 'jpg', 114, 'http://localhost:9090/file/1341cacabc1444e78ac14f0bc2b0b674.jpg', '4d1c09325a2e481dd175e8758d45aa03', 0, 1);
INSERT INTO `sys_file` VALUES (121, '2.jpg', 'jpg', 17, 'http://localhost:9090/file/ead00ef87611413481b2c2a4536934f2.jpg', '599d42e12347d918ceeb6eaa4b0c47af', 0, 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `pid` int NULL DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '页面路径',
  `sort_num` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (4, '系统管理', NULL, 'el-icon-s-grid', NULL, NULL, NULL, 300);
INSERT INTO `sys_menu` VALUES (5, '用户管理', '/user', 'el-icon-user', NULL, 4, 'User', 301);
INSERT INTO `sys_menu` VALUES (6, '角色管理', '/role', 'el-icon-s-custom', NULL, 4, 'Role', 302);
INSERT INTO `sys_menu` VALUES (7, '菜单管理', '/menu', 'el-icon-menu', NULL, 4, 'Menu', 303);
INSERT INTO `sys_menu` VALUES (8, '文件管理', '/file', 'el-icon-document', NULL, 4, 'File', 304);
INSERT INTO `sys_menu` VALUES (10, '主页', '/home', 'el-icon-house', NULL, NULL, 'Home', 0);
INSERT INTO `sys_menu` VALUES (11, '流浪动物管理', '/animal', 'el-icon-menu', NULL, NULL, 'Animal', 999);
INSERT INTO `sys_menu` VALUES (12, '待绝育动物管理', '/sterilization', 'el-icon-menu', NULL, NULL, 'Sterilization', 999);
INSERT INTO `sys_menu` VALUES (13, '申请领养管理', '/applcation', 'el-icon-menu', NULL, NULL, 'Applcation', 999);
INSERT INTO `sys_menu` VALUES (14, '评论管理', '/comment', 'el-icon-menu', NULL, NULL, 'Comment', 999);
INSERT INTO `sys_menu` VALUES (15, '流浪动物救助', '/salvation', 'el-icon-menu', NULL, NULL, 'Salvation', 999);
INSERT INTO `sys_menu` VALUES (16, '喂养点管理', '/feed', 'el-icon-menu', NULL, NULL, 'Feed', 999);
INSERT INTO `sys_menu` VALUES (18, '动物走失管理', '/lost', 'el-icon-menu', NULL, NULL, 'Lost', 999);
INSERT INTO `sys_menu` VALUES (19, '救助站管理', '/rescue', 'el-icon-menu', NULL, NULL, 'Rescue', 999);
INSERT INTO `sys_menu` VALUES (20, '帖子管理', '/article', 'el-icon-menu', NULL, NULL, 'Article', 999);
INSERT INTO `sys_menu` VALUES (21, '捐赠管理', '/donate', 'el-icon-menu', NULL, NULL, 'Donate', 999);
INSERT INTO `sys_menu` VALUES (22, '公告管理', '/notice', 'el-icon-menu', NULL, NULL, 'Notice', 999);
INSERT INTO `sys_menu` VALUES (23, '科普文章管理', '/articleKp', 'el-icon-menu', NULL, NULL, 'ArticleKp', 999);
INSERT INTO `sys_menu` VALUES (24, '活动管理', '/activity', 'el-icon-menu', NULL, NULL, 'Activity', 999);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` VALUES (2, '普通用户', '普通用户', 'ROLE_USER');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (1, 21);
INSERT INTO `sys_role_menu` VALUES (1, 22);
INSERT INTO `sys_role_menu` VALUES (1, 23);
INSERT INTO `sys_role_menu` VALUES (1, 24);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 10);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出生年月',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '123456', '管理员', 'admin@qq.com', '13988997788', '安徽合肥', '2022-01-22 21:10:27', 'http://localhost:9090/file/4fc3b359b0214ccea78244369d1015ba.jpg', 'ROLE_ADMIN', '男', '1995-06-06');
INSERT INTO `sys_user` VALUES (2, 'zhang', '123456', '张张', 'zhang@qq.com', '13677889900', '南京', '2022-02-26 22:10:14', NULL, 'ROLE_USER', '女', '1995-06-06');
INSERT INTO `sys_user` VALUES (3, 'wang', '123456', '我是王五', 'wang@qq.com', '13877668855', '上海', '2022-02-26 22:10:18', 'http://localhost:9090/file/6e8f37f7009e4d18a72e1970d2762faf.jpg', 'ROLE_USER', '男', '1995-06-06');

SET FOREIGN_KEY_CHECKS = 1;
