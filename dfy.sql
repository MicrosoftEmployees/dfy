/*
Navicat MySQL Data Transfer

Source Server         : 139.199.60.99
Source Server Version : 50553
Source Host           : 139.199.60.99:3306
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-02-14 13:40:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dfy_bx
-- ----------------------------
DROP TABLE IF EXISTS `dfy_bx`;
CREATE TABLE `dfy_bx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Fyid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `Note` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MaterialName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MaterialPrc` double DEFAULT NULL,
  `TotalCharge` double unsigned DEFAULT NULL,
  `MaintenanceState` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MaintenanceNote` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Userid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user1` (`Fyid`),
  CONSTRAINT `fk` FOREIGN KEY (`Fyid`) REFERENCES `dfy_fy` (`Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dfy_bx
-- ----------------------------
INSERT INTO `dfy_bx` VALUES ('21', '1545181175510', '简铭阳', '17195876544', '灯泡炸了啊', '已上门', '', '0', '0', 'null', '', '老实巴交的陶可可', '2019-01-07 11:39:59');
INSERT INTO `dfy_bx` VALUES ('22', '1545181175510', '叶涛', '12345678901', '厕所炸了啊', '已完结', '1', '1', '4584', 'null', '78787487878746546546', 'test', '2018-12-26 09:13:43');
INSERT INTO `dfy_bx` VALUES ('23', '1545181175510', '章银辉', '12312312312', '床坏了', '已上门', '电话费', '0', '0', '维修完成', '以通知海尔官方上门维修', 'test', '2018-12-26 15:56:15');
INSERT INTO `dfy_bx` VALUES ('24', '1545180860589', '沈俊威', '12345678901', '网炸了', '已完结', '0', '0', '0', null, '', null, '2018-12-26 08:49:22');
INSERT INTO `dfy_bx` VALUES ('25', '1545180860589', '沈俊威', '12345678901', '网又炸了', '已上门', '0', '0', '0', null, '', null, '2018-12-26 08:49:00');

-- ----------------------------
-- Table structure for dfy_fy
-- ----------------------------
DROP TABLE IF EXISTS `dfy_fy`;
CREATE TABLE `dfy_fy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Number` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BriefIntroduction` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Rent` double(255,2) DEFAULT NULL,
  `Acreage` double(255,2) DEFAULT NULL,
  `Floor` int(255) NOT NULL,
  `Renovation` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Longitude` double(255,12) DEFAULT NULL,
  `Latitude` double(255,12) DEFAULT NULL,
  `Community` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Introduce` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `State` varchar(255) COLLATE utf8_bin DEFAULT '空置',
  `UpdateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `Number` (`Number`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dfy_fy
-- ----------------------------
INSERT INTO `dfy_fy` VALUES ('55', '1545180050577', '东部新城林肯公园 精装公寓出租', '880.00', '29.00', '3', '精装', '29.807450000000', '121.606940000000', '眼镜叔叔公寓1201', '浙江省宁波市鄞州区 ', '一、房源优势：1、全明格局，客厅宽敞大气；2、热门地段，热门楼层；3、家私家电齐全，提包入住； 二、户型介绍：1、格局方正，使用率高达90%.2、客厅宽敞舒适、落地阳台让充足的阳光不留余地的闯进来.3、厨房宽敞，让您和家人有足够的空间展现私家厨艺.4、连接客厅和厨房之间是您和家人享受美味的餐厅，让您热情的招待亲朋好友. 三、社区介绍：1、环境优美，适宜居住，人文素质高，物业管理完善，小区治安好.2、小区属于低密度社区，非常适宜居住.', '空置', '2018-12-19 12:24:07');
INSERT INTO `dfy_fy` VALUES ('56', '1545180291276', '新出 桃源小区 5楼 清爽装修2房 2000元 拎包入住', '2000.00', '70.00', '5', '简装', '29.891840000000', '121.558930000000', '桃源小区2幢502', '浙江省宁波市江北区日湖公园旁', '新出 桃源小区 5楼 清爽装修2房 2000元 拎包入住。', '空置', '2018-12-19 08:49:16');
INSERT INTO `dfy_fy` VALUES ('57', '1545180560852', '集士港丰成新村多套单间一室一厅出租', '1100.00', '40.00', '16', '简装', '29.863470000000', '121.462490000000', '丰成村新村3幢1603', '浙江省宁波市海曙区工贸四路与集横路交叉口西150米', '房东直租无*，集士港丰成新村多套单间独立厨卫一室一厅出租900至1100元，小区配套齐全，交通方便对面就是菜市场和大卖场。', '空置', '2018-12-19 08:52:57');
INSERT INTO `dfy_fy` VALUES ('58', '1545180860589', '南部银泰城 格兰春天 婚装三房 全新装修 基本未住 手次出租', '5500.00', '130.00', '17', '婚装', '29.793972015000', '121.545440674000', '格兰春天二期2幢1701', '浙江省宁波市鄞州区句章东路998号', '房源真实，图片真实，楼层好，全新婚装，房东在外地基本未住，家电齐全拎包入住，欢迎竭诚为您服务.', '空置', '2018-12-19 08:56:49');
INSERT INTO `dfy_fy` VALUES ('59', '1545181175510', '学校寝室学生福利出租', '500.00', '40.00', '5', '白坯', '29.916887283000', '121.620376587000', '浙江纺织服装职业技术学院-生活区4#522', '浙江省宁波市镇海区风华路495号', '咸鱼住的地方', '已出租', '2018-12-19 09:00:45');
INSERT INTO `dfy_fy` VALUES ('60', '1545612502979', '镇海庄市公元世家 朝南一室带大阳台 基本全新拎包可入住', '1000.00', '30.00', '9', '精装', '29.918550000000', '121.620630000000', '公元世家西区', '浙江省宁波市镇海区清泉路255号', '目前我主做庄市所有出租房！如果有看中的租房房子，欢迎随时来电。市场紧俏，每个版块的房源其实很少，下面为诸君提供庄市所有租房参考数据：一房：800元-1600元，按装修，面积，楼层不同情况定价；两房：1600元-3600元，按面积，装修，楼层不同情况定价；三房：2300元-4500元，按面积，装修，楼层不同情况定价；四房：3000元-4500元，按面积，装修，楼层不同情况定价；租房注意事项：检查煤气，水电接口，签订有效合法合同。看房速约，欲租从速！', '空置', '2018-12-24 09:04:37');
INSERT INTO `dfy_fy` VALUES ('61', '1545805794989', '龙湖滟澜海岸套二房 拎包入住 简装出租+包物业', '1800.00', '94.00', '22', '精装', '29.766930000000', '121.916020000000', '龙湖滟澜海岸22号楼', '浙江省宁波市北仑区滨海新城洋沙山春晓大道明月湖畔', '大学：宁波市北仑区学院；宁波市北仑区社会主义学院\r\n中：宁波市北仑三山\r\n幼儿园：春晓镇海口幼儿园\r\n商场：新港商务广场\r\n邮局：春晓邮政支局\r\n银行：中国银行(春晓支行)\r\n医院：春晓镇社区卫生服务中心(三双段)-\r\n其他：东海湿地公园、国际游艇基地、五酒店、洋沙山风景区、港口博物馆、游艇产业、森林公园、九峰山景区、综合医院、滨海新城国际等', '空置', '2018-12-26 14:31:18');
INSERT INTO `dfy_fy` VALUES ('62', '1545805823288', '合生精装一室一厅，安静舒适，看房方便', '1200.00', '30.00', '9', '精装', '29.929460000000', '121.635540000000', '合生国际城', '浙江省宁波市镇海区钟包路1号', '本人手上有大量租赁房源，住宅、公寓，1室，2室，3室，4室等等都有，有要换房子的朋友可以联系我电话：13216650014，微信同号。\r\n精装1室800-1500\r\n精装2室1500-3500\r\n精装3室2000-4000\r\n精装4室3000-5000', '空置', '2018-12-26 14:32:44');
INSERT INTO `dfy_fy` VALUES ('63', '1545805887600', '全新精装，家电齐全', '1500.00', '30.00', '9', '简装', '29.886860000000', '121.828650000000', '鸿翔锦园15号楼', '浙江省宁波市北仑区通泰路193弄', '大学：宁波职业技术学院\r\n中：大碶博平\r\n幼儿园：泰河幼儿园、大矸凯兴幼儿园\r\n商场：三江购物霞浦商场\r\n邮局：清水邮政所\r\n银行：邮政储蓄银行清水支行、中国光大银行(中河路)、交通银行(黄山路)\r\n医院：和平医院、开发区医院\r\n其他：中心公园、仓海一栗公园', '空置', '2018-12-26 14:32:57');
INSERT INTO `dfy_fy` VALUES ('64', '1545806029119', '镇海中学旁边鼓楼广场公寓', '1800.00', '50.00', '4', '简装', '29.953880000000', '121.718140000000', '镇海鼓楼广场', '浙江省宁波市镇海区龚家弄南侧(近大教场路)', '该房源位于镇海中学附近*路程.房子全新装修.交通便利，环境好，周边配套设施齐全。欢迎*：13906695212 翁女士', '空置', '2018-12-26 14:34:59');
INSERT INTO `dfy_fy` VALUES ('65', '1545806143318', '婚装，拎包入住，楼层好', '2500.00', '86.00', '5', '婚装', '29.801050000000', '121.639820000000', '钱湖人家', '浙江省宁波市鄞州区莫高路', '婚装，拎包入住，环境好，房东要求租客要干净', '空置', '2018-12-26 14:36:50');
INSERT INTO `dfy_fy` VALUES ('66', '1545806285636', '南部商务区 万达广场附近 万科金色水岸 婚装首租 拎包入住', '4800.00', '138.00', '7', '婚装', '29.817720000000', '121.527560000000', '万科金色水岸(西区)', '浙江省宁波市鄞州区百梁南路28号', '主要负责：下塘曙光苑、景瑞红翎台、景瑞望府、米兰公馆、格兰春天、陈坡度、鲍家耷、景瑞上府、都市丽湾、荣安琴湾、馨悦家园、和顺家园、和悦家园、和韵家园、风格南岸、锦悦湾花苑、罗蒙环球公寓、荣安月圆、风格首岸、江湾府第、城南华府、新中宇维萨、中海雍城世家、南裕二期、南裕小区、学府1号、学府苑、城市摩尔、同心苑、香堤水岸、银河湾、九曲小区、华府美郡花园、盛世新都、万科金域华府、万科金色水岸、金地国际花园、四季云顶、中基理想城、繁裕新村、繁裕三村、繁裕二村、葛家新村、金庭家园、钟盈小区、钟盈新村、联盛广场、天裕家', '空置', '2018-12-26 14:39:27');
INSERT INTO `dfy_fy` VALUES ('67', '1545806378843', '婚装，家具家电都是全新的，首。次出租，附送车位', '3500.00', '90.00', '7', '婚装', '29.822680000000', '121.593380000000', '上上城', '浙江省宁波市鄞州区', '房东婚装才一年，因长期在外地工作，割爱出租，家具家电家厨都是全新的，有个车位可以免费使用', '空置', '2018-12-26 14:40:53');
INSERT INTO `dfy_fy` VALUES ('68', '1545806460335', '婚装出租 高新 皇冠花园五和苑 庄和 江南一品附近 齐和家园', '3400.00', '70.00', '5', '婚装', '29.890810000000', '121.625600000000', '齐和家园', '浙江省宁波市鄞州区丹桂路与创苑路交汇处', '【周边配套】：文化广场，银泰城广场，老庙菜市场，高新实验，李惠利，中国银行，浦发银行，建设银行，邮政银行，宁波银行，农业银行，，m6生鲜，兄弟大食，华润万家，新华书店，。等周边配套齐全', '空置', '2018-12-26 14:42:06');
INSERT INTO `dfy_fy` VALUES ('69', '1545806533536', '香格里拉婚装108平 3房1卫 印象城 宾江商业广场旁', '3700.00', '108.00', '2', '婚装', '29.850010000000', '121.556300000000', '香格里拉城市花园东区', '浙江省宁波市鄞州区桃源街359弄', '	本人专做香格里拉！白鹤新村！飞虹新村！甬兴新村！天茂公寓！米兰公馆！钱湖天地！金桥水岸！世纪花园', '空置', '2018-12-26 14:43:08');
INSERT INTO `dfy_fy` VALUES ('70', '1545806622908', '婚装初次出租，品牌家具家电，温馨舒适，房东只租年轻爱家的人', '2600.00', '86.00', '8', '婚装', '29.858860000000', '121.455390000000', '缘园', '浙江省宁波市海曙区机场路以西,望春路以南,联丰路以北', '该房户型方正：朝南大阳台采光好，家具家电齐全，干净清爽，温馨舒适，拎包入住。', '空置', '2018-12-26 14:44:47');
INSERT INTO `dfy_fy` VALUES ('71', '1545806720878', '世茂东一简装三房 干净整洁 价格可谈 看房方便', '2100.00', '100.00', '4', '简装', '31.380200000000', '121.055250000000', '世茂·东壹号', '江苏省苏州市昆山市开发区前进东路233号', '世茂东一简装三房 干净整洁 价格可谈 看房方便 欢迎', '空置', '2018-12-26 14:46:51');
INSERT INTO `dfy_fy` VALUES ('72', '1545806818392', '世纪城汀兰苑，简装家具家电齐全，拎包入住包物业，水电网络', '2000.00', '91.00', '16', '简装', '30.334220000000', '121.221470000000', '汀兰苑', '浙江省宁波市慈溪市滨海四路与滨海大道交汇处东北角', '世纪城汀兰苑，简装家具家电齐全，拎包入住包物业，水电网络  联系人：刘士鑫  联系电话： 133 55 94 0468     微信同号 ', '空置', '2018-12-26 14:49:14');
INSERT INTO `dfy_fy` VALUES ('73', '1545807046367', '洋江水岸  全新毛坯出租  4室2厅2卫', '2900.00', '126.00', '1', '白坯', '29.803240000000', '121.590160000000', '洋江水岸', '浙江省宁波市鄞州区', '洋江水岸 全新毛坯126平平出租，位佳*楼层，2900一月，诚心客户，长期租半年一交价格可谈。', '空置', '2018-12-26 14:57:19');
INSERT INTO `dfy_fy` VALUES ('74', '1545807309930', '齐和家园五和苑旁涨浦景苑毛坯2房70平有空调有衣柜，简单入住', '1600.00', '68.00', '14', '白坯', '29.895150000000', '121.607980000000', '涨浦景苑', '浙江省宁波市鄞州区甬江大道2188号', '多路公交车，班次频繁，日常出行方便快捷。 周边信息编辑本段 幼儿园：东方幼儿园、梅墟幼儿园；中小学：梅墟中心小学、信懋学校、树人学校；大学：宁波大学；商场：加贝超市、梅墟菜场、利民百货商场、华联超市；医院：梅墟医院、四明园大药房、现代健康大药房；邮局：梅墟邮政所银行：鄞州银行、工商银行；其他：新世界名流俱乐部；小区内部配套：小区内部配有景观设施绿化', '空置', '2018-12-26 14:58:48');
INSERT INTO `dfy_fy` VALUES ('75', '1545807539859', '高新 民和家园 毛坯 价格1500元 看房预约 急租', '1500.00', '67.00', '15', '白坯', '29.899590000000', '121.656180000000', '民和家园', '浙江省宁波市鄞州区云杉路234号', '小区位场，金沙码头奥莱 商业完善，地段成熟！银行，学校，菜场，大型超市，公交线路一应俱全，非常方便！', '空置', '2018-12-26 15:00:37');
INSERT INTO `dfy_fy` VALUES ('76', '1545807700450', '利时广场，万宝城，红星国际出租毛坯两室一厅', '1600.00', '89.00', '4', '白坯', '29.985602000000', '121.584644000000', '红星国际广场', '浙江省宁波市镇海区慈海北路汶骆路交汇处西北侧', '红星广场出租两室一厅毛坯房1600元包物业，附近有大型商场，KTV等，可包租，可租五年', '空置', '2018-12-26 15:02:44');
INSERT INTO `dfy_fy` VALUES ('77', '1545807890664', '云龙嘉苑三期全新毛坯2室2厅1卫70平1300元/月付三押一', '1300.00', '70.00', '2', '白坯', '29.773830000000', '121.607940000000', '云龙嘉苑东区', '浙江省宁波市鄞州区云龙镇长山江路99号', '小区环境好，出门有公交车站，下面超市饭店，学校，宾馆，菜场生活便利！', '空置', '2018-12-26 15:05:55');
INSERT INTO `dfy_fy` VALUES ('78', '1545807977632', '急租：东湖馨园毛坯2室 中间楼层 南北通透 有钥匙 看房方便', '2500.00', '66.00', '4', '白坯', '29.830700000000', '121.566610000000', '东湖馨园', '浙江省宁波市鄞州区堇山中路22', '急租：东湖馨园毛坯2室 中间楼层 南北通透 有钥匙 看房方便，租期一年 可员工宿舍 ', '空置', '2018-12-26 15:07:29');
INSERT INTO `dfy_fy` VALUES ('79', '1545808090862', '翰香景庭  邻近宁波大学 简装4室 家电齐全拎包入住可做饭', '2600.00', '108.00', '7', '简装', '29.921500000000', '121.641990000000', '翰香景庭', '浙江省宁波市镇海区逸夫路217号', '小区简述：翰香景庭物业管理相当完善，生活环境优雅，完善的配套让您的生活更 舒适、安逸。', '空置', '2018-12-26 15:09:07');
INSERT INTO `dfy_fy` VALUES ('80', '1545808170468', '天沁家园 简装 样样有', '2200.00', '76.00', '3', '简装', '29.920620000000', '121.546620000000', '天沁家园', '浙江省宁波市江北区天沁路341号', '天沁家园 稍有的装修好的房子，东西样样有，即可\r\n随时看房', '空置', '2018-12-26 15:10:13');
INSERT INTO `dfy_fy` VALUES ('81', '1545808224157', '一洲东岸简装三房 客厅大 空间广 价格实惠', '2400.00', '130.00', '8', '简装', '29.767406464000', '121.911018372000', '一洲东岸小区', '浙江省宁波市北仑区春晓街道观海路500号', ' 一洲东岸简装三房 客厅大 空间广 价格实惠 欢迎* 看房方便！', '空置', '2018-12-26 15:12:34');
INSERT INTO `dfy_fy` VALUES ('82', '1545808385681', '华泰剑桥三室一厅一卫房子房子金装 可随时入住 年前大优惠了', '3800.00', '120.00', '3', '精装', '29.823210000000', '121.566430000000', '华泰剑桥·康河流水', '浙江省宁波市鄞州区贸城中路18弄', '房子性价比是你想要的 只要你诚心 没有我找不到的房子', '空置', '2018-12-26 15:13:59');
INSERT INTO `dfy_fy` VALUES ('83', '1545808480115', '湖景花园 金装保养佳 刚出房源 2室2厅 家电齐全 拎包入住', '6000.00', '90.00', '7', '精装', '29.893550000000', '121.558250000000', '湖景花园-南门', '浙江省宁波市江北区清湖路58号', '	没有十全十美的房子，只有适合自己的，感觉合适了，就可以下手了。等来等去只会让别人抢去。好房不等人！', '空置', '2018-12-26 15:15:26');
INSERT INTO `dfy_fy` VALUES ('84', '1545808571465', '东湖花园三室一厅一卫房子金装 适合一家人入住 房子好', '4300.00', '135.00', '4', '精装', '29.324800000000', '121.448170000000', '湖东花园', '浙江省宁波市宁海县竹口中心幼儿园西南(桃源北路东)', '好位置好价格是需要抢的  靠近印象城 万达 钱湖天地 步行*  房子* 是你的不二选择                                                                         房间性价比很高 适合一家人入住  欢迎各位入住  ', '空置', '2018-12-26 15:17:14');

-- ----------------------------
-- Table structure for dfy_ht
-- ----------------------------
DROP TABLE IF EXISTS `dfy_ht`;
CREATE TABLE `dfy_ht` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Money` double DEFAULT NULL,
  `Month` int(20) DEFAULT NULL,
  `Fyid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ImgUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `StatrtTime` date DEFAULT NULL,
  `EndTime` date DEFAULT NULL,
  `Deposit` double(12,2) DEFAULT NULL,
  `Struts` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Note` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user4` (`Userid`),
  KEY `fy1` (`Fyid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dfy_ht
-- ----------------------------
INSERT INTO `dfy_ht` VALUES ('3', '老实巴交的陶可可', '1000', '12', '1541682878353', 'https://www.agshuma.com/php/Api/upload/1546791851.jpg', '2018-12-26', '2019-12-25', '5000.00', '正常', '押金押一付三,微信支付 已入账', '2019-01-07 00:24:11');
INSERT INTO `dfy_ht` VALUES ('4', 'dddd', '1000', '2', '1545181175510', 'https://www.agshuma.com/php/Api/upload/ht01.jpg', '2018-12-13', '2019-01-24', '3000.00', '正常', '押金押一付三,支付宝支付 已经入账', '2018-12-26 15:11:51');
INSERT INTO `dfy_ht` VALUES ('5', 'test', '1000', '2', '1545180560852', 'https://www.agshuma.com/php/Api/upload/1545797844.jpg', '2018-12-04', '2019-01-17', '3000.00', '正常', '押金押一付三,支付宝支付 已经入账', '2018-12-26 12:22:31');
INSERT INTO `dfy_ht` VALUES ('6', '简', '3000', '12', '1545180050577', 'https://www.agshuma.com/php/Api/upload/1545798789.jpg', '2018-12-26', '2019-12-25', '3000.00', '正常', '押金押一付三,qq钱包支付', '2018-12-26 12:33:19');
INSERT INTO `dfy_ht` VALUES ('7', 'pqc', '1500', '12', '1545806143318', 'https://www.agshuma.com/php/Api/upload/1545810955.jpg', '2018-12-26', '2019-12-26', '1000.00', '正常', '押金押一付三', '2018-12-26 15:55:55');

-- ----------------------------
-- Table structure for dfy_sifei
-- ----------------------------
DROP TABLE IF EXISTS `dfy_sifei`;
CREATE TABLE `dfy_sifei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fyid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `number` double(11,2) DEFAULT NULL,
  `count` double DEFAULT NULL,
  `State` varchar(255) COLLATE utf8_bin DEFAULT '未缴费',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dfy_sifei
-- ----------------------------
INSERT INTO `dfy_sifei` VALUES ('2', '44444', '1545181175510', '宽带费', '151.00', '20', '已缴费', '2019-01-06 20:44:56');
INSERT INTO `dfy_sifei` VALUES ('3', '陶可成', '2147483647', '电费', '20.00', '2', '已缴费', '2018-12-26 09:39:05');
INSERT INTO `dfy_sifei` VALUES ('4', '沈俊威', '2147483647', '电费', '5.00', '2', '未缴费', '2018-12-26 08:37:28');
INSERT INTO `dfy_sifei` VALUES ('5', '叶涛', '154518005057', '电费', '5.00', '2', '未缴费', '2018-12-26 08:49:57');
INSERT INTO `dfy_sifei` VALUES ('6', '沈俊威', '2147483647', '水费', '5.00', '2', '未缴费', '2018-12-26 08:50:45');
INSERT INTO `dfy_sifei` VALUES ('7', '张三', '154580614331', '电费', '50.00', '20', '已缴费', '2018-12-26 15:58:11');
INSERT INTO `dfy_sifei` VALUES ('8', null, '1545180050577', '电费', '5.00', '2', '未缴费', '2019-01-07 00:17:47');

-- ----------------------------
-- Table structure for dfy_tp
-- ----------------------------
DROP TABLE IF EXISTS `dfy_tp`;
CREATE TABLE `dfy_tp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fyid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `imageurl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IsMainImg` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `fy2` (`fyid`),
  CONSTRAINT `fk_pk` FOREIGN KEY (`fyid`) REFERENCES `dfy_fy` (`Number`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dfy_tp
-- ----------------------------
INSERT INTO `dfy_tp` VALUES ('8', '1545180050577', 'https://www.agshuma.com/php/Api/upload/27.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('9', '1545180291276', 'https://www.agshuma.com/php/Api/upload/28.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('10', '1545180560852', 'https://www.agshuma.com/php/Api/upload/29.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('11', '1545180860589', 'https://www.agshuma.com/php/Api/upload/30.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('12', '1545181175510', 'https://www.agshuma.com/php/Api/upload/1545799507.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('13', '1545612502979', 'https://www.agshuma.com/php/Api/upload/1545799529.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('14', '1545180291276', 'https://www.agshuma.com/php/Api/upload/1.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('15', '1545180560852', 'https://www.agshuma.com/php/Api/upload/2.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('16', '1545180860589', 'https://www.agshuma.com/php/Api/upload/3.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('17', '1545181175510', 'https://www.agshuma.com/php/Api/upload/4.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('18', '1545612502979', 'https://www.agshuma.com/php/Api/upload/5.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('19', '1545805794989', 'https://www.agshuma.com/php/Api/upload/6.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('20', '1545805823288', 'https://www.agshuma.com/php/Api/upload/7.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('21', '1545805887600', 'https://www.agshuma.com/php/Api/upload/8.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('22', '1545806029119', 'https://www.agshuma.com/php/Api/upload/9.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('23', '1545806143318', 'https://www.agshuma.com/php/Api/upload/10.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('24', '1545806285636', 'https://www.agshuma.com/php/Api/upload/11.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('25', '1545806622908', 'https://www.agshuma.com/php/Api/upload/12.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('26', '1545806720878', 'https://www.agshuma.com/php/Api/upload/13.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('27', '1545806818392', 'https://www.agshuma.com/php/Api/upload/14.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('28', '1545807046367', 'https://www.agshuma.com/php/Api/upload/15.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('29', '1545807309930', 'https://www.agshuma.com/php/Api/upload/16.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('30', '1545807539859', 'https://www.agshuma.com/php/Api/upload/17.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('31', '1545807700450', 'https://www.agshuma.com/php/Api/upload/18.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('32', '1545807890664', 'https://www.agshuma.com/php/Api/upload/19.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('33', '1545807977632', 'https://www.agshuma.com/php/Api/upload/20.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('34', '1545808571465', 'https://www.agshuma.com/php/Api/upload/21.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('35', '1545808090862', 'https://www.agshuma.com/php/Api/upload/22.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('36', '1545808170468', 'https://www.agshuma.com/php/Api/upload/23.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('37', '1545808224157', 'https://www.agshuma.com/php/Api/upload/24.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('38', '1545808385681', 'https://www.agshuma.com/php/Api/upload/25.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('39', '1545808480115', 'https://www.agshuma.com/php/Api/upload/26.jpg', '1');
INSERT INTO `dfy_tp` VALUES ('40', '1545180050577', 'https://www.agshuma.com/php/Api/upload/1546792007.jpg', '2');
INSERT INTO `dfy_tp` VALUES ('41', '1545180050577', 'https://www.agshuma.com/php/Api/upload/1546792482.jpg', '2');

-- ----------------------------
-- Table structure for dfy_user
-- ----------------------------
DROP TABLE IF EXISTS `dfy_user`;
CREATE TABLE `dfy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(15) COLLATE utf8_bin NOT NULL,
  `Pwd` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rootid` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `Fyid` varchar(255) COLLATE utf8_bin DEFAULT '0',
  `Token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`UserName`) USING BTREE,
  KEY `root1` (`rootid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dfy_user
-- ----------------------------
INSERT INTO `dfy_user` VALUES ('57', '老实巴交的陶可可', '123456', '123456', '维修师傅', '1541682878353', '5516156165165');
INSERT INTO `dfy_user` VALUES ('58', 'test', '123456', '15658219150', '超级管理员', '1545612502979', null);
INSERT INTO `dfy_user` VALUES ('59', 'dddd', '123456', '17195876544', '协议用户', '1545181175510', null);
INSERT INTO `dfy_user` VALUES ('62', '121', '123456', '17195876544', '一般员工', '1545181175510', null);
INSERT INTO `dfy_user` VALUES ('66', '简', '123456', '17195876544', '超级管理员', '-1', null);
INSERT INTO `dfy_user` VALUES ('67', 'pqc', '123456', '123456', '协议用户', '1545806143318', null);
INSERT INTO `dfy_user` VALUES ('68', 'test1', '123456', '123456', '协议用户', '1545180050577', null);

-- ----------------------------
-- Procedure structure for GetAllFy
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetAllFy`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetAllFy`(IN Price INT,
	IN SortCom INT,
	IN SortComAsc INT,
	IN lon DOUBLE,
	IN lat DOUBLE,
	IN Distance INT,
	IN Renovation VARCHAR (255),
	IN Residence VARCHAR (255))
BEGIN
	DECLARE
		localLon DOUBLE DEFAULT 0;

DECLARE
	localLat  DOUBLE DEFAULT 0;

DECLARE
	PriceBegin INTEGER DEFAULT 0;

DECLARE
	PriceEnd INTEGER DEFAULT 0;

DECLARE
	AcreageBegin INTEGER DEFAULT 0;

DECLARE
	sqlstr VARCHAR(255) DEFAULT "";

DECLARE
	AcreageBeginEnd INTEGER DEFAULT 0;
IF(SortCom=1 and SortComAsc=1) THEN
set sqlstr="dfy_fy.Rent ASC";
ELSEIF(SortCom=1 and SortComAsc=2)THEN
set sqlstr="dfy_fy.Rent DESC";
ELSEIF(SortCom=2 and SortComAsc=1)THEN
set sqlstr="dfy_fy.Rent DESC";
end if;

IF (Residence = '一居室') THEN

SET AcreageBegin = 0;


SET AcreageBeginEnd = 30;


ELSEIF (Residence = '二居室') THEN

SET AcreageBegin = 31;


SET AcreageBeginEnd = 70;


ELSEIF (Residence = '三居室') THEN

SET AcreageBegin = 71;


SET AcreageBeginEnd = 120;


ELSEIF (
	Residence = '一居室二居室'
) THEN

SET AcreageBegin = 0;


SET AcreageBeginEnd = 70;


ELSEIF (
	Residence = '一居室三居室'
) THEN

SET AcreageBegin = 0;


SET AcreageBeginEnd = 120;


ELSEIF (
	Residence = '二居室三居室'
) THEN

SET AcreageBegin = 71;


SET AcreageBeginEnd = 120;


ELSE

SET AcreageBegin = 0;


SET AcreageBeginEnd = 999;


END
IF;


IF (Price = 0) THEN

SET PriceBegin = 0;


SET PriceEnd = 99999;


ELSEIF (Price = 1) THEN

SET PriceBegin = 0;


SET PriceEnd = 1499;


ELSEIF (Price = 2) THEN

SET PriceBegin = 1500;


SET PriceEnd = 2500;
ELSEIF (Price = 3) THEN

SET PriceBegin = 2501;


SET PriceEnd = 3500;
ELSEIF (Price = 4) THEN

SET PriceBegin = 3501;


SET PriceEnd = 4500;
ELSEIF (Price = 5) THEN

SET PriceBegin = 4501;


SET PriceEnd = 99999;
END
IF;


IF (Distance = 1) THEN

SET localLon = lon + 0.0045;
SET localLat = lat + 0.0035;
set @lon=lon-0.0045;
set @lat=lat-0.0035;
ELSEIF (Distance = 2) THEN
SET localLon = lon + 0.009;
SET localLat = lat + 0.007;
set @lon=lon-0.009;
set @lat=lat-0.007;
ELSEIF (Distance = 3) THEN

SET localLon = lon + 0.018;


SET localLat = lat + 0.014;
set @lon=lon-0.0018;
set @lat=lat-0.0014;
ELSEIF (Distance = 4) THEN

SET localLon = lon + 0.036;


SET localLat = lat + 0.028;
set @lon=lon-0.0036;
set @lat=lat-0.0028;
ELSEIF (Distance = 5) THEN

SET localLon = lon+ 5;


SET localLat = lat + 5;
set @lon=lon-5;
set @lat=lat-5;
END
IF;

SELECT
  dfy_fy.id,
	dfy_fy.Number,

dfy_fy.Acreage,

dfy_fy.Address,

dfy_fy.BriefIntroduction,

dfy_fy.Rent,

dfy_tp.imageurl
FROM
	dfy_fy
JOIN dfy_tp ON dfy_fy.Number = dfy_tp.fyid
WHERE
	dfy_tp.IsMainImg = 1
AND State = '空置'
AND dfy_fy.Renovation = Renovation
AND (
	dfy_fy.Rent BETWEEN PriceBegin
	and PriceEnd
)
AND (
	dfy_fy.Acreage BETWEEN AcreageBegin
	and AcreageBeginEnd
)
AND (
	dfy_fy.Longitude BETWEEN @lat
	and localLat
)
AND (
	dfy_fy.Latitude BETWEEN @lon
	and localLon
)+sqlstr;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SetMainImg
-- ----------------------------
DROP PROCEDURE IF EXISTS `SetMainImg`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SetMainImg`(IN srid INT,
	IN srfyid VARCHAR (255))
BEGIN

DECLARE result_code INTEGER DEFAULT 0;

-- 定义返回结果并赋初值0
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
SET result_code = 1;

-- 在执行过程中出任何异常设置result_code为1
UPDATE dfy_tp
SET dfy_tp.IsMainImg = 2
WHERE
	dfy_tp.fyid = srfyid;



UPDATE dfy_tp
SET dfy_tp.IsMainImg = 1
WHERE
	dfy_tp.id = srid;

IF result_code = 1 THEN
	ROLLBACK;


END
IF;

SELECT
	result_code;


END
;;
DELIMITER ;
