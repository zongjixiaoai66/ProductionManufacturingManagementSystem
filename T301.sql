/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t301`;
CREATE DATABASE IF NOT EXISTS `t301` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t301`;

DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE IF NOT EXISTS `bumenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenfuzeren` varchar(200) DEFAULT NULL COMMENT '部门负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `bangongquyu` varchar(200) DEFAULT NULL COMMENT '办公区域',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='部门信息';

DELETE FROM `bumenxinxi`;
INSERT INTO `bumenxinxi` (`id`, `addtime`, `bumenmingcheng`, `bumenfuzeren`, `lianxidianhua`, `bangongquyu`) VALUES
	(21, '2022-04-04 03:25:50', '部门名称1', '部门负责人1', '13823888881', '办公区域1'),
	(22, '2022-04-04 03:25:50', '部门名称2', '部门负责人2', '13823888882', '办公区域2'),
	(23, '2022-04-04 03:25:50', '部门名称3', '部门负责人3', '13823888883', '办公区域3'),
	(24, '2022-04-04 03:25:50', '部门名称4', '部门负责人4', '13823888884', '办公区域4'),
	(25, '2022-04-04 03:25:50', '部门名称5', '部门负责人5', '13823888885', '办公区域5'),
	(26, '2022-04-04 03:25:50', '部门名称6', '部门负责人6', '13823888886', '办公区域6');

DROP TABLE IF EXISTS `chanpinxinxi`;
CREATE TABLE IF NOT EXISTS `chanpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `chanpinshuoming` longtext COMMENT '产品说明',
  `chanpintese` varchar(200) DEFAULT NULL COMMENT '产品特色',
  `chanpinguige` date DEFAULT NULL COMMENT '产品规格',
  `shiyongfanwei` varchar(200) DEFAULT NULL COMMENT '适用范围',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='产品信息';

DELETE FROM `chanpinxinxi`;
INSERT INTO `chanpinxinxi` (`id`, `addtime`, `chanpinbianhao`, `chanpinmingcheng`, `chanpinleixing`, `shuliang`, `jiage`, `chanpinshuoming`, `chanpintese`, `chanpinguige`, `shiyongfanwei`) VALUES
	(81, '2022-04-04 03:25:50', '1111111111', '产品名称1', '产品类型1', 1, 1, '产品说明1', '产品特色1', '2022-04-04', '适用范围1'),
	(82, '2022-04-04 03:25:50', '2222222222', '产品名称2', '产品类型2', 2, 2, '产品说明2', '产品特色2', '2022-04-04', '适用范围2'),
	(83, '2022-04-04 03:25:50', '3333333333', '产品名称3', '产品类型3', 3, 3, '产品说明3', '产品特色3', '2022-04-04', '适用范围3'),
	(84, '2022-04-04 03:25:50', '4444444444', '产品名称4', '产品类型4', 4, 4, '产品说明4', '产品特色4', '2022-04-04', '适用范围4'),
	(85, '2022-04-04 03:25:50', '5555555555', '产品名称5', '产品类型5', 5, 5, '产品说明5', '产品特色5', '2022-04-04', '适用范围5'),
	(86, '2022-04-04 03:25:50', '6666666666', '产品名称6', '产品类型6', 6, 6, '产品说明6', '产品特色6', '2022-04-04', '适用范围6');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/picture1.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `gongxuxinxi`;
CREATE TABLE IF NOT EXISTS `gongxuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongxumingcheng` varchar(200) DEFAULT NULL COMMENT '工序名称',
  `gongxuleixing` varchar(200) DEFAULT NULL COMMENT '工序类型',
  `gongxushizhang` varchar(200) DEFAULT NULL COMMENT '工序时长',
  `caozuoliucheng` longtext COMMENT '操作流程',
  `gongxufujian` varchar(200) DEFAULT NULL COMMENT '工序附件',
  `shiyongjiqi` varchar(200) DEFAULT NULL COMMENT '适用机器',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='工序信息';

DELETE FROM `gongxuxinxi`;
INSERT INTO `gongxuxinxi` (`id`, `addtime`, `gongxumingcheng`, `gongxuleixing`, `gongxushizhang`, `caozuoliucheng`, `gongxufujian`, `shiyongjiqi`, `zhuyishixiang`) VALUES
	(31, '2022-04-04 03:25:50', '工序名称1', '工序类型1', '工序时长1', '操作流程1', '', '适用机器1', '注意事项1'),
	(32, '2022-04-04 03:25:50', '工序名称2', '工序类型2', '工序时长2', '操作流程2', '', '适用机器2', '注意事项2'),
	(33, '2022-04-04 03:25:50', '工序名称3', '工序类型3', '工序时长3', '操作流程3', '', '适用机器3', '注意事项3'),
	(34, '2022-04-04 03:25:50', '工序名称4', '工序类型4', '工序时长4', '操作流程4', '', '适用机器4', '注意事项4'),
	(35, '2022-04-04 03:25:50', '工序名称5', '工序类型5', '工序时长5', '操作流程5', '', '适用机器5', '注意事项5'),
	(36, '2022-04-04 03:25:50', '工序名称6', '工序类型6', '工序时长6', '操作流程6', '', '适用机器6', '注意事项6');

DROP TABLE IF EXISTS `gongyixianlu`;
CREATE TABLE IF NOT EXISTS `gongyixianlu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) NOT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) NOT NULL COMMENT '产品名称',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  `gongyimingcheng` varchar(200) NOT NULL COMMENT '工艺名称',
  `jiagongyuanliao` longtext COMMENT '加工原料',
  `gongyiliucheng` longtext COMMENT '工艺流程',
  `gongzuoyuanli` longtext COMMENT '工作原理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='工艺线路';

DELETE FROM `gongyixianlu`;
INSERT INTO `gongyixianlu` (`id`, `addtime`, `chanpinbianhao`, `chanpinmingcheng`, `chanpinleixing`, `gongyimingcheng`, `jiagongyuanliao`, `gongyiliucheng`, `gongzuoyuanli`) VALUES
	(41, '2022-04-04 03:25:50', '产品编号1', '产品名称1', '产品类型1', '工艺名称1', '加工原料1', '工艺流程1', '工作原理1'),
	(42, '2022-04-04 03:25:50', '产品编号2', '产品名称2', '产品类型2', '工艺名称2', '加工原料2', '工艺流程2', '工作原理2'),
	(43, '2022-04-04 03:25:50', '产品编号3', '产品名称3', '产品类型3', '工艺名称3', '加工原料3', '工艺流程3', '工作原理3'),
	(44, '2022-04-04 03:25:50', '产品编号4', '产品名称4', '产品类型4', '工艺名称4', '加工原料4', '工艺流程4', '工作原理4'),
	(45, '2022-04-04 03:25:50', '产品编号5', '产品名称5', '产品类型5', '工艺名称5', '加工原料5', '工艺流程5', '工作原理5'),
	(46, '2022-04-04 03:25:50', '产品编号6', '产品名称6', '产品类型6', '工艺名称6', '加工原料6', '工艺流程6', '工作原理6');

DROP TABLE IF EXISTS `kehuxinxi`;
CREATE TABLE IF NOT EXISTS `kehuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `kehulaiyuan` varchar(200) DEFAULT NULL COMMENT '客户来源',
  `xingye` varchar(200) DEFAULT NULL COMMENT '行业',
  `guojiadiqu` varchar(200) DEFAULT NULL COMMENT '国家地区',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `kehudengji` varchar(200) DEFAULT NULL COMMENT '客户等级',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='客户信息';

DELETE FROM `kehuxinxi`;
INSERT INTO `kehuxinxi` (`id`, `addtime`, `kehumingcheng`, `kehulaiyuan`, `xingye`, `guojiadiqu`, `dianhua`, `dizhi`, `kehudengji`, `yuangonggonghao`) VALUES
	(61, '2022-04-04 03:25:50', '客户名称1', '业务员发展', '行业1', '国家地区1', '电话1', '地址1', '客户等级1', '员工工号1'),
	(62, '2022-04-04 03:25:50', '客户名称2', '业务员发展', '行业2', '国家地区2', '电话2', '地址2', '客户等级2', '员工工号2'),
	(63, '2022-04-04 03:25:50', '客户名称3', '业务员发展', '行业3', '国家地区3', '电话3', '地址3', '客户等级3', '员工工号3'),
	(64, '2022-04-04 03:25:50', '客户名称4', '业务员发展', '行业4', '国家地区4', '电话4', '地址4', '客户等级4', '员工工号4'),
	(65, '2022-04-04 03:25:50', '客户名称5', '业务员发展', '行业5', '国家地区5', '电话5', '地址5', '客户等级5', '员工工号5'),
	(66, '2022-04-04 03:25:50', '客户名称6', '业务员发展', '行业6', '国家地区6', '电话6', '地址6', '客户等级6', '员工工号6');

DROP TABLE IF EXISTS `shengchanjihua`;
CREATE TABLE IF NOT EXISTS `shengchanjihua` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) NOT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  `shengchanshuliang` int NOT NULL COMMENT '生产数量',
  `chanpintese` varchar(200) DEFAULT NULL COMMENT '产品特色',
  `chanpinguige` varchar(200) DEFAULT NULL COMMENT '产品规格',
  `shiyongfanwei` varchar(200) DEFAULT NULL COMMENT '适用范围',
  `shengchanjihua` longtext COMMENT '生产计划',
  `gongyimingcheng` varchar(200) DEFAULT NULL COMMENT '工艺名称',
  `gongxumingcheng` varchar(200) DEFAULT NULL COMMENT '工序名称',
  `dengjishijian` varchar(200) DEFAULT NULL COMMENT '登记时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='生产计划';

DELETE FROM `shengchanjihua`;
INSERT INTO `shengchanjihua` (`id`, `addtime`, `chanpinbianhao`, `chanpinmingcheng`, `chanpinleixing`, `shengchanshuliang`, `chanpintese`, `chanpinguige`, `shiyongfanwei`, `shengchanjihua`, `gongyimingcheng`, `gongxumingcheng`, `dengjishijian`, `yuangonggonghao`, `yuangongxingming`) VALUES
	(91, '2022-04-04 03:25:50', '产品编号1', '产品名称1', '产品类型1', 1, '产品特色1', '产品规格1', '适用范围1', '生产计划1', '工艺名称1', '工序名称1', '登记时间1', '员工工号1', '员工姓名1'),
	(92, '2022-04-04 03:25:50', '产品编号2', '产品名称2', '产品类型2', 2, '产品特色2', '产品规格2', '适用范围2', '生产计划2', '工艺名称2', '工序名称2', '登记时间2', '员工工号2', '员工姓名2'),
	(93, '2022-04-04 03:25:50', '产品编号3', '产品名称3', '产品类型3', 3, '产品特色3', '产品规格3', '适用范围3', '生产计划3', '工艺名称3', '工序名称3', '登记时间3', '员工工号3', '员工姓名3'),
	(94, '2022-04-04 03:25:50', '产品编号4', '产品名称4', '产品类型4', 4, '产品特色4', '产品规格4', '适用范围4', '生产计划4', '工艺名称4', '工序名称4', '登记时间4', '员工工号4', '员工姓名4'),
	(95, '2022-04-04 03:25:50', '产品编号5', '产品名称5', '产品类型5', 5, '产品特色5', '产品规格5', '适用范围5', '生产计划5', '工艺名称5', '工序名称5', '登记时间5', '员工工号5', '员工姓名5'),
	(96, '2022-04-04 03:25:50', '产品编号6', '产品名称6', '产品类型6', 6, '产品特色6', '产品规格6', '适用范围6', '生产计划6', '工艺名称6', '工序名称6', '登记时间6', '员工工号6', '员工姓名6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '6uc1mv75ththyc3qs1helu9atgmsc3nj', '2024-07-30 05:39:55', '2024-07-30 06:39:56'),
	(2, 11, '员工1', 'yuangong', '员工', 'phu9dv2j100fow5ahal2c0rxjsyn6n5b', '2024-07-30 05:40:55', '2024-07-30 06:40:56');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-04 03:25:50');

DROP TABLE IF EXISTS `wuliaoxinxi`;
CREATE TABLE IF NOT EXISTS `wuliaoxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuliaobianhao` varchar(200) DEFAULT NULL COMMENT '物料编号',
  `wuliaomingcheng` varchar(200) NOT NULL COMMENT '物料名称',
  `wuliaoleixing` varchar(200) NOT NULL COMMENT '物料类型',
  `wuliaoguige` varchar(200) DEFAULT NULL COMMENT '物料规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `wuliaoxiangqing` longtext COMMENT '物料详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuliaobianhao` (`wuliaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='物料信息';

DELETE FROM `wuliaoxinxi`;
INSERT INTO `wuliaoxinxi` (`id`, `addtime`, `wuliaobianhao`, `wuliaomingcheng`, `wuliaoleixing`, `wuliaoguige`, `tupian`, `shuliang`, `jiage`, `wuliaoxiangqing`) VALUES
	(51, '2022-04-04 03:25:50', '1111111111', '物料名称1', '物料类型1', '物料规格1', 'upload/wuliaoxinxi_tupian1.jpg', 1, 1, '物料详情1'),
	(52, '2022-04-04 03:25:50', '2222222222', '物料名称2', '物料类型2', '物料规格2', 'upload/wuliaoxinxi_tupian2.jpg', 2, 2, '物料详情2'),
	(53, '2022-04-04 03:25:50', '3333333333', '物料名称3', '物料类型3', '物料规格3', 'upload/wuliaoxinxi_tupian3.jpg', 3, 3, '物料详情3'),
	(54, '2022-04-04 03:25:50', '4444444444', '物料名称4', '物料类型4', '物料规格4', 'upload/wuliaoxinxi_tupian4.jpg', 4, 4, '物料详情4'),
	(55, '2022-04-04 03:25:50', '5555555555', '物料名称5', '物料类型5', '物料规格5', 'upload/wuliaoxinxi_tupian5.jpg', 5, 5, '物料详情5'),
	(56, '2022-04-04 03:25:50', '6666666666', '物料名称6', '物料类型6', '物料规格6', 'upload/wuliaoxinxi_tupian6.jpg', 6, 6, '物料详情6');

DROP TABLE IF EXISTS `xiaoshoudingdan`;
CREATE TABLE IF NOT EXISTS `xiaoshoudingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshoudanhao` varchar(200) DEFAULT NULL COMMENT '销售单号',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `xiaoshoushuliang` int DEFAULT NULL COMMENT '销售数量',
  `zongxiaoshoue` int DEFAULT NULL COMMENT '总销售额',
  `xiaoshoushijian` datetime DEFAULT NULL COMMENT '销售时间',
  `beizhu` longtext COMMENT '备注',
  `kehumingcheng` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshoudanhao` (`xiaoshoudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='销售订单';

DELETE FROM `xiaoshoudingdan`;
INSERT INTO `xiaoshoudingdan` (`id`, `addtime`, `xiaoshoudanhao`, `chanpinbianhao`, `chanpinmingcheng`, `chanpinleixing`, `jiage`, `xiaoshoushuliang`, `zongxiaoshoue`, `xiaoshoushijian`, `beizhu`, `kehumingcheng`, `dianhua`, `dizhi`, `yuangonggonghao`, `yuangongxingming`) VALUES
	(71, '2022-04-04 03:25:50', '1111111111', '产品编号1', '产品名称1', '产品类型1', 1, 1, 1, '2022-04-04 11:25:50', '备注1', '客户名称1', '电话1', '地址1', '员工工号1', '员工姓名1'),
	(72, '2022-04-04 03:25:50', '2222222222', '产品编号2', '产品名称2', '产品类型2', 2, 2, 2, '2022-04-04 11:25:50', '备注2', '客户名称2', '电话2', '地址2', '员工工号2', '员工姓名2'),
	(73, '2022-04-04 03:25:50', '3333333333', '产品编号3', '产品名称3', '产品类型3', 3, 3, 3, '2022-04-04 11:25:50', '备注3', '客户名称3', '电话3', '地址3', '员工工号3', '员工姓名3'),
	(74, '2022-04-04 03:25:50', '4444444444', '产品编号4', '产品名称4', '产品类型4', 4, 4, 4, '2022-04-04 11:25:50', '备注4', '客户名称4', '电话4', '地址4', '员工工号4', '员工姓名4'),
	(75, '2022-04-04 03:25:50', '5555555555', '产品编号5', '产品名称5', '产品类型5', 5, 5, 5, '2022-04-04 11:25:50', '备注5', '客户名称5', '电话5', '地址5', '员工工号5', '员工姓名5'),
	(76, '2022-04-04 03:25:50', '6666666666', '产品编号6', '产品名称6', '产品类型6', 6, 6, 6, '2022-04-04 11:25:50', '备注6', '客户名称6', '电话6', '地址6', '员工工号6', '员工姓名6');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `yuangonggonghao`, `mima`, `yuangongxingming`, `xingbie`, `bumen`, `zhiwei`, `ruzhishijian`, `lianxifangshi`, `youxiang`, `shenfenzheng`) VALUES
	(11, '2022-04-04 03:25:50', '员工1', '123456', '员工姓名1', '男', '部门1', '职位1', '2022-04-04', '13823888881', '773890001@qq.com', '440300199101010001'),
	(12, '2022-04-04 03:25:50', '员工2', '123456', '员工姓名2', '男', '部门2', '职位2', '2022-04-04', '13823888882', '773890002@qq.com', '440300199202020002'),
	(13, '2022-04-04 03:25:50', '员工3', '123456', '员工姓名3', '男', '部门3', '职位3', '2022-04-04', '13823888883', '773890003@qq.com', '440300199303030003'),
	(14, '2022-04-04 03:25:50', '员工4', '123456', '员工姓名4', '男', '部门4', '职位4', '2022-04-04', '13823888884', '773890004@qq.com', '440300199404040004'),
	(15, '2022-04-04 03:25:50', '员工5', '123456', '员工姓名5', '男', '部门5', '职位5', '2022-04-04', '13823888885', '773890005@qq.com', '440300199505050005'),
	(16, '2022-04-04 03:25:50', '员工6', '123456', '员工姓名6', '男', '部门6', '职位6', '2022-04-04', '13823888886', '773890006@qq.com', '440300199606060006');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
