-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 05 月 23 日 21:50
-- 服务器版本: 5.1.63
-- PHP 版本: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `51ddjzsql2015`
--

-- --------------------------------------------------------

--
-- 表的结构 `d_admins`
--

CREATE TABLE IF NOT EXISTS `d_admins` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `free` tinyint(1) NOT NULL DEFAULT '0',
  `locks` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` varchar(15) NOT NULL,
  `realname` varchar(8) NOT NULL,
  `area_id` varchar(100) NOT NULL,
  `powers` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `d_admins`
--

INSERT INTO `d_admins` (`id`, `username`, `password`, `free`, `locks`, `lastip`, `realname`, `area_id`, `powers`) VALUES
(1, 'admin', 'd1e349c925d64c879e3e38298', 1, 1, '127.0.0.1', '杨丽', '2,3,4', 'all'),
(3, '王琼', '39dd207c84082f4ced9c652cf', 1, 1, '', '王琼', '1,2,3,4,6', 'Index|index,Admins|person_info,Member|index,Member|addmember,Member|hislist,Member|warning,Member|frozen,Member|limit,Member|search,Member|membergrade,Company|index,Company|addcompany,Company|editcompany_u,Company|companyinfo,Company|compattr,Company|companyshow,Company|counts,Company|comptype,Company|visit,Company|addvisit,Company|companyjobs,Company|companyjobsh,Company|memor,Company|addmemor,Company|delmemor,Company|blist,Company|addblist,Company|area,Company|industry,School|index,Jobs|index,Jobs|addjobs,Jobs|editjobs,Jobs|editauditing,Jobs|topz,Jobs|copyz,Jobs|jobnamelist,Jobs|addjobnamelist,Jobs|addjobnamelist2,Jobs|editjobnamelist,Trains|index,Trains|addtrains,Trains|edittrains,Jobs|editauditing,Trains|trainsnamelist,Trains|addtrainsnamelist,Trains|addtrainsnamelist2,Trains|edittrainsnamelist,Notice|index,Notice|addnotice,Notice|editnotice'),
(5, '陈媛媛', '0a5defe16756d981c79f67d61', 1, 1, '', '陈媛媛', '1,2,3,4,6', 'Index|index,Admins|person_info,Member|index,Member|addmember,Member|editmember_u,Member|memberinfo,Member|hislist,Member|frozen,Member|search,Member|counts,Member|membergrade,Company|companyjobs,Company|companyjobsh,School|index,School|addschool,School|editschool,School|campus,School|addcampus,School|editcampus,School|major,School|addmajor,School|editmajor,Jobs|index,Trains|index,Notice|index'),
(4, '刘春风', '74856c1a863e64dee5bbc9a4a', 0, 0, '', '刘春风', '1,2,3,4,6', 'Index|index,Admins|person_info,Member|index,Member|addmember,Member|hislist,Member|warning,Member|frozen,Member|limit,Member|search,Company|index,Company|addcompany,Company|editcompany_u,Company|companyinfo,Company|compattr,Company|companyshow,Company|counts,Company|comptype,Company|visit,Company|addvisit,Company|companyjobs,Company|companyjobsh,Company|memor,Company|addmemor,Company|delmemor,Company|blist,Company|addblist,Company|area,Company|industry,School|index,Jobs|index,Jobs|addjobs,Jobs|editjobs,Jobs|editauditing,Jobs|topz,Jobs|copyz,Jobs|jobnamelist,Jobs|addjobnamelist,Jobs|addjobnamelist2,Jobs|editjobnamelist,Trains|index,Trains|addtrains,Trains|edittrains,Jobs|editauditing,Trains|trainsnamelist,Trains|addtrainsnamelist,Trains|addtrainsnamelist2,Trains|edittrainsnamelist'),
(6, '毛亚英', '74856c1a863e64dee5bbc9a4a', 0, 0, '', '毛亚英', '1,2,3,4,6', 'Index|index,Admins|person_info,Member|index,Member|addmember,Member|hislist,Member|warning,Member|limit,Member|search,Member|membergrade,Company|index,Company|addcompany,Company|editcompany_u,Company|companyinfo,Company|compattr,Company|companyshow,Company|counts,Company|comptype,Company|visit,Company|addvisit,Company|companyjobs,Company|companyjobsh,Company|memor,Company|addmemor,Company|delmemor,Company|blist,Company|addblist,Company|area,Company|industry,School|index,School|major,Jobs|index,Jobs|addjobs,Jobs|editjobs,Jobs|editauditing,Jobs|topz,Jobs|copyz,Jobs|jobnamelist,Jobs|addjobnamelist,Jobs|addjobnamelist2,Jobs|editjobnamelist,Trains|index,Trains|addtrains,Trains|edittrains,Jobs|editauditing,Trains|trainsnamelist,Trains|addtrainsnamelist,Trains|addtrainsnamelist2,Trains|edittrainsnamelist,Notice|index'),
(7, '潘兵', 'bba94276bc0b396e58192b7e5', 1, 1, '', '潘兵', '1,2,3,4,6', 'Index|index,Admins|person_info,Member|index,Member|addmember,Member|hislist,Member|warning,Member|limit,Member|search,Member|membergrade,Company|index,Company|addcompany,Company|editcompany_u,Company|companyinfo,Company|compattr,Company|companyshow,Company|counts,Company|comptype,Company|visit,Company|addvisit,Company|companyjobs,Company|companyjobsh,Company|memor,Company|addmemor,Company|delmemor,Company|blist,Company|addblist,Company|area,Company|industry,School|index,Jobs|index,Jobs|addjobs,Jobs|editjobs,Jobs|editauditing,Jobs|topz,Jobs|copyz,Jobs|jobnamelist,Jobs|addjobnamelist,Jobs|addjobnamelist2,Jobs|editjobnamelist,Trains|index,Trains|addtrains,Trains|edittrains,Jobs|editauditing,Trains|trainsnamelist,Trains|addtrainsnamelist,Trains|addtrainsnamelist2,Trains|edittrainsnamelist,Notice|index'),
(8, '销售文员', '8196d65a176c629e233cb5bb8', 1, 1, '', '销售文员', '1,2,3,4,6', 'Index|index,Admins|person_info,Member|index,Member|addmember,Member|hislist,Member|frozen,Member|search,Member|counts,Member|membergrade,Company|companyjobs,Company|companyjobsh,School|index,School|major,Notice|index');

-- --------------------------------------------------------

--
-- 表的结构 `d_area`
--

CREATE TABLE IF NOT EXISTS `d_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `ad_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `d_area`
--

INSERT INTO `d_area` (`id`, `title`, `ad_id`) VALUES
(1, '区域A', 1),
(2, '区域B', 1),
(3, '区域C', 1),
(4, '区域D', 1),
(6, '不限', 0);

-- --------------------------------------------------------

--
-- 表的结构 `d_banner`
--

CREATE TABLE IF NOT EXISTS `d_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bantitle` varchar(99) DEFAULT NULL,
  `banimg` varchar(200) DEFAULT NULL,
  `banto` varchar(200) DEFAULT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `d_banner`
--

INSERT INTO `d_banner` (`id`, `bantitle`, `banimg`, `banto`, `addtime`) VALUES
(8, '', './Public/upload/431252762.jpg', '', 0),
(9, '', './Public/upload/431252206.jpg', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `d_blist`
--

CREATE TABLE IF NOT EXISTS `d_blist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `com_id` int(10) NOT NULL,
  `ad_id` smallint(5) NOT NULL,
  `addtime` int(10) NOT NULL,
  `reason` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='企业黑名单' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `d_blist`
--


-- --------------------------------------------------------

--
-- 表的结构 `d_campus`
--

CREATE TABLE IF NOT EXISTS `d_campus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `scho_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `d_campus`
--

INSERT INTO `d_campus` (`id`, `name`, `scho_id`) VALUES
(2, '南校区', 1),
(3, '老校区', 1),
(4, '本部', 14),
(5, '机电学院', 14),
(7, '皖江学院', 1),
(8, '南校区', 15),
(9, '北校区', 15),
(10, '南校区', 16),
(11, '北校区', 16),
(12, '本部', 22),
(13, '本部', 17),
(14, '本部', 18),
(15, '本部', 19),
(16, '南校区', 21),
(17, '北校区', 21),
(18, '本部', 27);

-- --------------------------------------------------------

--
-- 表的结构 `d_company`
--

CREATE TABLE IF NOT EXISTS `d_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `cinfo` text NOT NULL,
  `coop` smallint(5) NOT NULL DEFAULT '0' COMMENT '合作',
  `route` varchar(300) DEFAULT NULL COMMENT '路线',
  `attr` tinyint(1) NOT NULL DEFAULT '1' COMMENT '属性',
  `chttp` varchar(50) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `cooptime` int(10) DEFAULT NULL,
  `stoptime` int(10) DEFAULT '0' COMMENT '终止合作时间',
  `important` tinyint(1) NOT NULL DEFAULT '0' COMMENT '重点企业',
  `locktime` int(10) DEFAULT '0' COMMENT '锁定时间',
  PRIMARY KEY (`id`),
  KEY `coop` (`coop`),
  KEY `attr` (`attr`),
  KEY `important` (`important`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=401 ;

--
-- 转存表中的数据 `d_company`
--

INSERT INTO `d_company` (`id`, `uid`, `addr`, `cinfo`, `coop`, `route`, `attr`, `chttp`, `remarks`, `cooptime`, `stoptime`, `important`, `locktime`) VALUES
(3, 5, '镜湖区步行街新百大厦', '镜湖区步行街新百大厦镜湖区步行街新百大厦镜湖区步行街新百大厦44www', 1, '42路，4路，18路', 1, '', '', 1428508800, 0, 1, 0),
(17, 28, '安徽省芜湖市鸠江区赭山东路1号', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;苏果超市是江苏最大的连锁超市企业，在全国连锁企业当中已连续11年位列前十强，全国快速消费品零售企业前四强。&lt;/span&gt;', 0, '45', 1, '', '招促销员', NULL, 0, 0, 0),
(12, 18, '实得分', '是大方的说法实得分', 0, '45好', 1, '', '', NULL, 0, 0, 0),
(16, 24, '华亿南商务楼', '&lt;span style=&quot;color:#666666;font-family:''Hiragino Sans GB'', ''WenQuanYi Micro Hei'', tahoma, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;墨池舞蹈位于步行街，店内装修精致大方，教练员更是专业中的专业，店内主推少年，成年人拉丁舞，爵士舞，芭蕾舞。&lt;/span&gt;', 0, '24/26/37', 1, '', '现招各种舞蹈老师', NULL, 0, 0, 0),
(15, 22, '步行街', '零售电子产品等', 0, '37 24', 1, '', '', NULL, 0, 0, 0),
(18, 29, '长江南路81号', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;集团下设四个具有独立法人资格的有限责任公司：芜湖金丝鸟服饰有限责任公司、芜湖市舒雅制衣有限责任公司、芜湖红树林羽绒制品有限责任公司和大地绣品责任有限公司。&lt;/span&gt;', 0, '26、48', 1, '', '做服装包装', NULL, 0, 0, 0),
(19, 30, '伟星时代金融中心', '&lt;span style=&quot;font-size:13px;color:#000000;font-family:arial;line-height:20px;background-color:#FFFFFF;&quot;&gt;杭州顶津&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;食品有限公司是顶新国际集团康师傅控股下最早的饮品生产基地,负责华东地区饮料的生产及销售&lt;/span&gt;', 0, '32路', 1, '', '招男女生长期促销员，有时需要到外地工作', NULL, 0, 0, 0),
(20, 31, '芜湖市镜湖区广济寺小九华广场5-2', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;新长征培优学院是创新型的教育咨询服务机构，倡导每个学生都能成为优等生的理念，运用教育心理学、应用心理学、发展心理学的最新研究成果，研发针对性的心理疏导、记忆力特训、厌学症特训等专项课程，配合各门学科课程和特长课程辅导，充分发挥学生个体的特长和潜能，帮助优秀生更卓越、帮助中差生变优良，最终达到培优目标。&lt;/span&gt;', 0, '10', 1, '', '长期会需要发单人员，每次都少量', NULL, 0, 0, 0),
(21, 35, '安徽芜湖镜湖联盛广场2A24-2A25', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;芜湖速联信息咨询服部，主打DM单页精准投递，我们有专业的投递队伍,高效率的管理执行团队,让您的DM单页精准覆盖的您的目标客户!&lt;/span&gt;', 0, '32路', 1, '', '经常需要派单人员', NULL, 0, 0, 0),
(22, 36, '芜湖市鸠江区赤铸山东路华强文化科技产业园', '方特一期和二期，这个负责人是在招聘2期的，应该是2期的人事负责人', 0, '45', 1, '', '0553-2295499', NULL, 0, 0, 0),
(23, 37, '欧亚达家居', '&lt;p style=&quot;text-indent:26.25pt;&quot; class=&quot;MsoNormal&quot;&gt;\r\n	一直秉持以满足或超越客户期望为公司的终极目标，秉承突破、创意、风格、细心的专业设计精神，致力于发展室内环境设计。\r\n&lt;/p&gt;', 0, '88', 1, '', '刚开的新公司，需要宣传人员，可定期拜访', NULL, 0, 0, 0),
(24, 38, '欧亚达正元家具', '&lt;span style=&quot;color:#000000;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;专业从事客厅卧室&lt;/span&gt;&lt;span style=&quot;color:#000000;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;家具产品的研究、开发、生产与销售。致力于为全球家庭提供舒适、安全、环保、人性化的客厅及卧室&lt;/span&gt;&lt;span style=&quot;color:#000000;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;产品。&lt;/span&gt;', 0, '88', 1, '', '需要零促人员和一些派单人员', NULL, 0, 0, 0),
(25, 39, '九华中路', '&lt;span style=&quot;color:#333333;font-family:宋体, SimSun;font-size:14px;line-height:27px;background-color:#FAFDFF;&quot;&gt;前身为芜湖国美画室，具备独立的法人资格和办学许可证，现已发展成一所集高考文化课、高考美术、音乐、体育舞蹈、摄影、播音主持、表演、编导、空乘、模特等艺术专业课程为一体的综合性学校，是安徽省内办学最早、管理最规范、本科升学率最高、学生和家长最信赖的品牌学校。&lt;/span&gt;', 0, '10/24/32', 1, '', '每周会需要去外地做宣传的人员，一般周一去，可以在双休的时候拜访一下', NULL, 0, 0, 0),
(26, 40, '芜湖市步行街金鼎大厦金瑞阁', '&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;是一家集专业设计、精确预算、精湛施工、环保材料、完善售后服务于一体的正规化工程设计公司，主要从事公寓别墅、办公楼、娱乐、商业空间设计与施工。&lt;/span&gt;\r\n&lt;/p&gt;', 0, '24/37', 1, '', '需要一些派单宣传人员', NULL, 0, 0, 0),
(27, 41, '福海国际家具博览中心', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;专业生产儿童、英式、美式、简欧等多种风格的家具产品&lt;/span&gt;', 0, '24/32/37', 1, '', '有时活动会需要一些发单引导人员', NULL, 0, 0, 0),
(28, 42, '福海国际家居博览中心', '&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	主要生产板式套房家具、实木家具、床垫、沙发、软床和定制衣柜、工程家具等系列产品\r\n&lt;/p&gt;', 0, '24/32/37', 1, '', '有活动时，会需要一些罚单引导人员', NULL, 0, 0, 0),
(29, 43, '新芜路', '四月下旬，在新芜路刚开的一家餐饮店', 0, '24、37', 1, '', '需要宣传人员，外卖卡的派送', NULL, 0, 0, 0),
(30, 44, '新时代商业街', '&lt;span style=&quot;color:#333333;font-family:Verdana, Arial, Tahoma;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;是由南京博尔乐家居实业有限公司投资兴建的集厨房家具研发、设计、生产、制造、销售为一体的国内知名行业品牌&lt;/span&gt;', 0, '24/32', 1, '', '在家装节时，找我们要过话务员', NULL, 0, 0, 0),
(31, 45, '安师大新校区防空洞口', '在安徽师范大学花津校区内的一家眼镜店', 0, '10/24/32/37', 1, '', '不定期会需要一些扫楼发单人员，做眼镜店的宣传', NULL, 0, 0, 0),
(32, 46, '步行街金鼎大厦金鼎阁', '&lt;span style=&quot;color:#666666;font-family:Arial, 宋体, sans-serif;line-height:29px;background-color:#FFFFFF;&quot;&gt;长期招收学员，影楼班，精英班，新娘班，创业班，美甲班，子弟班，全科班，美容美发，摄影！&lt;/span&gt;', 0, '24/37', 1, '', '培训机构，不定期会需要一些宣传人员', NULL, 0, 0, 0),
(33, 47, '黄山中路162号二院对面', '&lt;span style=&quot;color:#222C2F;font-family:微软雅黑;line-height:23px;background-color:#FFFFFF;&quot;&gt;开设中小学生，成人书画，高考美术培训，艺术类高考文化课培训，以及学历教育培训&lt;/span&gt;', 0, '10/26', 1, '', '有时会需要宣传发单人员和人像模特', NULL, 0, 0, 0),
(34, 48, '弋江嘉园二期西门', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;专业从事会展布置，婚庆布置，公展策划，设备租赁等一体的广告公司&lt;/span&gt;', 0, '17/20', 1, '', '会场布置，搭建一些广告，曾有学生过去拧螺丝', NULL, 0, 0, 0),
(35, 49, '步行街金鼎大厦鑫龙阁702室', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;主要从事中小学生一对一个性化课外辅导&lt;/span&gt;', 0, '24/37', 1, '', '需要宣传人员，电话邀约人员', NULL, 0, 0, 0),
(36, 50, '星隆国际城3楼', '&lt;span style=&quot;color:#282828;font-family:Arial, 宋体;font-size:14px;line-height:28px;&quot;&gt;“奇乐儿主题公园”概念店是奇乐儿系列游乐园的新一代儿童游乐项目&lt;/span&gt;', 0, '24/26/37', 1, '', '在五一开业期间，向我们要了发单引导人员，和穿玩偶服的工作人员', NULL, 0, 0, 0),
(37, 51, '二街', '九阳小家电的销售', 0, '24', 1, '', '需要零促人员，有时会下到县里做活动', NULL, 0, 0, 0),
(38, 52, '星隆国际城', '眼镜工厂店，五一期间在星隆国际城开业', 0, '24/26/37', 1, '', '开业期间要了五名工作人员，学生说有点累', NULL, 0, 0, 0),
(39, 53, '弋江区芜石路1号,7', '&lt;span style=&quot;color:#555555;font-family:宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:宋体, sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;设计、制作、发布、代理国内各类广告；喷绘写真；货架设计；展览展示服务；大型活动策&lt;/span&gt;&lt;/span&gt;', 0, '50路', 1, '', '', NULL, 0, 0, 0),
(40, 56, '芜湖经济开发区凤鸣湖北路30号', '&lt;span style=&quot;font-family:Verdana, Arial;font-size:13px;line-height:23px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-family:Verdana, Arial;font-size:13px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖新泉汽车饰件系统有限公司系江苏常州新泉汽车内饰件有限公司2006年6月投资兴建一家与母公司同管理理念的新公司，&lt;/span&gt;主要生产汽车仪表板、门饰板等内饰件产品。&lt;/span&gt;', 0, '23路、201路、88路', 1, '', '', NULL, 0, 0, 0),
(41, 57, '芜湖经济技术开发区泰山路 （崭亮电子公司厂房）', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;塑料注塑成型流水线、混色机、搅拌机、吸料机、黄油机、冻水机、冷却塔、空压机、冲击试验机、检测设备等&lt;/span&gt;', 0, '5路、6路、88路', 1, '', '', NULL, 0, 0, 0),
(42, 58, '芜湖市城东新区万春中路（芜马高速芜湖东出口处|）', '&lt;span style=&quot;color:#333333;font-family:Simsun;line-height:20px;background-color:#FFFFFF;&quot;&gt;安徽中加学校是安徽省第一所中加政府间合作的全住读式、实施中加两国中小学课程教育的新型国际学校，设有高中部、初中部、小学部和附属幼儿园。合作办学的中方是芜湖市教育局和芜湖市第一中学，外方是加拿大纽宾士域省教育部和加拿大加皇国际教育集团。&lt;/span&gt;', 0, 'T2路，49路', 1, '', '', NULL, 0, 0, 0),
(43, 59, '安徽省芜湖市镜湖区黄山西路18-1号', '&lt;span style=&quot;color:#000000;font-family:Arial, Helvetica, sans-serif;line-height:21px;background-color:#E9F2F9;&quot;&gt;&lt;span style=&quot;color:#000000;font-family:Arial, Helvetica, sans-serif;line-height:21px;background-color:#E9F2F9;&quot;&gt;是一家专业装潢公司.&lt;/span&gt;&lt;/span&gt;', 0, '15路，41路，34路，46路', 1, '', '', NULL, 0, 0, 0),
(44, 62, '侨鸿国际写字楼1409', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;经营领域涉及妇幼卫生用品、纸类产品、化妆及护肤类产品&lt;/span&gt;', 0, '8', 1, '', '', NULL, 0, 0, 0),
(45, 60, '中山南路鸿汇城3楼', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;爱贝教育本着对中国英语基础教育事业的深刻理解和不懈追求，以准确的市场定位，特色的经营模式，专业的产品和完善的服务，在行业内遥遥领先，开创了具有中国特色的英语作为第二语言教育的模式。&lt;/span&gt;', 0, '24', 1, '', '近期需要线下推广人员，简单就是发单宣传人员', NULL, 0, 0, 0),
(46, 63, '北京西路农行隔壁', '芜湖四月便当餐饮店，之前的老客户资料，拜访过 暂时不需要学生兼职', 0, '37', 1, '', '后期可以继续跟进', NULL, 0, 0, 0),
(47, 61, '五一广场天和苑', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;各类招生考试信息咨询，出国留学信息咨询，教育教学产品的开发与推广服务，远程教育的推广与服务，家庭教育的指导与服务等&lt;/span&gt;', 0, '32路', 1, '', '会需要辅导老师', NULL, 0, 0, 0),
(48, 55, '商业街森海都市花园北大门', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;是一家集室内设计、预算、施工、材料于一体的专业化装饰公司。公司有着创新的设计、合理的报价，还有一批独立的专业化的施工队伍，并且是芜湖首家低碳环保倡导者&lt;/span&gt;', 0, '24/32', 1, '', '会需要发单宣传人员', NULL, 0, 0, 0),
(49, 54, '云南省昆明市呈贡区云南白药街3686号', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;云南白药养元青洗发乳活动促销，要求：乐观向上，积极主动，表达能力强；服从管理和公司的要求；外表整洁，行为得体，淡妆上岗；按时上班，遵守超市规定&lt;/span&gt;', 0, '', 1, '', '需要临促和长促', NULL, 0, 0, 0),
(50, 34, '中山路步行街三泰国际大厦', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;上元教育是一家集团连锁办学机构，&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;常年开设会计&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、外语、建筑、才艺、电脑、机电模具等培训。&lt;/span&gt;', 0, '24/37', 1, '', '每周都会需要发单宣传人员，一般要人比较晚，会在活动的前一天确定', NULL, 0, 0, 0),
(51, 33, '新百大厦', '&lt;span style=&quot;color:#333333;font-family:Simsun;font-size:14px;line-height:19.1875px;background-color:#FFFFFF;&quot;&gt;专业生产吸油烟机、家用灶具、消毒柜、电烤箱、蒸气炉、微波炉、电压力煲、电磁炉、电热水壶、食品加工机等厨房电器产品&lt;/span&gt;', 0, '24/37', 1, '', '做活动是需要零促和发单宣传人员', NULL, 0, 0, 0),
(52, 32, '新时代商业街花津中路100号', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;我们期待你的加入 了解就请联系我们 有团队 有力量&lt;/span&gt;', 0, '24/32', 1, '', '少儿美术学校，五月初在师大东门开了分部，需要美术老师，可以跟进看是否需要宣传人员', NULL, 0, 0, 0),
(53, 64, '神东创业园 广电中心', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;是一家综合性广告公司，业务范围涵盖各类广告制作、庆典策划执行、电视报纸媒体发布、企业品牌包装宣传等&lt;/span&gt;', 0, '', 1, '', '老客户资料，定时拜访一下', NULL, 0, 0, 0),
(54, 65, '玫瑰大酒店旁边', '&lt;span style=&quot;color:#000000;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;好记星&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;,是移动互联时代教育服务的先行者和领跑者。&lt;/span&gt;', 0, '24', 1, '', '老客户资料，拜访留了号码', NULL, 0, 0, 0),
(55, 66, '欧亚达正元家具', '欧派壁纸作为欧派家居集团最新战略产业项目，以“做中国壁纸行业第一品牌”为目标，', 0, '88', 1, '', '发单，老客户', NULL, 0, 0, 0),
(56, 67, '青山街与华兴街交叉口', '一家尼采手机工厂店', 0, '24/26/37', 1, '', '老客户资料，定期拜访', NULL, 0, 0, 0),
(57, 68, '银湖中路12号', '&lt;pre id=&quot;recommend-content-927624560&quot; class=&quot;recommend-text mb-10&quot;&gt;芜湖金色阳光是集休闲，餐饮，住宿于一体的综合会所&lt;/pre&gt;', 0, '', 1, '', '老客户，还没合作过，留了联系方式', NULL, 0, 0, 0),
(58, 69, '侨鸿国际801室', '教育培训机构，老的客户资料', 0, '', 1, '', '拜访过，还为合作', NULL, 0, 0, 0),
(59, 70, '徽商财富广场605', '&lt;span style=&quot;color:#333333;font-family:Simsun;line-height:25px;background-color:#FFFFFF;font-size:16px;&quot;&gt;&lt;span style=&quot;font-family:simsun;&quot;&gt;芜湖优智&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:Simsun;line-height:25px;background-color:#FFFFFF;font-size:16px;&quot;&gt;&lt;span style=&quot;font-family:simsun;&quot;&gt;家教网是一家专业、免费、实力雄厚的家教网，网站创办于2006年，已成为芜湖乃至安徽最大最早的家教信息网&lt;/span&gt;&lt;/span&gt;', 0, '', 1, '', '家教网，会有宣传人员', NULL, 0, 0, 0),
(60, 71, '滨江山庄21栋4单元301室', '&lt;span style=&quot;color:#666666;font-family:微软雅黑, 宋体;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;是一家集户外媒体代理与发布；各种钢结构广告牌、标识标牌及门头制作；活动、会展策划与执行和企业VI设计、印刷为一体的综合性公司。&lt;/span&gt;', 0, '24/26', 1, '', '老客户资料，还未合作过', NULL, 0, 0, 0),
(61, 73, '中央城财富街', '用来发布公司内部的兼职人员招聘', 0, '24', 1, '', '', NULL, 0, 0, 0),
(62, 72, '芜湖大润发华庭阳光小区4栋1单元801', '&lt;span style=&quot;color:#343434;font-family:Arial, STHeiti, ''Microsoft YaHei'', simsun, Helvetica, sans-serif;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;是一家致力于中小学生课后辅导的专业教育培训机构&lt;/span&gt;', 0, '', 1, '', '老客户资料，还未合作过', NULL, 0, 0, 0),
(63, 74, '汇金广场A座2001室', '开设各种少儿培训班', 0, '45', 1, '', '宣传招生人员', NULL, 0, 0, 0),
(64, 75, '芜湖市大桥镇保顺路9号', '&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;专业从事产品开发、精密模具加工、精密注塑成型、产品表面喷涂及组装等配套加工。集研究开发、生产制造、市场营销于一体的综合性制造企业&lt;/span&gt;', 0, '47路', 1, '', '', NULL, 0, 0, 0),
(65, 76, '芜湖市经济技术开发区凤鸣湖北路28号', '&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;主要由上海汽车地毯总厂和奇瑞科技有限公司投资成立。主要生产轿车(汽车)地毯及轿车用(汽车)饰件。&lt;/span&gt;', 0, '43路', 1, '', '', NULL, 0, 0, 0),
(66, 77, '新利商厦5楼', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;简单舞团流行舞蹈培训中心为国家级专业街舞、爵士舞培训中心，中心教师均取得国家级教练资格证书，是本地最权威的街舞，爵士舞培训中心，我司拥有数十名专职兼职教师，为全芜湖最大规模的一家培训机构，常年培训各类人才，中心开设培训项目包括舞蹈教练班，舞台演艺班，常规舞蹈兴趣班，幼儿启蒙班及少儿全能班&lt;/span&gt;', 0, '24、37', 1, '', '会需要发单宣传人员', NULL, 0, 0, 0),
(67, 78, '镜湖银湖中路文化馆对面天香商务2号楼60', '&lt;p style=&quot;text-indent:2em;font-family:''Hiragino Sans GB'', arial, simsum, ''WenQuanYi Micro Hei'', sans-serif;font-size:14px;&quot;&gt;\r\n	星辰教育一对一，长期招聘在职教师及研究生学历以上教师，3年以上经验，笔试试讲通过，待遇丰厚！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;font-family:''Hiragino Sans GB'', arial, simsum, ''WenQuanYi Micro Hei'', sans-serif;font-size:14px;&quot;&gt;\r\n	我们是芜湖市重点中学（一中、附中、十二中、九中）各科在职教师联合授课，均有多年的高中教学经验，区别于一般一对一辅导机构的所谓专职教师。 办学以来，教学效果受到芜湖市的家长的认可，口碑好！\r\n&lt;/p&gt;', 0, '24路', 1, '', '', NULL, 0, 0, 0),
(68, 79, '镜湖区民生路凯帆大厦7层', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;安徽视平线文化传播有限公司，是一家集国内广告发布、文化事业代理传播、大型活动策划、品牌策划推广、VIS终端导入、广告装饰工程为一体的综合性文化传播公司。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;　　　　　&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:14px;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;本公司前身芜湖视平线广告文化传媒有限公司创立于2004年,获得工商部门批准，取得经营许可证。2009在广告公司省级评选中，荣获“安徽省广告行业精神文明先进单位”荣誉称号。2011年成为芜湖市鸠江区文化创意产业重点招商单位，公司重新升级注册，金装上阵。企业的迅速发展壮大，吸揽了一大批设计、制作、营销骨干，集合国内人才和本地精英,安徽视平线共有50余名员工(不含签约合作供应商)，绘制了一幅“精英荟萃齐聚一堂话发展”的精美画卷。我们深信一支拥有卓越品质、精良的专业知识和强健的战斗力的队伍，必然为您的企业带来利益，创造利润，为社会作出贡献。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(69, 80, '芜湖市经济技术开发区长山路龙山隧道北', '&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;以奇瑞汽车为主要配套对象，辐射周边市场，逐步形成400万件悬架弹簧、250万件稳定杆的生产能力。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;公司将依托总部的资源及自身的优势，以先进的专业技术和高品质的产品服务于社会各行各业。&lt;/span&gt;', 0, '23路47路110路晚班', 1, '', '没有直达公司的公交车。需要步行', NULL, 0, 0, 0),
(70, 81, '安徽省芜湖经济技术开发区银湖北路26号（大陆电子公司对面）', '&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;DEK印刷机、松下贴片机、FUJI贴片机、JUKI贴片机、三星贴片机、REHM回流焊、X-RAY、KOH锡膏厚度测试机等先进设备，为产品的质量奠定根基。&lt;/span&gt;', 0, '30路47路', 1, '', '', NULL, 0, 0, 0),
(71, 82, '汇金广场B座904', '&lt;span style=&quot;font-family:Simsun;font-size:medium;line-height:normal;&quot;&gt;梦之居装饰公司成立于2002年，经过数年的发展，确定了自己独特的经营路子。其中最突出的就是“投资装饰”和“营销装饰”的定位。作为祥正企业管理有限公司的附属机构，达美实际上是一家投资公司。几年来，公司带资与众多房地产公司合作，进行样板房、精装房的设计装修，取得了可观的社会效益和经济效益，在市场上形成了梦之居独特的品牌特征。另外，作为房产销售的一个主要伙伴，梦之居在设计装饰上，或者说在产品设计策划上，具有非常专业的营销眼光，使得所做的产品特别符合市场的需求，倍受广大房产商的赞赏。 梦之居装饰在提供策划、设计、装修的同时，也提供顶级水准的软装饰服务，真真正正做到一条龙服务，大大的提高了工作效率，这在整个装饰市场上都是不可多得的。所以，目前公司定单如潮，业务蒸蒸日上。 但梦之居人不敢有丝毫的放松，在产品水平、售后服务、增值服务等方面都在不断的努力探索，要做就做市场最好，要用顶级的眼光、用世界的视野、用诚实的心态，让“梦之居”真正成为客户心中最好的名牌。 梦之居装饰在提供策划、设计、装修的同时，也提供顶级水准的软装饰服务，真真正正做到一条龙服务，大大的提高了工作效率，这在整个装饰市场上都是不可多得的。所以，目前公司定单如潮，业务蒸蒸日上。 但梦之居人不敢有丝毫的放松，在产品水平、售后服务、增值服务等方面都在不断的努力探索，要做就做市场最好，要用顶级的眼光、用世界的视野、用诚实的心态，让“梦之居”真正成为客户心中最好的名牌。&lt;/span&gt;', 0, '24路 37路', 1, '', '', NULL, 0, 0, 0),
(72, 83, '行政服务中心', '&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=189241&amp;amp;ss_c=ssc.citiao.link&quot;&gt;芜湖市&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;深蓝装饰有限公司是一家专业从事室内设计装修及&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=726340&amp;amp;ss_c=ssc.citiao.link&quot;&gt;整体家居&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;配套为主体的一站式公司.公司拥有专业高效的设计团队,精湛的施工队伍,完善的&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7554854&amp;amp;ss_c=ssc.citiao.link&quot;&gt;现代企业制度&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;.本着“客户至上、精益求精”的经营理念,从而为客户打造一个时尚、品味、环保的家居环境.&lt;/span&gt;', 0, '32路', 1, '', '', NULL, 0, 0, 0),
(73, 84, '合肥', '&lt;p style=&quot;text-indent:2em;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	考德上教育是一家以&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=6371602&amp;amp;ss_c=ssc.citiao.link&quot;&gt;公务员考试&lt;/a&gt;培训为主，兼顾&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=9871724&amp;amp;ss_c=ssc.citiao.link&quot;&gt;政法干警&lt;/a&gt;、&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=456582&amp;amp;ss_c=ssc.citiao.link&quot;&gt;选调生&lt;/a&gt;、军转干部、教师等各类&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=2955234&amp;amp;ss_c=ssc.citiao.link&quot;&gt;公职人员&lt;/a&gt;录用考试，集教育教学研究、咨询、面授、出版发行为一体的教育培训机构。 由全国公考培训界顶级名师&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=62993025&amp;amp;ss_c=ssc.citiao.link&quot;&gt;田亚东&lt;/a&gt;老师携&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=70253791&amp;amp;ss_c=ssc.citiao.link&quot;&gt;周前宜&lt;/a&gt;、&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=69468510&amp;amp;ss_c=ssc.citiao.link&quot;&gt;林耀辉&lt;/a&gt;、&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=224058&amp;amp;ss_c=ssc.citiao.link&quot;&gt;周志刚&lt;/a&gt;、&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=68602666&amp;amp;ss_c=ssc.citiao.link&quot;&gt;刘双清&lt;/a&gt;、张安威、谢鹤鸣、&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=72055957&amp;amp;ss_c=ssc.citiao.link&quot;&gt;杨合年&lt;/a&gt;等行业众多顶尖人才共同创建，公司汇聚了一支最具实践经验、具有专业水准、深受学员欢迎、享誉全国的“牛”师团队。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	考德上教育以“爱心文化”为基石，以“&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7860797&amp;amp;ss_c=ssc.citiao.link&quot;&gt;责任文化&lt;/a&gt;”为己任，以“实用文化”为导向，以“创新文化”为动力，为考生提供最新研发成果、最好培训产品，达到最佳&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=340822&amp;amp;ss_c=ssc.citiao.link&quot;&gt;培训效果&lt;/a&gt;，切实帮助学员提升核心竞争力。真正做到为国育才，德者为上。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	考德上教育将遵循“竞争·合作·共赢·发展”原则，致力引领中国公职考录教育培训事业，致力打造全国唯一的 “全国公考师资服务中心”和“全国公考培训合作中心”，为全国各级公考培训机构提供专业的师资团队，搭建合作共赢平台，不断提升全国公考培训水平，真正服务考生、服务同行、服务社会。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	考德上正以分享的机制搭建创业平台，汇聚天下英才，为有志之士实现梦想；考德上已扬帆起航，为社会培养更好更多德才兼备人才，真正光耀东方！\r\n&lt;/p&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(74, 85, '', '&lt;span style=&quot;color:#4C4C4C;font-family:Helvetica, Tahoma, Arial, sans-serif, Simsun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; 芜湖亚夏机动车驾驶员培训学校，隶属于芜湖亚夏汽车股份有限公司（股票代码：002607），为国家一级资质的大型驾校。主校区地址位于芜湖市市区弋江北路，座落在占地800亩的亚夏汽车商城内，交通条件极其便利。目前一、二期占地面积200多亩，三期正在规划中，投资7600多万。学校拥有一流的现代数字化教学大楼、办公楼、学员公寓楼、多功能餐厅、模拟驾驶馆等，建有符合公安部要求的科目一（理论）、科目二（场考）、科目三（路考）电子监控综合考试、训练场，有按照交通部规定科目建设的专业封闭式训练场。现有全新桑塔纳轿车、奇瑞、雪铁龙、解放标厢货车、大客车等170余辆教练车。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(75, 86, '芜湖镜湖区融汇中江广场西区', '&lt;span style=&quot;color:#282828;font-family:Arial, 宋体;font-size:14px;line-height:28px;&quot;&gt;本公司成立于2008年7月，是专业的室内外营销活动公司，成立以来先后为我市多家房地产企业提供广告服务。受到客户一致好评！本公司信誉优良，诚信守法。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(76, 87, '武汉', '&lt;span style=&quot;font-family:''Comic Sans MS'';font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;武汉鸿亚达展览策划有限公司，始创于&lt;/span&gt;&lt;span style=&quot;font-family:''Comic Sans MS'';font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;2008&lt;/span&gt;&lt;span style=&quot;font-family:''Comic Sans MS'';font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;年，公司是集展览展示、商务贸易、信息咨询广告代理等多元化现代企业。公司多次成功承办大型博览会、交易会、展销会，至今已发展成为全国展销会知名品牌，特别是近几年与武汉汇通天下会展公司的联合对接，更加全面提升了公司的综合实力。公司以诚信、责任、创新为宗旨，注重加强各方面人才的培养及公司的管理，同时优化对展商的服务，打造了一只勇于创新、敢打敢拼的高素质团队。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(77, 88, '镜湖世茂滨江峰荟楼1栋3单元2203室', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;原安徽省芜湖市天赐传媒文化有限公司，现升级为安徽省辰星文化传媒有限公司，公司创立于2009年，主营项目由媒介推广、企业策划、庆典礼仪、广告制作发布、礼品制作、创意策划几大部分组成，形成了针对政府、企业、媒体等不同行业、不同规模、不同应用的针对性解决方案，是芜湖市颇有影响力的传媒公司。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(78, 89, '中山大厦K座4楼', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;安徽新电文化传媒有限公司于2012年12月5日在芜湖工商局登记注册，业务经理是芮浪，公司注册资本未提供，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，芜湖市弋江区高新技术开发区滨江路300号，我们有最好的产品和专业的销售和技术团队，在公司发展壮大的2年里，我们为客户提供最好的产品、良好的技术支持、健全的售后服务&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(79, 90, '新时代商业街', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;芜湖新安&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=48518&amp;amp;ss_c=ssc.citiao.link&quot;&gt;中医&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;院[1]芜湖新安中医院是一所&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=189241&amp;amp;ss_c=ssc.citiao.link&quot;&gt;芜湖市&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;直属医疗机构、非营利性医院，市医保、三县&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7619648&amp;amp;ss_c=ssc.citiao.link&quot;&gt;医保定点医院&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;，集医疗、保健、预防、科研为一体。医院承弘扬“新安医学”之旨，循“继承不泥古，发扬不离宗”之则，以“弘扬中医，中西医并举”为办院方针，发挥中医、中药的特色和优势，提供优质、高效和平价的医疗康复保健服务，精心打造“中医传统、中药纯正、服务热忱、医技精湛”的诚信医院。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(80, 91, '九华中路', '全国连锁经济型酒店', 0, '', 1, '', '', NULL, 0, 0, 0),
(81, 92, '芜湖老体育场', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;本公司成立三年一直从事服装展览事业&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(82, 93, '芜湖市鸠江经济开发区祥泰路5号', '&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;芜湖奇瑞科技有限公司是国际化汽车零部件研发、制造的平台，目前拥有50多家控股、参股零部件制造子公司&lt;/span&gt;&lt;br /&gt;', 0, '17路104路晚班t2路游1路', 1, '', '', NULL, 0, 0, 0),
(83, 94, '芜湖市绿地写字楼C座4楼', '&lt;span style=&quot;color:#2A2A2A;font-family:Tahoma, Helvetica, Arial, sans-serif;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;公司主要经营大型纪录片、专题片摄制，大型&lt;/span&gt;&lt;a href=&quot;http://sw.qincai.net/tags-%BB%EE%B6%AF%B2%DF%BB%AE-p1.html&quot;&gt;活动策划&lt;/a&gt;&lt;span style=&quot;color:#2A2A2A;font-family:Tahoma, Helvetica, Arial, sans-serif;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;，国内广告设计、制作、发布、代理等业务，全权代理《当代老年》杂志广告等业务，与盛市电视台及各类报刊杂志媒体建立了良好的合作关系。“全心全意为客户服务”是我们的经营理念，“天天向上，做顶好的，直达顶峰”是我们的原则。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(84, 95, '芜湖市大桥镇桥北工业区红旗工业园', '&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;公司产品广泛应用于服装辅料、首饰配件、电子电器、五金、眼镜、模具加工等行业，环保型线材大量用于出口&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(85, 96, '鲁港高薪技术开发区西山路7号', '&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=110460&quot; target=&quot;_blank&quot;&gt;内蒙古&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;蒙牛乳业（集团）股份有限公司，主要生产奶类产品系列，现已在全国 15 个省市区建立生产基地 20 多个，拥有&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=4780547&quot; target=&quot;_blank&quot;&gt;液态奶&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=118282&quot; target=&quot;_blank&quot;&gt;酸奶&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=49705&quot; target=&quot;_blank&quot;&gt;冰淇淋&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;、奶品、&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=160111&quot; target=&quot;_blank&quot;&gt;奶酪&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;五大系列 200 多个品项，产品以其优良的品质覆盖国内市场，并出口到&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=48184&quot; target=&quot;_blank&quot;&gt;美国&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=74973&quot; target=&quot;_blank&quot;&gt;加拿大&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=6704&quot; target=&quot;_blank&quot;&gt;蒙古&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=20185&quot; target=&quot;_blank&quot;&gt;东南亚&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;及港澳等国家和地区。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(86, 97, '锦天花苑17栋1单元301，聋哑学校对面', '广告公司，承接各种房产活动等等', 0, '', 1, '', '', NULL, 0, 0, 0),
(87, 98, '合肥经开区明珠广场上海城市1栋1303', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;公司主要从事教育培训；传媒发行；企业营销策划管理；旅游管理；信息咨询等一系列项目的策划与执行。公司以忠诚.勤奋作为择人前提，以创新为发展的动力；勇于挑战自我，丰富思路，追求精益求精；以服务.创新.智慧为依托，以广大学生市场为主，致力于教育培训与传媒发行的校园化，普遍化，专业化。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(88, 99, '安徽省芜湖市镜湖区步行街中山大厦A座5楼', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖市沸点广告策划有限公司，主要经营经营广告制作、策划、发布等，公司&lt;/span&gt;&lt;span id=&quot;2_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;2_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=6ef665a7b4b9f230&amp;amp;k=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;k0=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;kdi0=0&amp;amp;luki=5&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=30f2b9b4a765f66e&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F5549%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;注册资本&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;50（万元），我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，安徽 芜湖 吉和街１０３号Ａ３－２０２室，我们有最好的产品和专业的销售和技术团队，我们为&lt;/span&gt;&lt;span id=&quot;3_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;3_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=6ef665a7b4b9f230&amp;amp;k=%BF%CD%BB%A7&amp;amp;k0=%BF%CD%BB%A7&amp;amp;kdi0=0&amp;amp;luki=2&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=30f2b9b4a765f66e&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F5549%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;客户&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;提供最好的产品、良好的技术支持、健全的售后服务，芜湖市沸点广告策划有限公司是芜湖广告服务行业知名企业&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(89, 100, '汇金广场A座26楼', '&lt;span style=&quot;color:#333333;font-family:''microsoft yahei'';font-size:14px;line-height:25px;&quot;&gt;瑞思在芜湖&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:''microsoft yahei'';font-size:14px;line-height:25px;&quot;&gt;瑞思学科英语自2011年入驻芜湖，到目前为止，成功地为200多名孩子提供了原汁原味的美国课程及美式教育，并帮助部分学员在国家级比赛中获得金奖。1年多的时间中，我们瑞思中心和瑞思的孩子们不断成长与收获，这个朝气蓬勃、发展潜力巨大的学校期待有才之士的加入。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:''microsoft yahei'';font-size:14px;line-height:25px;&quot;&gt;瑞思企业文化&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:''microsoft yahei'';font-size:14px;line-height:25px;&quot;&gt;瑞思学科英语，一个富有潜力的教育项目，一个无限增长的高尚事业；一个充满挑战的人生平台；一个充满关爱的大家庭。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:''microsoft yahei'';font-size:14px;line-height:25px;&quot;&gt;　　瑞思人的核心价值观：责任意识、关爱员工、不断创新、团队合作、结果导向、坚定高效的执行力。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:''microsoft yahei'';font-size:14px;line-height:25px;&quot;&gt;发展平台&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(90, 101, '镜湖区新华958内', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;嘉禾传媒，专业广告设计、创意；专业活动策划执行；快速消费品促销活动执行！公司成立多年来，从一个综合性传媒公司慢慢发展为专业的活动策划执行与服务公司。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0);
INSERT INTO `d_company` (`id`, `uid`, `addr`, `cinfo`, `coop`, `route`, `attr`, `chttp`, `remarks`, `cooptime`, `stoptime`, `important`, `locktime`) VALUES
(91, 102, '各分店', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;同庆楼是安徽餐饮业历史名店，1925年创建于芜湖，先后接待过毛泽东、&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=51981&amp;amp;ss_c=ssc.citiao.link&quot;&gt;刘伯承&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;、梅兰芳、越南主席胡志明等，享誉一时。&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7968132&amp;amp;ss_c=ssc.citiao.link&quot;&gt;同庆楼菜馆&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;是芜湖餐饮业的历史名店。1925年创建，1999年，国内贸易部认证“同庆楼”菜馆为“&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=167410&amp;amp;ss_c=ssc.citiao.link&quot;&gt;中华老字号&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;”，全国&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7885658&amp;amp;ss_c=ssc.citiao.link&quot;&gt;餐饮行业&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;仅有58家。1925年左右，当时正值芜湖米市兴旺，商业发达，饮食行业的酒楼、菜馆纷纷建成开业，为在林立的酒楼之中力压群芳，10家商业大户联合集资，开办了一所徽州班菜馆，公推民国初年闻名江南的“醉&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=744684&quot; target=&quot;_blank&quot;&gt;春酒&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;家”打面师傅程裕有出任经理。店址在中二街（今&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=71903419&amp;amp;ss_c=ssc.citiao.link&quot;&gt;柳春园小学&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;校址），最初取名“同鑫楼”。因程裕有一师傅在武汉开设同庆楼菜馆，便前往请教，并商定借名“同庆楼”来芜，称为“徽州同庆楼”菜馆。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(92, 103, '三山时代广场', '&lt;div class=&quot;section_content&quot; style=&quot;margin:0px;padding:0px;font-size:14px;&quot;&gt;\r\n	&lt;div class=&quot;rich_text_area&quot; style=&quot;margin:0px 0px 10px;padding:0px;&quot;&gt;\r\n		&lt;p style=&quot;text-indent:2em;&quot;&gt;\r\n			三山时代广场&lt;sup&gt;&lt;a href=&quot;http://baike.sogou.com/v73638813.htm#quote1&quot;&gt;[1]&lt;/a&gt;&lt;a name=&quot;ref_1&quot;&gt;&lt;/a&gt;&lt;/sup&gt;项目建设内容为三山新区核心区域集商业、居住、酒店为一体的综合体等,总&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=8328289&amp;amp;ss_c=ssc.citiao.link&quot;&gt;规划用地面积&lt;/a&gt;为127572平方米,总&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=66592587&amp;amp;ss_c=ssc.citiao.link&quot;&gt;规划建筑面积&lt;/a&gt;为333486.21平方米(其中：&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=36674&amp;amp;ss_c=ssc.citiao.link&quot;&gt;商业建筑&lt;/a&gt;面积213160.8平方米；&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7698415&amp;amp;ss_c=ssc.citiao.link&quot;&gt;住宅建筑面积&lt;/a&gt;120325.41平方米),住宅规划入住人口2822人。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;section_title&quot; style=&quot;margin:40px 0px 20px;padding:0px;&quot;&gt;\r\n	&lt;h2 style=&quot;font-size:20px;font-weight:normal;font-family:''microsoft yahei'', Verdana;&quot;&gt;\r\n	&lt;/h2&gt;\r\n&lt;/div&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(93, 104, '芜湖市九华中路196号芜湖市总工会大楼3层', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖天龙广告装饰有限公司，业务经理是苏传有，公司注册资本未知，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，安徽省芜湖市镜湖区九华山路１９６号，我们有最好的产品和专业的销售和技术团队，我们为客户提供最好的产品、良好的技术支持、健全的售后服务&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(94, 105, '鸠江区巨龙华园6栋3单元602', '&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=41496445&amp;amp;ss_c=ssc.citiao.link&quot;&gt;志邦厨柜&lt;/a&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=119544&amp;amp;ss_c=ssc.citiao.link&quot;&gt;股份有限公司&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;成立于1998年，作为中国厨柜行业的领先者，是国内著名的橱柜产品制造基地，集产品研发、生产、销售为一体的专业化橱柜企业。公司通过迅速的发展，一期厂房设备早已跟不上前进的时代步伐，二期工厂90000㎡全面落成，三期现代化产业园区100亩已开始创建，年产能可达30万套，在职员工达500多人，公司规模进一步扩大。全套引进德国豪迈(HOMAG)的专业生产设备，以标准单元产品的设计形成规模化生产，产品从&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=66704839&amp;amp;ss_c=ssc.citiao.link&quot;&gt;双饰面&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;/UV漆/PE材质/金属烤漆/&lt;/span&gt;&lt;a class=&quot;ed_inner_link&quot; target=&quot;_blank&quot; href=&quot;http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=252673&amp;amp;ss_c=ssc.citiao.link&quot;&gt;吸塑&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif, SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;到实木，分为美厨/名仕/御庭三大系列，上百种款式，组合花色达千余种。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(95, 106, '芜湖市春安路', '芜湖的专科医院，位于春安路', 0, '', 1, '', '', NULL, 0, 0, 0),
(96, 108, '芜湖市城东新区仁和路与中江大道交口-42路至城东小区', '&lt;span style=&quot;font-family:Verdana, Arial;font-size:13px;line-height:23px;background-color:#FFFFFF;&quot;&gt;柏庄观邸位于城东新区仁和路与中江大道交汇处，市政务中心西南侧，总占地面积158193.39平米，规划总建筑面积47万，预计将入住4053户业主。项目位于芜湖市城东新市政府大楼西侧，地理位置优越，与市中心车程仅十分钟。实验幼儿园、规划中的优质九年一贯制学校紧邻小区，政务中心、芜湖规划展览馆、万达广场、一中、一院金融中心、方特公园二期、中央公园等重点工程和配套设施环伺项目周边。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(97, 107, '造船新村正对面13路到造船新村', '&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;肖邦音乐&lt;/span&gt;&lt;a href=&quot;http://www.chinahr.com/wuhu/jobs/50381/&quot; target=&quot;_blank&quot;&gt;学校&lt;/a&gt;&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;是芜湖市教育局批准成立的专业音乐&lt;/span&gt;&lt;a href=&quot;http://www.chinahr.com/wuhu/jobs/30066/&quot; target=&quot;_blank&quot;&gt;培训&lt;/a&gt;&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;学校，地处市中心，占地面积3400平方米，环境幽雅、交通便利&lt;/span&gt;', 0, '13', 1, '', '近期不需要', NULL, 0, 0, 0),
(98, 109, '中南建材城', '&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;格尔森&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;木业是一家定位于''百年企业,百年品牌''的诚信进取型企业,在浙江南浔拥有国际领先的实木&lt;/span&gt;&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;地板&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;、实木复合&lt;/span&gt;&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;地板&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;、强化木&lt;/span&gt;&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;地板&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;的研究和制造中心&lt;/span&gt;', 0, '37', 1, '', '需要时再联系', NULL, 0, 0, 0),
(99, 110, '泰鑫商务中心908', '&lt;span style=&quot;color:#333333;font-family:宋体, u5B8Bu4F53;line-height:25px;background-color:#FFFFFF;&quot;&gt;广告设计、制作、发布、代理；房地产营销策划；庆典礼仪服务；室内装饰&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(100, 112, '镜湖区文化路30号火车站旁', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;芜湖天泰国际酒店是由安徽天泰集团投资，是一家以住宿、餐饮、会议、娱乐为一体的商务型酒店，总建筑面积66814.86平方米，总层高29层，是芜湖市规模较大、档次较高的酒店之一。酒店位于芜湖市火车站、汽车站的南面，北京东路东边，是芜湖市陆路门户&lt;/span&gt;', 0, '10/32', 1, '', '暑期服务员，平常的学生兼职', NULL, 0, 0, 0),
(101, 111, '不明确', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif;line-height:23px;background-color:#FFFFFF;&quot;&gt;　　芜湖博雅心智慧教育是心智慧教育集团在安徽省设立的第一家专业的脑力教育培训机构，于2014年5月进驻芜湖市场。致力于将“心智慧”教育品牌在芜湖乃至安徽省做到最强，帮助更多的学生改变传统的死记硬背的学习方法、提高中小学生学生效率，真正做到“轻松好记忆　快乐好成绩”！&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(102, 113, '芜湖经济技术开发区泰山路17号大桥镇奇瑞BOBO城西侧500米）', '&lt;span style=&quot;font-family:Simsun;line-height:normal;background-color:#D8D8D8;&quot;&gt;本公司主要生产具有高新技术的贯流、轴流、离心等超静叶轮及其它空调配件。&lt;/span&gt;', 0, '23路88路空调110路晚班201路', 1, '', '', NULL, 0, 0, 0),
(103, 114, '芜湖市银湖中路78号富海家具2楼园丁小区下', '&lt;span style=&quot;color:#333333;font-family:宋体;line-height:25px;background-color:#FFFFFF;&quot;&gt;深圳市富之岛股份有限公司创办于1992年，是一家专业生产家具为主的大型家具企业。公司现拥有30多万平方米的富之岛家具生产基地，是亚洲最大的板式家具生产企业之一，年生产能力逾20亿元。公司曾先后被授予“中国名牌产品”、“自主创新百强中小企业”、“深圳市民营领军骨干企业”及“中国环境标志认证”等称号。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(104, 116, '芜湖市汇金广场B座1611', '&lt;span style=&quot;color:#666666;font-size:14px;line-height:28px;background-color:#FFFFFF;font-family:SimSun;&quot;&gt;&amp;nbsp;安徽君临智胜广告传媒有限公司，本着“用心服务、优质高效”的经营理念，经过实际的行业打拼、不断创新进取，在本地区企事业单位、工程公司、房产公司、广告公司等行业客户的关爱、鼎力支持下，成为拥有雄厚技术设备和完善服务管理机制的专业一站式广告服务机构。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-size:14px;line-height:28px;background-color:#FFFFFF;font-family:SimSun;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 智胜广告公司主要从事：户外媒体制作、代理、发布；室内外装饰、设计、安装工程、房地产营销策划、代理、执行；标识、标牌、导视系统设计、制作安装；企业VI、CI形象设计、画册设计印刷、庆典、礼仪等大型演艺活动策划和执行。服务客户是我们的核心工作，我们的每一次进步，都离不开您的鼎力支持！&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-size:14px;line-height:28px;background-color:#FFFFFF;font-family:SimSun;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 智胜广告全体员工将以进取心、责任心、感恩心，提供让您放心、省心、舒心的优质服务，以最快的速度、最专业的技术为客户创造最有价值的回报。愿我们的每一次服务都能让您满意、给您带来惊喜。我们有信心成为您心中最理想的合作伙伴！&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(105, 115, '中和路27号融汇中江广场东区3层', '&lt;span style=&quot;color:#333333;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;line-height:15.6000003814697px;background-color:#FFFFFF;&quot;&gt;来点不一样的婚礼，我们来根据您的要求创意完美的婚礼&lt;/span&gt;', 0, '24/37', 1, '', '五一或十一节假日需要', NULL, 0, 0, 0),
(106, 117, '源丰装饰城B2幢1-3#', '&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;是一家外资企业&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;,&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;于&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;1992&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;年在中国杭州成立，旨在推进中国整个磁砖装饰事业的发展，以人性化的“诺贝尔”产品不断创造完美的品质空间，引领更具品质的生活方式。集团公司总投资&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;2.15&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;亿美元，占地&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;2000&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;余亩，厂房面积&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;50&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;万平方米，员工&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;8000&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;余人，年生产规模约&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;4000&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;万平方米。其中，&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;2008&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;年，年产中高档诺贝尔磁砖&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;3300&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;万平方米，实现产值&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;44&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;亿元，上交国家税金&lt;/span&gt;&lt;span style=&quot;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;2.66&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:12px;line-height:24px;vertical-align:baseline;&quot;&gt;亿元。产品深受亚洲、西欧、北美、澳洲、非洲等国家消费者的垂爱，并成为中国高档磁砖的领导品牌&lt;/span&gt;', 0, '45', 1, '', '暂时不需要', NULL, 0, 0, 0),
(107, 118, '鲁港大市场24路 37路', '鲁港的药店，有时会有兼职需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(108, 120, '芜湖市北京东路附近-24、18、26路', '真的就是邮局而已啊，有时会有兼职的需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(109, 119, '芜湖侨鸿国际购物中心三楼', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;公司买五险跟住房公积金，每个月有俩天休&lt;/span&gt;', 0, '24/26/37', 1, '', '留了号码。需要时再联系', NULL, 0, 0, 0),
(110, 123, '马仁山西路与长江南路交叉口', '安徽华仑港湾文化投资有限公司是由安徽新华发行（集团）控股有限公司、安徽浙商投资集团有限公司、安徽省华侨饭店有限公司共同发起成立，为安徽新华发行（集团）控股有限公司的控股子公司，主要业务涉及文化投资、房地产开发建设以及相关领域。&lt;br /&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(111, 122, '长江路54号门面', '&lt;span style=&quot;color:#4D4D4D;font-family:arial, 宋体, sans-serif;font-size:12px;line-height:normal;background-color:#FFFFFF;&quot;&gt;在长江路与原团结路交叉口的一家鲜花婚庆公司&lt;/span&gt;', 0, '24/26', 1, '', '暂时不需要', NULL, 0, 0, 0),
(112, 124, '南瑞小商品城-31', '大型综合卖场，经营各种商品批发零售', 0, '', 1, '', '', NULL, 0, 0, 0),
(113, 125, '华庭阳光3号楼203室/', '&lt;span style=&quot;color:#333333;font-family:''Segoe UI'', Arial, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;独创的红蓝笔记，一对一专业辅导，毕业班精品课堂，一对四小班教学一切为了孩子的未来。专业从事中小学文化课辅导，拥有一批认真负责团队意识强的老师。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(114, 126, '瑞丰商博城/欧亚达', '&lt;span style=&quot;color:#4C4C4C;font-family:Arial;line-height:37.328125px;background-color:#FFFFFF;&quot;&gt;浙江奥田电器有限公司自&lt;/span&gt;&lt;span style=&quot;color:#4C4C4C;font-family:Arial;line-height:37.328125px;background-color:#FFFFFF;&quot;&gt;1987年创建以来，作为中国厨电业的开拓者和集成厨电的引领者，始终以“缔造中国幸福厨房”为己任。目前拥有生产厂房8万多平方米，员工1000多人，经销专卖网点遍布全国各地。生产销售吸油烟机、燃气灶、集成环保灶、消毒柜、蒸烤箱、抗菌不锈钢水槽、水龙头和热水器等九大系列数百个品种的产品，总年产能达300余万套（台），能够满足不同类型客户的需求。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(115, 127, '新时代商业街', '位与新时代商业街内的一家婚庆公司', 0, '24/37', 1, '', '留了号码，需要时联系', NULL, 0, 0, 0),
(116, 128, '大桥镇桥北工业园红星路26号', '&lt;span style=&quot;color:#777777;font-family:Verdana;font-size:14px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;2014年5月1日，芜湖市丰德科技有限公司三山工厂正式启动生产，进一步方便、快捷的为奇瑞重工、集瑞联合重工提供供货服务，拥有标准化生产制造车间，配备激光切割机、数控折弯机、数控剪板机等国内先进的加工制造设备，首期具备年产5万台农机设备能力，计划在2016年年产值达到3000万&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(117, 129, '华强广场写字楼D栋2001', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;技是一家从事企业宣传片、会议、婚庆摄像、婚礼mv、求婚微电影拍摄的&lt;/span&gt;&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20.0200004577637px;background-color:#FFFFFF;&quot;&gt;影视传媒公司&lt;/span&gt;', 0, '45', 1, '', '留了号码，需要时联系，可跟进', NULL, 0, 0, 0),
(118, 130, '平安山庄19栋101室37 6 19 32到五一广场下', '&lt;strong&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;北京艺方&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;color:#333333;font-family:Simsun;font-size:14px;line-height:28px;&quot;&gt;主要致力于成人领域的美术教育和发展，并率先将美术培训分为成人类型和考前类型两部分。其教师均来自清华美院、中央美院、人大徐悲鸿艺术学院、首都师范大学等专业学府，具备深厚的专业能力和丰富的教学经验，资深的专业能力，严谨负责的教学态度，以确保艺方的教学质量。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(119, 131, '临江桥旁边（冰冻街）', '&lt;span style=&quot;color:#343434;font-family:Arial, STHeiti, ''Microsoft YaHei'', simsun, Helvetica, sans-serif;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;是一家致力于中小学生课后辅导的专业教育培训机构，注册资金108万元，注册号2515&lt;/span&gt;', 0, '37', 1, '', '暂时不需要', NULL, 0, 0, 0),
(120, 132, '芜湖市名流印象621---48', '真的就是开锁的呀，没什么好介绍的，会需要男生扫楼的', 0, '', 1, '', '', NULL, 0, 0, 0),
(121, 133, '中南建材城11栋27号', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;江苏力驰公司自主研发的自发热地板，已拥有60多项发热专利，构成了该领域最完备的自主实施产权体系，并向行业广为推广，共享技术成果，引领行业向更高水准的地板产业发展，以满足广大客户的需求。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(122, 134, '金鼎大厦金鼎阁1301', '&lt;span style=&quot;color:#666666;font-family:Tahoma, Tahoma;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;芜湖汉仕明流装饰工程有限公司整套工程管理体系源自上海，施工人员培训上岗，实行三级监理体系、10大验收程序、每一分项工程必须由业主签字认可后方可进行下一步施工。公司严格贯彻 “汉仕明流施工工艺标准”， “汉仕明流文明施工标准”， “汉仕明流成品保护标准”，用同一个标准去规范不同的工人。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(123, 135, '安徽芜湖市体育场', '有过兼职用人需求，', 0, '', 1, '', '', NULL, 0, 0, 0),
(124, 136, '新时代商业街222#', '&lt;span style=&quot;color:#333333;font-family:宋体;line-height:21px;background-color:#FFFFFF;&quot;&gt;成立于1956年的华鹤集团是一家以家具、木门、衣柜制造与销售为主业的大型综合性现代化企业集团，在中国家具行业中处于领先水平，是中国最具规模的家具生产和出口基地之一，是中国家具与木门行业的领导品牌。50多年来，华鹤集团以其突出的业绩和优异的品质连续被评为中国名牌产品、中国驰名商标、中国家居产业百强企业、国家A级优等产品、全国用户满意产品、黑龙江省著名商标等荣誉称号。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(125, 137, '新时代商业街东段-24', '&lt;span style=&quot;font-family:宋体;font-size:13px;line-height:23px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;巢湖大国地板有限公司是专业从事木地板原材料采购和产品的研发、生产、销售、服务于一体的综合性木地板企业。公司总部位于合肥市高新区，并分别在浙江湖州、安徽巢湖建立大型生产基地，为安徽省规模最大的地板专业生产企业。在业内率先创建自主研发中心、品牌管理中心，引进全套进口生产设备和生产线，具备高档强化地板、实木地板、仿古地板、实木复合地板、竹地板、木门、橱柜、家具等系列产品的研发、生产能力。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(126, 138, '芜湖步行街金鼎大厦纬纶阁1001室', '&lt;span style=&quot;color:#666666;font-family:宋体, Arial;line-height:25px;&quot;&gt;上海环球教育集团创始于1997年，并于2001年成立环球雅思学校，现隶属于全球最大的教育出版机构培生集团。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:宋体, Arial;line-height:25px;&quot;&gt;环球教育集团被评为年度金口碑教育集团，而旗下的环球雅思学校作为国内最大的连锁外语培训机构之一，&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:宋体, Arial;line-height:25px;&quot;&gt;被评为全国十大知名学校，荣膺搜狐网&quot;年度十大教育品牌集团&quot;，中国企业21&quot;未来之星&quot;教育机构。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:宋体, Arial;line-height:25px;&quot;&gt;为中国民办教育创新做出巨大贡献，2005年9月受到教育部部长和陈香梅科教文奖的表彰。2007年成为北京英语&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:宋体, Arial;line-height:25px;&quot;&gt;水平考试BETS指定考点和培训中心。环球教育集团也是最具优质服务的外语培训机构和最具影响力的英语教育机构。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(127, 140, '南陵', '广告策划公司，承接各种活动策划', 0, '', 1, '', '', NULL, 0, 0, 0),
(128, 139, '中江桥南站下车，向前走200米看见市民大药房后面乘电梯上9楼', '&lt;table width=&quot;98%&quot; cellpadding=&quot;3&quot; cellspacing=&quot;3&quot; align=&quot;center&quot; style=&quot;font-family:Verdana, Arial;color:#000000;font-size:13px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;font-family:Verdana, Arial;&quot;&gt;\r\n				&lt;img src=&quot;http://static.yellowurl.cn/skin/yellowurl/image/company.jpg&quot; align=&quot;right&quot; style=&quot;border:1px solid #C0C0C0;&quot; /&gt;室内装饰设计组合班，室内设计就业全科班，Maya动画全科班，3ds Max影视游戏动画班， 室外建筑景观表现班，平面广告设计班，手绘表现班奇翼实训基地隶属于动漫设计，是一家专业从事电脑图形图像艺术设计与制作的数字教育基地，培养室内装饰设计及表现、影视游戏动画、建筑效果图及动画、园林景观设计、商业捶画、平面广告设计、虚拟现实制作等高端精英人才\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;', 0, '2路,10路,16路,17路,18路,19路,24路　　26路　　29路　　30路　　32路　　46路　　103路晚,106路晚,109路晚,113路晚', 1, '', '', NULL, 0, 0, 0),
(129, 141, '福海家具博览中心二楼', '全友家私是中国最大的集研发、生产、销售为一体的大型家私民营企业集团，该公司创立于1986年，经过近30年的奋斗，已发展成为中国综合性家具企业的“领军羊”。“全友”是该品牌的简称，同时也体现了该企业“人和、求真、向善、臻美、创造、致远”的核心价值观。为了进一步提升品牌形象和拓展营销渠道，全友家私官网建立，并为“客户获利、员工满意、企业发展”寻找良性实现模式。', 0, '', 1, '', '', NULL, 0, 0, 0),
(130, 142, '银湖中路6-13', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;从事婚礼创意及策划一条龙服务&lt;/span&gt;&lt;/span&gt;', 0, '5路8路13路18路19路23路26路30路32路101路103路晚班106路晚班110路晚班115路夜班', 1, '', '', NULL, 0, 0, 0),
(131, 143, '银湖小区、师大老校区图书馆', '&lt;p align=&quot;left&quot;&gt;\r\n	安徽师范大学教育集团成立于2011年6月，集团对内是附属学校办学的归口管理部门，对外是基础教育合作办学和开发教育培训市场的办学实体。集团现设“合作办学部”、“培训部”、“教研部”、“财务部”和“办公室”等内设机构。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	目前，集团附属学校有：安徽师范大学附属中学（高中）、附属萃文中学（初中）、附属小学、附属幼儿园；合作学校有：芜湖市第50中学、芜湖市碧桂园小学、芜湖市杰星幼儿园。\r\n&lt;/p&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(132, 144, '合巢路３２３号', '&lt;span style=&quot;color:#666666;font-family:Arial, 宋体, sans-serif;font-size:12px;line-height:29px;background-color:#FFFFFF;&quot;&gt;安徽新兴格力空调销售有限公司于2001年5月30日在合肥黄页工商注册，，董事长江逸明，主要经营空调及配件，空调安装，维修服务，注册资本500万元，公司的办公地址设在合巢路３２３号，&lt;/span&gt;', 0, '', 1, '', '张总18955307348奥运康城西门格力专卖  葛震15156308782业务经理、李姐3015630空调招聘临促', NULL, 0, 0, 0),
(133, 145, '合肥市瑶海区明光路锦绣豪庭2幢1503', '&lt;span style=&quot;font-family:Verdana, Arial;font-size:13px;line-height:23px;background-color:#FFFFFF;&quot;&gt;合肥云诺文化传媒有限公司主要以报纸、电视、电台等媒体代理发布为主，同时运营安徽高校招生咨询会、安徽国际教育博览会、安徽民办教育年度盛典、中国教育资讯网、安徽教育在线三会两网项目&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(134, 147, '芜湖师范大学（老校区）凤凰山公寓1栋302室 芜湖没有办事处', '&lt;span style=&quot;color:#2B2B2B;font-family:''Times New Roman'', Times, serif;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;北京未名新干线教育研究中心&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#2B2B2B;font-family:''Times New Roman'', Times, serif;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;　 北京未名新干线语言教育研究中心是由北京总部，合肥、成都、长沙、重庆、哈尔滨、长春、沈阳、兰州等分部组成的股份合作制企业。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#2B2B2B;font-family:''Times New Roman'', Times, serif;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;北京未名新干线语言教育研究中心合肥分部依托北京总部优秀的教育资源，融合各个分部成功的职业教育经验，为国内各界量身打造各类专业外语人才。北京未名新干线语言教育研究中心合肥分部是北京未名新干线语言教育研究中心在合肥的唯一授权培训中心。面向合肥地区，培养各类专业外语人才。本中心拥有优良的教学环境、先进的教学设备、最新的培训教材以及经过统一培训且经验丰富的讲师，为学员提供完善的学习条件。而且，我们有全国知名大学优秀的师资力量，有本机构近6年的培训经验，有先进、科学、系统的培训课程。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(135, 146, '黄山中路镜街99金鼎大厦11楼（3中对面）', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:small;line-height:20px;background-color:#FFFFFF;&quot;&gt;拥有重点学校名师一对一辅导&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;', 0, '15路空调 16路 26路 34路 41路环线 46路环线 104路晚班 105路内环 105路外环 105路晚班 109路 109路晚班 学生专线1路', 1, '', '', NULL, 0, 0, 0),
(136, 148, '汇金广场A座19楼-', '&lt;strong&gt;芜湖德意世家装饰工程设计有限公司&lt;/strong&gt;&lt;span style=&quot;color:#666666;font-family:tahoma, arial, ''Hiragino Sans GB'', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;主要经营：等产品。作为经营的企业，我们始终坚持诚信和让利于客户，坚持用自己的服务去打动客户。&amp;nbsp;&amp;nbsp;我们公司是在芜湖市，如果有芜湖市的朋友欢迎来我公司参观指导工作，具体的地址是：芜湖市弋江区泰鑫商务中心1107室。&amp;nbsp;&amp;nbsp;您如果对我们的产品感兴趣的话，也可以直接在线提交采购信息我们会及时跟您联系。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(137, 150, '', '&lt;span&gt;&lt;span style=&quot;font-size:14px;line-height:24px;&quot;&gt;是一所广告策划公司&lt;/span&gt;&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(138, 149, '汇金广场A座1513、8/14凤凰美食街 37路申元街', '&lt;span style=&quot;font-family:微软雅黑;font-size:16px;line-height:normal;background-color:#FFFFFF;&quot;&gt;成立于2010年，是专业从事&lt;/span&gt;&lt;span style=&quot;font-family:微软雅黑;font-size:16px;line-height:normal;background-color:#FFFFFF;&quot;&gt;中小学课外个性化教育、集辅导和心理引导为一体的教育培训咨询机构，由&lt;/span&gt;&lt;span style=&quot;font-family:微软雅黑;font-size:16px;line-height:normal;background-color:#FFFFFF;&quot;&gt;芜湖本土名校名师以及专业人员组成教师团队&lt;/span&gt;', 0, '24/32', 1, '', '在五月下月会有需要', NULL, 0, 0, 0),
(139, 151, '黄山西路黄山西苑7-16号门面', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;芜湖市莲花家用电器&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;商店,所有电器可以旧换新,也可旧换旧,可换各类品种(例如电视换冰箱),换购新机保修三年。&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;', 0, '15路空调41路环线46路环线', 1, '', '', NULL, 0, 0, 0),
(140, 152, '凤凰美食街毛家饭店隔壁', '&lt;span style=&quot;background-color:#F5EDE2;font-size:9pt;font-family:宋体;&quot;&gt;Since2010&lt;/span&gt;&lt;span style=&quot;background-color:#F5EDE2;font-size:9pt;font-family:宋体;&quot;&gt;的芜湖纽斯婚庆有限公司，是一家专业的大型婚礼庆典服务机构，纽斯婚庆拥有严谨的管理模式和时尚的婚礼理念，实行&lt;span&gt;“&lt;/span&gt;一对一&lt;span&gt;”&lt;/span&gt;式的婚礼顾问制服务，经由专业的司仪，摄像，摄影，彩妆，婚礼策划，婚礼督导等超强大的服务团队，为新人提供专业化规范化的一站式婚礼服务，同时，纽斯婚庆与时俱进的引进南京市场的先进婚礼布置，婚礼策划理念，让您的婚礼省心又省力，个性又时尚。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(141, 154, '赭山西路', '&lt;span style=&quot;color:#555555;font-family:SimSun;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#555555;font-family:Arial, Verdana, 宋体;line-height:22px;background-color:#FFFFFF;&quot;&gt;为学生提供学习和教育服务的领航性的教育辅导单位。&lt;/span&gt;&lt;/span&gt;', 0, '5路7路9路18路26路28路环线34路38路内环38路外环', 1, '', '需要传单派送员，家教工作', NULL, 0, 0, 0),
(142, 155, '绿影新村现代超市5楼', '&lt;span style=&quot;color:#333333;font-family:Verdana, Geneva, sans-serif;font-size:14px;line-height:25.2000007629395px;&quot;&gt;芜湖万达电脑培训学校主要培训科目：提高班级：淘宝大学，3D提高班，ps提高班，各类考证。短期课程：五笔打字，基础班，办公自动化，平面设计，室内设计，网页制作，软硬件维护，语言编程，模具制作，二级考试，互联网基础。技能班：平面设计师，室内设计师，硬件工程师，软件设计师，网页设计师&lt;/span&gt;', 0, '24', 1, '', '之前要过代理', NULL, 0, 0, 0),
(143, 156, '和平大厦一楼内星河体验店', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-family:Simsun;background-color:#FFFFFF;&quot;&gt;卖笔记本电脑 台式电脑 一体电脑 数码相机等&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;数码&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;', 0, '2路13路17路18路27路28路环线37路38路内环38路外环44路114路晚班空调115路夜班', 1, '', '', NULL, 0, 0, 0),
(144, 157, '万达3#写字楼1209', '做装修的公司，最近频繁要兼职', 0, '', 1, '', '', NULL, 0, 0, 0),
(145, 158, '芜湖市九华南路100号（中江桥商业街十字路口）', '&lt;span style=&quot;color:#333333;font-family:tahoma, arial, sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-family:tahoma, Arial, 宋体;font-size:14px;line-height:21px;&quot;&gt;\r\n&lt;li class=&quot;clearfix&quot; style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span class=&quot;tit&quot; style=&quot;color:#707070;&quot;&gt;服务特色：&lt;/span&gt;\r\n	&lt;div class=&quot;tcon&quot; style=&quot;margin:0px;padding:0px;border:0px;&quot;&gt;\r\n		缘聚相守，沐情天涯。人比鸳鸯。幸福美满。\r\n	&lt;/div&gt;\r\n&lt;/li&gt;\r\n&lt;li class=&quot;clearfix service&quot; style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span class=&quot;tit&quot; style=&quot;color:#707070;&quot;&gt;提供服务：&lt;/span&gt;\r\n	&lt;div class=&quot;tcon&quot; style=&quot;margin:0px;padding:0px;border:0px;&quot;&gt;\r\n		&lt;a class=&quot;mr10 &quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/hunlicehua/&quot;&gt;婚礼策划&lt;/a&gt;&amp;nbsp;&lt;a class=&quot;mr10 f-c-red&quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/hunliyongpin/&quot;&gt;婚礼用品&lt;/a&gt;&amp;nbsp;&lt;a class=&quot;mr10 &quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/zhuchi/&quot;&gt;主持司仪&lt;/a&gt;&amp;nbsp;&lt;a class=&quot;mr10 &quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/hunsha/&quot;&gt;婚纱/礼服&lt;/a&gt;&amp;nbsp;&lt;a class=&quot;mr10 &quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/hunche/&quot;&gt;婚车租赁&lt;/a&gt;&amp;nbsp;&lt;a class=&quot;mr10 &quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/hunlihuazhuang/&quot;&gt;化妆&lt;/a&gt;&amp;nbsp;&lt;a class=&quot;mr10 &quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/dengguangyinxiang/&quot;&gt;灯光音响&lt;/a&gt;&amp;nbsp;&lt;a class=&quot;mr10 &quot; href=&quot;http://wuhu.ganji.com/fuwu_dian/3682768/huachezhuangshi/&quot;&gt;花车装饰&lt;/a&gt;\r\n	&lt;/div&gt;\r\n&lt;/li&gt;\r\n&lt;/span&gt;&lt;/span&gt;', 0, '24', 1, '', '', NULL, 0, 0, 0),
(146, 159, '芜湖弋江区利民东路', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;作为国内最早从事家庭清洁剂生产的专业品牌，蓝月亮旗下拥有衣物清洁护理、个人清洁护理和家居清洁护理三大系列产品，体现了“轻松清洁，解放劳力”的宗旨，塑造了品牌独具的“高效、轻松、保护”的鲜明个性。&lt;/span&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&lt;/span&gt;', 0, '31路', 1, '', '', NULL, 0, 0, 0),
(147, 160, '鲁港新镇', '&lt;p style=&quot;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;vertical-align:baseline;color:#282828;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;芜湖市唯美舞蹈学校，是我市一所正规化专业化的舞蹈培训基地，建校已有数年，培育出许多优秀的舞蹈学员，选送各类专业的舞蹈高校与院校，定期给学员参加考级与各大小赛事。&lt;/span&gt;&lt;/b&gt;&lt;b&gt;我校也承接各类公司单位个人，舞蹈编排表演比赛等&lt;/b&gt;\r\n&lt;/p&gt;\r\n&lt;br /&gt;', 0, '24路37路48路113路晚班114路晚班空调', 1, '', '', NULL, 0, 0, 0),
(148, 161, '南瑞新城锦秋园18#楼1-402', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;line-height:19px;background-color:#FFFFFF;&quot;&gt;芜湖徽粹广告文化传媒有限公司主要经营：null等产品。公司尊崇“踏实、拼搏、责任”的企业精神，并以诚信、共赢、开创经营理念，创造良好的企业环境，以全新的管理模式，完善的技术，周到的服务，卓越的品质为生存根本，我们始终坚持用户至上 用心服务于客户，坚持用自己的服务去打动客户。&lt;/span&gt;&lt;/span&gt;', 0, '17路41路环线46路环线107路内环晚班107路外环晚班空调', 1, '', '', NULL, 0, 0, 0),
(149, 162, '', '&lt;span style=&quot;color:#4C4C4C;font-family:arial, sans-serif;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;蒙牛是中国领先乳制品供应商,专注研发适合国人的乳制品.致力成为质量最好,最专业,最专注的乳品企业.&lt;/span&gt;&lt;br /&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(150, 163, '黄山路389号金梦大厦403室', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;大公教育集团是一家集教材出版、发行和专业教育服务为一体的综合性教育产业集团。拥有高效率的管理体系、推出高品质的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/899932/899932.htm&quot;&gt;教育产品&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、提供高质量的教育服务，是一个部门齐全、服务一流、体系完备的全国知名教育企业。我集团大部分专家来自清华大学、中国人民大学、中央党校和南开大学。先后成立了大公教育公务员考试研究院、中国第一&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/1255446/1255446.htm&quot;&gt;结构化面试&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;教研室、企业管理咨询以及政府形象咨询等策划事业部。我集团以“服务考生，奉献社会”为己任，为全国各地不同级别的机关单位培养输送了大批优秀人才，取得了良好的社会效应。是迄今为止师资力量最强大、最具权威性、最具影响力的公务员考试研究机构，我集团结构化面试教研室被考生誉为“中国第一&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/2179550/2179550.htm&quot;&gt;公务员面试&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;教研室”的荣誉称号！&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(151, 164, '新百大厦对面', '&lt;span style=&quot;color:#454545;font-family:宋体;font-size:14px;line-height:26px;background-color:#FFFFFF;&quot;&gt;进入餐厅，就能感受到浓浓的泰国风情。以金色为主体的装修色调，精致的家装雕琢，金碧辉煌的泰国民风浮雕。图案花样都很民族和古典，鲜艳的颜色，镂空的门窗，柳藤的椅子，无处不在诉说着泰国自然的风情。木质的楼梯、庄严的佛像、风情的壁画、来自泰国的各种装饰品，将异域情调表现的淋漓尽致。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(152, 165, '步行街金鼎大厦鑫龙阁702室8/14妇幼保健院', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;芜湖学志教育成立于2009年，主要从事中小学生一对一个性化课外辅导。学志教育作为芜湖第一家个性化一对一课外辅导机构，一直引领者芜湖个性化教育的发展。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;公司目前在芜湖有两大校区，员工数十人。人力资源是我们最宝贵的财富，我们秉持“以人为本”的理念，期待实现企业与员工的共同发展。公司提供具有竞争力的薪金及福利以吸引、激励和保留优秀人才，实现公司的发展目标。公司着力营造和谐的工作氛围，提供良好的工作环境，积极开展丰富的业余文化生活使每位员工充满激情的工作。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(153, 166, '金鼎大厦鑫龙阁902', '&lt;span style=&quot;font-family:Verdana, Geneva, sans-serif;line-height:20px;&quot;&gt;仁和会计教育秉承“仁者爱人，和者谐也”的理念，以“仁爱和谐”为企业的最高宗旨。以人为本，因材施教。爱护学员、关心学员，以学员的成功为最高满意。在仁和，学员不止学在仁和，而且爱在仁和，感动在仁和。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(154, 167, '汇金广场2013', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;双木广告策划传播有限公司成立于 1997 年 10 月，注册资金100万元，员工70余人，以“文化力推动经济力”为立业宗旨。公司总部在天津，设有北京分公司、展览事业部、汽车事业部和双木智慧经济创意设计研究室及上海办事处。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0);
INSERT INTO `d_company` (`id`, `uid`, `addr`, `cinfo`, `coop`, `route`, `attr`, `chttp`, `remarks`, `cooptime`, `stoptime`, `important`, `locktime`) VALUES
(155, 168, '芜湖市新时代商业街103号', '&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;Paterson百得胜衣柜,成立于2001年,是第一个中国的定制衣柜品牌。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;Paterson英国一小镇名,风景如画,建筑别具一格。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;百得胜,为Paterson粤语音译,创始人为其注入中国传统文化内涵。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;百,百善孝为先;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;得,得道多助，失道寡助;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;胜,胜不骄,败不馁。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;细细品味,寓意悠长,颇多人生感悟,是为名由。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#646464;font-family:''Arial Helvetica'', sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(156, 169, '芜湖市经济开发区凤鸣湖北路26路', '&lt;span style=&quot;color:#505050;font-family:Verdana, Arial, Helvetica, sans-serif;line-height:20px;&quot;&gt;芜湖恒信汽车内饰制造有限公司，是一家专业从事汽车前端支架、前端模块组装、内饰件设计制造与研发的新型民营科技企业。自然条件优越，属于长江中下游地区，占据承东启西的重要战略地位，有着四通八达的水、陆、空交通条件，具有辐射华东地区4亿多人口的市场容量。&amp;nbsp;&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(157, 170, '新时代商业街近中江桥南', '芜湖一蛋糕店，偶尔会有兼职需求。', 0, '', 1, '', '', NULL, 0, 0, 0),
(158, 171, '合肥', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;考德上教育已成立多年，于2011年10正式注册。是一家以公务员考试培训为主，兼顾政法干警、选调生、军转干部、教师等各类公职人员录用考试，集教育教学研究、咨询、面授、出版发行为一体的教育培训机构。 由全国公考培训界顶级名师田亚东老师携周前宜、林耀辉、周志刚、刘双清、张安威、谢鹤鸣、杨合年等行业众多顶尖人才共同创建，公司汇聚了一支最具实践经验、具有专业水准、深受学员欢迎、享誉全国的“牛”师团队。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(159, 172, '芜湖市第三中学附近--16路第三中学下', '&lt;span style=&quot;color:#666666;font-family:微软雅黑;font-size:13px;line-height:26px;background-color:#FFFFFF;&quot;&gt;凌武琴行是一家吉他专卖店，经营各种品牌吉他，高中低档任您选择，同时兼营名牌吉他保养维修和护理，提供所有吉他配件。地址：市第三中学西30米凌武琴行&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;凌武吉他培训中心常年招生，招生对象6周岁以上。各科吉他专业均有专业老师专职任教，民谣、古典、电吉他、指弹等。&lt;br /&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(160, 173, '红星美凯龙建材馆3楼', '&lt;span style=&quot;color:#666666;font-family:微软雅黑;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;大自然家居专业致力于绿色健康的家居装修工程研究，以研发、生产及营销绿色健康的地板、木门、橱柜、衣柜等家居产品为主，现旗下地板品牌有：大自然、大自然第一空间、木香居、Nature、Nature1530。形成了大自然地板品牌领衔、大自然木门、大自然柯拉尼橱衣柜、威尔曼橱柜、NatureHOME生活馆等多个品牌并驾齐驱的大家居市场战略。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:微软雅黑;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp; 自2001年以来，大自然地板产品销量持续强劲增长，产品市场占有率居行业领先地位，已成为亚洲最大的木地板骨干企业之一。如今，大自然家居在全球构建了多个原材料供应基地及世界一流的生产研发基地，在广东顺德、中山、东莞，江苏昆山、泰州、徐州，江西、广西、云南等地建立多个大型的地板、木门、橱柜、衣柜制造基地和材料供应基地，并在欧洲、美国、秘鲁等地设立分公司负责国外业务的开拓与运营。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(161, 174, '万达广场3号楼904室', '&lt;span style=&quot;color:#282828;font-family:Arial, 宋体;font-size:14px;line-height:28px;&quot;&gt;合肥中硕教育科技有限公司是一家集学历教育、职业教育、在职研究生、留学为主体经营范围的综合性教育机构&lt;/span&gt;', 0, '45', 1, '', '在找兼职发单，已找好，后期会需要，可以定期拜访', NULL, 0, 0, 0),
(162, 175, '侨鸿国际5楼', '&lt;span style=&quot;font-family:Verdana, 宋体;font-size:14px;line-height:25px;&quot;&gt;位于侨鸿国际五楼的金曼谷泰国餐厅价格亲民，优惠多多。&lt;/span&gt;&lt;a href=&quot;http://wuhu.cc/&quot; target=&quot;_blank&quot;&gt;芜湖&lt;/a&gt;&lt;a href=&quot;http://food.wuhu.cc/&quot; target=&quot;_blank&quot;&gt;美食&lt;/a&gt;&lt;span style=&quot;font-family:Verdana, 宋体;font-size:14px;line-height:25px;&quot;&gt;网今天为您盘点来自金曼谷的价格诱惑，店内充满着浓郁的泰国风情，一派异域感受。泰国菜的口味是一咖哩味和酸辣味见长的.喜欢的人则奉为美味，也有个别人接受不了这种味道.辣汁鱼，泰式虾饼，木瓜沙拉，泰式红咖喱牛肉和酸辣汤都是本店的特色菜。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(163, 176, '王家巷--26', '芜湖大鹏教育咨询有限公司成立于2009年1月，专门致力于学生学习能力的开发和培养、课外辅导服务、家庭教育研究，是芜湖唯一一家以社区为载体的教育连锁机构。公司旗下包括：新书童教育全国托管连锁品牌、尚学堂个性化一对一教育品牌和芜湖新书童亲子园。公司总部设在芜湖市步行街摩根100大厦1618室，目前总部下设8家分支教学中心，累积为近万名学生及家长提供了优质的学习及家庭教育服务，得到了广大家长的高度认可。&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;公司志在聚集教育界的精英，着眼于学生个体独特的内在潜能和资质的唤醒和发展。中心的教育理念为“每个学生都是好学生”，秉承该理念，致力于传播先进教学思想，研究先进教学方法，开发先进教学产品，提供先进教学服务，经过多年的教育研究和时间总结出一套行之有效的全新教育体系和管理体系，从而实现父母望子成龙、望女成凤的愿望，而我们也将致力于成为最卓越的社区教育机构！&lt;br /&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(164, 177, '芜湖市汇成名郡22栋三单元101室', '&lt;span style=&quot;color:#555555;font-family:宋体;background-color:#FFFFFF;&quot;&gt;芜湖市百胜电子有限公司成立于&lt;/span&gt;&lt;span&gt;1996&lt;/span&gt;年&lt;span&gt;5&lt;/span&gt;月&lt;span&gt;18&lt;/span&gt;日&lt;span style=&quot;color:#555555;font-family:宋体;background-color:#FFFFFF;&quot;&gt;，是一家专业从事 “步步高”、“vivo”通讯产品销售、计算机产品销售、信息技术服务为主的高科技企业。目前公司业务主要分为两大组：通讯业务组和&lt;/span&gt;&lt;span style=&quot;color:#555555;font-family:宋体;background-color:#FFFFFF;&quot;&gt;IT&lt;/span&gt;&lt;span style=&quot;color:#555555;font-family:宋体;background-color:#FFFFFF;&quot;&gt;业务组。通讯业务组主要是从事芜、宣地区的通讯产品分销；&lt;/span&gt;&lt;span style=&quot;color:#555555;font-family:宋体;background-color:#FFFFFF;&quot;&gt;IT&lt;/span&gt;&lt;span style=&quot;color:#555555;font-family:宋体;background-color:#FFFFFF;&quot;&gt;业务组主要是为各政府机构、企业单位等提供专业的信息化建设。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(165, 178, '芜湖市高新技术开发区管委会西山路5号--44', '&lt;span style=&quot;font-family:微软雅黑;font-size:18px;line-height:normal;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;芜湖顶层美术培训学校创办于2004年，是经芜湖市教育局批准设立的规范办学单位，是正规的美术类高考学生培训平台；拥有一支高水平的师资队伍和一套严谨有序的教学管理模式，经过多年发展，已成为芜湖地区具影响力的专业美术高考培训机构。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:微软雅黑;font-size:18px;line-height:normal;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 学校总校坐落于芜湖高新技术开发区管委会西山路，市内分校位于芜湖市中二街住房公积金管理中心4楼，拥有良好的学习环境，是理想的修学之地；加之十年的蕴结和沉淀，使学校具有深厚的艺术底蕴和浓厚的学习氛围。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:微软雅黑;font-size:18px;line-height:normal;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 办学十年来，我校专注于高考美术培训，高考升学率一直在芜湖乃至整个皖江地区同类艺术培训学校中名列前茅；一大批皖江学子通过我们的专业培训，跨入重点美术院校及其他一本类综合高校；有力地证明了我们的良好信誉和雄厚实力，深受考生和家长的好评，并被媒体多方采访报道。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(166, 179, '华强城市广场A座三楼方特欢乐世界办公楼', '&lt;span style=&quot;color:#333333;font-family:arial, sans-serif;font-size:13px;line-height:21px;background-color:#FFFFFF;&quot;&gt;方特欢乐世界方特梦幻王国和方特东方神画是中国人完全自主知识产权的大型高科技第四代主题公园，集300多个娱乐项目为一体，可与西方先进的主题公园相媲美。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(167, 180, '步行街金鼎大厦金龙阁8楼', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;派乐多快乐英语是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1264117.htm&quot;&gt;新航道&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;国际教育集团旗下的少儿英语培训品牌。由&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/28622/8585234.htm&quot;&gt;胡敏&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;教授亲率100多名中、美、英少儿英语教育专家、少儿心理教育专家、青少年社会教育专家、一线资深教师，耗时5年，投巨资，专门针对3-8岁的中国少年儿童研发的国内首套拥有自主知识产权的社会英语教育体系。作为“Edutainment”即“育乐”教育理念的倡导者，派乐多坚信，这套融合了“Education”（教育）和“Entertainment”（娱乐）元素的“快乐学习”解决方案必将在孩子们的课堂里发生快乐&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(168, 181, '欧亚达正元家居二楼', '芜湖顾家工艺家具专卖店', 0, '', 1, '', '', NULL, 0, 0, 0),
(169, 182, '万达广场3号写字楼8楼', '&lt;span style=&quot;color:#666666;font-family:SimSun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;澳丁堡装饰工程有限公司成立于2012年7月份，是一家设计及施工为一体的装饰企业，公司以施工质量为核心，以专业技术为根本，来承诺服务广大的江城人民。全面打造放心的家装品牌企业。“安心生活，安心家”是我们公司奋斗的终极目标&lt;/span&gt;', 0, '45', 1, '', '暂时没有需求，可定期拜访', NULL, 0, 0, 0),
(170, 184, '中山南路长江长单身公寓42号楼507室', '&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;安徽省芜湖市唯美印象婚庆公司建立于2009年9月12号。于9月20日正式开业. 语义（就爱你）、久爱你~&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;公司内部成员年轻、时尚、敬业、追求完美的高素质专业策划和服务团队，&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;用我们年轻.时尚的思想.结合传统的理念为您量身打造一生之中最精彩的演出，让您的婚典洋溢着浪漫、温馨和浓厚的艺术氛围。给您留下唯美印象~&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;为您生命中永恒的唯一 努力打造您心中美好的回忆&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;__________唯美印象&lt;/span&gt;', 0, '37', 1, '', '暂时不需要', NULL, 0, 0, 0),
(171, 183, '凤凰美食街凤凰花园5栋102', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;拥有芜湖唯一的特色青少儿英语专利课程，对3—15岁的孩子进行专业、系统的小班制教学，并因人而异制定教学计划，提供专业的顾问式专业服务。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;现因公司发展需要，招聘工作人员若干，良好的平台及发展前景，期待您的加入。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(172, 186, '步行街117号融汇中江广场', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;line-height:19px;background-color:#FFFFFF;&quot;&gt;安徽五星电器有限公司主要经营：五金、交电、空调设备、电器机械及器材、金属材料、化工原料及产品（危险品除外）、燃气灶具、燃气热水器、照相器材、摩托车、汽车零配件、针纺织品、日用百货销售；空调安装、维修及咨询服务；电子计算机及配件、等产品。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;line-height:19px;background-color:#FFFFFF;&quot;&gt;张先生15212257210 &amp;nbsp;祝经理18255350376 &amp;nbsp;女士15555386267 &amp;nbsp;詹小姐13965178837/3887810&lt;br /&gt;\r\n以后联系崔部长13965159453&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', 0, '24/37', 1, '', '有活动时会需要人员', NULL, 0, 0, 0),
(173, 185, '苏宁电器后面的写字楼8楼（新华958）24或37路公交到融汇中江广场下车', '&lt;span style=&quot;font-family:Simsun;line-height:19px;background-color:#FFFFFF;&quot;&gt;程装饰集团☆☆☆成立于1998年, http://www.0755zhuangshi.cn/历经多年发展，现已形成规模化、专业化、品牌化、 集团化、产业化的竞争优势，并成为中国装饰行业的旗舰品牌，是中国最具规模的装饰产业集成商。鹏程装饰集团以“作今日名牌，创百年企业”为宗旨，作为中国装饰行业大型品牌企业集团，目前集团拥有施工甲级的资质企业，在同行业中率先通过了ISO9001：2000国际质量体系认证。 公司以装饰设计、施工为主，可承接各种家居装饰工程、大型综合楼、高级宾馆、高档商住楼、酒楼、办公楼等装饰设计与施工，集室、内外装饰、中央空调、暖通、高精度空气净化及防静电、防震等工程设计、施工为一体. “重质、高效、诚信、务实”是公司经营的指导方针，良好的社会信誉及优良的服务质量，使我们得到了社会各界的肯定，被工商行政部门连续三年评为“重合同、守信用”企业公司以严密科学的管理，精良的技术装备，热情的服务奉献、优质高效地创建了一大批名优工程，如：深圳华侨城波托菲洛鉴品酒业，深圳海岸城12楼写字楼,深圳香蜜花园部分施工设计.龙岗爱联星辉电子厂房装修.世贸大厦（部分工程）、新世界期货公司、激光技术国家重点实验室大楼、湖南郴州广电大厦（室内装饰及中央空调）、宏宇公司玉龙岛物业大楼、华中科技图像公司大楼,湖北黄冈中学改造工程,广州五羊建机厂铁皮厂房构造.等多项工程.&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(174, 187, '中央城财富街4栋107-', '&lt;p style=&quot;color:#545454;font-family:Arial, 宋体;&quot;&gt;\r\n	&lt;span style=&quot;line-height:1.5;font-family:''Microsoft YaHei'';font-size:18px;&quot;&gt;&lt;b&gt;&amp;nbsp;&lt;/b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;弋江区&lt;/span&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;靓欣家家具生活广场&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;line-height:25px;font-family:''Microsoft YaHei'';color:#333333;font-size:16px;&quot;&gt;，是中国知名的家居电子商务企业，领先在国内成功实现了由线上“靓欣家家居网”与线下“靓欣家体验馆”为基础的“双平台O2O”经营模式。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#545454;font-family:Arial, 宋体;&quot;&gt;\r\n	&lt;span style=&quot;line-height:25px;font-family:''Microsoft YaHei'';color:#333333;font-size:16px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height:25px;font-family:Arial;color:#333333;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;靓欣家家居网，是集&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;http://zx.meilele.com/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;装修&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;line-height:25px;font-family:Arial;color:#333333;font-size:14px;&quot;&gt;&lt;span style=&quot;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;、&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;http://www.meilele.com/jiaju/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;家具&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;line-height:25px;font-family:Arial;color:#333333;font-size:14px;&quot;&gt;&lt;span style=&quot;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;、&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;http://www.meilele.com/jiancai/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;vertical-align:baseline;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;建材&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;line-height:25px;font-family:Arial;color:#333333;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;、&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;http://www.meilele.com/shipin/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;家饰&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;line-height:25px;font-family:Arial;color:#333333;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;等多种产品与服务为一体的“一站式”家居综合平台，是中国家居领域最受消费者欢迎和最具行业影响力的电子商务网站之一。靓欣家体验馆，是与靓欣家家居网一体联动的线下实体平台，使消费者可以在真实的摆场空间中体验家居产品搭配效果。此外，体验馆也是靓欣家贴近市场、服务消费者的“实体终端”。&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#545454;font-family:Arial, 宋体;&quot;&gt;\r\n	&lt;span style=&quot;line-height:25px;font-family:Arial;color:#333333;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:''Microsoft YaHei'';font-size:16px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;line-height:25px;font-family:''Microsoft YaHei'';color:#333333;font-size:16px;&quot;&gt;自2008年公司创始发展至今，靓欣家已有员工近1500人，数家体验馆遍布全国，靓欣家已成为中国家具电商最具竞争力大品牌。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;br /&gt;\r\n&lt;/div&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(175, 188, '九华中路广济寺 路和村茶馆旁', '&lt;span style=&quot;color:#888888;font-family:Tahoma, 宋体, ''microsoft yahei'', Arial;line-height:21px;background-color:#FFFFFF;&quot;&gt;安徽国游集团坐落于美丽的长江之畔——芜湖市滨江公园，集团始创于1998年，经过十七年的辛勤耕作，集团已经形成以文化旅游为主体，集交通物流、餐饮服务、汽车后市场、现代农业、矿山开采与加工于一体的综合性集团公司，集团直接和间接控股公司18家，总资产逾6亿元&lt;/span&gt;', 0, '10', 1, '', '暂时不需要', NULL, 0, 0, 0),
(176, 189, '巨龙城市花园1栋4单元', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖魅力家装饰有限公司于2012年9月17日在芜湖&lt;/span&gt;&lt;span id=&quot;3_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;3_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=bbae1269e4109277&amp;amp;k=%B9%A4%C9%CC%BE%D6&amp;amp;k0=%B9%A4%C9%CC%BE%D6&amp;amp;kdi0=0&amp;amp;luki=2&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=779210e46912aebb&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F34741%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;工商局&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;登记注册，业务经理是陈朋朋，公司注册资本未提供，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，芜湖市镜湖区融汇中江广场H#楼1503、1504，我们有最好的产品和专业的销售和技术团队，在公司发展壮大的3年里，我们为客户提供最好的产品、良好的技术支持、健全的售后服务，芜湖魅力家装饰有限公司是芜湖装饰公司装饰设计公司行业知名企业&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(177, 190, '芜湖市城东新一中对面', '&lt;span style=&quot;color:#746969;font-family:''Microsoft Yahei'';line-height:22px;&quot;&gt;1988年进入房地产行业，经过三十余年的发展，成为国内领先的房地产公司，目前主营业务包括房地产开发和物业服务。公司聚焦城市圈带的发展战略，截至2014年底，公司进入中国大陆65个城市，分布在以珠三角为核心的广深区域、以长三角为核心的上海区域、以环渤海为核心的北京区域，以及由中西部中心城市组成的成都区域。此外，公司自2013年起开始尝试海外投资，目前已经进入香港、新加坡、旧金山、纽约等4个海外城市，参与6个房地产开发项目。2014年公司实现销售面积1,806.4万平米，销售金额2,151.3亿元，销售规模居全球同行业领先地位。公司物业服务业务以万科物业发展有限公司（“万科物业”）为主体展开。万科物业始终以提供一流水准的物业服务、做好建筑打理作为企业立命之本。截至2014年底，公司物业服务覆盖中国大陆61个大中城市，服务项目457个，合同管理面积10,340万平方米。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(178, 191, '天门山街道服务站32路/', '社区街道办，有过兼职需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(179, 192, '芜湖市中心步行街', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif;line-height:23px;background-color:#FFFFFF;&quot;&gt;奇翼设计学院专业设计培训 芜湖唯一专业只做设计培训基地 拥有芜湖唯一设计论坛 奇翼设计学院 永远被模仿-从未被超越 所有课程均0基础教起!&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(180, 193, '芜湖市新时代商业街沃尔玛金玺广场14楼1407', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;北京欧蒂尼装饰创立2005年于2007年强势入住芜湖，它是一家集铂金工程、材料整合、于一体的专业家装权威服务机构。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;公司以崇尚天然、环保，回归大自然选材用材标准，严把设计、施工质量关，坚持真材实料，健康第一原则，为工程业主独创天然纯原木材料为主，手工打造、精雕细琢低碳、无室内污染的绿色家居环境。坚持“高精尖”、“创品牌”、“争一流”战略，实行“工厂化”、“一站式”、“纯天然”、“无污&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(181, 194, '侨鸿12楼1206室', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;牙兔中国事业开始于2002年，隶属于北京派纳教育咨询有限公司。龅牙兔儿童情商乐园于2002年7月正式成立，总部设在南京。成为国际儿童SEL计划在中国唯一的实践基地。10多年来，龅牙兔情商（SEL）在中国的蓬勃发展起来，“情商决定未来”的理念在中国正结出硕果。为全国的家长和孩子带来了更先进的非智力教育理念和更专业的情商训练技巧。引导孩子正确的学习养成正确的情商观念及知识，旨在塑造充满自信、善于沟通、具备领导力以及能主导并维持良好人际关系的高情商孩子&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(182, 195, '黄山西路镜街1101室/', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;成立于2003年，是一家专门从事中小学生课外辅导的大型教育机构，拥有科学的教育体系、优秀的教师队伍和先进的管理团队，从早期的教育软件开发、“一对多”辅导发展到今天“优秀教师一对一”个性化辅导。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(183, 196, '芜湖华亿策划部', '&lt;span style=&quot;color:#333333;font-family:微软雅黑, ''microsoft yahei'';font-size:14px;line-height:24px;&quot;&gt;华亿集团创立于2000年，形成商业地产、百货超市连锁、文化休闲连锁三大产业，总部位于安徽省芜湖市，是安徽省商业龙头企业、“省重点流通企业”和“全省优秀非公有制企业”，被商务部授予“优秀试点企业”，被中国商业联合会授予“全国企业文化建设优秀企业”等荣誉称号。企业的发展，以“华亿广场”城市综合体、“华亿城市生活广场”现代社区新型服务综合体、“华亿国际”时尚精品百货、“华亿环球影城”院线以及“华亿超市”连锁发展为主，立足本埠建设，稳步对外拓展。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(184, 197, '新时代商业街内街118号', '&lt;span style=&quot;color:#4B4B4B;font-family:tahoma, Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;印刷类：高档画册/手提袋/台历挂历/精装菜谱/纸杯/透明不干胶/无碳复写收据/封套/信封&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#4B4B4B;font-family:tahoma, Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;广告礼品类：扑克牌/抽纸盒/乐扣杯/直杆伞/鼠标垫/无纺布袋/PP扇子/广告帽&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span style=&quot;color:#4B4B4B;font-family:tahoma, Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;轩宇奉行“质量是金、服务用心、价廉物美、合作诚信”之宗旨，并诚为直接透彻的客户沟通，淋漓尽致的设计、一丝不苟的制作流程、精益求精的印刷生产，与您架起称心的桥梁，竭诚为您提供尽善尽美的印艺精品！&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(185, 198, '步行街和平大厦6楼', '2013年2月，苏宁电器正式更名为“苏宁云商”，开启发展新征程。“店商+电商+零售服务商”的“云商”苏宁，将整合前台后台、融合线上线下，服务全产业、服务全客群，为中国零售行业转型升级探路。到2020年，苏宁将以万亿级的规模跻身世界百强行列，比肩全球一流公司，成就世界级的领袖品牌。&lt;br /&gt;\r\n&amp;nbsp;&lt;br /&gt;', 0, '24/37', 1, '', '暂时没有合作', NULL, 0, 0, 0),
(186, 199, '城市名流6#1 1005', '芜湖市乐居广告传媒公司成立于2010年,是一个集优秀的平面设计、3D设计群体、一流稳定施工队伍的专业化广告装饰公司，是专业从事墙体广告、户外大型广告的制作、发布、咨询、设计、选材、预算、施工与售后服务。', 0, '', 1, '', '留了号码，有需要联系', NULL, 0, 0, 0),
(187, 200, '芜湖市中南建材城1栋25号26号、红星美凯龙三楼', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;久盛地板有限公司是目前国内木地板行业综合实力最强、发展速度最快的木地板制造企业之一，&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/61891.htm&quot;&gt;中国&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;林产工业协会地板专业委员会副理事长单位、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/2424858.htm&quot;&gt;中国木材流通协会&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;常务理事单位。久盛木地板产销量位列国内同行三甲，是木地板国家标准起草单位，公司被评为中国最具品牌竞争潜力的100家民营企业。久盛地板被评为中国实木地板十大品牌、国家级&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/917256.htm&quot;&gt;高新技术企业&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、中国优秀&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/4743342.htm&quot;&gt;诚信企业&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;等，连续四年被评为全国30家实木地板“双承诺”单位，&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/6310.htm&quot;&gt;浙江省&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;消费者信得过单位，&quot;久盛&quot;品牌为&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/563468.htm&quot;&gt;中国驰名商标&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(188, 201, '肥长江西路国购广场对面东侧300米', '&lt;span style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;line-height:19px;background-color:#FFFFFF;&quot;&gt;我们主要经营“设计，制作，发布，代理，广告，装璜”等产品。公司尊崇“踏实、拼搏、责任的企业精神，并以诚信、共赢、开创经营理念，创造良好的企业环境，以全新的管理模式，完善的技术，周到的服务，卓越的品质为生存根本，我们始终坚持用户至上 用心服务于客户，坚持用自己的服务去打动客户。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(189, 202, '芜湖福海家具城', '&lt;span style=&quot;color:#666666;font-family:宋体;line-height:22px;&quot;&gt;福海家具集团历经二十年的艰苦创业，发展成为一个国家级的现代家具集团，成为一个享誉安徽、辐射皖南的家具名牌。 以发展为主题，创新为灵魂的福海创业史，是一个从自产自销，到租场连锁自营，再到连锁化、规模化、市场营业运作，建筑现代化大型商场的发展史。集团始终坚持以市场为主导，以规模促发展，以管理见成效，积极推行名牌、品牌战略，创造了一个又一个的企业神话。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(190, 203, '欧亚达正元家居、25、红星美凯龙4楼', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;在汲取了意大利家具文化精髓的同时，与现代时尚生活方式相结合，打造出具有浓郁东方人文化底蕴的现代时尚家居，创造出一种返朴归真、幸福健康的家居生活方式，创新地发展了定制衣柜，并在中国推出了客来福7大系列产品，由此，拉开了定制衣柜在中国发展的序幕。2005年，客来福家居用品有限公司一期2万平方现代化工厂投入生产。客来福以“共创幸福家居伟业，为全人类幸福生活而努力奋斗”的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/194444/194444.htm&quot;&gt;企业使命&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;成功赢得了市场，产品和设计上满足各个层次消费者的个性化需求，受到广大消费者和各界人士的一致好评。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(191, 204, '芜湖市长江市场园F8', '&lt;span style=&quot;color:#616466;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;line-height:26px;background-color:#FFFFFF;&quot;&gt;芜湖宏大木业是莫干山衣柜、地板、木门、板材在皖南地区的代理。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#616466;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;莫干山地板&amp;nbsp;，环保地板的世界级品牌，创始于1995年，中国木业第一品牌。集团年销售规模近100亿，屡获中国制造业500强、中国民营企业500强、中国驰名商标、中国品牌、国家火炬计划重点高新技术企业等殊荣。是中国最大、最具有影响力的环保板材制造企业。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#616466;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;莫干山地板6大独创技术，重新定义环保地板标准&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(192, 205, '芜湖市镜湖区方村连心桥', '服装工厂 也有过兼职需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(193, 206, '五一广场，五一广场附近月桂都市花园4栋2单元201', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体, Helvetica, sans-serif;line-height:19px;&quot;&gt;主要经营设计、制作、代理、发布国内各类广告，注册资本50万元人民币&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(194, 207, '摩根100大厦14楼1413、、21', '&lt;span style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;line-height:19px;background-color:#FFFFFF;&quot;&gt;安徽皖龙港装饰工程有限公司芜湖分公司是一家建筑、建材的企业，是经国家相关部门批准注册的企业。主营家装、无，公司位于中国安徽芜湖市镜湖区步行街银座大厦3F。安徽皖龙港装饰工程有限公司芜湖分公司本着“客户第一，诚信至上”的原则，与多家企业建立了长期的合作关系。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(195, 208, '芜湖国际会展中心C馆', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;本公司主要从事舞台航架塔建为主，其它为辅，专为广告公司提供专业配套服务&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(196, 210, '步行街', '位于步行街的一家婚庆公司', 0, '24/37', 1, '', '暂时还没有合作', NULL, 0, 0, 0),
(197, 209, '芜湖市九华中路182-2号', '&lt;table width=&quot;545&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color:#0066FF;font-family:Simsun;font-size:12px;background-color:#F9F9F9;&quot; class=&quot;ke-zeroborder&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;335&quot; height=&quot;29&quot; class=&quot;text_20&quot; style=&quot;color:#333333;&quot;&gt;\r\n				芜湖隆盛食品有限公司位于九华山路２７２号。依托战略国际全球领先的专业技术和营运经验。生意诚为本，经商先做人是我们追求的宗旨。 我们埋头苦干，这要求我们的工作永远不以保质准时完成任务为功，秉承低调敬业的服务精神，努力追求，不求有功，但求无过的工作目标。我们积累了丰富的管理经验，凝聚了大批专业技术力量，重视行业内部的职能管理与专业素质提升，加强同行业的横向交流与学习，使企业管理更规范，工作效率更高。\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;336&quot; height=&quot;280&quot; align=&quot;center&quot; valign=&quot;middle&quot; class=&quot;text_20&quot; style=&quot;color:#333333;&quot;&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(198, 211, '镜街大厦13楼1313////步行街金鼎大厦鑫龙阁26路', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif;line-height:23px;background-color:#FFFFFF;&quot;&gt;公司简介　【全国】出众教育是中国高端的一对一教育连锁机构，　在办学过程中，人民日报、中国青年报、安徽日报、安徽商报、芜湖日报、安徽电视台、山东电视台等多家媒体对公司进行了采访和报道。出众教育　目前已在合肥、芜湖、镇江、武汉、铜陵、马鞍山、蚌埠等地开办了分公司或分校，出众独创的　KSK　高效快乐学习法（　1　对　1　名师辅导，　6　对　1　专业服务），能迅速提升中小学生的学习力，改善孩子学习习惯，培养孩子学习兴趣，在快速提升学生学习成绩的同时促进综合素质的全面发展！　公司始终以　“　质量换口碑　”　作为发展口号，重抓教学质量，使每个需要发展和成长的人能够获得最佳的教学资源。数年的办学历程中，凭借着一流的师资队伍、专业的服务团队、先进的教育辅导体系，独特高效的教学方法和完善的管理模式，逐渐成为广大家长和学生们心目中课外辅导的首选，是该领域一对一和小班教学的旗舰品牌，　目前　已成为安徽最专业最具有影响力的一对一课外辅导机构之一。　出众教育法人代表兼董事长——朱红兵，安徽工程大学创业之星，原高中数学教师。　出众教育创始人兼总经理——王雷，安徽师范大学首届　“　创业之星　”　金奖获得者、全国创业典型、全国爱老敬亲模范，其的创业事迹先后被人民日报等主流媒体报道。选择出众，选择事业和人生的双丰收，一个新兴教育集团的兴起，有你的加入会更加精彩&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(199, 212, '二院对面 物资大厦', '&lt;span style=&quot;color:#333333;font-family:Verdana, Simsun, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;芜湖新物资大厦宾馆地处芜湖市中心，位于九华山路与黄山路交汇口，毗邻步行街，周边生活配套资源丰富，地段优越。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:Verdana, Simsun, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;芜湖新物资大厦宾馆整体风格豪华宽敞，客房舒适典雅，房型种类多样；房内配置二十四小时热水、有线电视、中央空调、智能电子门锁、国内外长途电话等设施，周到齐全。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:Verdana, Simsun, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;宾馆附设以徽菜、粤菜、杭帮菜、川菜、淮扬菜为主菜系的中餐厅，内含20余个包厢，装饰考究；厢内配备拥有“中华第一桌”美誉的进口大理石餐桌、全自动旋转餐台，宾客可尽享口福之乐。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:Verdana, Simsun, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;宾馆还设有设备齐全的多功能厅及会议室，可满足宾客商务会议、培训拓展等多元化需求；同时设有免费停车场（全自动升降横移停车库），周到便捷的服务，使宾客尽享出行乐趣，欣然而归。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(200, 213, '芜湖新时代商业街新安中医院对面44路37路36路', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖翰唐装饰有限公司，业务经理是后宗云，公司&lt;/span&gt;&lt;span id=&quot;3_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;3_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=c0878a7a500a0f5a&amp;amp;k=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;k0=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;kdi0=0&amp;amp;luki=5&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=5a0f0a507a8a87c0&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F27067%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;注册资本&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;未提供，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，安徽省芜湖市弋江区新，我们有最好的产品和专业的销售和技术团队，我们为客户提供最好的产品、良好的技术支持、健全的售后服务，芜湖翰唐装饰有限公司是芜湖装饰公司装饰设计公司行业知名企业&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(201, 214, '中山路步行街金鼎大厦纬纶阁10楼', '&lt;span style=&quot;font-family:Simsun;line-height:28px;background-color:#FFFFFF;&quot;&gt;芜湖环球雅思外语教育中心位于中山路步行街金鼎大厦纬纶阁10楼，环球雅思1997年成立，2009年进驻芜湖，2010年在美国成功上市，&lt;span style=&quot;font-family:Simsun;line-height:28px;background-color:#FFFFFF;&quot;&gt;始终以教学质量为目标，教学研究中心GTRC多名教师具有国际发达国家排名前5高校的硕博学位，培养了雅思8分、听力单项9分，新托福单项满分30分等一大批高分学员。&lt;/span&gt;&lt;/span&gt;', 0, '24/37', 1, '', '暂时还没合作', NULL, 0, 0, 0),
(202, 215, '镜街金鼎大厦', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;振元堂是位于芜湖市镜湖湖畔金鼎国际大厦7楼的一家集中医养生、美容、科研、教育为一体集团化公司。我们致力于中医养生的发展与推广，提升行业的素质，打造行业的标准，为推动中医美容与养生事业的发展而奋斗。 公司常年聘请全国知名权威中医老专家坐诊，开展中医内科调理，亚健康咨询及治疗等。从事中医美容的理疗师都实从全国各大中医院招聘具有中医美容临床实际操作2年以上经验的资深技师。 现有人员门诊部专家10名；中医治疗师20人。中医美容学博士1人，美容理疗师30人。公司在中医美容方面共获得中医美容养生技术产品专利20多项，平衡养生、健康养颜，打造中国最具特色的中医养生养颜品牌。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(203, 216, '步行街永和豆浆楼上21,1,14,42', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;本公司专业从事快消策划、推广执行。合作品牌，蒙牛、伊利、光明等&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(204, 217, '侨鸿国际1605、、8/14凤凰美食街', '&lt;span style=&quot;color:#333333;font-family:宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;北京中公未来教育咨询有限公司，创业于1999年，是国内民办教育知名品牌“中公教育”的主要实体，北京市民办教育协会成员（理事）单位，中国十大知名职业培训机构之一，被评为“最具品牌影响力教育机构”，在中国教育咨询培训和职业教育领域有较强的影响力，也成为中国继新东方之后的第二大民办教育企业。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(205, 218, '牌楼村康奇制药厂对面', '&lt;span style=&quot;color:#222C2F;font-family:微软雅黑;line-height:21px;background-color:#FFFFFF;&quot;&gt;芜湖福寿园老年公寓全力打造充满爱心、温暖、和谐的老年之家。实行以人为本、争创一流的规范化服务，以“真心、爱心、孝心、诚心、细心、耐心”为老人营造一个温馨的家，让老人在公寓处处感到家的氛围和温暖&lt;/span&gt;', 0, '24/48/206', 1, '', '暂时没有合作', NULL, 0, 0, 0),
(206, 220, '上二街与民生路交叉口往西30米', '&lt;span style=&quot;color:#666666;font-family:宋体, arial;line-height:29px;background-color:#FFFFFF;&quot;&gt;公司秉承“顾客至上，锐意进取”的经营理念，坚持“客户第一”的原则为广大客户提供优质的服务。欢迎惠顾！&lt;/span&gt;', 0, '24', 1, '', '', NULL, 0, 0, 0),
(207, 219, '银湖北路50号', '就是羽毛球馆啊，不知道要怎么介绍', 0, '', 1, '', '', NULL, 0, 0, 0),
(208, 221, '南瑞沐春园7号楼', '就是婚庆公司呀，没有什么好介绍的。', 0, '', 1, '', '', NULL, 0, 0, 0);
INSERT INTO `d_company` (`id`, `uid`, `addr`, `cinfo`, `coop`, `route`, `attr`, `chttp`, `remarks`, `cooptime`, `stoptime`, `important`, `locktime`) VALUES
(209, 222, '中央城', '&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:24px;background-color:#FFFFFF;&quot;&gt;是一家集家居、别墅、办公楼、商业空间等室内外装饰工程设计、施工，以及装饰材料销售，广告制作、发布为一体的综合性企业。作为芜湖市家装协会常务理事单位、质保单位，具有多年从事装饰装修行业经验，拥有大批专业管理和施工人才，连续多年被评为装饰行业&lt;/span&gt;&lt;span style=&quot;font-size:16px;font-family:宋体;vertical-align:baseline;line-height:24px;background-color:#FFFFFF;&quot;&gt;“&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:24px;background-color:#FFFFFF;&quot;&gt;先进企业&lt;/span&gt;&lt;span style=&quot;font-size:16px;font-family:宋体;vertical-align:baseline;line-height:24px;background-color:#FFFFFF;&quot;&gt;”&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:16px;font-family:宋体;vertical-align:baseline;line-height:24px;background-color:#FFFFFF;&quot;&gt;“&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:24px;background-color:#FFFFFF;&quot;&gt;消费者满意装饰公司&lt;/span&gt;&lt;span style=&quot;font-size:16px;font-family:宋体;vertical-align:baseline;line-height:24px;background-color:#FFFFFF;&quot;&gt;”&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;font-size:16px;font-family:宋体;vertical-align:baseline;line-height:24px;background-color:#FFFFFF;&quot;&gt;“3.15&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:24px;background-color:#FFFFFF;&quot;&gt;推荐装饰企业&lt;/span&gt;&lt;span style=&quot;font-size:16px;font-family:宋体;vertical-align:baseline;line-height:24px;background-color:#FFFFFF;&quot;&gt;”&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:24px;background-color:#FFFFFF;&quot;&gt;。&lt;/span&gt;&lt;br /&gt;', 0, '10/24/26/37', 1, '', '', NULL, 0, 0, 0),
(210, 223, '合肥', '&lt;p&gt;\r\n	西方国际教育科技（集团）有限公司致力于发展为一家以外语培训和基础教育为核心，拥有短期语言培训系统、基础教育系统、职业教育系统、教育研发系统、出国咨询系统、文化产业系统、科技产业系统等多个发展平台，集教育培训、教育研发、图书杂志音响出版、出国留学服务、职业教育、在线教育、教育软件研发等于一体的大型综合性教育科技集团。西方国际英语培训中心隶属于西方国际教育科技有限公司，主要从事英语培训工作，我们的经营模式是集英语教材编订，棒棒堂少儿启蒙英语，中学生英语口语和考试教学，大学生四、六级，考研、口语，雅思、托福、GRE出国考试等一体式英语教学。我们每年寒暑假的王牌课程是西方国际英语全封闭夏令营、冬令营为一体的英语教育培训模式。同时我们融合了西点军校的魔鬼式训练、西方经典的潜能激发以及国内缺失的感恩教育等教育模式，做成了以英语为载体的综合型培训课程；其中“拓展式英语培训”“激励式英语教学”项目是全国首创，融合了西方教学方法和专业青少年素质拓展训练为一体的新型培训模式。几年间我们帮助了无数的大学生、中学生、小学生和英语爱好者攻克了英语，走向了人生的成功之路。两年间我们教学团队和演讲团队在安徽及华东地区各个高校（中国科技大学，上海复旦大学，南京大学，安徽大学，合肥工业大学，安徽师范大学，安徽工业大学等）和企事业单位（中国电信，中国移动，苏宁电器，海尔企业，华电电气，中国银行等）展开了一系列的巡回演讲，为社会各阶层人士开设公开示范课我们以“英语是说出来的”为理念，以优秀的教学质量，严格的培训制度，热情周到的服务态度为宗旨，帮助每一位学员改善英语发音习惯，张开多年封闭的嘴巴，真正打破聋哑英语的桎梏，让他们真正实现用标准美语进行自信心的，随心所欲的交流。\r\n&lt;/p&gt;\r\n&lt;br /&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(211, 224, '安徽芜湖十里创业园', '&lt;span style=&quot;color:#616466;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;line-height:26px;background-color:#FFFFFF;&quot;&gt;我公司位于芜湖市鸠江区十里创业园，目前代理蒙牛常温牛奶全品项，产品市场覆盖率达到90%以上，年销售额2亿元，公司在职员工100人以上。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(212, 225, '三泰大厦614', '&lt;span style=&quot;color:#666666;font-family:宋体, arial;line-height:28px;background-color:#EEEEEE;&quot;&gt;公司秉承“顾客至上，锐意进取”的经营理念，坚持“客户第一”的原则为广大客户提供优质的服务。欢迎惠顾！&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(213, 226, '地新都会B栋写字楼10层', '&lt;span style=&quot;color:#6A6A6A;font-family:宋体;font-size:10.5pt;line-height:25px;&quot;&gt;&lt;span style=&quot;font-size:12pt;&quot;&gt;芜湖市远方美术培训学校创办于1998年10月，是目前国内唯一由中央美术学院油画方向博士主办并常年亲自授课的美术培训学校，是业内公认的专业实力派的精而优的美术培训学校之一！荣获安徽省芜湖市&quot;民办学校先进办学单位&quot;称号！张甜13866998478武老师15155374737--18955380785现在负责人&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(214, 227, '步行街', '&lt;span style=&quot;color:#333333;font-family:宋体;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;　饮料行业竞争激烈，各大饮料巨头碳酸饮料、饮用水、果汁饮料、茶饮料、功能饮料等不断推陈出新， 但是其背后则是饮料行业同质化严重、无法进行扁平化营销、过度依赖渠道分销也让人难以忽视，如何在同质化竞争中实现创新营销是关键。国内豆制品龙头企业杭州祖名豆制品股份有限公司就是凭借创新营销思路，成功的为祖名豆乳在激烈的竞争中日益脱颖而出，赢得一席之地，成功引领健康饮品新时尚。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(215, 228, '北京东路，师大中校区对面奥顿酒店隔壁3', '就是邮政呀。虽然不知道为什么他们也要兼职', 0, '', 1, '', '', NULL, 0, 0, 0),
(216, 229, '芜湖市长江长市场园F8栋19、、37', '就是卖地板的，我也不知道怎么介绍。', 0, '', 1, '', '', NULL, 0, 0, 0),
(217, 230, '长江路四叉路口，国税局对面。1 13工业学校', '婚庆公司，百度不到详细信息，就这样吧', 0, '', 1, '', '', NULL, 0, 0, 0),
(218, 231, '芜湖市中山路1号', '&lt;span style=&quot;color:#333333;font-family:Verdana, Simsun, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;芜湖新百金陵大酒店（原芜湖新百金鹰国际酒店）位于芜湖繁华的中山路步行街，雄踞城市CBD正中央，毗邻芜湖政务、文化核心区域，出行极为便利。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#333333;font-family:Verdana, Simsun, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;芜湖新百金陵大酒店（原芜湖新百金鹰国际酒店）拥有先进的设施设备与充满人文关怀的管家式服务，为广大宾客营造家的温馨与尊贵感受。酒店拥有多种类型与规模的会议设施，配备专业会议策划与服务团队，可承办各类高规格的会议和大型活动，是芜湖商务度假与聚会交际场所的上佳之选。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(219, 232, '红星美凯龙37到邮件处理中心', '广告公司，没什么好介绍的吧', 0, '', 1, '', '', NULL, 0, 0, 0),
(220, 233, '蜀山区金寨路与黄山路交叉口立基大厦B座6层', '&lt;span style=&quot;color:#333333;font-family:Simsun;font-size:14px;line-height:19.1875px;background-color:#FFFFFF;&quot;&gt;中国政通教育诞生于1999年5月28日，2001年开始公务员考试考前培训辅导和公开选拔领导干部辅导。14年来，政通教育已由一家单纯性的家教辅导，发展为有2000多位专职老师的，集公务员培训教育和政府政策咨询为一体的的战略性的教育集团。集团下属政通公务员培训学院，政通政法干警培训学院，中国公务员培训中心，政通农信社培训学校，政通事业单位培训学校等分校，政通教育14年的历程是一个团结奋进的过程，也是政通人努力奋斗的过程，政通教育已经成为公考三大品牌之一，也是公考界唯一以师资著称的考试品牌。&amp;nbsp;&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(221, 234, '心融汇中江广场西区二楼E-48', '&lt;span style=&quot;color:#666666;font-family:微软雅黑;font-size:13px;line-height:26px;background-color:#FFFFFF;&quot;&gt;学习内容包括： 钢管舞： 钢管舞体能训练、钢管舞形体训练、钢管舞初级、中级高级、钢管舞高级技巧、钢管舞秀 爵士舞： 日韩爵士、欧美爵士、LA风格爵士 领 舞： 针对商演、迪厅领舞、夜店领舞、各种平面秀 道 具： 秀椅子舞、帽子舞、拐杖舞、各种实用道具秀 强化课程：化妆技巧、模拟现场演艺、服装搭配您能胜任各种夜场CULB演艺需要学校特色课程&lt;/span&gt;', 0, '24/37', 1, '', '', NULL, 0, 0, 0),
(222, 235, '三山农贸市场', '&lt;ul class=&quot;cf fz14 mar3 pt20 lh3&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;span class=&quot;dit&quot;&gt;芜湖市三山区公路街与天成路交叉口&lt;/span&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;', 0, '48', 1, '', '', NULL, 0, 0, 0),
(223, 236, '步行街和平大厦319B', '&lt;span style=&quot;font-family:Tahoma, Arial, 宋体b8b体, sans-serif;background-color:#FFFFFF;&quot;&gt;科友软件公司致力于中小企业信息化服务，提供企业财务软件，进销存软件销售与咨询，下设芜湖公司联系电话0553-3930001宣城0563-2710001，科友软件是用友畅捷通软件芜湖宣城两地市总代理，现有客户数量2000余家，受到客户一致好评！ &amp;nbsp;王先生3939689曹15385606689 &amp;nbsp;故小姐18255308697顾经理0553939689&lt;/span&gt;', 0, '24/37', 1, '', '', NULL, 0, 0, 0),
(224, 237, '红星美凯龙2楼', '&lt;span style=&quot;color:#5E4844;font-family:宋体, B8B体4F53, Arial;font-size:14px;line-height:28px;&quot;&gt;广东欧派家居集团有限公司创立于1994年，前身为“广州欧派厨柜企业有限公司”，2009年正式成立“广东欧派集团”。欧派是全国工商联橱柜专业委员会会长单位、国家《住宅厨房》和《住宅整体卫浴间》标准编制单位，共获得中国名牌产品、中国环境标志认证产品等国内外权威部门授予的60余项认证和荣誉称号。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(225, 238, '联盛广场4楼B区20号', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;学而乐教育是一家全国连锁加盟的教育培训机构，旗下两大品牌，安亲课辅和壹蒂儿童美语。我们在全国各地都有分支机构，在上海、杭州、合肥、芜湖都有分校。&lt;/span&gt;', 0, '10/32', 1, '', '', NULL, 0, 0, 0),
(226, 239, '平湖秋月12幢1单元101室', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖市凤凰广告传媒有限公司于2011年3月8日在芜湖&lt;/span&gt;&lt;span id=&quot;2_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;2_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=9204081d55693639&amp;amp;k=%B9%A4%C9%CC%BE%D6&amp;amp;k0=%B9%A4%C9%CC%BE%D6&amp;amp;kdi0=0&amp;amp;luki=2&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=393669551d080492&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F30750%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;工商局&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;登记注册，业务经理是叶章节，公司&lt;/span&gt;&lt;span id=&quot;3_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;3_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=9204081d55693639&amp;amp;k=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;k0=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;kdi0=0&amp;amp;luki=3&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=393669551d080492&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F30750%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;注册资本&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;未知，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，芜湖市金鼎大厦鑫龙阁901室，我们有最好的产品和专业的销售和技术团队，在公司发展壮大的4年里，我们为客户提供最好的产品、良好的技术支持、健全的售后服务，芜湖市凤凰广告传媒有限公司是芜湖广告服务行业知名企业&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(227, 240, '红星美凯龙建材馆2楼B8053号', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;芜湖市时利建材经营部系专营建材销售，旗下经营地址在红星美凯龙旗舰店建材馆二楼，主营中国最大建陶航母广东佛山新明珠集团旗下高端品牌——蒙地卡罗陶瓷，中国专营生产微晶石奢华品牌——新粤耐热高微晶。现为全面拓展业主，真诚欢迎有志向、有奋斗的营销精英加入我们团队。张小姐13470756687 &amp;nbsp;&amp;nbsp;赵店长18949430383 &amp;nbsp;朱春花15357028296副店长 &amp;nbsp;赵女士18949430383、13309635511、、5768836&lt;/span&gt;&lt;span style=&quot;background-color:#FFFFFF;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;', 0, '37', 1, '', '', NULL, 0, 0, 0),
(228, 241, '银湖路大富新村', '&lt;span style=&quot;font-family:宋体, arial, sans-serif;line-height:24px;background-color:#F2E5B9;&quot;&gt;芜湖皇家跆拳道馆是经过市教育局批准并协定为芜湖市跆拳道专业训练基地，受体市委领导长期支持.监督的正规专业的跆拳道。咨询电话：18705530827.从2005年开始至今已发展成拥有多家分馆，学员人数千人的专业跆拳道培训场馆。馆内设施齐全，师资力量雄厚&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(229, 243, '新时代商业街内街47号', '&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;爱尚你婚庆礼仪公司成立于2009年8月8日，是目前芜湖市第一家花巨资从深圳、上海等婚庆前沿城市购进先进婚庆道具的婚庆礼仪公司。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;七彩玫瑰跑马灯流动星光大道为您的婚礼增添了几分华丽；鹤立纯羊毛金狮给您的婚礼更增添了几分喜庆，吉祥和传统，堪称中西合璧的典范，另外，本公司所有员工均有本行业四年工作经验以上，为您的婚礼安全有序的进行提供了切实可行的保障&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(230, 244, '中南建材城', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;好宜家木业有限公司座落于我国经济最发达地区——苏州，地处太湖之滨，是一家专业从事木地板研发、制造的大型企业。公司自成立以来，始终把规模化生产，品牌化运作，科学化管理作为企业发展的新起点。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(231, 245, '汇成名郡1栋314', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;安徽省拓企广告有限责任公司芜湖分公司致力于打造中国最大、最专业的媒体、活动策划企业，拥有庞大的服务网点，安徽省拓企广告有限责任公司芜湖分公司高覆盖、高效率的服务获得多家公司和机构的认可。安徽省拓企广告有限责任公司芜湖分公司将以最专业的精神为您提供安全、经济、专业的服务。&lt;/span&gt;&lt;br /&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(232, 246, '芜湖市芜湖县徽商城建材市场徽商城一栋001号', '&lt;span style=&quot;color:#333333;font-family:Simsun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;格尔森木业是一家定位于&quot;百年企业，百年品牌&quot;的诚信进取型企业，在浙江南浔拥有国际领先的实木地板、实木复合地板、强化木地板的研究和制造中心，在浙江总部拥有2家子公司，在全国各地共设立了10家销售分公司。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(233, 242, '长江长小区16#2-1901、万达广场2号写字楼1505、1506楼', '统一食品的销售，最近没有合作', 0, '37/45', 1, '', '', NULL, 0, 0, 0),
(234, 247, '银湖中路106号、24路到园丁小区', '就是饭店，暑期的时候生意会比较好，到时候应该是需要兼职的', 0, '', 1, '', '', NULL, 0, 0, 0),
(235, 248, '笛洋DE YOUNG PR是专业的公关活动服务机构，主要提供公关活动策划执行、公关活动全程顾问服务。  我们长期致力于提供高品质的公关活动作品，并透过完善的专业服务，最大限度的提升活动的价值。  笛洋', '&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;笛洋DE YOUNG PR是专业的公关活动&lt;/span&gt;&lt;a href=&quot;http://www.chinahr.com/hefei/jobs/50156/&quot; target=&quot;_blank&quot;&gt;服务&lt;/a&gt;&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;机构，主要提供公关活动策划执行、公关活动全程顾问服务。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;我们长期致力于提供高&lt;/span&gt;&lt;a href=&quot;http://www.chinahr.com/hefei/jobs/50126/&quot; target=&quot;_blank&quot;&gt;品质&lt;/a&gt;&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;的公关活动作品，并透过完善的专业服务，最大限度的提升活动的价值。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;笛洋的公关活动策划执行服务主要在于能够针对&lt;/span&gt;&lt;a href=&quot;http://www.chinahr.com/hefei/jobs/53998/&quot; target=&quot;_blank&quot;&gt;客户&lt;/a&gt;&lt;span style=&quot;color:#444444;font-family:宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;的需要，提出创新的方案，协助客户发掘活动价值、整合匹配资源，降低公关活动风险，在专业领域实现客户的最大利益。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(236, 249, '新市口杰成大厦', '&lt;span style=&quot;font-family:宋体;background-color:#F9FFF1;&quot;&gt;我厂专业生产（干花切枝）工艺品，天然植物，使生产的工艺品保持原有的特色，并加之漂色定型，生产的产品更具有观赏价值．已逐步形成“公司＋农户＋基地”的产、供、销一体化的的经营模式，具有种植干花的自然、区位和无污染的三大优势。 主打产品以：龙柳.云龙柳、龙(须)柳.龙桑、三叉木、迎客松.红杉松.曲柳.直升柳.银柳.棕树.红瑞木.芦苇杆.蒲棒.藤条.竹子.铁叶等几十个品种。 本厂始终以诚信为企业的根本，注重信誉、注重产品的创新领先，严把质量关。我们的服务宗旨是客户不分大小、进货不分多少、客户可根据自身需要任意订购花材、原料、半成品、成品，，也可来样定做，我们负责代办托运。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(237, 250, '芜湖市中和路', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;隶属合肥，销售液晶电视，海信黑电&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;石磊18655398866 &amp;nbsp;郭经理15212293050 &amp;nbsp;张经理18715329081 &amp;nbsp;邹强13955338415&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', 0, '24/37', 1, '', '', NULL, 0, 0, 0),
(238, 251, '芜湖市镜湖区凯帆大厦4层403-406', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;朗阁培训中心成立于1999年，总部位于上海，是中国最大的雅思、新托福培训基地。目前在上海、北京、南京、济南、青岛等31个城市拥有至少50个校区。总教学面积超过80000平米，每年学员数量超过100000人，形成完善的全国教学服务网络&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(239, 252, '步行街金鼎大厦金鼎阁', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;派乐多快乐英语是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1264117.htm&quot;&gt;新航道&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;国际教育集团旗下的少儿英语培训品牌。由&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/28622/8585234.htm&quot;&gt;胡敏&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;教授亲率100多名中、美、英少儿英语教育专家、少儿心理教育专家、青少年社会教育专家、一线资深教师，耗时5年，投巨资，专门针对3-8岁的中国少年儿童研发的国内首套拥有自主知识产权的社会英语教育体系&lt;/span&gt;', 0, '24/37', 1, '', '', NULL, 0, 0, 0),
(240, 254, '红星美凯龙建材馆5楼办公室', '&lt;span style=&quot;color:#666666;font-family:arial, STHeiTi, sans-serif, tahoma;background-color:#FFFFFF;&quot;&gt;这是一个中国家居行业新模式发展的时代——大家居消费时代&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:arial, STHeiTi, sans-serif, tahoma;background-color:#FFFFFF;&quot;&gt;这是一个厂商品牌聚集的时代——家居品牌化时代&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:arial, STHeiTi, sans-serif, tahoma;background-color:#FFFFFF;&quot;&gt;这是一个消费者能有更多选择并获取更多个性化消费体验时代——新体验消费时代&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:arial, STHeiTi, sans-serif, tahoma;background-color:#FFFFFF;&quot;&gt;这是红星美凯龙以规模化效应，为消费者提供更多的优惠、更多的产品选择以及更优质的服务的时代——品牌信赖时代&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#666666;font-family:arial, STHeiTi, sans-serif, tahoma;background-color:#FFFFFF;&quot;&gt;这是以Mall的形态促进中国现代商业文明崛起的时代——中国商业新高度的时代&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(241, 253, '红星美凯龙3楼', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;什木坊门业有限公司成立于2001年，是一家集设计、研发、生产及销售于一体的综合性现代化室内套装门企业。注册资金100万元，员工300余人。早期从事高档家具的生产销售，于2006年正式注册成立“什木坊”品牌，专业从事木门生产。随着市场需求不断扩大，&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:14px;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;什木坊先后在重庆九龙坡、长寿征地130余亩进行厂房扩建。现年产值近一亿&lt;/span&gt;', 0, '37', 1, '', '', NULL, 0, 0, 0),
(242, 255, '泰鑫商务中心1510-1511室', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖伟业房地产开发有限公司于2010年11月22日在芜湖工商局登记注册，业务经理是缪南浩，公司&lt;/span&gt;&lt;span id=&quot;4_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;4_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=8b89e568ccb8409d&amp;amp;k=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;k0=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;kdi0=0&amp;amp;luki=1&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=9d40b8cc68e5898b&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F27816%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;注册资本&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;未提供，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，芜湖市弋江区泰鑫商务中心1510-1511室，我们有最好的产品和专业的销售和技术团队&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;张经理4826888 &amp;nbsp;&amp;nbsp;何经理15855991985&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', 0, '10/45/32', 1, '', '', NULL, 0, 0, 0),
(243, 257, '芜湖市新时代商业街169号', '&lt;span style=&quot;color:#666666;font-family:微软雅黑, Helvetica, 宋体, Arial, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;新时代商业街169号(商业街与华津南路叉口向西100米)&lt;/span&gt;', 0, '24/32', 1, '', '', NULL, 0, 0, 0),
(244, 258, '汶水路广粤路路口', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;康师傅控股有限公司（「本公司」）及其附属公司（「本集团」）主要在中国从事生产和销售方便面、饮品及糕饼。本集团于1992年开始生产方便面，并自1996年起扩大业务至糕饼及饮品；目前本集团的三大品项产品，何企划15155346858 袁浩15212217091 叶女士13865531402 策划部施小姐18010773321 魏宇豪18010776661 过女士18555039895&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(245, 256, '长江长对面好百年婚庆公司', '就是婚庆公司，没什么好介绍的吧', 0, '', 1, '', '', NULL, 0, 0, 0),
(246, 259, '红星美凯龙瑞玺木门', '&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	瑞玺木门，全称芜湖瑞玺木业有限公司，自成立以来，产品主要以中、高档原木门、实木门为主。集研发、生产、销售、服务于一体的木制品加工配套企业，产地坐落于著有皖江明珠，创新之城的&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/8246.htm&quot;&gt;芜湖&lt;/a&gt;。\r\n&lt;/div&gt;\r\n&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	瑞玺木门全部选用东南亚热带雨林，南非原始森林之极品材种为主要原材料，经过原料产地初次烘蒸和加工地二次远红外强制雾化喷蒸，线控干燥，微波脱脂及超压消毒等目前较为先进的木材物理抗变和化学裂变定形处理，保证木材加工制作的强化稳定和外界侵蚀。\r\n&lt;/div&gt;\r\n&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	瑞玺木门采用国内外先进的专业木门成套生产设备，经熟练制作木工精雕细做而成，主力控制风源，由德国无水纯氧风力供应机组稳压均衡供应，其淋油涂装达到无水分净化层次，保证漆面透底性强，流平性顺畅，所有漆种选配均由台湾大宝环保化工全程提供和跟踪检测，达到环保标准要求。\r\n&lt;/div&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(247, 260, '侨鸿国际写字楼905-907室', '&lt;h3 style=&quot;font-size:14px;color:#555555;font-family:宋体, arial, sans-serif;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;梵之遥瑜伽静修会——所是芜湖市唯一一家高端专业瑜伽会所，坐落于侨鸿国际写字楼907&lt;span&gt;，全东南亚的装修风格，&lt;/span&gt;&lt;span&gt;120&lt;/span&gt;&lt;span&gt;多坪超大教室，全地暖设施，全年恒温中央空调，细致周到的服务，让您可以在这里尽情享受瑜伽带来的愉悦生活。&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:15pt;&quot;&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;/h3&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(248, 261, '红星美凯龙建材馆2楼', '&lt;p style=&quot;color:#333333;font-family:arial, 宋体;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;nbsp;广东鹰牌陶瓷集团位于中国陶都广东佛山，始建于1974年8月18日，是世界上较具规模的专业化陶瓷企业之一。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:arial, 宋体;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:arial, 宋体;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;鹰牌集团旗下拥有鹰牌陶瓷和华鹏陶瓷两个著名品牌，三个生产基地，专业研发生产瓷质抛光砖、瓷质釉面砖、釉面内墙砖、微晶玻&lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;璃陶瓷复合砖等产品，年产瓷砖逾3000多万平方米。&lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;br /&gt;\r\n&lt;/div&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(249, 262, '黄山中路鹰都花苑4幢首层6号商铺', '&lt;span style=&quot;color:#333333;font-family:Simsun;line-height:21px;background-color:#FFFFFF;&quot;&gt;做一个工程树一个样板”，把每一位客户的家都当成自己的家来装修。华浔人相信，做好每一次服务，不但可以提升自己的实力，赢得客户们的信赖和支持，还可以有效地提升公司的品牌知名度和美誉度，让更多的业主选择华浔品味装饰，让华浔品味装饰为更多的业主服务.&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(250, 263, '芜湖市世纪联华三号电梯601室', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;以“金品质，立天下”为企业使命的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/846676.htm&quot;&gt;深圳市金立通信设备有限公司&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;成立于2002年9月16日，注册资金2亿元，是一家专业手机研发、加工生产、内外销同步进行的民营高科技企业。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(251, 264, '二街', '九阳小家电 &amp;nbsp; &amp;nbsp;涂先生15555339900//5889928弋江嘉园二c3103杨经理15056462871', 0, '24', 1, '', '', NULL, 0, 0, 0),
(252, 265, '红星美凯龙建材馆4楼', '&lt;span style=&quot;color:#555555;font-family:SimSun;font-size:14px;line-height:25px;background-color:#EFEFEF;&quot;&gt;德福诺拥有五大系列产品，其分别是“柏林”系列、“铂金”系列、“勃朗”系列、“伯爵”系列和“云顶”系列。其分别代表了简约、时尚、经典、奢华和尊享这五个主题。每个系列的产品都有自己清晰的市场定位，德福诺还推出了“云顶” 高端定制系列，可以单独为客户提供高端定制一体化的家居服务解决方案。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(253, 266, '广电中心站台对面', '&lt;span style=&quot;color:#555555;font-family:SimSun;font-size:14px;line-height:25px;background-color:#EFEFEF;&quot;&gt;德福诺拥有五大系列产品，其分别是“柏林”系列、“铂金”系列、“勃朗”系列、“伯爵”系列和“云顶”系列。其分别代表了简约、时尚、经典、奢华和尊享这五个主题。每个系列的产品都有自己清晰的市场定位，德福诺还推出了“云顶” 高端定制系列，可以单独为客户提供高端定制一体化的家居服务解决方案。&lt;/span&gt;', 0, '32', 1, '', '', NULL, 0, 0, 0),
(254, 268, '华亭阳光小区2栋2单元4楼', '&lt;span style=&quot;color:#101010;font-family:Helvetica, 宋体, Arial, sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;是一家专业早教机构，占地350平方米，设有体能娱乐区，角色游戏区，玩沙区，蒙氏教室，阅读教室……环境宽敞，教室明亮，空气流通！睿思乐亲子园的教师均毕业于早期教育及相关专业，大专以上学历，取得早期教育指导证书！&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(255, 267, '欧尚一店、13/5/8/23/26路泰苑小区', '&lt;span style=&quot;font-family:Verdana, Arial;font-size:16px;line-height:23px;background-color:#FFFFFF;&quot;&gt;镜湖区美亿婚庆店本着信誉第一、 服务第一，客户至上的宗旨，秉承“顾客至上，锐意进取”的经营理念，把诚信作为公司生存的根本。一切为客户的满意度努力，一切为企业的长期健康的发展而努力！公司以科学的管理方法，精益求精的制造工艺，勇于创新的制造理念，始终坚持“客户第一”的原则为广大客户提供优质的服务。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(256, 269, '绿地新都会B-518', '广告策划公司，没什么好介绍的', 0, '', 1, '', '', NULL, 0, 0, 0),
(257, 270, '芜湖市弋江区火龙岗', '就是普通的药房啊，有时候会有兼职的需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(258, 271, '步行街伟基大厦76-78号店', '&lt;span style=&quot;color:#616466;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;line-height:26px;background-color:#FFFFFF;&quot;&gt;嘻嘻哈哈服饰现有10家连锁门店，主要经营：时尚潮流服饰，潮鞋、潮包以及服配等，门店分布于合肥、南京、芜湖等主要卖场及步行街中心地带，公司未来五年的目标是，打造成华东地区最时尚的潮流文化基地。&lt;/span&gt;', 0, '24/37', 1, '', '', NULL, 0, 0, 0),
(259, 272, '汇成名郡东大门38栋6号', '&lt;span style=&quot;color:#444444;font-size:9pt;line-height:21px;background-color:#FFFFFF;font-family:宋体;&quot;&gt;始创于2003年上海纤瘦美容中心，是一家集美容、美体、理疗为一体的大型现代化美容企业，本公司全方位实行现代化的管理，采用连锁经营方式全面开拓市场。通过多年来孜孜不倦的努力，我们已经拥有现代化的营销管理模式，多名高级技术导师，卓越的销售及售后团队。&lt;/span&gt;&lt;span style=&quot;color:#444444;font-size:9pt;line-height:21px;background-color:#FFFFFF;font-family:宋体;&quot;&gt;&lt;/span&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;color:#444444;font-family:Arial, ����, Helvetica, sans-serif, Verdana;text-align:justify;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-family:宋体;font-size:9pt;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;目前在市面上，已经有多家美容连锁机构加入了我们的团队，我们本着“让客户满意，让公司发展。内圣外王，内明外用，知行合一”的企业宗旨，打造中国美容界知名美容品牌，在专业美容领域，迅速崛起成为行业领袖。&lt;/span&gt;\r\n&lt;/p&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(260, 273, '百龙商场11栋8号', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;主销售金龙鱼食用油、大米、杂粮、豆奶、日化等，&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(261, 274, '皖江金融大厦7F', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;福鑫公司是中国财富管理行业的领军企业，为大众富裕人群和高净值人群提供全方位的理财规划与财富管理顾问服务，将国内外最优秀的固定收益类理财模式通过科学的资产配置带给千千万万理财者。开创的P2P小额信贷理财模式是中国固定收益理财的重要组成部分，福鑫公司服务的客户均获得满意的投资回报&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(262, 275, '神山口段家园', '&lt;span style=&quot;color:#333333;font-family:宋体;line-height:30px;background-color:#FFFFFF;&quot;&gt; 百视装饰，是一个集室内设计、环境设计、建筑设计、工程施工、软装饰设计等一体化的综合性专业设计公司。拥有12年完整的设计、工程经历，并具备建筑室内装饰施工、设计乙级技术师资格的百视装饰，能为您清楚的展现空间独特风格，赋予空间崭新的生命力。坚持以设计引导施工来体现设计灵魂为原则，恪守信誉和质量才是企业生命的准则，下辖七个部门：品牌营销管理部、设计中心（含大宅设计工作室）、工程管理部、材料管理部、软装设计部、财务部、人事行政部。合理有序地推进工作、保证设计质量和工程质量最大限度地达到完美：公司坚持以经营型、管理型、知识型的企业定位，秉承“专家设计品质施工”的企业精神。“坚持以消费者的角度解决问题”的经营理念；公司以创中国整体家居第一品牌为愿景，这既是荣誉，也是责任。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(263, 277, '镜湖区中山路步行街和平大厦9001、9025', '&lt;p style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;text-indent:5px;background-color:#FFFFFF;&quot;&gt;\r\n	芜湖启程教育咨询有限公司主要经营：等产品。公司尊崇“踏实、拼搏、责任”的企业精神，并以诚信、共赢、开创经营理念，创造良好的企业环境，以全新的管理模式，完善的技术，周到的服务，卓越的品质为生存根本，我们始终坚持用户至上 用心服务于客户，坚持用自己的服务去打动客户。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;text-indent:5px;background-color:#FFFFFF;&quot;&gt;\r\n	欢迎各位新老客户来我公司参观指导工作，我公司具体的地址是：芜湖市镜湖区和平大厦901 。\r\n&lt;/p&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(264, 278, '芜湖市弋江区鲁港镇B区3幢B08', '&lt;p style=&quot;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;vertical-align:baseline;color:#282828;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp;&lt;b&gt;&lt;span&gt;芜湖市唯美舞蹈学校，是我市一所正规化专业化的舞蹈培训基地，建校已有数年，培育出许多优秀的舞蹈学员，选送各类专业的舞蹈高校与院校，定期给学员参加考级与各大小赛事。&lt;/span&gt;&lt;/b&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Arial, simsun, sans-serif, 宋体;font-size:14px;vertical-align:baseline;color:#282828;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;&amp;nbsp; 我校也承接各类公司单位个人，舞蹈编排表演比赛等。&lt;/span&gt;&lt;/b&gt;\r\n&lt;/p&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(265, 276, '芜湖市利民路南关口转盘', '&lt;span style=&quot;color:#666666;font-family:Tahoma, Verdana, STHeiTi, simsun, sans-serif;line-height:20px;background-color:#FFFFFF;&quot;&gt;芜湖市弋江区利民路385号的一家餐饮酒店&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(266, 279, '繁昌县安定中路18号', '婚庆公司，没什么好介绍的，有兼职需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(267, 281, '黄山西路国普酒店旁莲花家电', '家电卖场，没什么好介绍的', 0, '', 1, '', '', NULL, 0, 0, 0),
(268, 280, '芜湖安徽师范大学', '&lt;span style=&quot;color:#333333;font-family:Simsun;font-size:14px;line-height:19.1875px;background-color:#FFFFFF;&quot;&gt;为进一步整合安徽师范大学及其附属学校的优质教育资源，实现“事成教育，达己为人”的办学理念，安徽师范大学教育集团于2011年成立了集教育研发、教育培训为一体的专业化教育培训机构“安徽师范大学教育培训中心”（教民134020170000531），总部位于安徽师范大学赭山校区图书馆一楼。现因教育培训中心发展需要，诚聘以下岗位英才。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(269, 282, '芜湖天主教堂', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;中国雨耕山酒文化创意产业园占地&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/898.htm&quot;&gt;面积&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;55亩，总建筑面积约7万平方米，集商业、产业于一体。项目建设完成后，将成为目前国内体量最大、综合性最强的酒类专业市场。&lt;/span&gt;', 0, '48', 1, '', '', NULL, 0, 0, 0),
(270, 283, '摩根100 1203室', '&lt;span style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;line-height:19px;background-color:#FFFFFF;&quot;&gt;芜湖徽粹广告文化传媒有限公司主要经营：null等产品。公司尊崇“踏实、拼搏、责任”的企业精神，并以诚信、共赢、开创经营理念，创造良好的企业环境，以全新的管理模式，完善的技术，周到的服务，卓越的品质为生存根本，我们始终坚持用户至上 用心服务于客户，坚持用自己的服务去打动客户。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(271, 284, '芜湖市第九中学前', '&lt;span style=&quot;color:#333333;font-family:songti, Verdana, Arial, Helvetica, sans-serif;line-height:19px;background-color:#FFFFFF;&quot;&gt;芜湖世纪联华发展有限公司兴芜店主要经营：日用百货、五金交电、家用电器、针棉织品、服装、建筑材料、装潢材料，食品销售、香烟零售（凭许可证经营）、碘盐零售、农产品收购（除粮棉及国家专控）、柜台出租服务，内外墙体租赁，音像制品零售，图书、汽配销售等产品。公司尊崇“踏实、拼搏、责任”的企业精神，并以诚信、共赢、开创经营理念，创造良好的企业环境，以全新的管理模式，完善的技术，周到的服务，卓越的品质为生存根本，我们始终坚持用户至上 用心服务于客户，坚持用自己的服务去打动客户。苏小姐18655330300陶经理18655363266&lt;/span&gt;', 0, '1/3/14/24/26', 1, '', '', NULL, 0, 0, 0);
INSERT INTO `d_company` (`id`, `uid`, `addr`, `cinfo`, `coop`, `route`, `attr`, `chttp`, `remarks`, `cooptime`, `stoptime`, `important`, `locktime`) VALUES
(272, 285, '不详', '&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1976587.htm&quot;&gt;华图教育&lt;/a&gt;是华图宏阳股份旗下品牌，拥有遍布全国的数百家&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/493737.htm&quot;&gt;分支&lt;/a&gt;机构。主要产品包括中央和&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/2935525.htm&quot;&gt;地方公务员&lt;/a&gt;招录考试辅导，&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/65492.htm&quot;&gt;事业单位&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/252343.htm&quot;&gt;三支一扶&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/607768.htm&quot;&gt;村官&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/8969.htm&quot;&gt;选调生&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/2850421.htm&quot;&gt;招警&lt;/a&gt;等考试辅导。\r\n&lt;/div&gt;\r\n&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	北京&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1649213.htm&quot;&gt;华图&lt;/a&gt;宏阳教育文化发展股份有限公司（以下简称“华图宏阳股份”）创始人&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/3103043.htm&quot;&gt;易定宏&lt;/a&gt;2001年来京创业，2003年2月创办北京华图宏阳教育文化发展有限公司（公司前身）。2011年10月，公司整体变更设立为股份有限公司。历经十余年的发展，&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1649213.htm&quot;&gt;华图&lt;/a&gt;宏阳股份现已成为集面授培训、网络教学、公共管理服务于一体，拥有专兼职教师、研究员及员工数千人的综合性教育培训企业。&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1649213.htm&quot;&gt;华图&lt;/a&gt;宏阳股份下设&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1976587.htm&quot;&gt;华图教育&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/10301460.htm&quot;&gt;华图政信&lt;/a&gt;、华图教师等子品牌，专业从事包括公职人员选拔在内的各类人才招录培训、公共管理服务、企业管理培训、大学生就业指导、口才与沟通、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/190.htm&quot;&gt;会计&lt;/a&gt;考试培训等项目。十三年来，华图宏阳股份秉承“以教育推动社会进步”的使命、“德聚最优秀人才，仁就基业长青的教育机构”的愿景，践行“诚信为根、质量为本、知难而进、开拓创新”的&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1114555.htm&quot;&gt;核心价值观&lt;/a&gt;，为政府部门和企事业单位提供公共管理服务，并助无数学子实现了人生理想，也创造了无数个行业奇迹。2014年7月24日，华图在新三板挂牌上市，成为国内首家登陆国内资本市场的教育培训机构。\r\n&lt;/div&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(273, 286, '新时代商业街富贵园7栋2单元602室', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;博雅教育2005年成立于上海，是一家专注小学、初中、高中各科精细化辅导的机构。近十年来，我们始终致力于中小学各科的同步教学辅导及研究，形成了以数、理、化、英语为特色，兼顾其它学科的课程体系。&lt;/span&gt;', 0, '37', 1, '', '', NULL, 0, 0, 0),
(274, 287, '赭山公园对面', '就是一饭店啊，没什么好介绍的', 0, '', 1, '', '', NULL, 0, 0, 0),
(275, 288, '长江长2期29栋1单元402室', '&lt;span style=&quot;color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;天悦琴行是筝乐坊文化艺术中心旗下的一家专业的综合性琴行，主要销售各类中西乐器、配件及音乐书籍等，开设钢琴、小提琴、吉他、笛子、葫芦丝、二胡、扬琴、古筝、古琴等培训课程，并提供租赁和销售二手钢琴、租赁古筝，出租演出服装和提供练琴房等个性服务，旨在为筝乐坊的广大学员提供方便和优惠。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(276, 289, '芜湖市中山北路36号明远宾馆院内', '&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖鸿禧餐饮管理有限公司，业务经理是欧阳黄娟，公司&lt;/span&gt;&lt;span id=&quot;4_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;4_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=5&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=9626b957033d64dd&amp;amp;k=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;k0=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;kdi0=0&amp;amp;luki=5&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=dd643d0357b92696&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F33117%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;注册资本&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;未提供，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，芜湖市镜湖区镜湖世纪城绿地新都会办公B#楼1123，我们有最好的产品和专业的销售和技术团队，我们为客户提供最好的产品、良好的技术支持、健全的售后服务，芜湖鸿禧餐饮管理有限公司是芜湖餐饮业行业知名企业&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(277, 292, '长江路与中山北路交叉口徽商财富广场', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;易百分教育是全国连锁品牌。2005年开始由家教发展成为教育辅导公司；2007年开始走出北京，现在遍布全国15个省市，100多所分校，培养学员超过50万人次，成为中国第一批崛起的中小学辅导品牌的领先者。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(278, 291, '芜湖长江长小区1期17栋3单元203', '位于长江长小区的一家培训机构', 0, '', 1, '', '', NULL, 0, 0, 0),
(279, 293, '新市口大转盘', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;本菜馆是一家正宗徽菜馆，环境优美，现在希望招聘优秀服务员，真诚期待您的加入！&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(280, 294, '芜湖市劳动新村大观山小学门面', '&lt;span style=&quot;color:#6D6D6D;font-family:宋体;font-size:16px;line-height:23px;background-color:#FFFFFF;&quot;&gt;从事高考美术培训和艺术生文化课辅导&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(281, 295, '合肥市蜀山区望江西路维也纳森林花园C20栋—302室', '&lt;span style=&quot;font-size:16px;font-family:Arial, Helvetica, sans-serif;color:#CCCCCC;line-height:26px;background-color:#000000;&quot;&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;富有创意策划到极具高效行动力实施完成的全方位服务，为客户锐意打造精准的品牌公关活动，让客户的每一份投入都精准到位，以非凡的敬业精神和对完美的不懈追求，让客户每一次的品牌提升都璀璨闪耀。&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;', 0, '', 1, '', '没有合作过', NULL, 0, 0, 0),
(282, 296, '新时代商业街沃尔玛超市', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;公司成立于2009年6月，主要经营手机业务，现在是芜湖移动公司制定经销商&lt;/span&gt;', 0, '24、', 1, '', '', NULL, 0, 0, 0),
(283, 297, '蜀山区黄山路385号省外运大厦（合肥学院西邻）709室', '&lt;span style=&quot;color:#696969;font-family:Tahoma, Arial, 宋体, sans-serif;line-height:24px;background-color:#FFFFFF;&quot;&gt;京佳教育创立于2001年5月16日。经过9余年的奋斗，已经从最初二三十名学员，单一的招警考试培训，迅速发展成为今天全国最有名望的集公务员考试培训、招警考试培训、政法干警、军转干、党政领导干部公开选拔、选调生、大学生村干部、事业单位招考、企业招聘、教师招录考试培训、就业指导等领域为一体的教育培训基地之一&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(284, 298, '芜湖市弋江区奥林匹克公园附近', '&lt;span style=&quot;font-family:宋体, Arial;font-size:14px;line-height:20px;&quot;&gt;机动车驾驶员培训有限公司&lt;span style=&quot;font-family:宋体, Arial;font-size:14px;line-height:20px;&quot;&gt;，是三山区唯一一所正规驾校，公司占地六十亩，具有雄厚的师资力量、齐全的现代化教学设备和一流的园林式训练场地。&lt;/span&gt;&lt;/span&gt;', 0, '10路 16路 18路 19路 26路 29路 41路环线 45路 46路环线 106路晚班 109路 109路晚班 113路晚班 特1路', 1, '', '', NULL, 0, 0, 0),
(285, 299, '长江中路56号长江中路与赭山西路交叉路口往南50米', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;芜湖协和医院&lt;/span&gt;&lt;span style=&quot;background-color:#FFFFFF;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;&quot;&gt;是经芜湖市卫生局批准设立的一座现代化二级综合性医院，它集科研、临床、预防、保健、教学、康复为一体，医院营业面积6000余平方米，常年开设妇科、产科、泌尿外科、内科、普外科、中医科、儿科、眼科、耳鼻咽喉科、口腔科、骨科、皮肤科、感染科、急诊科、病理科、康复科等临床科室以及检验科、影像科等医技科室。&lt;/span&gt;\r\n&lt;/p&gt;', 0, '1路2路3路12路13路14路18路28路环线35路38路内环38路外环102路115路夜班', 1, '', '', NULL, 0, 0, 0),
(286, 300, '北京西路铁佛花园内', '&lt;span style=&quot;color:#666666;font-family:微软雅黑, 宋体;font-size:14px;line-height:30px;background-color:#FFFFFF;&quot;&gt;是一家集户外媒体代理与发布；各种钢结构广告牌、标识标牌及门头制作；活动、会展策划与执行和企业VI设计、印刷为一体的综合性公司。&lt;/span&gt;&lt;br /&gt;', 0, '3路6路12路16路21路23路42路101路109路109路晚班111路111路夜班111晚班空调', 1, '', '', NULL, 0, 0, 0),
(287, 302, '赤铸山西路都市生活广场电信营业厅', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;本店是芜湖市首批获得电脑数码产品经营资格证的私营门市铺，主要经营各种品牌的笔记本，DIY组装机的销售。进年来，经营范围逐步壮大，已经承接联想、华硕、三星等品牌机的售后服务。&lt;/span&gt;', 0, '13路14路24路43路102路', 1, '', '', NULL, 0, 0, 0),
(288, 303, '融汇中江广场摩根2209-2210室', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;是一家集住宅、办公、设计、施工为一体化的装饰服务公司&lt;/span&gt;', 0, '1路4路8路14路24路31路107路内环晚班107路外环晚班空调108路晚班', 1, '', '', NULL, 0, 0, 0),
(289, 304, '芜湖镜湖区步行街妇幼保健院对面', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;目前“聪明树”已基本完成了　“聪明树中国儿童启智教育”系列早教教学体系的建立，形成了一条从母亲孕前到儿童12岁，线上到线下，教学平台完整、科学、系统，教育优势特点突出。&lt;/span&gt;', 0, '1路4路8路14路24路31路107路内环晚班107路外环晚班空调108路晚班', 1, '', '', NULL, 0, 0, 0),
(290, 306, '弋江区新时代商业街', '&lt;span style=&quot;color:#444444;font-family:SimSun;line-height:24px;background-color:#FFFFFF;&quot;&gt;快鱼集成吊顶致力于打造臻美厨卫空间，本着“自然于生活空间的经营理念”探求家居装饰美感的精髓。追求健康 原生态美的生活空间。让厨卫空间尽显家的温馨浪漫&lt;/span&gt;', 0, '2路10路16路17路18路19路26路29路30路32路103路晚班106路晚班109路109路晚班113路晚班', 1, '', '有需求，但排斥人力中介', NULL, 0, 0, 0),
(291, 307, '伟星城商业街商9-02', '&lt;span&gt;&lt;span style=&quot;line-height:34px;&quot;&gt;是一家中餐馆，酒店，餐饮服务&lt;/span&gt;&lt;/span&gt;', 0, '14路', 1, '', '', NULL, 0, 0, 0),
(292, 308, '福海家居西', '派送传单，周一到周五每天3-5人。周末需求量多。6小时60元，每天8:20集合', 0, '5路 6路 8路 17路 18路 23路 24路 30路 32路 37路 43路 101路 106路晚班 110路晚班 111路', 1, '', '', NULL, 0, 0, 0),
(293, 309, '芜湖市鸠江区芜湖港二路5号（石城小区对面）', '&lt;span style=&quot;color:#4C4C4C;font-family:Helvetica, Tahoma, Arial, sans-serif, Simsun;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;芜湖运泰驾驶培训有限公司是一所国家一级资质的大型驾校，&lt;/span&gt;', 0, '3路19路', 1, '', '', NULL, 0, 0, 0),
(294, 310, '齐落山路银湖小区南门旁', '&lt;span style=&quot;color:#333333;font-family:宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;安徽省芜湖市宇丰跆拳道俱乐部是经过安徽省体育局批准的一家专业跆拳道培训基地。&lt;/span&gt;', 0, '47路', 1, '', '', NULL, 0, 0, 0),
(295, 311, '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;植物科技，天然养肤，秉承着法国传统美容护肤的底蕴，结合法国现代时尚妆容及独到先进技术，向全球女性展示着天然、纯净、健康、和谐和美的创美主张。&lt;/span&gt;&lt;br /&gt;', 0, '', 1, '', '需要女生', NULL, 0, 0, 0),
(296, 305, '鸠江区', '&lt;span&gt;&lt;span style=&quot;line-height:20px;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;伟星银湖时代楼盘&lt;/span&gt;，销售楼房，房产。&lt;/span&gt;&lt;/span&gt;', 0, '47路', 1, '', '', NULL, 0, 0, 0),
(297, 312, '中山南路水木年华', '&lt;span style=&quot;color:#888888;font-family:Tahoma;line-height:20px;&quot;&gt;婚礼策划，婚礼现场布置，专业摄像，司仪，婚礼用车，有各种花车（特种车辆，本公司拥有大量婚车资源）&lt;/span&gt;', 0, '4路8路13路14路31路37路44路107路内环晚班107路外环晚班空调114路晚班空调115路夜班', 1, '', '', NULL, 0, 0, 0),
(298, 313, '上二街', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#6E6E6E;font-family:''Hiragino Sans GB'', arial, simsum, ''WenQuanYi Micro Hei'', sans-serif;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;主营礼仪花束、庆典花艺、仿真花艺等各类花篮绿植，情意浓浓尽在苏合香花店。&lt;/span&gt;&lt;/span&gt;', 0, '1路2路17路18路27路28路环线38路内环38路外环103路晚班108路晚班', 1, '', '', NULL, 0, 0, 0),
(299, 314, '镜湖区民生路凯帆大厦7层', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;是一家集国内广告发布文化事业传播、大型活动策划、品牌策划推广、vis终端导入、广告装饰工程，大型演出、网络科技媒体为一体的综合性文化传播公司。&lt;/span&gt;', 0, '1路 2路 18路 24路 27路 38路外环', 1, '', '', NULL, 0, 0, 0),
(300, 315, '鸠兹广场电询大楼', '&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;欣欣服饰&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;有限公司是一家专门生产服饰的厂家&lt;/span&gt;', 0, '3路 6路 12路 16路 21路 23路 42路 101路 109路 109路晚班 111路 111路夜班 111晚班空调', 1, '', '', NULL, 0, 0, 0),
(301, 316, '摩根大厦1023室', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;芜湖市伟宏文化传媒有限公司是一家专门为大型企事业单位提供一站式广告策划、包装、宣传为一体的专业性传媒公司。公司拥有完善的广告宣传平台，一流的营销宣传团队，丰富的行业经验。以“先做人，后做事”为宗旨；以规范化、专业化、多元化为经营方针；以专业、严谨、诚信、共赢为服务理念。目前公司主营项目包括媒体释放平台和会展活动两大块。&lt;/span&gt;', 0, '2路 13路 17路 18路 27路 28路环线 37路 38路内环 38路外环 44路 114路晚班空调 115路夜班', 1, '', '', NULL, 0, 0, 0),
(302, 317, '凤凰美食街33号', '&lt;span style=&quot;font-family:Verdana, Arial;font-size:13px;line-height:23px;background-color:#FFFFFF;&quot;&gt;纽斯婚庆成功承办上千场婚礼，有着丰富的婚礼策划经验，是集婚礼策划，婚纱租售艺术摄影，会场布置，司仪，化装，DVD制做，各类演出为一体的专业庆典服务机构&lt;/span&gt;', 0, '8路17路23路24路26路34路37路43路101路103路晚班108路晚班110路晚班学生专线1路', 1, '', '', NULL, 0, 0, 0),
(303, 318, '芜湖市新华园2-7', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;专业从事数字卫星电视及有线电视设备的开发、生产、销售的高新技术生产型企业&lt;/span&gt;', 0, '2路13路17路18路27路115路夜班', 1, '', '', NULL, 0, 0, 0),
(304, 319, '芜湖市名流印象1513', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;我们精通企业VI、CI、AI系统品牌策划、企业宣传推广策划、市场营销策划，致力于为客户提供最具价值的商业广告。多次承办大型比赛活动、商业演出、开业庆典及婚庆活动，拥有丰富的实战经验，为企业品牌形象塑造及价值提升出谋划策。&lt;/span&gt;', 0, '2路13路17路18路27路36路41路环线46路环线48路115路夜班', 1, '', '', NULL, 0, 0, 0),
(305, 320, '', '&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:30px;&quot;&gt;集团的主营业务分为：学历学位、建筑工&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:30px;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-family:宋体;font-size:16px;line-height:30px;&quot;&gt;程、医药卫生、财会经济、资格职称五大块，各项目以省会合肥为基础，辐射省内各地市和周边省会城市，以专业专注，成就未来的办学理念，赢得了广大考生的一致赞誉。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(306, 321, '融汇中江广场', '&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;&quot;&gt;拥有丰富的婚礼经验，对于芜湖酒店的布置拥有成熟的把控能力。 我们致力于中高端客户人群，努力用认真去完成每一场婚礼。 我们投入大量的资金设计制作了全芜湖第一无二的场景道具，为您的婚礼提供一流的差异化服务。&amp;nbsp;&lt;/span&gt;从特色场布，婚纱跟妆，婚礼车队，婚礼演出，音响灯光，喜糖喜酒，提供一站式体验&amp;nbsp;&lt;/span&gt;', 0, '1路 4路 8路 14路 24路 31路 107路内环晚班 107路外环晚班空调 108路晚班', 1, '', '', NULL, 0, 0, 0),
(307, 322, '芜湖弋江西山路东汇物流2号库', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;本公司主要经营六个核桃、西王玉米油等产品&lt;/span&gt;', 0, '44路', 1, '', '', NULL, 0, 0, 0),
(308, 323, '欧亚达', '&lt;span style=&quot;color:#777777;font-family:Tahoma, arial, 宋体;line-height:21px;background-color:#FFFFFF;&quot;&gt;伦美嘉的产品都是设计师从美式、英式、法式家具中吸取很多元素，融合后设计成适合国内市场消费的产品。产品具有板式家具的灵活组合，也有实木家具的使用性能。主要的层板、背板、抽屉板都采用俄罗斯进口的樟子松木，家具的框架、以及柱子采用实木。表面油漆健康环保；内面的樟子松表面是水性清漆；衣柜的背板采用香樟木板，香樟木特有的清香，具有防虫、防蛀、消除异味、提神醒脑等功效&lt;/span&gt;', 0, '4路', 1, '', '', NULL, 0, 0, 0),
(309, 324, '国际会展中心对面汇成名郡', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;以提供企业系统型服务为宗旨，致力于企业广告宣传制作及户外发布、广告工程装饰、户外大中小型演出、人力资源服务策划、企业咨询管理、商业活动推广等。&lt;/span&gt;', 0, '36路', 1, '', '', NULL, 0, 0, 0),
(310, 325, '镜湖区银湖中路福海家具国际博览中心二楼', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;是一家集高级套房、书房、客厅、餐厅、沙发的研发、生产和销售于一体的大型家具企业。&lt;/span&gt;', 0, '19路23路103路晚班学生专线1路', 1, '', '', NULL, 0, 0, 0),
(311, 326, '弋江区利民西路与中山南路交叉口往东150米北侧', '&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;一家集设计、制造、安装于一体的专业&lt;/span&gt;&lt;span style=&quot;color:#CC0000;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;木门&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;厂&lt;/span&gt;', 0, '4路', 1, '', '', NULL, 0, 0, 0),
(312, 327, '弋江区高新开发区华夏科技园区呼叫中心一楼', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;安徽天斯努信息技术股份有限公司坐落在美丽的江城芜湖市高新技术开发区，秉承打造一流自助云打印运营商的企业宗旨，&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;自助云打印公共平台的应用将为广大的打印用户带来便利、节约、安全的打印环境。今天我们已经开始在全国各大居民社区、高校、写字楼、连锁商务酒店、各类服务中心等公共场所推广自助云打印公共平台，用实际行动来兑现“健康、智能”的企业经营理念。&lt;/span&gt;&lt;/span&gt;', 0, '26路37路44路51路113路晚班206路', 1, '', '', NULL, 0, 0, 0),
(313, 328, '银湖区', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;通过引进国际先进设备，建成亚洲领先的木门自动化生产线，同时依托母公司大亚与圣象两大集团在木业产业链、品牌、供应商网络、产品规划与设计、销售渠道、区域服务与物流等方面优势，重点打造行业的领导品牌，产业的产销规模和经济效益也长期位于同行业领先地位。圣象木门拥有亚洲最大的室内木门制造系统&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(314, 329, '', '&lt;span style=&quot;color:#555555;font-family:����, Verdana, Arial, Helvetica, sans-serif;font-size:large;line-height:29px;background-color:#FFFFFF;&quot;&gt;大唐合盛与国际一流陶瓷集团建立从设计到营销战略联盟，聘请国外顶级设计大师加盟；以领先的产品研发设计，率先将高吨位压机、多辊交叉印花、喷墨印刷等技术应用于磁砖生产，为全球客户提供皇石·昆仑玉系列、禅武·大理石系列、敦煌·仿古砖系列等多个系列高质量的产品。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(315, 330, '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;专业致力于人体睡眠&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;研究，从事整套健康睡眠系统的研发、设计、生产及营销。其产品设计理念源自欧洲，寝具设计秉承人体工程学特点，力求营造理想睡眠微环境。全球范围优质睡眠资源整合和量身定制的睡眠服务是其区别于同行的最大特点。&lt;/span&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(316, 331, '红星美凯龙', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;汽车日产Cedric公爵&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;频道提供日产Cedric公爵&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:arial;font-size:13px;line-height:20px;background-color:#FFFFFF;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', 0, '25路环线35路37路', 1, '', '', NULL, 0, 0, 0),
(317, 332, '红星美凯龙一楼', '&lt;span style=&quot;color:#333333;font-family:����, Verdana, Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;&quot;&gt;台面 浴缸及配件 面盆及配件 座厕及配件&lt;/span&gt;', 0, '25路环线35路37路', 1, '', '', NULL, 0, 0, 0),
(318, 333, '步行街', '电脑数码各种电子产品卖场', 0, '', 1, '', '', NULL, 0, 0, 0),
(319, 334, '芜湖县', '教育培训机构，暑期有用人需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(320, 335, '星隆国际城', '小型餐饮，简单舞团介绍的。', 0, '', 1, '', '', NULL, 0, 0, 0),
(321, 337, '', '做各种代理工作', 0, '', 1, '', '', NULL, 0, 0, 0),
(322, 336, '银湖南路美食街5#04号', '美食，香辣虾美食', 0, '8路 17路 23路 24路 26路 34路 37路 43路 101路 103路晚班 108路晚班 110路晚班', 1, '', '7.8月份有需要', NULL, 0, 0, 0),
(323, 338, '镜湖区 中山北路77号 ，近黄山路', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;全球知名的国际酒店管理公司——洲际酒店集团管理的高级商务会议酒店，目前是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/4380.htm&quot;&gt;安徽&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;档次最高的酒店。&lt;/span&gt;', 0, '1路3路8路14路23路24路25路环线26路34路35路43路101路103路晚班105路内环105路外环108路晚班110路晚班学生专线1路', 1, '', '平时兼职', NULL, 0, 0, 0),
(324, 339, '镜湖区银湖北路87和89号与天门山西路交汇处', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;汉爵广场大酒店是汉爵的首家跨省经营的连锁酒店，&lt;/span&gt;', 0, '8路19路25路环线35路105路内环105路外环106路晚班115路夜班', 1, '', '招全职，实习生', NULL, 0, 0, 0),
(325, 340, '酒店地址：安徽省芜湖市镜湖区长江中路15号', '&lt;span style=&quot;font-family:Arial, 宋体;font-size:14px;line-height:16px;background-color:#F8F5EC;&quot;&gt;希尔顿逸林是希尔顿酒店管理集团旗下的高档酒店品牌，遍布在全球超过230个门户城市、大都市以及度假胜地。酒店致力于为全球商务人士和休闲度假旅行者提供真正的温暖关爱服务。&lt;/span&gt;', 0, '2路13路17路18路27路36路41路环线46路环线48路115路夜班', 1, '', '直招实习生，人力公司提供小时工', NULL, 0, 0, 0),
(326, 341, '弋江区大工山路38号', '&lt;span style=&quot;color:#464646;font-family:arial, 宋体;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;芜湖中央城大酒店是由安徽安兴杰成房地产开发公司投资，按国际五星级标准设计建造，集住宿、餐饮、会议、娱乐为一体的商务酒店。总建筑面积38000平方米，是目前芜湖市规模最大、档次最高的酒店之一，&lt;/span&gt;', 0, '10路24路26路32路36路37路44路109路109路晚班114路晚班空调', 1, '', '暂时不招', NULL, 0, 0, 0),
(327, 342, '鸠江区 经济技术开发区越秀路1号近信德华府，银湖春天别墅，开发区管委会', '&lt;span style=&quot;color:#91844D;font-family:Verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFFFF;&quot;&gt;蕪湖悅圓方酒店是由圆方(香港)酒店管理有限公司管理的奢华级酒店，坐落于美丽的芜湖市国家级经济技术开发区中心的『银湖』之畔，酒店毗邻芜湖市方特欢乐世界和芜合高速长江大桥收费站出口&lt;/span&gt;', 0, '43,110路', 1, '', '5月底开始招暑假工，实习生一直招，兼职一直招', NULL, 0, 0, 0),
(328, 343, '镜湖区北京中路10号近九华中路', '&lt;span style=&quot;font-family:Verdana, Arial, 宋体;font-size:14px;line-height:25px;&quot;&gt;以文化铸造品牌价值的奥顿酒店位于芜湖市中心绝佳地段，前苏联式地标性建筑，紧临镜湖、步行街，距火车站仅5分钟车程。 　　多元美食文化，五大风格餐厅和印象吧长廊，从简洁实惠的快餐到适合商务宴请的高档餐厅，从粗犷的牛羊菜馆到小资的情调餐厅，带给您意想不到的美食体验。 　　房间内法式设计元素以及房间外大堂、马拉加艺术廊等公共区域带来双重艺术化体验，点滴处尽显优雅与精致。 酒店内WIFI全覆盖，免费使用；提供美味、营养、丰盛的环球全自助早餐；深度注重宾客睡眠计划；24小时不间断动力系统，保证超舒适沐浴体验&lt;/span&gt;', 0, '4路6路12路21路25路环线31路33路35路42路107路内环晚班107路外环晚班空调111路111路夜班111晚班空调', 1, '', '暂时不招', NULL, 0, 0, 0),
(329, 344, '位于弋江区九华南路1005号，', '&lt;span style=&quot;font-family:Verdana, Arial, 宋体;font-size:14px;line-height:25px;&quot;&gt;&lt;span style=&quot;font-family:Verdana, Arial, 宋体;font-size:14px;line-height:25px;&quot;&gt;集客房、餐饮、会议、健身、会展于一体 设施齐全 　　芜湖海螺国际会议中心是按五星级标准投资兴建的国际化度假酒店。&lt;/span&gt;&lt;/span&gt;', 0, '16路29路50路109路109路晚班218路', 1, '', '招实习生兼职由人力资源公司提供。暑假工没计划', NULL, 0, 0, 0),
(330, 345, '鸠江区凤鸣湖路和齐落山路交汇处（205国道）', '&lt;span style=&quot;font-family:宋体;line-height:22px;background-color:#FFFFFF;&quot;&gt;湖辉西方财富大酒店是按国际五星级标准打造的酒店，由美国最佳西方国际管理公司管理。酒店位于安徽芜湖鸠江经济技术开发区，距离芜合高速路入口仅1.5公里,，火车站7公里，客运长途汽车站3公里, 距市区11公里交通方便、地理位置优越。酒店总投资2.6亿元人民币，总建筑面积2.3万平方米，地面八层，地下一层，拥有各类客房216间（总统套房1套）,集中餐厅及中餐包房、自助餐厅、会议室、宴会厅、游泳池、健身房、美容SPA为一体的高星级休闲商务酒店，内部设施齐全，服务模式新颖独特，必将为尊贵宾客带来全新的享受。　　酒店开业时间2011年1月25日，主楼高8层，附楼高4层，客房总数216间（套）。&lt;/span&gt;', 0, '5路13路43路', 1, '', '6月初招暑假工。兼职不需要', NULL, 0, 0, 0),
(331, 346, '镜湖区中山路1号中和路与沿河路交汇处', '&lt;span style=&quot;color:#555555;font-family:Arial;line-height:21px;background-color:#FFFFFF;&quot;&gt;芜湖新百金鹰国际酒店位于芜湖繁华的中山路步行街，雄踞城市CBD正中央，毗邻芜湖政务、文化核心区域，绝佳的地理位置令商务出行极为便利，先进的设施设备与充满人文关怀的管家式服务为广大宾客营造家的温馨与尊贵感受，&lt;/span&gt;', 0, '2路13路17路18路27路28路环线37路38路内环38路外环44路114路晚班空调115路夜班', 1, '', '', NULL, 0, 0, 0),
(332, 347, '弋江区 鸿汇城4楼新时代商业街', '&lt;span style=&quot;font-family:Simsun;line-height:19px;background-color:#F6E4A6;&quot;&gt;&amp;nbsp;魔石泡泡鱼餐饮管理有限公司由马鞍山市著名企业家投资上千万人民币倾力打造的特色餐饮连锁企业，公司旗下在上海、广东、厦门、马鞍山等全国各大中小城市均有多家连锁店。魔石泡泡鱼以展现时尚品味火锅，弘扬中华美食文化为己任，倡导绿色精致饮食，健康美味生活，以建经典时尚品味的连锁餐饮品牌为目标，它将时尚前卫的设计元素与传统特色的饮食产品和先进的经营理念.&lt;/span&gt;', 0, '4路8路14路31路37路', 1, '', '招全职。暑假工可以过去面试', NULL, 0, 0, 0),
(333, 348, '弋江区 中央城财富街5号楼176号乐天马特1楼,迪拜网咖对面', '&lt;h5 class=&quot;biz-info__title&quot; id=&quot;yui_3_16_0_1_1431916995013_2228&quot; style=&quot;font-size:14px;font-family:''Hiragino Sans GB'', '' Microsoft YaHei'', ''WenQuanYi Micro Hei'', arial, sans-serif;color:#333333;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;a class=&quot;poi-link&quot; href=&quot;http://wuhu.meituan.com/shop/1513722&quot; target=&quot;_blank&quot; id=&quot;yui_3_16_0_1_1431916995013_2229&quot;&gt;禾味海鲜自助餐厅&lt;/a&gt;\r\n&lt;/h5&gt;', 0, '36路t1路特1路', 1, '', '', NULL, 0, 0, 0),
(334, 349, '安徽芜湖市新时代商业街万豪白领3号楼', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;2003年，澳门豆捞品牌全球首创。何为豆捞？“捞福、捞宝、捞dollar（美元）”。这一场“豆捞”火锅风暴就此引发。 “Do now！（现做）”的理念驱动着澳门豆捞一路领先，勤捞人生真美味。&lt;/span&gt;', 0, '2路14路17路30路31路41路环线45路46路环线103路晚班107路内环晚班107路外环晚班空调115路夜班t1路特1路', 1, '', '只招全职', NULL, 0, 0, 0),
(335, 350, '弋江区 新时代商业街117号老百姓大药房对面', '位于新时代商业街的日本料理烧烤', 0, '4路，24路', 1, '', '只招全职', NULL, 0, 0, 0),
(336, 351, '中和路11号芜湖苏宁广场第7层第709号商铺', '&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;新石器自1999年创立以来，&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;在传统烤肉工艺的基础上，汲取众家之长，&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;用心创新“纸上烧烤”的烹饪方式，&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;精选健康优质食材，坚持天然独家酱料，&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;加之“五色五味”的韩式石锅拌饭，均衡膳食营养，&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;在享受美味的同时，又能体验DIY的逸趣；&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;新石器以美味的菜品，亲民的价格，快捷的供餐，周到的礼遇和优雅的环境，&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#5D524B;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;为每一位热爱烧烤的顾客提供超值的消费体验。&lt;/span&gt;', 0, '1路4路8路14路24路31路107路内环晚班107路外环晚班空调108路晚班', 1, '', '招暑假工，', NULL, 0, 0, 0),
(337, 352, '芜湖弋江区花津南路中央城财富街1栋3楼', '&amp;nbsp;知名品牌火锅店。芜湖有多家分店', 0, '24路32路36路37路44路114路晚班空调学生专线1路', 1, '', '招长期兼职，周一到周五晚上5点到9点。周末全天', NULL, 0, 0, 0),
(338, 352, '芜湖弋江区花津南路中央城财富街1栋3楼', '&amp;nbsp;知名品牌火锅店。芜湖有多家分店', 0, '24路32路36路37路44路114路晚班空调学生专线1路', 1, '', '招长期兼职，周一到周五晚上5点到9点。周末全天', NULL, 0, 0, 0),
(339, 353, '弋江区中央城财富街25幢107号CGV影城后面', '知名海鲜自助火锅餐厅', 0, '36路t1路特1路', 1, '', '', NULL, 0, 0, 0),
(340, 354, '新时代商业街金玺商业广场沃尔玛一楼', '知名品牌餐厅。主要做干锅火锅', 0, '4路14路31路36路37路44路107路内环晚班107路外环晚班空调114路晚班空调115路夜班', 1, '', '暑期工要人。兼职人暂时够了。', NULL, 0, 0, 0),
(341, 355, '弋江区新时代商业街25号（热带雨淋斜对面）', '主打小龙虾的餐厅。', 0, '14路31路32路107路内环晚班107路外环晚班空调115路夜班', 1, '', '2个暑假工。下午4点到凌晨3点。', NULL, 0, 0, 0),
(342, 356, '镜湖区内', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;同庆楼菜馆于1925年开业，由19户徽商联合创办，公推徽州&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/659171/659171.htm&quot;&gt;绩溪&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;人程裕有出任经理，设在芜湖市中二街，以经营安徽沿江风味菜为特色。1952年迁至&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/193801/10921418.htm&quot;&gt;中山路&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;，从50年代到80年代几经扩建，又增加了&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/13544118/14096214.htm&quot;&gt;淮扬风味&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;菜，有“金酱扒鸭”、“&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/700584.htm&quot;&gt;香糟肉&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;”、“&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/133911.htm&quot;&gt;荷包鲫鱼&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;”等主要名菜，另有&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/52997.htm&quot;&gt;蟹黄汤包&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/353432.htm&quot;&gt;煮干丝&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;等知名小吃。著名演员&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/36038/5192806.htm&quot;&gt;严凤英&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/282734/282734.htm&quot;&gt;王少舫&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;等曾驻场演出。毛泽东、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/1770/1770.htm&quot;&gt;刘少奇&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/1831/6825824.htm&quot;&gt;陈毅&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/1834/1834.htm&quot;&gt;刘伯承&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;等视察时，该店曾为之制作菜肴。1965年越南胡志明主席在该店品尝了“奶油&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/23979.htm&quot;&gt;鲥鱼&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;”。1999年，&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/7701769/7612912.htm&quot;&gt;国内贸易部&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;认定为“中华老字号”。&lt;/span&gt;', 0, '10路16路18路19路26路29路41路环线45路46路环线106路晚班109路109路晚班113路晚班t1路特1路', 1, '', '数个分店都要人。自己店内。要5个暑期工。2个男孩子3个女孩子。80一天。人数再多可以安排别的店', NULL, 0, 0, 0),
(343, 357, '弋江区 中央城财富街6号楼104号（靠近乌霞山路公交站牌）', '位于中央城的主题餐厅', 0, '24路32路36路37路44路114路晚班空调学生专线1路', 1, '', '招全职', NULL, 0, 0, 0),
(344, 358, '安徽芜湖芜湖鸿汇城中山南路与新时代商业街交叉口处', '&lt;span style=&quot;color:#4B4B4B;font-family:arial, 宋体;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;金釜山餐饮管理有限公司是一家大型韩式自助餐饮连锁企业&lt;/span&gt;', 0, '36路41路环线46路环线48路', 1, '', '兼职只要周五晚上，周末两天。10/时', NULL, 0, 0, 0),
(345, 359, '弋江区新时代商业街D区20幢（商业街中段）', '&lt;span style=&quot;color:#333333;font-family:Verdana, Geneva, sans-serif;background-color:#FFFFFF;&quot;&gt;阿瓦山寨风情食街是咸阳阿瓦餐饮文化连锁有限公司研发人员秉承“溯源•践道”的企业精神踏遍祖国湘、黔、滇的山水奇峰，感悟苗、土、布依各族人民的古朴民风，历时六年独辟蹊径，首开山寨餐饮文化之先河，成功开发出的全国首家原生态山寨主题餐厅。&lt;/span&gt;', 0, '8路14路31路36路37路44路107路内环晚班107路外环晚班空调114路晚班空调115路夜班', 1, '', '招全职', NULL, 0, 0, 0),
(346, 360, '芜湖弋江区中央城财富街1栋4楼', '&lt;span style=&quot;color:#333333;font-family:微软雅黑, 宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;芜湖爵士岛咖啡餐饮管理有限公司，业务经理是郭彩玲，公司&lt;/span&gt;&lt;span id=&quot;3_nwp&quot; style=&quot;background-color:#FFFFFF;color:#333333;font-size:14px;line-height:23px;font-family:微软雅黑, 宋体, Verdana, sans-serif;&quot;&gt;&lt;a id=&quot;3_nwl&quot; href=&quot;http://cpro.baidu.com/cpro/ui/uijs.php?c=news&amp;amp;cf=1001&amp;amp;ch=0&amp;amp;di=128&amp;amp;fv=11&amp;amp;jk=ea190bd94bbcc7dc&amp;amp;k=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;k0=%D7%A2%B2%E1%D7%CA%B1%BE&amp;amp;kdi0=0&amp;amp;luki=5&amp;amp;n=10&amp;amp;p=baidu&amp;amp;q=10050091_cpr&amp;amp;rb=0&amp;amp;rs=1&amp;amp;seller_id=1&amp;amp;sid=dcc7bc4bd90b19ea&amp;amp;ssp2=1&amp;amp;stid=0&amp;amp;t=tpclicked3_hc&amp;amp;tu=u1830537&amp;amp;u=http%3A%2F%2Fwww%2E11467%2Ecom%2Fwuhu%2Fco%2F33176%2Ehtm&amp;amp;urlid=0&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#0000FF;&quot;&gt;注册资本&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:微软雅黑, 宋体, Verdana, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;未提供，我公司的办公地址位于被孙中山称为“长江巨埠，皖之中坚”的芜湖，芜湖市弋江区中央城财富街1#楼402号，我们有最好的产品和专业的销售和技术团队，我们为客户提供最好的产品、良好的技术支持、健全的售后服务，芜湖爵士岛咖啡餐饮管理有限公司是芜湖餐饮业行业知名企业&lt;/span&gt;', 0, '24路32路36路37路44路114路晚班空调学生专线1路', 1, '', '兼职招满了。暑期工不确定。', NULL, 0, 0, 0),
(347, 361, '中央城财富街15栋109', '知名品牌自助烧烤餐厅。', 0, '24路32路36路37路44路114路晚班空调学生专线1路', 1, '', '', NULL, 0, 0, 0),
(348, 362, '弋江区 万豪路7-8号', '龙虾为主的知名餐厅。', 0, '2路10路16路17路18路19路26路29路30路32路103路晚班106路晚班109路109路晚班113路晚班', 1, '', '', NULL, 0, 0, 0),
(349, 363, '芜湖境内', '知名一统捞火锅餐厅。', 0, '25路环线33路35路42路105路内环105路外环105路晚班', 1, '', '4.5个暑假工。兼职晚上5点到9点。..全职月休3天。工资第一个月2000转正2500', NULL, 0, 0, 0),
(350, 364, '中央城财富街22B号108-110门面', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;金原道自助火锅烧烤城，正统的自助火锅烧烤，多年来以卓越的管理、上佳的服务、美味的菜肴以及实惠的价格，推广着正宗的烧烤美食，高质量的服务让江城人民享受烧烤的饮食文化&lt;/span&gt;', 0, '10路24路26路32路36路37路44路109路109路晚班114路晚班空调', 1, '', '招长期兼职晚上5点到9点。10/时', NULL, 0, 0, 0),
(351, 365, '安徽省芜湖市弋江区花津南路中央城财富街10栋401号', '知名品牌酒店餐饮店。。。', 0, '10路24路26路32路36路37路44路109路109路晚班114路晚班空调', 1, '', '暑期工到时候看情况。兼职晚上4点到9点。35到40一天', NULL, 0, 0, 0);
INSERT INTO `d_company` (`id`, `uid`, `addr`, `cinfo`, `coop`, `route`, `attr`, `chttp`, `remarks`, `cooptime`, `stoptime`, `important`, `locktime`) VALUES
(352, 366, '芜湖市弋江区中山南路侨鸿滨江世纪广场5层', '&lt;span style=&quot;color:#333333;font-family:normal;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;豪亨世家健康牛排正式登录诸暨。企业团队自98年进入西餐牛排行业以来，已有十几年的管理和经营西餐牛排的丰富经验，创业至今已发展成为规范化、标准化的连锁企业。企业主营西餐牛排兼营中式套餐和鲜蔬饮品、休闲小吃，并集西餐原料生产、研发、西餐技术培训、营销、管理为一体的现代餐饮连锁企业。&lt;/span&gt;', 0, '4路8路14路31路37路', 1, '', '', NULL, 0, 0, 0),
(353, 367, '鸿汇城A座4楼', '以川菜为主的麻辣香锅餐厅。。', 0, '4路8路14路31路37路', 1, '', '', NULL, 0, 0, 0),
(354, 368, '芜湖新时代商业街195号', '&lt;span style=&quot;color:#42413E;font-family:Simsun;font-size:14px;line-height:25px;background-color:#FFFFFF;&quot;&gt;酱出名门酒店创立于2006年，注册资金600万元，旗下有“酱出名门”、“平锅秀”、“小柴门”、“脸谱”、“蓝斯”、“墨兰小馆”等品牌酒店，香港平锅秀餐饮管理有限公司大陆唯一指定合作商。传承中国酱饮食文化为核心，用“酱”为烹饪菜肴主调味料的全新型酱文化酒店，依托古徽文化的细密定为酒店格局，运用本地及江淮地区的优良食材为原料，以酱系研发为中心，烹饪众家之口味美食为理念，创建了酱文化品牌酒店之先河。酱出名门以独特的饮食风格尊贵高雅，亲近市民，吸引着四海贵宾佳客聚首品佳肴！&amp;nbsp;&lt;/span&gt;', 0, '8路14路31路36路37路44路107路内环晚班107路外环晚班空调114路晚班空调115路夜班', 1, '', '招兼职。周一到周五晚上5点到9点。周末全天', NULL, 0, 0, 0),
(355, 369, '文津西路纬七H区74号', '以川菜为主的麻辣香锅餐厅。', 0, '24路', 1, '', '', NULL, 0, 0, 0),
(356, 370, '弋江区长江南路,滨江世纪广场B座4楼星乐秀KTV对面', '知名品牌肥牛火锅店。。', 0, '1路3路8路14路23路24路25路环线26路34路35路43路101路103路晚班105路内环105路外环108路晚班110路晚班学生专线1路', 1, '', '招全职', NULL, 0, 0, 0),
(357, 371, '中山南路江岸明珠3期18幢2号门面', '&lt;span style=&quot;color:#333333;font-family:Simsun;line-height:24px;background-color:#F9F9F9;&quot;&gt;芜湖市风雅老树咖啡餐饮文化有限公司位于景春花园６栋（１－６）。我们的经营理念：科学技术为先导，现代管理为核心，企业品牌为标志，创造效益为目的。我们站在高速发展与创新的今天,创意将一如既往延续创意精神打造一流品牌,与客户共进退,与市场共发展。公司发展的首要目标就是让每一个员工获得可持续、更全面的发展。我们的企业文化：做事晶为本，做人德为先；让我们的工作更有品味！&lt;/span&gt;', 0, '4路8路14路31路37路', 1, '', '6月底开始招暑假工。', NULL, 0, 0, 0),
(358, 372, '芜湖弋江区瑞丰商博城H9栋农行3楼', '经典知名品牌羊蝎子火锅店。', 0, '2路20路34路103路晚班t1路特1路', 1, '', '', NULL, 0, 0, 0),
(359, 373, '中央城财富街10号楼2楼', '&lt;span style=&quot;color:#FFE2A4;font-family:宋体, SimSun;font-size:14px;line-height:48px;background-color:#5C0101;&quot;&gt;　启东龚府餐饮管理有限公司旗下设有本帮我家酸菜鱼系列培训中心，而本帮我家酸菜鱼属于我家酸菜鱼系列的一种升级版，是目前我家酸菜鱼系列中最受欢迎、人气最旺的一个门类。本帮我家酸菜鱼用料上乘、考究、烹煮的鱼片滑嫩爽口、百吃不厌。 &amp;nbsp;本酒店是“我家酸菜鱼”南方区总部、南方区加盟培训基地、南方区配料中心。“我家酸菜鱼”是集河鲜、卤菜、火锅三大门类为一体的连锁餐饮行业而风靡全国&lt;/span&gt;', 0, '24路32路36路37路44路114路晚班空调学生专线1路', 1, '', '', NULL, 0, 0, 0),
(360, 374, '花津路南段都宝花园南侧', '&lt;span style=&quot;font-family:宋体, Verdana, Arial, Helvetica, sans-serif;line-height:26px;background-color:#FFFFFF;&quot;&gt;芜湖森林汉府大酒店是由芜湖市森林物业管理有限公司投资1500万元、按准四星级硬件标准装修的高档精品酒店，酒店总营业面积5500多平方米。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:宋体, Verdana, Arial, Helvetica, sans-serif;line-height:26px;background-color:#FFFFFF;&quot;&gt;　　酒店一层大厅设有总服务台、茶座、餐饮服务大厅、预定台、大型宴会厅、明档菜品展示及水景；二层设有大、中、小豪华包厢共23间（设有独立的卫生间、传菜间和休闲区），可同时容纳800人就餐；二、三层共设有行政套房等各种房型客房70间，酒店所有区域均有中央空调、国际国内长途电话直拨、液晶电视、电脑及宽带、独立卫生间；酒店设有大型会议室，可同时容纳60—80人同时使用。森林汉府大酒店内部环境豪华典雅，温馨舒适，简约中隐射无限内蕴。设备先进，各类设施功能齐全，同时依托我们热情而细致的服务，打造成为成功人士首选的精品酒店。&lt;/span&gt;', 0, '24路32路36路37路44路114路晚班空调学生专线1路', 1, '', '', NULL, 0, 0, 0),
(361, 375, '安徽省芜湖市镜湖区西干路3号瑞丰商博城G区11栋门面', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;现代化大型餐饮服务（不含住宿）！用新的理念制作徽菜，做出芜湖最新派的徽菜。公司现拥有60多位员工&lt;/span&gt;', 0, '2路20路34路t1路特1路', 1, '', '招暑假工', NULL, 0, 0, 0),
(362, 376, '芜湖市镜湖区赤铸山东路5号巨龙城市花园1-1016汀棠公园对面', '传统徽菜，土菜馆。特色连锁酒店。', 0, '14路102路', 1, '', '', NULL, 0, 0, 0),
(363, 377, '弋江区中央城财富街广场', '知名老品牌火锅店。京来顺', 0, '36路t1路特1路', 1, '', '', NULL, 0, 0, 0),
(364, 378, '芜湖弋江区瑞丰商贸城G区10幢', '&lt;span style=&quot;font-family:Simsun;font-size:16px;line-height:28px;background-color:#E6E6E6;&quot;&gt;新鲜、卫生、营养、健康，这种绿色饮食方式为主的火锅&lt;/span&gt;', 0, '2路20路34路t1路特1路', 1, '', '', NULL, 0, 0, 0),
(365, 379, '中央城B区1幢25号', '&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;http://www.cqkaoyu.com/&quot;&gt;巫山烤鱼&lt;/a&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;&quot;&gt;一种发源于巫山的&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;color:#FF0000;&quot;&gt;特色美食&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;&quot;&gt;，是口味奇绝、营养丰富的&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;color:#FF0000;&quot;&gt;风味小吃&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;&quot;&gt;。在回放千年饮食文化的同时，也引领了现代饮食新时尚!&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;color:#FF0000;&quot;&gt;巫山烤鱼&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;&quot;&gt;以其独特的品质，延续饮食文化的内涵，结合火锅的特点，香味浓郁，汤红色亮，辣而不燥，保健营养，卫生安全等特 点，赢得了广大消费者的信赖。而料的运用是&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;color:#FF0000;&quot;&gt;巫山烤鱼&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;&quot;&gt;制作中的一个绝活，无论腌料还是汤料，都经过了百次的试验，充分借鉴&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;color:#FF0000;&quot;&gt;火锅&lt;/span&gt;&lt;span style=&quot;font-family:宋体, Arial, Helvetica, sans-serif;line-height:25px;background-color:#FFFFFF;&quot;&gt;的用料特点，反复调整配方，所选中草药及调料多达四十多种，既将各种料的香味充分发挥出来，又富含丰富的营养成份。用这种方法做出的烤鱼一改其他仿冒者制作工艺粗糙、用料简单、口味单 一的缺点，不但有鱼肉的鲜味，还有一种独特的焦香味和浓郁的料香味，回味无穷，百吃不厌!&lt;/span&gt;', 0, '36路t1路特1路', 1, '', '', NULL, 0, 0, 0),
(366, 380, '弋江区新时代商业街金玺广场一楼（沃尔玛超市一楼）', '经典知名品牌咖啡店。。', 0, '4路，24路', 1, '', '招全职', NULL, 0, 0, 0),
(367, 381, '弋江区马仁山东路275号（南瑞世纪联华超市向东200米）', '经典知名品牌火锅店。。', 0, '2路20路34路103路晚班t1路特1路', 1, '', '', NULL, 0, 0, 0),
(368, 382, '芜湖市弋江区中山南路侨鸿滨江世纪广场4层', '&lt;span style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;line-height:30px;&quot;&gt;清溪川韩国本家料理。。&lt;/span&gt;', 0, '36路41路环线46路环线48路', 1, '', '暑假工等到七八月份才要', NULL, 0, 0, 0),
(369, 383, '弋江区中央城财富街12B#08门面（水街）', '经典知名品牌餐厅。。', 0, '36路t1路特1路', 1, '', '', NULL, 0, 0, 0),
(370, 385, '芜湖弋江区鲁港大市场华莱士旁边', '经典知名品牌烧烤餐饮店', 0, '24路37路48路113路晚班114路晚班空调', 1, '', '', NULL, 0, 0, 0),
(371, 386, '弋江区中央城财富街百和酒店东50米（京来顺扶手电梯旁）', '川菜系的烤鱼餐厅。。。', 0, '10路24路26路32路36路37路44路109路109路晚班114路晚班空调', 1, '', '招暑假工', NULL, 0, 0, 0),
(372, 387, '芜湖弋江区新时代商业街新安中医院向东100米', '&lt;span style=&quot;color:#333333;font-family:Verdana, Geneva, sans-serif;background-color:#FFFFFF;&quot;&gt;是一家以湘菜、粤菜为特色的餐厅。&lt;/span&gt;', 0, '8路14路31路36路37路44路107路内环晚班107路外环晚班空调114路晚班空调115路夜班', 1, '', '招暑假工', NULL, 0, 0, 0),
(373, 388, '弋江区新时代商业街242号江岸明珠小区东大门与商业街交叉', '经典知名品牌土菜馆餐厅。', 0, '2路13路17路18路27路115路夜班', 1, '', '', NULL, 0, 0, 0),
(374, 389, '火龙岗镇纬十二路', '&lt;span style=&quot;color:#7C7A7A;font-family:宋体;line-height:22px;background-color:#FFFFFF;&quot;&gt;主要经营餐饮承办各类宴席（80桌）以及商务休闲客房服务&lt;/span&gt;', 0, '218路', 1, '', '', NULL, 0, 0, 0),
(375, 390, '中央城财富街22栋106', '经典知名品牌餐饮酒店。。', 0, '36路t1路特1路', 1, '', '6月底开始招', NULL, 0, 0, 0),
(376, 391, '中央城财富街23栋207号', '知名经典连锁西式牛排餐厅', 0, '10路24路26路32路36路37路44路109路109路晚班114路晚班空调', 1, '', '招暑假工。具体回头再问店长。', NULL, 0, 0, 0),
(377, 392, '中山南路鸿汇城4楼', '经典品牌酸菜鱼馆餐厅', 0, '4路8路14路31路37路', 1, '', '', NULL, 0, 0, 0),
(378, 393, '汇金广场A座15楼小荷作文', '&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	专门致力于学生学习能力的开发和培养、自主学习社区的建设、家庭教育研究咨询和课外辅导服务的个性化教育机构。尚学教育聚集了教育界的精英，经过长期探索和实践，开创了新型过程式教学、梯度教学和五元教学法。 “学习不是负担，在快乐中学习，在无压中进步”是尚学的教育理念，传播先进教学思想，研究先进教学方法，开发先进教学产品，提供先进教学服务，帮助学生和家庭获得更多更好的教育和发展机会。\r\n&lt;/div&gt;\r\n&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	办学至今，尚学教育机构凭借着一流的师资队伍、专业的服务团队、先进的教育辅导系统、独特高效的教育方法和完善的管理模式，已向天津市的广大中小学生、家长和用户成功提供了教育服务，并先后帮助数以万计的中小学生实现了素质与成绩的突破，得到家长的一致好评。目前，尚学教育已成为广大家长和学生进行课外辅导的首选，成为深受信赖的教育品牌！\r\n&lt;/div&gt;', 0, '', 1, '', '', NULL, 0, 0, 0),
(379, 394, '欧尚一店、13/5/8/23/26路泰苑小区', '旅行社 &amp;nbsp;偶尔有用人需求', 0, '', 1, '', '', NULL, 0, 0, 0),
(380, 395, '中央城1号写字楼1015', '是一所教育培训机构。', 0, '24/26/36/32/10/', 1, '', '', NULL, 0, 0, 0),
(381, 396, '万达广场', '只招周末的兼职。', 0, '88路空调,38路外环,20路,112路晚班,21路,107路外环晚班空调,42路,228路,7路,107路内环晚班,28路环线,38路内环', 1, '', '', NULL, 0, 0, 0),
(382, 397, '万达广场', '&lt;p&gt;\r\n	只招长期工2300加绩效。9点到9点半。4.15到9.30 &amp;nbsp;月休4天\r\n&lt;/p&gt;', 0, '7路 21路 42路 45路 105路晚班 112路晚班 228路', 1, '', '', NULL, 0, 0, 0),
(383, 398, '万达广场', '暑假工一个月1900.月休4天。正式工第一月1900一个月转正', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(384, 399, '万达广场3楼06/07', '湘菜为主的餐厅。不招人了', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(385, 400, '北京中路69号', '不招暑假工。招全职工', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(386, 401, '万达广场', '招暑假工。但具体要面谈。。', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(387, 402, '万达广场金街', '不招暑假工，招长期厨房杂工', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(388, 403, '万达广场3楼', '&lt;p&gt;\r\n	招暑假工1900到&lt;span style=&quot;line-height:1.5;&quot;&gt;2000月休4天。包吃住住宿舍&lt;/span&gt;\r\n&lt;/p&gt;', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(389, 404, '万达广场5楼', '招暑假工2100一个月。月休2天。包吃。', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(390, 405, '万达广场金街', '暑假工过段时间招，可能招2个', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(391, 406, '万达广场金街7号楼', '不招暑假工。招传菜生2300。迎宾2300+100', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(392, 407, '万达广场3层', '暑假工也许招，回头回复', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(393, 408, '万达广场3层', '暑假工2000一个月。包吃住', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(394, 409, '万达广场金街1136号', '经典中餐餐厅不招人', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(395, 410, '万达广场3楼', '人招满了。暑假工在说。', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(396, 411, '万达外街1106', '知名品牌湘菜馆。', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(397, 412, '绿地', '招暑假工不包吃住8元每个小时', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(398, 413, '万达金街外街', '招一个暑假工工2200包吃不包住', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(399, 414, '工程大学如家酒店旁', '暑假工要招但是还不确定。', 0, '7路21路42路45路105路晚班112路晚班228路', 1, '', '', NULL, 0, 0, 0),
(400, 415, '步行街', '海信卖家电的 &amp;nbsp;会有宣传活动用人需求', 0, '', 1, '', '', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `d_company_user`
--

CREATE TABLE IF NOT EXISTS `d_company_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `area_id` int(10) NOT NULL,
  `industry_id` smallint(5) NOT NULL COMMENT '行业',
  `cname` varchar(40) NOT NULL COMMENT '企业名称',
  `linkman` varchar(8) NOT NULL COMMENT '联系人',
  `tel` varchar(20) NOT NULL,
  `locks` tinyint(1) NOT NULL DEFAULT '0',
  `regtime` int(10) NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `types` tinyint(1) NOT NULL DEFAULT '0',
  `ad_id` int(10) DEFAULT '1',
  `mlinkman` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cooperation` (`industry_id`),
  KEY `types` (`types`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=416 ;

--
-- 转存表中的数据 `d_company_user`
--

INSERT INTO `d_company_user` (`id`, `email`, `password`, `token`, `area_id`, `industry_id`, `cname`, `linkman`, `tel`, `locks`, `regtime`, `lastip`, `types`, `ad_id`, `mlinkman`) VALUES
(5, '', '98c5b8ee0140bed5424ab343a', NULL, 1, 2, '华联超市', '石运达', '18715333270', 1, 1430832447, '::1', 2, 1, '张三|人事经理|13900003333'),
(28, '', NULL, NULL, 2, 2, '华润苏果万达店', '', '', 1, 1431253324, '', 1, 4, '徐女士|人事经理|18010732003'),
(29, '', NULL, NULL, 1, 36, '安徽舒雅集团', '', '', 1, 1431329234, '', 1, 4, '丹先生|人事经理|13695538041'),
(30, '', NULL, NULL, 2, 20, '杭州顶津', '', '', 1, 1431307223, '', 1, 4, '杨小姐|人事经理|18955317350'),
(27, '', NULL, NULL, 1, 17, '博乐文化传媒公司', '', '', 1, 1431253064, '', 1, 3, '吴经理|15395378530'),
(26, '', NULL, NULL, 1, 17, '瑞思英语', '', '', 1, 1431253014, '', 1, 3, '徐老师|18909638099'),
(25, '', NULL, NULL, 1, 17, '爱贝教育', '', '', 1, 1431252925, '', 1, 3, '边老师|15178569560'),
(18, '', NULL, NULL, 1, 3, '是的发生', '', '', 1, 1431166873, '', 1, 1, '张三|人事经理|13900001111'),
(24, '', NULL, NULL, 2, 38, '墨池舞蹈', '', '', 1, 1431323436, '', 1, 4, '张三|人事经理|18110288801'),
(23, '', NULL, NULL, 1, 17, '阳光保险', '', '', 1, 1431252824, '', 1, 3, '高先生|18505532825'),
(22, '', NULL, NULL, 1, 2, '星河网购商城', '', '', 1, 1431252738, '', 1, 3, '任经理|负责人13305535666'),
(31, '', NULL, NULL, 2, 38, '芜湖新长征文化咨询有限公司', '', '', 1, 1431307958, '', 1, 4, '林老师|人事经理|18355338277'),
(32, '', NULL, NULL, 2, 38, '格林童话少儿美术学校', '', '', 1, 1431311041, '', 1, 4, '孙老师|人事经理|15755325510\r\n张老师|人事经理|15955307581'),
(33, '', NULL, NULL, 1, 18, '杭州老板电器股份有限公司', '', '', 1, 1431311111, '', 1, 4, '吴经理|人事经理|18110285521'),
(34, '', NULL, NULL, 2, 38, '上元教育', '', '', 1, 1431313252, '', 1, 4, '王老师|人事经理|15755356067'),
(35, '', NULL, NULL, 2, 30, '芜湖速联信息咨询服务部', '', '', 1, 1431315300, '', 1, 4, '陆经理|人事经理|18375333924'),
(36, '', NULL, NULL, 1, 48, '芜湖华强文化科技产业有限公司', '', '', 1, 1431324653, '', 1, 1, '顾红艳|人事经理|13900001111'),
(37, '', NULL, NULL, 2, 32, '忧思装饰', '', '', 1, 1431327154, '', 1, 4, '虞先生|老板|15178500850'),
(38, '', NULL, NULL, 1, 32, '顾家家居', '', '', 1, 1431327138, '', 1, 4, '顾经理|经理|13855304378'),
(39, '', NULL, NULL, 2, 38, '启迪教育', '', '', 1, 1431327127, '', 1, 4, '吴主任|主任|13085535192'),
(40, '', NULL, NULL, 2, 32, '秦居装饰', '', '', 1, 1431327115, '', 1, 4, '樊经理|未知|15922310080'),
(41, '', NULL, NULL, 2, 32, '乔治家居', '', '', 1, 1431327101, '', 1, 4, '吴先生|老板|18955331773'),
(42, '', NULL, NULL, 1, 32, '全友家私', '', '', 1, 1431326924, '', 1, 4, '张三|未知|05535731221'),
(43, '', NULL, NULL, 2, 40, '一碗米饭', '', '', 1, 1431327676, '', 1, 4, '张先生|老板|15357027799'),
(44, '', NULL, NULL, 2, 32, '博尔乐橱柜', '', '', 1, 1431327925, '', 1, 4, '张小姐|未知|18055383388'),
(45, '', NULL, NULL, 2, 26, '阿波罗眼镜', '', '', 1, 1431328246, '', 1, 4, '廖先生|老板|15178561682'),
(46, '', NULL, NULL, 2, 38, '芜湖秀色化妆培训会所', '', '', 1, 1431328660, '', 1, 4, '袁小姐|未知|15655360803'),
(47, '', NULL, NULL, 2, 38, '鸿艺美术学校', '', '', 1, 1431329401, '', 1, 4, '马校长|校长|15805535708'),
(48, '', NULL, NULL, 2, 30, '杰瑞广告', '', '', 1, 1431329688, '', 1, 4, '吕先生|未知|13655595750'),
(49, '', NULL, NULL, 2, 38, '学志教育', '', '', 1, 1431330142, '', 1, 4, '马小姐|未知|18705538657'),
(50, '', NULL, NULL, 2, 35, '奇乐儿', '', '', 1, 1431330552, '', 1, 4, '颜店长|店长|15855994662'),
(51, '', NULL, NULL, 2, 18, '九阳电器', '', '', 1, 1431331214, '', 1, 4, '徐小姐|人事经理|18949555526'),
(52, '', NULL, NULL, 1, 26, '明视眼镜工厂店', '', '', 1, 1431331359, '', 1, 4, '孔先生|人事经理|13866384888'),
(53, '', NULL, NULL, 2, 30, '尚品广告', '', '', 1, 1431331772, '', 1, 4, '陈经理| |15395300699'),
(54, '', NULL, NULL, 2, 31, '云南白药养元青', '', '', 1, 1431337534, '', 1, 4, '王先生|未知|17755316930'),
(55, '', NULL, NULL, 2, 32, '鑫房装饰公司', '', '', 1, 1431397558, '', 1, 4, '乔先生|未知|13335530551'),
(56, '', NULL, NULL, 2, 44, '芜湖新泉汽车饰件系统有限公司', '', '', 1, 1431398949, '', 1, 6, '石女士|人事经理|0553-5935500'),
(57, '', NULL, NULL, 2, 50, '芜湖毅联塑胶科技有限公司', '', '', 1, 1431399306, '', 1, 6, '童小姐|人事经理|0553-5955610'),
(58, '', NULL, NULL, 2, 38, '安徽中加学校', '', '', 1, 1431399778, '', 1, 6, '杨 |  |0553-3832888'),
(59, '', NULL, NULL, 2, 32, '荣欣装潢', '', '', 1, 1431400463, '', 1, 6, '张三|人事经理|3816088'),
(60, '', NULL, NULL, 2, 38, '爱贝国际少儿英语', '', '', 1, 1431404037, '', 1, 4, '边老师|人事经理|15178569560\r\n段老师|人事经理|17756551815'),
(61, '', NULL, NULL, 2, 38, '智达培训学校', '', '', 1, 1431407185, '', 1, 4, '周老师|未知|15309630281\r\n催经理|未知|18226794048\r\n办公|未知|05535206821'),
(62, '', NULL, NULL, 2, 31, '恒安国际集团芜湖分公司', '', '', 1, 1431407674, '', 1, 4, '屠先生|未知|15955300445\r\n梁小姐|未知|18605533565\r\n张先生|未知|13155339653\r\n罗小姐|未知|13865537032\r\n潘芬|未知|15055774630'),
(63, '', NULL, NULL, 2, 40, '四月便当餐饮店', '', '', 1, 1431407846, '', 1, 4, '女士|未知|18955360901'),
(64, '', NULL, NULL, 2, 30, '星光广告传媒公司', '', '', 1, 1431415196, '', 1, 4, '未知|未知|18155309132'),
(65, '', NULL, NULL, 2, 29, '芜湖好记星专卖店', '', '', 1, 1431415518, '', 1, 4, '王先生|未知|15655369753\r\n张三|人事经理|05533883896'),
(66, '', NULL, NULL, 2, 32, '芜湖欧派壁纸', '', '', 1, 1431415952, '', 1, 4, '曹先生|未知|15212237051\r\n李|人事经理|15222933003\r\n张三|人事经理|13665538981'),
(67, '', NULL, NULL, 2, 23, '芜湖尼采手机专卖店', '', '', 1, 1431416160, '', 1, 4, '吴经理|人事经理|13805530354'),
(68, '', NULL, NULL, 2, 35, '芜湖金色阳光娱乐餐饮会所', '', '', 1, 1431416557, '', 1, 4, '杨经理|人事经理|15305534279\r\n张|人事经理|15755374567'),
(69, '', NULL, NULL, 2, 38, '芜湖未来教育培训中心', '', '', 1, 1431417575, '', 1, 4, '郭先生|人事经理|15556354056\r\n张先生|人事经理|15255355572\r\n苏先生|人事经理|15955366243'),
(70, '', NULL, NULL, 2, 38, '芜湖优智培训学校', '', '', 1, 1431418977, '', 1, 4, '李经理|人事经理|05532689556'),
(71, '', NULL, NULL, 2, 30, '芜湖行云流水广告有限公司', '', '', 1, 1431419235, '', 1, 4, '王经理|人事经理|18905535488\r\n王女士|人事经理|13865538673'),
(72, '', NULL, NULL, 2, 38, '启帆教育咨询有限公司', '', '', 1, 1431419432, '', 1, 4, '唐|人事经理|15215532231\r\n陶|人事经理|15215532231'),
(73, '', NULL, NULL, 1, 52, '多多兼职网', '', '', 1, 1431419544, '', 1, 1, '张三|人事经理|13900001111'),
(74, '', NULL, NULL, 2, 38, '追画艺术培训中心', '', '', 1, 1431420085, '', 1, 4, '张三|未知|18226776660'),
(75, '', NULL, NULL, 2, 50, '芜湖圣志达科技有限公司', '', '', 1, 1431420834, '', 1, 6, '吴先生|人事经理|0553-2915906\r\n吴先生|人事经理|15255305660'),
(76, '', NULL, NULL, 2, 50, '芜湖尚唯汽车饰件有限公司', '', '', 1, 1431421040, '', 1, 6, '马小姐|人事经理|0553-2673603\r\n马小姐|人事经理|15357898763'),
(77, '', NULL, NULL, 2, 30, '芜湖英瑞广告策划有限公司', '', '', 1, 1431423751, '', 1, 4, '施老师|人事经理|13955312757'),
(78, '', NULL, NULL, 1, 38, '星辰教育', '', '', 1, 1431480988, '', 1, 3, '章先生|人事经理|15551258558'),
(79, '', NULL, NULL, 1, 30, '视平线广告策划公司', '', '', 1, 1431483241, '', 1, 3, '王先生||15212279688'),
(80, '', NULL, NULL, 2, 50, '芜湖中瑞弹簧有限公司', '', '', 1, 1431484513, '', 1, 6, '李女士|人事经理|0553-5682830\r\n李女士|人事经理|150525796071'),
(81, '', NULL, NULL, 2, 50, '芜湖宏景电子股份有限公司', '', '', 1, 1431484863, '', 1, 6, '孙健|人事经理|0553-5963318'),
(82, '', NULL, NULL, 1, 32, '梦之居家纺', '', '', 1, 1431484874, '', 1, 3, '洪先生||18130367220'),
(83, '', NULL, NULL, 1, 32, '深蓝装饰公司', '', '', 1, 1431485540, '', 1, 3, '田先生|人事经理|18949513340'),
(84, '', NULL, NULL, 1, 38, '考德上', '', '', 1, 1431486359, '', 1, 3, '谈先生|芜湖区负责人|17756576787'),
(85, '', NULL, NULL, 1, 38, '亚夏驾校', '', '', 1, 1431486535, '', 1, 3, '陈小姐|前台|18855355108'),
(86, '', NULL, NULL, 1, 30, '瑞智广告公司', '', '', 1, 1431486710, '', 1, 3, '韦女士|负责人|18005536061'),
(87, '', NULL, NULL, 1, 30, '武汉鸿亚达展览策划有限公司', '', '', 1, 1431487172, '', 1, 3, '夏经理|负责人|18019948898'),
(88, '', NULL, NULL, 1, 30, '芜湖辰星广告策划有限公司', '', '', 1, 1431487307, '', 1, 3, '周经理|负责人|15655316565'),
(89, '', NULL, NULL, 1, 30, '安徽新电文化传媒有限公司', '', '', 1, 1431487466, '', 1, 3, '孙先生|负责人|13955361075'),
(90, '', NULL, NULL, 1, 34, '新安中医院', '', '', 1, 1431487642, '', 1, 3, '吴先生|负责人|18715308952'),
(91, '', NULL, NULL, 1, 40, '芜湖市七天连锁酒店', '', '', 1, 1431487975, '', 1, 3, '谭经理|负责人|18905535116'),
(92, '', NULL, NULL, 1, 30, '安徽三诚展览策划有限公司', '', '', 1, 1431488251, '', 1, 3, '贾先生|负责人|15755519283'),
(93, '', NULL, NULL, 2, 50, '芜湖亚奇汽车部件有限公司', '', '', 1, 1431488482, '', 1, 6, '马小姐|人事经理|0553-5965888'),
(94, '', NULL, NULL, 1, 30, '芜湖顶视文化传媒有限公司', '', '', 1, 1431496297, '', 1, 3, '刘小姐|负责人|15555330816'),
(95, '', NULL, NULL, 2, 50, '芜湖楚江合金铜材有限公司', '', '', 1, 1431496692, '', 1, 6, '李小姐|人事经理|0553-5313090'),
(96, '', NULL, NULL, 1, 20, '蒙牛低温乳业芜湖办事处', '', '', 1, 1431496900, '', 1, 3, '李小姐|督导|13855326535'),
(97, '', NULL, NULL, 1, 30, '芜湖中艺广告传媒有限公司', '', '', 1, 1431497054, '', 1, 3, '施小姐|负责人|13093629158'),
(98, '', NULL, NULL, 1, 30, '芜湖祥云信息咨询有限公司', '', '', 1, 1431497402, '', 1, 3, '不详|18655169455'),
(99, '', NULL, NULL, 1, 30, '芜湖市沸点广告策划有限公司', '', '', 1, 1431497617, '', 1, 3, '沁女士|负责人|13305535566'),
(100, '', NULL, NULL, 1, 38, '芜湖市瑞思学科英语培训学校', '', '', 1, 1431497801, '', 1, 3, '徐老师|负责人|15922319685'),
(101, '', NULL, NULL, 1, 30, '芜湖嘉禾广告文化传媒', '', '', 1, 1431498037, '', 1, 3, '薛女士|负责人|18226708982'),
(102, '', NULL, NULL, 1, 40, '芜湖市同庆楼大酒店', '', '', 1, 1431498303, '', 1, 3, '刘女士|负责人|15855971045'),
(103, '', NULL, NULL, 1, 37, '芜湖三山时代广场售楼部', '', '', 1, 1431498538, '', 1, 3, '叶经理|负责人|13655539866'),
(104, '', NULL, NULL, 1, 30, '芜湖市天龙广告有限公司', '', '', 1, 1431498871, '', 1, 3, '苏总|负责人|13033038366'),
(105, '', NULL, NULL, 1, 28, '芜湖志邦橱柜专卖店', '', '', 1, 1431499145, '', 1, 3, '黄经理|经理|18019527585'),
(106, '', NULL, NULL, 1, 34, '芜湖市复旦医院', '', '', 1, 1431499308, '', 1, 3, '先生|负责人|13925569981'),
(107, '', NULL, NULL, 2, 38, '芜湖市肖邦音乐学校', '', '', 1, 1431499430, '', 1, 4, '许老师|未知|15855971692\r\n曾|人事经理|18226763321\r\n陈老师|人事经理|3266668\r\n吴老师|人事经理|15855979322'),
(108, '', NULL, NULL, 1, 37, '芜湖市柏庄领地置业有限公司', '', '', 1, 1431499517, '', 1, 3, '任广碧|负责人|18055596612'),
(109, '', NULL, NULL, 2, 32, '格尔森地板', '', '', 1, 1431499725, '', 1, 4, '张三|未知|05534227858'),
(110, '', NULL, NULL, 1, 30, '安徽朗森文化传播有限公司', '', '', 1, 1431500097, '', 1, 3, '吕总|负责人|18605510255'),
(111, '', NULL, NULL, 1, 38, '芜湖慧智教育学校', '', '', 1, 1431500246, '', 1, 3, '徐经理|经理|18196518967'),
(112, '', NULL, NULL, 1, 40, '芜湖市天泰大酒店', '', '', 1, 1431500297, '', 1, 4, '杨经理|人事经理|13955312998\r\n杨经理|人事经理|18905539602'),
(113, '', NULL, NULL, 2, 50, '芜湖诚立塑业有限公司', '', '', 1, 1431500532, '', 1, 6, '张女士|   |15375115805'),
(114, '', NULL, NULL, 1, 28, '深圳市富之岛股份有限公司', '', '', 1, 1431500565, '', 1, 3, '李经理|经理|18315314975'),
(115, '', NULL, NULL, 2, 45, '芜湖市恒悦婚典公司', '', '', 1, 1431500835, '', 1, 4, '杜先生|人事经理|13955321150\r\n尚亭耀|总经理|13645532118'),
(116, '', NULL, NULL, 1, 30, '芜湖君临智胜广告策划有限公司', '', '', 1, 1431500840, '', 1, 3, '张三|人事经理|3013077'),
(117, '', NULL, NULL, 2, 32, '诺贝尔瓷砖芜湖专卖店', '', '', 1, 1431501315, '', 1, 4, '张三|人事经理|2880009'),
(118, '', NULL, NULL, 1, 33, '芜湖市福美大药房', '', '', 1, 1431501455, '', 1, 3, '胡经理|经理|18055372148'),
(119, '', NULL, NULL, 2, 27, '芜湖拉夏贝尔服饰专卖店', '', '', 1, 1431501593, '', 1, 4, '李先生|人事经理|13856957060\r\n刘经理|人事经理|15215530875'),
(120, '', NULL, NULL, 1, 53, '芜湖邮政局', '', '', 1, 1431501617, '', 1, 3, '赵先生|负责人|13675536827'),
(121, '', NULL, NULL, 1, 37, '安徽华仑港湾文化投资有限公司', '', '', 1, 1431501722, '', 1, 3, '卢经理|经理|18909635870'),
(122, '', NULL, NULL, 2, 45, '芜湖海云花卉婚庆礼仪', '', '', 1, 1431501939, '', 1, 4, '吴先生|人事经理|13855338131'),
(123, '', NULL, NULL, 1, 37, '安徽华仑港湾文化投资有限公司', '', '', 1, 1431502022, '', 1, 3, '卢经理|经理|18909635870'),
(124, '', NULL, NULL, 1, 25, '芜湖瑞丰商贸城', '', '', 1, 1431502363, '', 1, 3, '常先生|经理|18355366612'),
(125, '', NULL, NULL, 1, 38, '芜湖天天教育', '', '', 1, 1431502482, '', 1, 3, '朱老师|人事经理|13855387126'),
(126, '', NULL, NULL, 1, 21, '浙江奥田电器有限公司', '', '', 1, 1431502632, '', 1, 3, '史女士|人事经理|13225535233'),
(127, '', NULL, NULL, 2, 45, '美丽婚嫁', '', '', 1, 1431502849, '', 1, 4, '王经理|人事经理|15305531833\r\n张经理|人事经理|18955359693'),
(128, '', NULL, NULL, 1, 50, '芜湖市丰德科技有限公司', '', '', 1, 1431502954, '', 1, 3, '吕先生||13309631848'),
(129, '', NULL, NULL, 2, 53, '芜湖星辰影视传媒有限公司', '', '', 1, 1431503107, '', 1, 4, '戴经理|人事经理|13705530727'),
(130, '', NULL, NULL, 1, 38, '芜湖艺方手绘创意生活馆', '', '', 1, 1431503755, '', 1, 3, '胡老师||13965183893'),
(131, '', NULL, NULL, 2, 38, '启帆教育培训中心', '', '', 1, 1431503996, '', 1, 4, '吴老师|人事经理|18355361569\r\n雷老师|人事经理|18255327268'),
(132, '', NULL, NULL, 1, 53, '芜湖市锁业协会', '', '', 1, 1431504061, '', 1, 3, '二子开锁||15156323156'),
(133, '', NULL, NULL, 1, 28, '芜湖力驰自热地板总代理', '', '', 1, 1431504256, '', 1, 3, '负责人||15555301992'),
(134, '', NULL, NULL, 1, 32, '芜湖汉仕明流装饰有限公司', '', '', 1, 1431504443, '', 1, 3, '张经理||15375113656'),
(135, '', NULL, NULL, 1, 53, '芜湖体育场社区办事处', '', '', 1, 1431504582, '', 1, 3, '黄先生||18055320921'),
(136, '', NULL, NULL, 1, 28, '芜湖华鹤木门营销中心', '', '', 1, 1431504787, '', 1, 3, '何女士||13655538601'),
(137, '', NULL, NULL, 1, 28, '大国地板芜湖分公司', '', '', 1, 1431504917, '', 1, 3, '翁先生||13349203393'),
(138, '', NULL, NULL, 1, 38, '北京环球雅思培训学校芜湖分校', '', '', 1, 1431505251, '', 1, 3, '周先生||13695672310'),
(139, '', NULL, NULL, 2, 38, '奇翼设计学院', '', '', 1, 1431505434, '', 1, 6, '吕先生|人事经理|15309639510'),
(140, '', NULL, NULL, 1, 30, '意美广告策划有限公司', '', '', 1, 1431505624, '', 1, 3, '卢总||13514913773'),
(141, '', NULL, NULL, 1, 28, '全友家私芜湖专卖店', '', '', 1, 1431505737, '', 1, 3, '许经理||18225531880'),
(142, '', NULL, NULL, 2, 45, '美亿婚庆', '', '', 1, 1431505880, '', 1, 6, '赵先生| |15395362675'),
(143, '', NULL, NULL, 1, 38, '安师大文津教育', '', '', 1, 1431506144, '', 1, 3, '刘老师||13956150640'),
(144, '', NULL, NULL, 2, 18, '安徽新兴格力空调销售有限公司', '', '', 1, 1431506263, '', 1, 4, '李先生|人事经理|13395515686\r\n李玉|短促负责人|15155330380'),
(145, '', NULL, NULL, 1, 30, '合肥云诺文化传媒有限公司', '', '', 1, 1431506341, '', 1, 3, '刘经理||18156573121'),
(146, '', NULL, NULL, 2, 38, '名思教育', '', '', 1, 1431506475, '', 1, 6, '王先生| |15855979487'),
(147, '', NULL, NULL, 1, 38, '未名新干线培训学校合肥分校', '', '', 1, 1431506489, '', 1, 3, '杨先生||15855995823'),
(148, '', NULL, NULL, 1, 32, '芜湖德意世家装饰工程公司', '', '', 1, 1431506630, '', 1, 3, '周先生||13514919559'),
(149, '', NULL, NULL, 2, 38, '芜湖尚学教育咨询有限公司', '', '', 1, 1431506688, '', 1, 4, '周老师|人事经理|18955316200\r\n唐老师|人事经理|18609636062'),
(150, '', NULL, NULL, 2, 30, '三诚展贤策划', '', '', 1, 1431506806, '', 1, 6, '贾经理| |015755519283'),
(151, '', NULL, NULL, 2, 18, '芜湖市莲花家用电器商店', '', '', 1, 1431506875, '', 1, 6, '张三| |0553-3854206'),
(152, '', NULL, NULL, 1, 41, '芜湖市纽斯婚庆有限公司', '', '', 1, 1431506941, '', 1, 3, '姚先生||15178589871'),
(153, '', NULL, NULL, 6, 32, '翰唐装饰', '', '', 1, 1431507040, '', 1, 6, '张三| |2277128'),
(154, '', NULL, NULL, 2, 38, '英才教育', '', '', 1, 1431507086, '', 1, 6, '顾林峰校长|校长 |13605534428\r\n顾校长|校长 |13855391077'),
(155, '', NULL, NULL, 2, 38, '芜湖万达电脑培训中心', '', '', 1, 1431507338, '', 1, 4, '吕老师|人事经理|15955336026\r\n赵老师|人事经理|13866358902'),
(156, '', NULL, NULL, 2, 29, '星河网购', '', '', 1, 1431507377, '', 1, 6, '张三| |0553-3712993'),
(157, '', NULL, NULL, 1, 32, '元素空间装饰有限公司', '', '', 1, 1431507502, '', 1, 3, '负责人||15178571339'),
(158, '', NULL, NULL, 2, 45, '爱你婚庆', '', '', 1, 1431507555, '', 1, 6, '俞小姐| |13966009552'),
(159, '', NULL, NULL, 2, 31, '蓝月亮有限公司', '', '', 1, 1431507713, '', 1, 6, '张三| |18155370730'),
(160, '', NULL, NULL, 2, 38, '芜湖唯美舞蹈培训学校', '', '', 1, 1431507919, '', 1, 6, '汤老师| |13956150883'),
(161, '', NULL, NULL, 2, 30, '芜湖徽粹广告文化传媒有限公司', '', '', 1, 1431508279, '', 1, 6, '蒋小姐| |15555379800'),
(162, '', NULL, NULL, 2, 20, '蒙牛', '', '', 1, 1431508473, '', 1, 6, '李小姐| |13855326535'),
(163, '', NULL, NULL, 1, 38, '合肥大公教育', '', '', 1, 1431568457, '', 1, 3, '杨先生||18655196336'),
(164, '', NULL, NULL, 1, 40, '芜湖市兰纳泰国餐厅', '', '', 1, 1431568598, '', 1, 3, '经理||18655323069'),
(165, '', NULL, NULL, 1, 38, '芜湖学志教育培训学校', '', '', 1, 1431568823, '', 1, 3, '张文君||18655381199'),
(166, '', NULL, NULL, 1, 38, '芜湖仁和会计培训学校', '', '', 1, 1431569033, '', 1, 3, '刘先生||18196501527'),
(167, '', NULL, NULL, 1, 30, '芜湖双木广告策划有限公司', '', '', 1, 1431569423, '', 1, 3, '胡先生||18196575803'),
(168, '', NULL, NULL, 1, 32, '百得胜芜湖专卖店', '', '', 1, 1431569640, '', 1, 3, '郭女士||18755350097'),
(169, '', NULL, NULL, 1, 50, '芜湖恒信汽车内饰制造有限公司', '', '', 1, 1431569774, '', 1, 3, '段女士||13955347201'),
(170, '', NULL, NULL, 1, 20, '芜湖超群食品新时代商业街店', '', '', 1, 1431570013, '', 1, 3, '兵经理||18119883529'),
(171, '', NULL, NULL, 1, 38, '考德上教育合肥分校', '', '', 1, 1431570524, '', 1, 3, '谈先生||17756576787'),
(172, '', NULL, NULL, 1, 38, '芜湖市凌武吉他琴行', '', '', 1, 1431570780, '', 1, 3, '凌武||15955327580/13335537580'),
(173, '', NULL, NULL, 1, 28, '大自然地板芜湖专卖店', '', '', 1, 1431570910, '', 1, 3, '王先生||18297533520'),
(174, '', NULL, NULL, 2, 38, '合肥中硕教育科技有限公司', '', '', 1, 1431570946, '', 1, 4, '周老师|人事经理|15551257567'),
(175, '', NULL, NULL, 1, 40, '芜湖金曼谷泰国餐厅', '', '', 1, 1431571042, '', 1, 3, '鲍先生||13955362233'),
(176, '', NULL, NULL, 1, 38, '芜湖大鹏教育咨询有限公司', '', '', 1, 1431571455, '', 1, 3, '洪||13966030917'),
(177, '', NULL, NULL, 1, 19, '芜湖百胜电子有限公司', '', '', 1, 1431571632, '', 1, 3, '尹||18118227654'),
(178, '', NULL, NULL, 1, 38, '芜湖顶层美术学校', '', '', 1, 1431571872, '', 1, 3, '陈老师||18356971670'),
(179, '', NULL, NULL, 1, 35, '芜湖方特欢乐世界', '', '', 1, 1431572420, '', 1, 3, '|人事主管|13003049166'),
(180, '', NULL, NULL, 1, 38, '芜湖市派乐多快乐多英语', '', '', 1, 1431572570, '', 1, 3, '胡老师||18356592928'),
(181, '', NULL, NULL, 1, 28, '芜湖顾家工艺家具专卖店', '', '', 1, 1431572713, '', 1, 3, '梅女士||18355310979'),
(182, '', NULL, NULL, 2, 32, '芜湖澳丁堡装饰工程公司', '', '', 1, 1431572732, '', 1, 4, '张先生|人事经理|18196537004\r\n王女士|人事经理|18226768103'),
(183, '', NULL, NULL, 1, 38, '亲亲宝贝戴维蓝星英', '', '', 1, 1431572892, '', 1, 3, '经理||13866382296'),
(184, '', NULL, NULL, 2, 45, '芜湖唯美印象婚庆公司', '', '', 1, 1431572937, '', 1, 4, '李|人事经理|13955360936\r\n孙经理|人事经理|13955360936'),
(185, '', NULL, NULL, 1, 32, '芜湖市鹏程装饰工程有限公司', '', '', 1, 1431573109, '', 1, 3, '林先生||15255341159'),
(186, '', NULL, NULL, 2, 21, '安徽五星电器有限公司', '', '', 1, 1431573210, '', 1, 4, '王飞|商务部|13955350800\r\n施燕|企划部|13004060022\r\n宁经理|门店企划|18705538838\r\n赵先生|人事经理|13866360396'),
(187, '', NULL, NULL, 1, 32, '靓欣家装饰公司', '', '', 1, 1431573604, '', 1, 3, '张经理||18226700926'),
(188, '', NULL, NULL, 1, 48, '国游集团丫山风景区芜湖办事处', '', '', 1, 1431573778, '', 1, 4, '张先生|人事经理|13855317888\r\n刘国翠|人力资源部经理|15955352518\r\n崔先生|人事经理|13905532968\r\n郝飞|人事经理|13665534649\r\n蒋总|人事经理|13085530568\r\n郭总|人事经理|13655596262'),
(189, '', NULL, NULL, 1, 32, '魅力家装饰有限公司', '', '', 1, 1431573964, '', 1, 3, '孙先生||18355354801'),
(190, '', NULL, NULL, 1, 37, '芜湖万科万东房地产有限公司', '', '', 1, 1431574232, '', 1, 3, '朱文||15162990637'),
(191, '', NULL, NULL, 1, 40, '芜湖天门山街道广福社区服务站', '', '', 1, 1431574381, '', 1, 3, '伍经理||15395531788'),
(192, '', NULL, NULL, 1, 38, '芜湖奇翼设计学院', '', '', 1, 1431574584, '', 1, 3, '王||13295537168'),
(193, '', NULL, NULL, 1, 32, '芜湖欧蒂尼装饰公司', '', '', 1, 1431574768, '', 1, 3, '朱小姐||13866354705'),
(194, '', NULL, NULL, 1, 38, '芜湖龅牙兔儿童情商乐园', '', '', 1, 1431574894, '', 1, 3, '王经理||18755163395'),
(195, '', NULL, NULL, 1, 38, '名思教育芜湖分校', '', '', 1, 1431574989, '', 1, 3, '王先生||15855979487'),
(196, '', NULL, NULL, 1, 30, '芜湖华亿国际中心', '', '', 1, 1431575186, '', 1, 3, '李先生||15395306917'),
(197, '', NULL, NULL, 1, 30, '芜湖市轩宇印务广告公司', '', '', 1, 1431575263, '', 1, 3, '邢女士||18133401803'),
(198, '', NULL, NULL, 2, 21, '苏宁电器芜湖管理中心', '', '', 1, 1431580171, '', 1, 4, '洪国庆|市场部头|15055334603\r\n周|佳能|13965151175\r\n艾先生|LG|13965173796\r\n王小姐|电脑|13855337492\r\n苹果电脑|人事经理|3886563\r\n许先生|人事经理|13955367867\r\n周经理|人事经理|18156582881\r\n卜先生|人事经理|15155328198\r\n陈小姐|湾沚苏宁店长|18655365556\r\n夏先生|人事经理|15155317836'),
(199, '', NULL, NULL, 2, 30, '芜湖乐居广告传媒', '', '', 1, 1431580398, '', 1, 4, '代经理|人事经理|15055310635\r\n于小姐|人事经理|15675537307'),
(200, '', NULL, NULL, 1, 28, '芜湖市久盛地板专卖店', '', '', 1, 1431580705, '', 1, 3, '王先生||13359085567'),
(201, '', NULL, NULL, 1, 30, '安徽现代广告有限公司', '', '', 1, 1431580854, '', 1, 3, '钱女士||13805518196'),
(202, '', NULL, NULL, 1, 32, '芜湖福海家具装饰城', '', '', 1, 1431581018, '', 1, 3, '王经理||13955363251'),
(203, '', NULL, NULL, 1, 28, '芜湖市客来福衣柜专卖店', '', '', 1, 1431581121, '', 1, 3, '江先生||18609635390'),
(204, '', NULL, NULL, 1, 28, '莫干山宏大木业芜湖总代理', '', '', 1, 1431581236, '', 1, 3, '于章亮||13866374720'),
(205, '', NULL, NULL, 1, 50, '芜湖市东伟服装有限责任公司', '', '', 1, 1431581371, '', 1, 3, '董||15375113335'),
(206, '', NULL, NULL, 1, 30, '巨辉广告公司', '', '', 1, 1431581455, '', 1, 3, '黄经理||15305530278'),
(207, '', NULL, NULL, 1, 32, '芜湖皖龙港装饰有限公司', '', '', 1, 1431581568, '', 1, 3, '徐女士||18715035608张经理18226700926'),
(208, '', NULL, NULL, 1, 30, '芜湖杰瑞广告设计部', '', '', 1, 1431581779, '', 1, 3, '吕||13965179357'),
(209, '', NULL, NULL, 1, 20, '芜湖隆盛食品有限公司', '', '', 1, 1431581931, '', 1, 3, '丁经理||18119883529'),
(210, '', NULL, NULL, 2, 41, '芜湖子歌婚礼工作室', '', '', 1, 1431582046, '', 1, 4, '汪经理|人事经理|18119897323'),
(211, '', NULL, NULL, 1, 38, '芜湖出众教育培训中心', '', '', 1, 1431582808, '', 1, 3, '孙老师|人事经理|15955371197'),
(212, '', NULL, NULL, 1, 40, '芜湖新物资大厦宾馆', '', '', 1, 1431582979, '', 1, 3, '林||13955300617'),
(213, '', NULL, NULL, 1, 32, '芜湖翰唐装饰公司', '', '', 1, 1431583104, '', 1, 3, '周经理||18255113531'),
(214, '', NULL, NULL, 2, 38, '芜湖环球雅思外语教育中心', '', '', 1, 1431583135, '', 1, 4, '张|人事经理|18356573886'),
(215, '', NULL, NULL, 1, 35, '芜湖振元堂', '', '', 1, 1431583263, '', 1, 3, '罗||15357880626'),
(216, '', NULL, NULL, 1, 30, '芜湖上泰传播有限公司', '', '', 1, 1431583380, '', 1, 3, '仁经理||18655302896'),
(217, '', NULL, NULL, 1, 38, '芜湖中公教育咨询有限公司', '', '', 1, 1431583525, '', 1, 3, '何老师||13355533740'),
(218, '', NULL, NULL, 2, 53, '芜湖市福寿园老年公寓', '', '', 1, 1431584025, '', 1, 4, '徐超|人事经理|13855392636'),
(219, '', NULL, NULL, 1, 35, '芜湖蓝天羽毛球馆', '', '', 1, 1431584169, '', 1, 3, '胡老师||15395318218'),
(220, '', NULL, NULL, 2, 45, '芜湖老金龙婚庆公司', '', '', 1, 1431584219, '', 1, 4, '魏先生|人事经理|13705530851\r\n魏先生|人事经理|13955386552'),
(221, '', NULL, NULL, 1, 41, '芜湖永乐婚庆公司', '', '', 1, 1431584415, '', 1, 3, '张经理||18110272710'),
(222, '', NULL, NULL, 2, 32, '芜湖市海创装饰公司', '', '', 1, 1431584465, '', 1, 4, '陈治国|人事经理|13955336548\r\n马总|人事经理|18855301618\r\n陈女士|人事经理|18255397363\r\n朱女士|人事经理|18705536850'),
(223, '', NULL, NULL, 1, 38, '西方国际英语培训中心', '', '', 1, 1431584590, '', 1, 3, '张老师||15156006231'),
(224, '', NULL, NULL, 1, 50, '芜湖中昌食品有限公司', '', '', 1, 1431584696, '', 1, 3, '宋经理||15855979446'),
(225, '', NULL, NULL, 1, 30, '芜湖鼎盛广告有限公司', '', '', 1, 1431584901, '', 1, 3, '王先生||3870682'),
(226, '', NULL, NULL, 2, 38, '芜湖远方美术学校', '', '', 1, 1431584961, '', 1, 4, '何安静|人事经理|13965172111\r\n吴小姐|人事经理|13309638046\r\n孙老师|人事经理|13955328154'),
(227, '', NULL, NULL, 1, 20, '芜湖祖名豆乳', '', '', 1, 1431585013, '', 1, 3, '余女士||15305538605'),
(228, '', NULL, NULL, 1, 53, '芜湖中国邮政办事处', '', '', 1, 1431585149, '', 1, 3, '胡||15855993686'),
(229, '', NULL, NULL, 1, 28, '芜湖市莫干山地板', '', '', 1, 1431585240, '', 1, 3, '陈女士||15156312297'),
(230, '', NULL, NULL, 1, 41, '芜湖市百盛婚庆礼仪策划公司', '', '', 1, 1431585436, '', 1, 3, '吴先生||18155329977'),
(231, '', NULL, NULL, 1, 40, '芜湖新百金鹰国际酒店', '', '', 1, 1431585819, '', 1, 3, '杨先生|人事经理|18955378283'),
(232, '', NULL, NULL, 1, 30, '芜湖徽风雅韵广告公司', '', '', 1, 1431585978, '', 1, 3, '赵||18949561660'),
(233, '', NULL, NULL, 2, 38, '合肥政通教育咨询有限公司', '', '', 1, 1431586119, '', 1, 4, '赵老师|人事经理|18154182595'),
(234, '', NULL, NULL, 2, 38, '北京领秀国际舞蹈培训芜湖分校', '', '', 1, 1431586305, '', 1, 4, '安老师|人事经理|18715310783'),
(235, '', NULL, NULL, 2, 21, '芜湖华帝电器三山专卖店', '', '', 1, 1431586483, '', 1, 4, '余|人事经理|18255365453'),
(236, '', NULL, NULL, 2, 42, '芜湖市科友软件公司', '', '', 1, 1431587123, '', 1, 4, '王先生|人事经理|18805531217'),
(237, '', NULL, NULL, 1, 28, '芜湖欧派整体卫浴专卖店', '', '', 1, 1431587154, '', 1, 3, '女士||13195322051于经理13955301531'),
(238, '', NULL, NULL, 2, 38, '芜湖学而乐教育', '', '', 1, 1431587283, '', 1, 4, '陆先生|人事经理|15955361375\r\n女士|人事经理|18375333924'),
(239, '', NULL, NULL, 1, 30, '芜湖市凤凰传媒有限公司', '', '', 1, 1431587337, '', 1, 3, '叶先生||15395530000王总13966685156石经理13965159598'),
(240, '', NULL, NULL, 2, 32, '芜湖市时利建材经营部', '', '', 1, 1431587386, '', 1, 4, '李竹青|人事经理|13083038758'),
(241, '', NULL, NULL, 1, 38, '芜湖旭东跆拳道馆', '', '', 1, 1431587490, '', 1, 3, '罗先生||18905532008//15055772698'),
(242, '', NULL, NULL, 2, 20, '统一方便面芜湖办事处', '', '', 1, 1431587614, '', 1, 4, '张星星|人事经理|15055319075'),
(243, '', NULL, NULL, 1, 45, '芜湖爱尚婚礼策划', '', '', 1, 1431587751, '', 1, 3, '陈先生||18715536649\r\n程健18715536649'),
(244, '', NULL, NULL, 1, 28, '芜湖市好美家地板', '', '', 1, 1431587889, '', 1, 3, '焦先生||18226750088\r\n孙18226750088'),
(245, '', NULL, NULL, 1, 30, '芜湖拓企广告有限公司', '', '', 1, 1431588039, '', 1, 3, '杨经理||13355532344\r\n张小姐13955368132'),
(246, '', NULL, NULL, 1, 28, '格尔森地板芜湖县专卖店', '', '', 1, 1431588139, '', 1, 3, '张经理||18155387282\r\n贾先生18355338983'),
(247, '', NULL, NULL, 1, 40, '芜湖市得味龙虾馆', '', '', 1, 1431588294, '', 1, 3, '胡女士||13505536982\r\n张先生18196572779'),
(248, '', NULL, NULL, 2, 30, '合肥笛洋营销策划有限公司', '', '', 1, 1431588414, '', 1, 4, '赵经理|人事经理|13855103374'),
(249, '', NULL, NULL, 1, 45, '芜湖苏合香花店', '', '', 1, 1431588515, '', 1, 3, '婚庆经理||13965159990\r\n陈小姐18955303520'),
(250, '', NULL, NULL, 2, 18, '海信电器有限公司芜湖办事处', '', '', 1, 1431588538, '', 1, 4, '高璐璐|人事经理|13955390553'),
(251, '', NULL, NULL, 1, 38, '芜湖市朗阁英语培训学校', '', '', 1, 1431588641, '', 1, 3, '龙卫||18655550087\r\n韩女士18010753675'),
(252, '', NULL, NULL, 2, 38, '派乐多快乐多英语培训中心', '', '', 1, 1431588691, '', 1, 4, '杨先生|人事经理|13866650021'),
(253, '', NULL, NULL, 2, 32, '芜湖实木坊木门', '', '', 1, 1431588815, '', 1, 4, '唐先生|人事经理|18055306100'),
(254, '', NULL, NULL, 1, 28, '芜湖红星美凯龙商城', '', '', 1, 1431588819, '', 1, 3, '王经理||18725535365\r\n吴胜平18255363366\r\n徐海倩15055760039'),
(255, '', NULL, NULL, 2, 37, '芜湖伟业房地产开发有限公司', '', '', 1, 1431588936, '', 1, 4, '张三|人事经理|13900001111'),
(256, '', NULL, NULL, 1, 41, '芜湖好百年婚庆礼仪策划公司', '', '', 1, 1431588938, '', 1, 3, '杨先生||18905534448\r\n杨斌13605534448'),
(257, '', NULL, NULL, 2, 40, '芜湖金福来大酒店', '', '', 1, 1431589060, '', 1, 4, '梅秋红|人事经理|13865531608'),
(258, '', NULL, NULL, 2, 20, '南京康师傅饮料有限公司', '', '', 1, 1431589244, '', 1, 4, '刘先生|人事经理|13695532326'),
(259, '', NULL, NULL, 1, 28, '芜湖瑞玺木门专卖店', '', '', 1, 1431589528, '', 1, 3, '张经理||15055301669\r\n藤经理18355335033\r\n张女士15055301669'),
(260, '', NULL, NULL, 2, 35, '芜湖梵之遥瑜伽会所', '', '', 1, 1431589715, '', 1, 4, '陈经理|人事经理|15155386997'),
(261, '', NULL, NULL, 1, 28, '芜湖鹰牌陶瓷红星专卖店', '', '', 1, 1431589752, '', 1, 3, '徐经理||18226788919\r\n李小姐13335531508'),
(262, '', NULL, NULL, 2, 32, '华浔品味装饰公司芜湖分公司', '', '', 1, 1431589803, '', 1, 4, '戴女士|人事经理|18755386889'),
(263, '', NULL, NULL, 1, 22, '金立手机芜湖办事处', '', '', 1, 1431590061, '', 1, 3, '吴经理||15212231113\r\n刘先生18855329992\r\n王经理13355552866--18155379551'),
(264, '', NULL, NULL, 2, 18, '九阳豆浆机芜湖办事处', '', '', 1, 1431590066, '', 1, 4, '徐新宠|人事经理|13855313101'),
(265, '', NULL, NULL, 2, 32, '芜湖市德福诺橱柜', '', '', 1, 1431590408, '', 1, 4, '张主管|人事经理|15255313718'),
(266, '', NULL, NULL, 2, 40, '芜湖金宝大酒店', '', '', 1, 1431590498, '', 1, 4, '李娟|人事经理|15155389998'),
(267, '', NULL, NULL, 1, 45, '芜湖美亿婚庆', '', '', 1, 1431590701, '', 1, 3, '赵先生||15395362675\r\n赵先生13625533236'),
(268, '', NULL, NULL, 2, 38, '瑞思乐早教亲子园', '', '', 1, 1431590713, '', 1, 4, '邵|人事经理|18905532201'),
(269, '', NULL, NULL, 1, 30, '芜湖天空策划设计室', '', '', 1, 1431590835, '', 1, 3, '张先生||13855396432\r\n陶先生18715535918\r\n张先生18655388825'),
(270, '', NULL, NULL, 1, 33, '芜湖市中泰大药房', '', '', 1, 1431592121, '', 1, 3, '李先生||13965179231、18955306694'),
(271, '', NULL, NULL, 2, 27, '嘻嘻哈哈', '', '', 1, 1431592345, '', 1, 4, '翟|人事经理|15058616461'),
(272, '', NULL, NULL, 1, 53, '上海纤瘦减肥中心', '', '', 1, 1431592459, '', 1, 3, '陈女士||18055353660'),
(273, '', NULL, NULL, 2, 20, '芜湖金龙鱼油办事处', '', '', 1, 1431592501, '', 1, 4, '李小姐|人事经理|18725531890'),
(274, '', NULL, NULL, 2, 53, '芜湖长鑫投资管理有限公司', '', '', 1, 1431592663, '', 1, 4, '潘先生|人事经理|13866384312'),
(275, '', NULL, NULL, 1, 32, '芜湖市百视装饰有限公司', '', '', 1, 1431592744, '', 1, 3, '先生||18110885266\r\n吴先生18356550181'),
(276, '', NULL, NULL, 2, 40, '芜湖特色王会宾楼店', '', '', 1, 1431592849, '', 1, 4, '叶先生|人事经理|13955387303'),
(277, '', NULL, NULL, 1, 38, '芜湖启程教育咨询有限公司', '', '', 1, 1431592879, '', 1, 3, '程健||15178567359'),
(278, '', NULL, NULL, 1, 38, '芜湖市唯美舞蹈培训学校', '', '', 1, 1431592999, '', 1, 3, '杨女士||13956150883\r\n13956150883'),
(279, '', NULL, NULL, 1, 45, '芜湖你好幸福婚庆公司', '', '', 1, 1431593131, '', 1, 3, '钱女士||13665539800\r\n钱女士15922302187'),
(280, '', NULL, NULL, 2, 38, '芜湖安师大教育培训中心', '', '', 1, 1431593211, '', 1, 4, '史老师|人事经理|15855978256'),
(281, '', NULL, NULL, 1, 18, '芜湖市莲花家电有限公司', '', '', 1, 1431593245, '', 1, 3, '莲花家电||13083033754\r\n魏燕13063368643\r\n魏先生1308303375'),
(282, '', NULL, NULL, 2, 53, '中国雨耕山酒文化创意产业园', '', '', 1, 1431593398, '', 1, 4, '张经理|人事经理|13966004934'),
(283, '', NULL, NULL, 1, 30, '芜湖徽粹广告有限公司', '', '', 1, 1431593400, '', 1, 3, '蒋女士||15555379800\r\n靳经理15855966082 / 15555303231\r\n鲍小姐18655333935 / 4992101'),
(284, '', NULL, NULL, 2, 25, '芜湖新芜世纪联华', '', '', 1, 1431593494, '', 1, 4, '束小姐|人事经理|18755379629'),
(285, '', NULL, NULL, 1, 53, '华图', '', '', 1, 1431593606, '', 1, 3, '张校长||15805690458'),
(286, '', NULL, NULL, 2, 38, '芜湖博雅教育有限公司', '', '', 1, 1431593699, '', 1, 4, '蔡先生|人事经理|15955369510'),
(287, '', NULL, NULL, 1, 40, '甲鱼私房菜', '', '', 1, 1431593737, '', 1, 3, '不知道||15395339939'),
(288, '', NULL, NULL, 2, 38, '芜湖天悦琴行', '', '', 1, 1431593849, '', 1, 4, '郑先生|人事经理|13665530545'),
(289, '', NULL, NULL, 2, 40, '芜湖鸿禧食府餐饮有限公司', '', '', 1, 1431594034, '', 1, 4, '欧总|人事经理|13955387587'),
(290, '', NULL, NULL, 1, 40, '芜湖市同庆楼大酒店', '', '', 1, 1431594197, '', 1, 3, '周涛||18055377176'),
(291, '', NULL, NULL, 2, 38, '芜湖新书童亲子图书馆学校', '', '', 1, 1431594391, '', 1, 4, '周老师|人事经理|18955316200\r\n王|人事经理|13696562742'),
(292, '', NULL, NULL, 1, 38, '易百分教育', '', '', 1, 1431594719, '', 1, 3, '王老师||15555358885'),
(293, '', NULL, NULL, 2, 40, '芜湖奇仕徽菜馆', '', '', 1, 1431594924, '', 1, 4, '杨老板|人事经理|18255370162'),
(294, '', NULL, NULL, 2, 38, '芜湖市汇泽手绘艺术画室', '', '', 1, 1431595002, '', 1, 4, '蒋经理|人事经理|13909632517'),
(295, '', NULL, NULL, 2, 30, '安徽成蹊品牌推广有限公司', '', '', 1, 1431595303, '', 1, 4, '徐先生|人事经理|14790406184'),
(296, '', NULL, NULL, 2, 23, '弋江区爱奋通讯器材有限公司', '', '', 1, 1431596840, '', 1, 4, '李琼|人事经理|13855333336'),
(297, '', NULL, NULL, 2, 38, '北京京佳教育培训安徽分站', '', '', 1, 1431596972, '', 1, 4, '鲍老师|人事经理|15605533198'),
(298, '', NULL, NULL, 2, 38, '易通驾校', '', '', 1, 1431651218, '', 1, 6, '顾林峰| |0553-2398111'),
(299, '', NULL, NULL, 2, 33, '协和医院', '', '', 1, 1431651528, '', 1, 6, '陈主任| |18555362313'),
(300, '', NULL, NULL, 2, 30, '芜湖行云流水广告公司', '', '', 1, 1431651846, '', 1, 6, '王经理| |13505537548'),
(301, '', NULL, NULL, 2, 29, '蓝天电脑配件', '', '', 1, 1431653557, '', 1, 6, '王先生| |152357002425'),
(302, '', NULL, NULL, 2, 29, '芜湖蓝天电脑配件', '', '', 1, 1431653618, '', 1, 6, '王先生| |152357002425'),
(303, '', NULL, NULL, 2, 32, '芜湖华谦装饰有限公司', '', '', 1, 1431653982, '', 1, 6, '吴小姐| |15955381350'),
(304, '', NULL, NULL, 2, 38, '聪明树早教中心聪明树亲子园', '', '', 1, 1431654443, '', 1, 6, '于老师| |18955326528'),
(305, '', NULL, NULL, 2, 37, '芜湖伟星银湖', '', '', 1, 1431654756, '', 1, 6, '宋女士| |15222935882'),
(306, '', NULL, NULL, 2, 32, '芜湖快鱼卫厨有限公司公司', '', '', 1, 1431654808, '', 1, 6, '吕经理|业务部|13635537005'),
(307, '', NULL, NULL, 2, 40, '芜湖紫竹人家酒楼', '', '', 1, 1431655294, '', 1, 6, '陶先生| |13866382235'),
(308, '', NULL, NULL, 2, 53, '地产传单', '', '', 1, 1431655599, '', 1, 6, '张三| |18755320382'),
(309, '', NULL, NULL, 2, 38, '运泰驾校', '', '', 1, 1431656702, '', 1, 6, '梅先生| |15178582712'),
(310, '', NULL, NULL, 2, 38, '芜湖宇丰跆拳道', '', '', 1, 1431657038, '', 1, 6, '梁先生| |18226729841'),
(311, '', NULL, NULL, 2, 31, '宜草宜木生物科技有限公司', '', '', 1, 1431657328, '', 1, 6, '王女士| |15255388019'),
(395, '', NULL, NULL, 2, 38, '和明教育', '', '', 1, 1432174454, '', 1, 6, '吴先生| |0551-2866690\r\n吴先生| |18601222450'),
(312, '', NULL, NULL, 2, 45, '好百年婚庆礼仪策划公司', '', '', 1, 1431665554, '', 1, 6, '杨先生| |18905534448'),
(313, '', NULL, NULL, 2, 46, '苏合香花店', '', '', 1, 1431665871, '', 1, 6, '经理|人事经理|13965159990'),
(314, '', NULL, NULL, 2, 30, '视平线广告文化传媒有限公司', '', '', 1, 1431667122, '', 1, 6, '万| |18955381881'),
(315, '', NULL, NULL, 2, 27, '欣欣服饰有限公司', '', '', 1, 1431671647, '', 1, 6, '李先生| |13866386421'),
(316, '', NULL, NULL, 2, 30, '伟宏文化传媒', '', '', 1, 1431671950, '', 1, 6, '方女士| |18805533365'),
(317, '', NULL, NULL, 2, 45, '芜湖纽斯婚庆有限公司', '', '', 1, 1431673004, '', 1, 6, '姚先生| |15178589871'),
(318, '', NULL, NULL, 2, 53, '芜湖市亿盛科技有限公司', '', '', 1, 1431673494, '', 1, 6, '朱小姐| |18255384311'),
(319, '', NULL, NULL, 2, 30, '天赐传媒文化广告有限公司', '', '', 1, 1431673784, '', 1, 6, '张三| |15655337575'),
(320, '', NULL, NULL, 2, 38, '博远教育', '', '', 1, 1431674028, '', 1, 6, '张三| |015209845767'),
(321, '', NULL, NULL, 2, 45, '芜湖恒悦婚庆', '', '', 1, 1431674399, '', 1, 6, '杜先生| |13955321150'),
(322, '', NULL, NULL, 2, 25, '芜湖玖之源商贸有限责任公司', '', '', 1, 1431674721, '', 1, 6, '冯小姐| |18356572108'),
(323, '', NULL, NULL, 2, 32, '美伦美嘉家具', '', '', 1, 1431674921, '', 1, 6, '王小姐| |134770731718'),
(324, '', NULL, NULL, 2, 30, '拓企广告有限责任公司', '', '', 1, 1431675283, '', 1, 6, '杨经理|人事经理|13355532344'),
(325, '', NULL, NULL, 2, 32, '芜湖富之岛家具专卖店', '', '', 1, 1431675506, '', 1, 6, '李| |18315314975'),
(326, '', NULL, NULL, 2, 32, '扬子木门', '', '', 1, 1431676885, '', 1, 6, '张三| |13675531008'),
(327, '', NULL, NULL, 2, 53, '安徽天斯努信息技术有限公司', '', '', 1, 1431678160, '', 1, 6, '李先生|人事经理|18355353354'),
(328, '', NULL, NULL, 2, 32, '圣象木门', '', '', 1, 1431678489, '', 1, 6, '李霖| |15395315796'),
(329, '', NULL, NULL, 2, 32, '大唐合盛瓷砖', '', '', 1, 1431678860, '', 1, 6, '刘小姐| |18909637757\r\n刘小姐| |0553-5765688'),
(330, '', NULL, NULL, 2, 32, '慕思寝具', '', '', 1, 1431679710, '', 1, 6, '张三| |15212251099'),
(331, '', NULL, NULL, 2, 44, '福特公爵', '', '', 1, 1431681046, '', 1, 6, '张三|人事经理|13955329556'),
(332, '', NULL, NULL, 2, 32, '芜湖吉事多卫浴有限公司', '', '', 1, 1431681768, '', 1, 6, '张三| |0553-5769768'),
(333, '', NULL, NULL, 1, 23, '星河网购商城', '', '', 1, 1431758996, '', 1, 3, '任经理||13305535666'),
(334, '', NULL, NULL, 1, 38, '芜湖县大众化教育中心', '', '', 1, 1431760379, '', 1, 3, '张老师||13635535544'),
(335, '', NULL, NULL, 1, 40, '江伊达年糕料理', '', '', 1, 1431840270, '', 1, 3, '吴老板|老板|13955305179'),
(336, '', NULL, NULL, 2, 40, '香辣虾', '', '', 1, 1431852032, '', 1, 6, '张三| |0553-3872088'),
(337, '', NULL, NULL, 2, 53, '代理', '', '', 1, 1431852039, '', 1, 6, '徐代理| |18214722075'),
(338, '', NULL, NULL, 3, 40, '芜湖侨鸿皇冠酒店', '', '', 1, 1431911611, '', 1, 7, '张三|人事经理|05533888999'),
(339, '', NULL, NULL, 3, 40, '汉爵酒店', '', '', 1, 1431912998, '', 1, 7, '张三|前台|05533117788'),
(340, '', NULL, NULL, 3, 40, '希尔顿酒店', '', '', 1, 1431913596, '', 1, 7, '张三|前台|05538228888'),
(341, '', NULL, NULL, 3, 40, '中央城大酒店', '', '', 1, 1431913893, '', 1, 7, '张三|前台|05532711666'),
(342, '', NULL, NULL, 3, 40, '悦圆方', '', '', 1, 1431914230, '', 1, 7, '张三|前台|05532882222'),
(343, '', NULL, NULL, 3, 40, '奥顿', '', '', 1, 1431914669, '', 1, 7, '张三|前台|05533835198'),
(344, '', NULL, NULL, 3, 40, '海螺大酒店', '', '', 1, 1431915195, '', 1, 7, '张三|前台|0553839888'),
(345, '', NULL, NULL, 3, 40, '升辉西方财富大酒店', '', '', 1, 1431915703, '', 1, 7, '张三|前台|05535799999'),
(346, '', NULL, NULL, 3, 40, '新百金陵大酒店', '', '', 1, 1431915993, '', 1, 7, '张三|前台|05535978888'),
(347, '', NULL, NULL, 3, 40, '魔石泡泡鱼', '', '', 1, 1431916258, '', 1, 7, '张三|前台|05532885077'),
(348, '', NULL, NULL, 3, 40, '禾味自助餐厅', '', '', 1, 1431916676, '', 1, 7, '张三|前台|05533821977'),
(349, '', NULL, NULL, 3, 40, '澳门豆捞', '', '', 1, 1431916993, '', 1, 7, '张三|前台|4822999'),
(350, '', NULL, NULL, 3, 40, '樱炭火烤肉', '', '', 1, 1431917249, '', 1, 7, '张三|前台|05534818117'),
(351, '', NULL, NULL, 3, 40, '新石器烤肉', '', '', 1, 1431917633, '', 1, 7, '张三|前台|05533906707'),
(352, '', NULL, NULL, 3, 40, '香渝隆火锅', '', '', 1, 1431917869, '', 1, 7, '张三|前台|05532911677'),
(353, '', NULL, NULL, 3, 40, '尚釜自助餐厅', '', '', 1, 1431918449, '', 1, 7, '张三|前台|05535808488'),
(354, '', NULL, NULL, 3, 40, '传奇溜溜鱼', '', '', 1, 1431918710, '', 1, 7, '"张三|前台|05535931177'),
(355, '', NULL, NULL, 3, 40, '拙味龙虾王', '', '', 1, 1431919291, '', 1, 7, '张三|刘经理|17755331441'),
(356, '', NULL, NULL, 3, 40, '同庆楼', '', '', 1, 1431919571, '', 1, 7, '季女士|人事经理|13155302011'),
(357, '', NULL, NULL, 3, 40, '印迹文化主题酒店', '', '', 1, 1431919856, '', 1, 7, '张三|前台|05535110777'),
(358, '', NULL, NULL, 3, 40, '金釜山', '', '', 1, 1431920052, '', 1, 7, '张三|前台|05532885088'),
(359, '', NULL, NULL, 3, 40, '阿瓦山寨', '', '', 1, 1431920346, '', 1, 7, '张三|前台|05532228888'),
(360, '', NULL, NULL, 3, 40, '爵士岛咖啡餐饮', '', '', 1, 1431920520, '', 1, 7, '张三|前台|05536167777'),
(361, '', NULL, NULL, 3, 40, '尚品宫自助烧烤', '', '', 1, 1431920683, '', 1, 7, '张三|前台|05534817770'),
(362, '', NULL, NULL, 3, 40, '钱老大龙虾馆', '', '', 1, 1431921027, '', 1, 7, '钱先生|人事经理|15855537772'),
(363, '', NULL, NULL, 3, 40, '一统捞猪肚鸡', '', '', 1, 1431921214, '', 1, 7, '陈经理|人事经理|18501696337'),
(364, '', NULL, NULL, 3, 40, '金原道自助烧烤火锅', '', '', 1, 1431927090, '', 1, 7, '张三|前台|05535777055'),
(365, '', NULL, NULL, 3, 40, '百和酒店', '', '', 1, 1431927559, '', 1, 7, '陈经理|人事经理|13685538180'),
(366, '', NULL, NULL, 3, 40, '豪亨世家健康牛排', '', '', 1, 1431927903, '', 1, 7, '张三|人事经理|18365399983'),
(367, '', NULL, NULL, 3, 40, '弥宗道麻辣香锅', '', '', 1, 1431928074, '', 1, 7, '张三|前台|05532885988'),
(368, '', NULL, NULL, 3, 40, '酱出名门', '', '', 1, 1431928418, '', 1, 7, '张三|前台|05535817188'),
(369, '', NULL, NULL, 3, 40, '辣有道', '', '', 1, 1431928656, '', 1, 7, '"张三|人事经理|18755379697'),
(370, '', NULL, NULL, 3, 40, '峰谷肥牛', '', '', 1, 1431928941, '', 1, 7, '张三|前台|05535809799'),
(371, '', NULL, NULL, 3, 40, '风雅老树', '', '', 1, 1431929226, '', 1, 7, '张三|前台|05532277777'),
(372, '', NULL, NULL, 3, 40, '第一锅羊蝎子', '', '', 1, 1431929569, '', 1, 7, '张三|前台|05535870799'),
(373, '', NULL, NULL, 3, 40, '我家酸菜鱼', '', '', 1, 1431929830, '', 1, 7, '张三|前台|05535867977'),
(374, '', NULL, NULL, 3, 39, '森林汉府大酒店', '', '', 1, 1431930069, '', 1, 7, '张三|前台|05535207777'),
(375, '', NULL, NULL, 3, 40, '五味坊', '', '', 1, 1431930243, '', 1, 7, '张三|前台|05535881777'),
(376, '', NULL, NULL, 3, 39, '乡下姥长江酒馆', '', '', 1, 1431930449, '', 1, 7, '张三|前台|05534226977'),
(377, '', NULL, NULL, 3, 40, '京来顺老北京涮羊肉', '', '', 1, 1431930820, '', 1, 7, '张三|前台|05535777277'),
(378, '', NULL, NULL, 3, 40, '七秒鱼', '', '', 1, 1431931023, '', 1, 7, '张三|前台|05534915577'),
(379, '', NULL, NULL, 3, 40, '巫山烤全鱼', '', '', 1, 1431931340, '', 1, 7, '张三|前台|05533919323'),
(380, '', NULL, NULL, 3, 40, '都市咖啡', '', '', 1, 1431931569, '', 1, 7, '张三|前台|05534818018'),
(381, '', NULL, NULL, 3, 40, '秦妈火锅', '', '', 1, 1431931775, '', 1, 7, '张三|前台|05535919177'),
(382, '', NULL, NULL, 3, 40, '清溪本家料理', '', '', 1, 1431931946, '', 1, 7, '张三|前台|05535885699'),
(383, '', NULL, NULL, 3, 40, '金口味私房菜', '', '', 1, 1431932148, '', 1, 7, '张三|前台|05535201077'),
(384, '', NULL, NULL, 3, 40, '特色王大酒店', '', '', 1, 1431932317, '', 1, 7, '张三|前台|05534818907'),
(385, '', NULL, NULL, 3, 40, '爱尚烤肉', '', '', 1, 1431932414, '', 1, 7, '张三|前台|05533021113'),
(386, '', NULL, NULL, 3, 40, '外婆鲈鱼', '', '', 1, 1431932604, '', 1, 7, '"张三|前台|05535777776'),
(387, '', NULL, NULL, 3, 40, '餐谋天下', '', '', 1, 1431933282, '', 1, 7, '张三|前台|05535971777'),
(388, '', NULL, NULL, 3, 40, '味根香', '', '', 1, 1431933488, '', 1, 7, '张三|前台|05532275177'),
(389, '', NULL, NULL, 3, 40, '天瑞大酒店', '', '', 1, 1431934243, '', 1, 7, '张三|前台|05538312777'),
(390, '', NULL, NULL, 3, 40, '大家族酒店', '', '', 1, 1431934390, '', 1, 7, '张三|前台|05535111605'),
(391, '', NULL, NULL, 3, 40, '初客牛排', '', '', 1, 1431934627, '', 1, 7, '张三|人事经理|18855347175'),
(392, '', NULL, NULL, 3, 40, '渔道酸菜鱼馆', '', '', 1, 1431934822, '', 1, 7, '张三|前台|05532885910'),
(393, '', NULL, NULL, 1, 38, '尚学教育', '', '', 1, 1432000075, '', 1, 3, '唐老师||18609636062\r\n吴老师||13500520132'),
(394, '', NULL, NULL, 1, 48, '芜湖国际旅行社', '', '', 1, 1432006322, '', 1, 3, '李先生||17730316202'),
(396, '', NULL, NULL, 3, 40, '西部牛排', '', '', 1, 1432223038, '', 1, 7, '宋主管|人事经理|13399538997'),
(397, '', NULL, NULL, 3, 40, '阿古屋', '', '', 1, 1432277872, '', 1, 7, '张三|前台|05533997157'),
(398, '', NULL, NULL, 3, 40, '同庆小厨', '', '', 1, 1432278098, '', 1, 7, '张三|前台|05533908177'),
(399, '', NULL, NULL, 3, 40, '湘乐汇', '', '', 1, 1432278362, '', 1, 7, '张三|前台|05533997188'),
(400, '', NULL, NULL, 3, 40, '万达嘉华酒店', '', '', 1, 1432278531, '', 1, 7, '张三|前台|05538308888'),
(401, '', NULL, NULL, 3, 40, '黄记煌三汁焖锅', '', '', 1, 1432278644, '', 1, 7, '张三|前台|05533997177'),
(402, '', NULL, NULL, 3, 40, '麻辣王烤鱼', '', '', 1, 1432278753, '', 1, 7, '张三|前台|15395301125'),
(403, '', NULL, NULL, 3, 40, '九月山韩式烤肉', '', '', 1, 1432278867, '', 1, 7, '张三|前台|05533907899'),
(404, '', NULL, NULL, 3, 39, '重庆刘一手火锅', '', '', 1, 1432279070, '', 1, 7, '张三|前台|05535889877'),
(405, '', NULL, NULL, 3, 40, '维多利亚餐厅', '', '', 1, 1432279200, '', 1, 7, '王经理|人事经理|05535868121'),
(406, '', NULL, NULL, 3, 40, '秦宝肥牛餐厅', '', '', 1, 1432279354, '', 1, 7, '张三|前台|05535720777'),
(407, '', NULL, NULL, 3, 40, '晋家门', '', '', 1, 1432279496, '', 1, 7, '张三|前台|05533997160'),
(408, '', NULL, NULL, 3, 40, '杰象牛排', '', '', 1, 1432280045, '', 1, 7, '张三|前台|05538222969'),
(409, '', NULL, NULL, 3, 40, '金皖商务餐厅', '', '', 1, 1432280161, '', 1, 7, '张三|前台|13966033579');
INSERT INTO `d_company_user` (`id`, `email`, `password`, `token`, `area_id`, `industry_id`, `cname`, `linkman`, `tel`, `locks`, `regtime`, `lastip`, `types`, `ad_id`, `mlinkman`) VALUES
(410, '', NULL, NULL, 3, 40, '糖糖正正', '', '', 1, 1432280282, '', 1, 7, '张三|前台|05533997159'),
(411, '', NULL, NULL, 3, 40, '黄家湘菜馆', '', '', 1, 1432280396, '', 1, 7, '张三|前台|05535907677'),
(412, '', NULL, NULL, 3, 40, '热风饮品', '', '', 1, 1432280548, '', 1, 7, '张经理|人事经理|18255336763'),
(413, '', NULL, NULL, 3, 40, '吉仁农家菜', '', '', 1, 1432280859, '', 1, 7, '张三|人事经理|18196508887'),
(414, '', NULL, NULL, 3, 40, '巴萨自助烤肉', '', '', 1, 1432280967, '', 1, 7, '张三|前台|05533018077'),
(415, '', NULL, NULL, 1, 18, '海信', '', '', 1, 1432351512, '', 1, 3, '耿永松||13655537044');

-- --------------------------------------------------------

--
-- 表的结构 `d_comptype`
--

CREATE TABLE IF NOT EXISTS `d_comptype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `types` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `d_comptype`
--

INSERT INTO `d_comptype` (`id`, `types`) VALUES
(1, '普通'),
(2, 'A类'),
(3, 'B类'),
(4, 'C类');

-- --------------------------------------------------------

--
-- 表的结构 `d_frozen`
--

CREATE TABLE IF NOT EXISTS `d_frozen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `ad_id` int(10) NOT NULL,
  `ztimes` int(10) NOT NULL,
  `ztimee` int(10) NOT NULL,
  `static` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='冻结' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `d_frozen`
--

INSERT INTO `d_frozen` (`id`, `uid`, `ad_id`, `ztimes`, `ztimee`, `static`) VALUES
(1, 1, 0, 1429632000, 1429632000, 0),
(2, 1, 0, 1429632000, 1461254400, 0),
(3, 1, 0, 1429632000, 1430236800, 0),
(4, 71, 5, 1432310400, 1442937600, 1);

-- --------------------------------------------------------

--
-- 表的结构 `d_industry`
--

CREATE TABLE IF NOT EXISTS `d_industry` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `info` tinytext NOT NULL,
  `area_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='行业' AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `d_industry`
--

INSERT INTO `d_industry` (`id`, `name`, `info`, `area_id`) VALUES
(24, '超市卖场', '', NULL),
(25, '百货卖场', '', NULL),
(26, '眼镜卖场', '', NULL),
(27, '服装卖场', '', NULL),
(28, '建材卖场', '', NULL),
(23, '电脑IT数码卖场', '', NULL),
(21, '电器卖场', '', NULL),
(22, '手机卖场', '', NULL),
(18, '电器类', '', NULL),
(19, '通讯手机类', '', NULL),
(20, '食品饮料类', '', NULL),
(17, '不限', '不限', NULL),
(29, '电脑IT数码类', '', NULL),
(30, '广告营销策划公司类', '', NULL),
(31, '日化化妆品类', '', NULL),
(32, '建材类装饰类', '', NULL),
(33, '医药保健品', '', NULL),
(34, '各类专科医院', '', NULL),
(35, '运动休闲娱乐类', '', NULL),
(36, '服装类', '', NULL),
(37, '房地产类', '', NULL),
(38, '培训类', '', NULL),
(39, '市场调查公司', '', NULL),
(40, '餐饮酒店类', '', NULL),
(41, '婚纱影楼类', '', NULL),
(42, '网络兼职网商类', '', NULL),
(43, '烟酒类', '', NULL),
(44, '汽车类', '', NULL),
(45, '婚庆家政公司', '', NULL),
(46, '大型鲜花店', '', NULL),
(47, '电信类', '', NULL),
(48, '旅游公司公园景点', '', NULL),
(49, '各类展会类', '', NULL),
(50, '各类工厂', '', NULL),
(51, '人力资源公司', '', NULL),
(52, '同行客户', '', NULL),
(53, '其他类', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `d_jobnamelist`
--

CREATE TABLE IF NOT EXISTS `d_jobnamelist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobs_id` int(10) NOT NULL,
  `mem_id` int(10) NOT NULL,
  `admi` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否录取',
  `regtime` int(10) NOT NULL,
  `cancel` tinyint(1) NOT NULL DEFAULT '0',
  `daochang` tinyint(1) NOT NULL DEFAULT '0',
  `canceltime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_id` (`jobs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `d_jobnamelist`
--

INSERT INTO `d_jobnamelist` (`id`, `jobs_id`, `mem_id`, `admi`, `regtime`, `cancel`, `daochang`, `canceltime`) VALUES
(17, 1110452, 1, 0, 1431143863, 1, 0, 1431143884),
(18, 1110459, 101, 1, 1431318209, 0, 0, 0),
(19, 1110461, 101, 1, 1431323920, 0, 0, 0),
(20, 1110463, 48, 1, 1431430537, 0, 0, 0),
(21, 1110472, 126, 1, 1431495045, 0, 1, 0),
(22, 1110472, 124, 1, 1431495086, 0, 1, 0),
(23, 1110463, 135, 1, 1431507128, 0, 0, 0),
(24, 1110463, 68, 1, 1431508359, 0, 0, 0),
(25, 1110463, 134, 1, 1431508441, 0, 0, 0),
(26, 1110462, 99, 0, 1431511295, 1, 0, 1431511903),
(27, 1110462, 90, 0, 1431511302, 1, 0, 1431511903),
(28, 1110462, 49, 0, 1431512858, 0, 0, 0),
(29, 1110462, 51, 0, 1431513076, 0, 0, 0),
(30, 1110462, 91, 0, 1431513407, 0, 0, 0),
(31, 1110463, 90, 1, 1431553694, 0, 0, 0),
(32, 1110463, 99, 1, 1431559618, 0, 0, 0),
(33, 1110463, 58, 0, 1431559866, 0, 0, 0),
(34, 1110463, 129, 1, 1431569659, 0, 0, 0),
(35, 1110463, 130, 1, 1431570630, 0, 0, 0),
(36, 1110463, 142, 1, 1431575335, 0, 0, 0),
(37, 1110463, 123, 1, 1431578471, 0, 0, 0),
(38, 1110463, 122, 1, 1431578653, 0, 0, 0),
(39, 1110474, 60, 1, 1431594617, 0, 0, 0),
(40, 1110468, 56, 0, 1431596461, 0, 0, 0),
(41, 1110468, 102, 0, 1431653430, 0, 0, 0),
(42, 1110468, 176, 0, 1431656581, 0, 0, 0),
(43, 1110468, 196, 0, 1431661803, 0, 0, 0),
(44, 1110479, 173, 0, 1431663953, 1, 0, 1431664727),
(45, 1110463, 173, 0, 1431665273, 0, 0, 0),
(46, 1110463, 174, 0, 1431665434, 0, 0, 0),
(47, 1110481, 187, 0, 1431671037, 0, 0, 0),
(48, 1110481, 184, 0, 1431671045, 0, 0, 0),
(49, 1110479, 49, 0, 1431674526, 0, 0, 0),
(50, 1110479, 51, 0, 1431674554, 0, 0, 0),
(51, 1110479, 89, 0, 1431674567, 0, 0, 0),
(52, 1110481, 74, 0, 1431675932, 0, 0, 0),
(53, 1110482, 84, 0, 1431676676, 0, 0, 0),
(54, 1110482, 58, 0, 1431678924, 0, 0, 0),
(55, 1110477, 99, 0, 1431742484, 0, 0, 0),
(56, 1110477, 90, 0, 1431742498, 0, 0, 0),
(57, 1110486, 56, 0, 1431767583, 0, 0, 0),
(58, 1110480, 183, 0, 1431827534, 0, 0, 0),
(59, 1110480, 41, 0, 1431829664, 0, 0, 0),
(60, 1110489, 35, 0, 1431851390, 0, 0, 0),
(61, 1110489, 114, 0, 1431874781, 0, 0, 0),
(62, 1110492, 169, 0, 1431999274, 0, 0, 0),
(63, 1110492, 170, 0, 1431999285, 0, 0, 0),
(64, 1110496, 35, 0, 1432007257, 0, 0, 0),
(65, 1110495, 181, 0, 1432007270, 0, 0, 0),
(66, 1110496, 50, 0, 1432008766, 0, 0, 0),
(67, 1110495, 50, 0, 1432008784, 0, 0, 0),
(68, 1110498, 65, 0, 1432022780, 0, 0, 0),
(69, 1110498, 78, 0, 1432022798, 0, 0, 0),
(70, 1110501, 62, 0, 1432087524, 0, 0, 0),
(71, 1110494, 175, 0, 1432089015, 0, 0, 0),
(72, 1110477, 120, 0, 1432095917, 0, 0, 0),
(73, 1110477, 133, 0, 1432109136, 0, 0, 0),
(74, 1110504, 29, 0, 1432170698, 0, 0, 0),
(75, 1110506, 124, 0, 1432177439, 1, 0, 1432363345),
(76, 1110506, 126, 0, 1432177777, 1, 0, 1432363345),
(77, 1110500, 55, 0, 1432199379, 0, 0, 0),
(78, 1110500, 53, 0, 1432199398, 0, 0, 0),
(79, 1110506, 143, 0, 1432374421, 0, 0, 1432363345),
(80, 1110512, 163, 0, 1432366368, 0, 0, 0),
(81, 1110513, 163, 0, 1432366380, 0, 0, 0),
(82, 1110512, 165, 0, 1432368278, 0, 0, 0),
(83, 1110513, 165, 0, 1432368294, 0, 0, 0),
(84, 1110512, 36, 0, 1432369492, 0, 0, 0),
(85, 1110512, 34, 0, 1432369865, 0, 0, 0),
(86, 1110506, 145, 0, 1432374541, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `d_jobs`
--

CREATE TABLE IF NOT EXISTS `d_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL,
  `jobtimestart` varchar(50) NOT NULL,
  `jobtimeend` varchar(50) NOT NULL,
  `jobtimestartt` varchar(10) NOT NULL,
  `jobtimeendt` varchar(10) NOT NULL,
  `job` varchar(50) NOT NULL COMMENT '职位',
  `ways` varchar(10) NOT NULL,
  `gathtime` varchar(50) DEFAULT NULL COMMENT '集合时间',
  `admitime` int(10) DEFAULT NULL COMMENT '录取时间',
  `desc` text NOT NULL,
  `title` varchar(50) NOT NULL,
  `grade` varchar(20) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL,
  `ad_id` int(10) NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `auditing` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核',
  `wage` int(10) NOT NULL DEFAULT '0' COMMENT '工资',
  `unit` varchar(10) NOT NULL COMMENT '工资单位',
  `sex1` int(10) DEFAULT NULL,
  `sex2` int(10) DEFAULT NULL,
  `stature1` int(10) NOT NULL DEFAULT '0',
  `stature2` int(10) NOT NULL DEFAULT '0',
  `addr` varchar(60) NOT NULL,
  `otherx` varchar(50) DEFAULT NULL,
  `end` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL,
  `jobtype` varchar(10) DEFAULT NULL,
  `otel` varchar(30) NOT NULL,
  `jobnub` int(10) NOT NULL,
  `jobaddr` varchar(100) NOT NULL,
  `mnums` int(10) NOT NULL,
  `sex11` tinyint(1) NOT NULL DEFAULT '0',
  `sex22` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `top` (`top`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1110514 ;

--
-- 转存表中的数据 `d_jobs`
--

INSERT INTO `d_jobs` (`id`, `cname`, `jobtimestart`, `jobtimeend`, `jobtimestartt`, `jobtimeendt`, `job`, `ways`, `gathtime`, `admitime`, `desc`, `title`, `grade`, `addtime`, `ad_id`, `hits`, `top`, `auditing`, `wage`, `unit`, `sex1`, `sex2`, `stature1`, `stature2`, `addr`, `otherx`, `end`, `endtime`, `jobtype`, `otel`, `jobnub`, `jobaddr`, `mnums`, `sex11`, `sex22`) VALUES
(1110456, '芜湖新长征文化咨询有限公司', '2015-05-13', '2015-05-13', '14:30', '17:30', '派单员', '来电', '2015-05-13 02:20', 1432002960, '两名发单人员，到广济寺集合拿单，工作地点在新一中，最好是安徽工程大学本部的学生', '', '2,3,4', 1431308395, 4, 16, 0, 1, 30, '次', 0, 0, 0, 0, '芜湖市镜湖区广济寺小九华广场5-2', '', 0, 1431401400, '普通', '0553-2205055', 2015051101, '芜湖市新一中', 2, 1, 1),
(1110457, '杭州顶津', '2015-05-21', '2015-05-24', '08:30', '17:30', '促销员', '来电', '', 1431743400, '&lt;span style=&quot;color:#2B2B2B;font-family:Arial, 宋体, sans-serif;font-size:14px;line-height:23px;background-color:#FFFFFF;&quot;&gt;招聘外场促销人员若干名，要求：要能做长期固定的，（不需要健康证）女性，身高1.62以上，性格开朗，能吃苦，工作时不能佩戴眼镜。男生：身高172以上，身体强壮，能吃苦。工资：100元天，周结。工作时间：每周4,5,6,7.报名从速，招满为止！&lt;/span&gt;', '', '2,3,4', 1431308896, 4, 71, 0, 1, 100, '天', 0, 0, 172, 162, '伟星时代金融中心', '', 0, 1435628640, '普通', '0553-2205055', 2015051102, '外地', 10, 1, 1),
(1110455, '阳光保险', '2015-05-11', '2015-05-31', '09:00', '17:00', '话务员', '来电', '', 1431339960, '需要面试', '', '2,3,4', 1431253536, 3, 19, 0, 0, 0, '天', 0, 3, 0, 0, '', '', 0, 1439893440, '普通', '0553-2205066', 2015051002, '', 3, 0, 0),
(1110464, '芜湖华强文化科技产业有限公司', '2015-06-25', '2015-08-31', '08:30', '18:00', '游乐场工作人员', '去电', '2015-05-25 12:00', 1432526400, '&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;1.此工作工资是1500-1600元/月+包吃包住+加班费10元/小时，室内是1500&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-family:宋体, ''Arial Narrow'';font-size:16px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;元/月&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;，室外是1600&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-family:宋体, ''Arial Narrow'';font-size:16px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;元/月（此工作只限6月25日前能到岗的报名）&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-family:宋体, ''Arial Narrow'';font-size:16px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;2.工作是八小时工作制，提供免费午餐，一周休一天，外地的可提供住宿，床位有限，先到先得。家是芜湖本地的学生不提供住宿。&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-family:宋体, ''Arial Narrow'';font-size:16px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;3.&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-family:宋体, ''Arial Narrow'';font-size:16px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;要求必须年满18周岁，拥有二代身份证，提供身份证复印件，学生证复印件，一寸白底照片3张，健康证。&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-family:宋体, ''Arial Narrow'';font-size:16px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;4.主要的工作内容是&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-family:宋体, ''Arial Narrow'';font-size:16px;line-height:26px;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;在游客中心、经营中心、水上乐园辅助正式员工做一些服务性工作，检查一下安全带、操作操作设备、引导游客、营业员&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;等，上班大概时间8:30-18:00，具体时间和岗位要根据实际情况分配。&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431419009, 1, 38, 1, 1, 1600, '月', 0, 0, 0, 0, '等通知', 'jkz,sfz,xsz', 0, 1432458000, '寒暑假', '2205066', 2015051202, '芜湖', 50, 1, 1),
(1110458, '杭州老板电器股份有限公司', '2015-05-13', '2015-05-15', '09:30', '17:30', '派单员', '来电', '2015-05-13 09:20', 1431480000, '需要身份证和银行卡复印件，工资&lt;span style=&quot;line-height:1.5;&quot;&gt;要打卡的，时间要一周左右，因为商家那&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;边打报告然后核销领导签字走流程，所以比较慢，最好是两个男生&lt;/span&gt;', '', '2,3,4', 1431311381, 4, 21, 0, 1, 60, '天', 0, 0, 0, 0, '新时代商业街', 'yhk,sfz', 0, 1431401400, '普通', '0553-2205055', 2015051103, '新时代商业街', 2, 1, 1),
(1110459, '上元教育', '2015-05-12', '2015-05-12', '10:00', '17:00', '派单员', '来电', '2015-05-12 09:50', 1431395400, '认真派单，步行街附近', '', '2,3,4', 1431313398, 4, 19, 0, 1, 60, '天', 0, 0, 0, 0, '三泰大厦', '', 0, 1431333000, '普通', '0553-2205055', 2015051104, '步行街', 2, 1, 1),
(1110460, '格林童话少儿美术学校', '2015-05-11', '2015-07-31', '09:00', '18:00', '美术辅导老师', '去电', '', 1432346400, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;招美术辅导老师，具体工作时间和待遇面议，&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;只要觉得自己可以的同学，都可以去面试一下，相信自己！&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '', '2,3,4', 1431323330, 4, 26, 0, 1, 0, '天', 0, 0, 0, 0, '新时代商业街花津中路', '', 0, 1438321440, '普通', '0553-2205055', 2015051105, '新时代商业街花津中路100号', 5, 1, 1),
(1110461, '上元教育', '2015-05-13', '2015-05-13', '10:00', '17:00', '派单员', '来电', '2015-05-13 09:50', 1431481800, '&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;认真派单，&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;步行街附近&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '', '2,3,4', 1431323647, 4, 25, 0, 1, 60, '天', 0, 0, 0, 0, '三泰大厦', '', 0, 1431419400, '普通', '0553-2205055', 2015051106, '步行街', 2, 1, 1),
(1110462, '云南白药养元青', '2015-05-13', '2015-05-13', '13:00', '21:00', '促销员', '去电', '', 1431570600, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;这份工作招临促和长促，需要面试，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;临促的工作时间是双休的13-21点，平常时间段是17-21点，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;长促的时间段是每天的13-21点，工资是&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;70元&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;line-height:1.5;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;每天加提成，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;做的是云南白药养元青洗发水的促销，每瓶&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;五元&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;提成，&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;工资月结，是工作的下个月25号结工资&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431338119, 4, 96, 0, 1, 70, '天', 0, 3, 0, 0, '中央城', '', 0, 1431565200, '双休', '0553-2205055', 2015051107, '欧尚花津店', 3, 0, 0),
(1110463, '爱贝国际少儿英语', '2015-05-16', '2015-05-17', '09:00', '17:00', '派单员', '来电', '2015-05-16 08:50', 1431738000, '&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;工作内容是派送免费的电影券，并登记领取人信息。&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;line-height:24px;&quot;&gt;&lt;b&gt;&lt;br /&gt;\r\n&lt;/b&gt;&lt;/span&gt;&lt;/span&gt; &lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt; 时薪：10元/小时+无上限提成。底薪日结！做满40个小时有车补，每天10元；&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;工作地点主要在各大商场超市，游乐园，社区，学校门口，工作时商家会根据实际情况就近分配&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431405167, 3, 157, 0, 1, 10, '小时', 0, 0, 0, 0, '中和路妇幼保健院', '', 0, 1431680400, '双休', '0553-2205055', 2015051201, '各大商场超市，游乐园，社区，学校门口', 20, 1, 1),
(1110465, '芜湖华强文化科技产业有限公司', '2015-07-01', '2015-08-31', '08:30', '18:30', '游乐场工作人员', '去电', '等通知', 1433469600, '&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;1.此工作工资是1500-1600元/月+包吃包住+加班费10元/小时，室内是1500&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;元/月&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;，室外是1600&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;元/月（此工作可以从7月1日一直做到开学）&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;2.工作是八小时工作制，提供免费午餐，一周休一天，外地的可提供住宿，床位有限，先到先得。家是芜湖本地的学生不提供住宿。&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;3.&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;要求必须年满18周岁，拥有二代身份证，提供身份证复印件，学生证复印件，一寸白底照片3张，健康证。&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;4.主要的工作内容是&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:16px;&quot;&gt;&lt;strong&gt;在游客中心、经营中心、水上乐园辅助正式员工做一些服务性工作，检查一下安全带、操作操作设备、引导游客、营业员&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;等，上班大概时间8:30-18:00，具体时间和岗位要根据实际情况分配。&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#777777;font-family:''microsoft yahei'';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#333333;font-family:宋体, ''Arial Narrow'';font-size:12px;line-height:26px;&quot;&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;5.报名后会在6月初安排面试的，通过的安排办理入职，放假后直接就可以过去上班。&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431420286, 1, 23, 1, 1, 1600, '月', 0, 0, 0, 0, '芜湖', 'jkz,sfz,xsz', 0, 1440059940, '普通', '2205066', 2015051203, '芜湖', 50, 1, 1),
(1110466, '追画艺术培训中心', '2015-05-16', '2015-06-30', '15:00', '18:00', '招生宣传员', '来电', '2015-05-16 10:00', 1431741600, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;某培训机构在火龙岗的小学附近进行招生宣传工作，&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;要求女生不害羞，沟通表达力能强，喜欢孩子更好，&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;底薪是每月300-500元，每招到一个学员提成是100元，最好能每天连做&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '', '2,3,4', 1431420506, 4, 32, 0, 1, 0, '天', 0, 1, 0, 0, '中央城', '', 0, 1432370520, '普通', '0553-2205055', 2015051204, '火龙岗', 1, 0, 0),
(1110467, '墨池舞蹈', '2015-05-16', '2015-07-31', '16:30', '21:30', '舞蹈老师', '来电', '2015-05-23 10:00', 1432346400, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;知名舞蹈培训机构，现在招各种舞种的老师，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;也&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;可以做幼儿舞蹈老师，&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;具体的工作时间和待遇面议，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;如果你是舞蹈专业的学生或者是舞蹈爱好者，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;都可以参加报名面试，给一个展示自己的机会。&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431422369, 1, 21, 0, 1, 0, '天', 0, 0, 0, 0, '中央城', '', 0, 1440061860, '普通', '0553-2205055', 2015051205, '华亿商务楼', 5, 1, 1),
(1110468, '视平线广告策划公司', '2015-05-16', '2015-05-16', '09:00', '17:00', '派单员', '来电', '', 1431737400, '要求发单学生认真负责，不扔单页，会有人抽查。', '', '2,3,4', 1431483497, 3, 64, 0, 1, 60, '天', 0, 0, 0, 0, '', '', 0, 1431768600, '双休', '', 2015051301, '', 4, 1, 1),
(1110474, '全友家私', '2015-05-15', '2015-05-15', '09:00', '17:00', '派单员', '来电', '2015-05-15 08:50', 1431651000, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;到小区扫楼发单，会有工作人员陪同，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;具体地点商家会分配，工资日结，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;有意向的同学可以报名啦，不清楚的可以电话咨询。&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431567159, 4, 23, 0, 1, 65, '天', 0, 0, 0, 0, '福海家居', '', 0, 1431599400, '普通', '0553-2205055', 2015051401, '官方通知', 4, 1, 1),
(1110473, '元素空间装饰有限公司', '2015-05-14', '2015-05-14', '13:30', '16:30', '派单员', '来电', '', 1431580800, '去万达集合，商家带去指定地点。', '', '2,3,4', 1431507673, 3, 16, 0, 0, 30, '半天', 0, 4, 0, 0, '', '', 0, 1440147540, '普通', '', 2015051303, '万达', 2, 1, 1),
(1110472, '阿波罗眼镜', '2015-05-14', '2015-05-14', '12:00', '14:00', '派单员', '来电', '', 1431574200, '一放学就直接过去', '', '2,3,4', 1431495024, 3, 26, 0, 1, 15, '小时', 0, 0, 0, 0, '', '', 0, 1429162140, '普通', '', 2015051302, '', 2, 1, 1),
(1110475, '多多兼职网', '2015-05-18', '2015-08-31', '08:30', '17:30', '流水线操作工', '来电', '2015-05-18 09:00', 1431910800, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;此工作最少要做4个月，平均月工资2800-3500元+&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;包吃住&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;每天是8-10小时的常白班，没有晚班的哦，女人熬夜伤不起的&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;要求女生，18-40岁，初中以上学历，吃苦耐劳，服从分配&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;入职即可签订协议，购买五险，6人间的宿舍，独立卫浴，有空调&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;line-height:1.5;color:#337FE5;&quot;&gt;&lt;strong&gt;该公司&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;line-height:1.5;color:#337FE5;&quot;&gt;&lt;strong&gt;主要从事家电行业的电热管配套，是国内电热管行业的前十名企业，也是芜湖部分高校合作的知名企业，环境佳，工作轻松。&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;line-height:1.5;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;line-height:1.5;color:#337FE5;&quot;&gt;&lt;strong&gt;此工作有意向的会员和非会员都可报名，下周一即可安排入职，另招代理，高薪提成。&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;', '', '1,2,3,4', 1431574960, 1, 29, 0, 1, 3500, '月', 0, 20, 0, 0, '芜湖经济开发区', '', 0, 1431856800, '实习生', '2205066', 2015051402, '芜湖经济开发区', 20, 1, 0),
(1110476, '多多兼职网', '2015-05-20', '2015-08-31', '08:30', '17:30', '生产作业员', '来电', '2015-05-20 08:30', 1432081800, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;该工作至少要做3个月，综合月工资2700-4200元+包吃住，适合想做短期工，挣高薪生活费的应届实习生&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;工作岗位根据情况主要分配在生产作业员、检验员、SMT操作员等岗位上&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;男女不限，18-40岁，初中及以上学历，身体健康，无犯罪记录&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;基本岗位都是长白班，每天综合工作时间10小时，个别特殊岗位是两班倒&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;宿舍是4-6人间，有空调、电视、独立阳台、卫浴，购买五险&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;该工厂车间环境、生产环境、宿舍环境都非常好，配有员工健身房和娱乐室&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;strong&gt;此工作有意向的会员和非会员都可报名，下周三即可安排入职，另招代理，高薪提成。&lt;/strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '', '1,2,3,4', 1431575941, 7, 48, 1, 1, 4200, '月', 40, 40, 0, 0, '芜湖经济开发区', '', 0, 1439978400, '实习生', '2205066', 2015051403, '芜湖经济开发区', 80, 0, 0),
(1110477, '易百分教育', '2015-05-16', '2015-06-30', '09:00', '17:00', '话务员', '来电', '', 1431673200, '此工作需要面试，明天有时间面试都可以，有经验的优先，工作可长期做，长期待遇更好一点，有各种补助，综合待遇高于其他话务员', '', '2,3,4', 1431595059, 3, 49, 0, 1, 0, '天', 0, 4, 0, 0, '', '', 0, 1440234900, '普通', '', 2015051404, '', 4, 0, 0),
(1110478, '全友家私', '2015-05-18', '2015-05-18', '09:00', '17:00', '派单员', '来电', '2015-05-18 08:50', 1431910200, '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;到小区扫楼发单，会有工作人员陪同，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;具体地点商家会分配，工资日结，&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:16px;color:#337FE5;&quot;&gt;&lt;strong&gt;有意向的同学可以报名啦，不清楚的可以电话咨询。&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431595982, 4, 24, 0, 1, 65, '天', 0, 0, 0, 0, '福海家居', '', 0, 1432204200, '普通', '0553-2205055', 2015051405, '官方通知', 4, 1, 1),
(1110479, '考德上教育合肥分校', '2015-05-16', '2015-05-17', '07:00', '17:30', '教育派单', '来电', '', 1431756000, '此工作是明天下午和后天全天，工作时间是明天下午3点到5点半，后天是7点到8点半，1点到2点，3点半到4点半，工作时间很短，除了工作时间，其余都是自由活动，工资是一天半90，有要到号码的话加5块。', '', '2,3,4', 1431659240, 3, 27, 0, 1, 65, '天', 0, 0, 0, 0, '', '', 0, 1431682200, '双休', '', 2015051501, '', 3, 1, 1),
(1110480, '亚夏驾校', '2015-05-18', '2015-05-18', '13:00', '18:00', '派单员', '来电', '', 1431925200, '此工作的工作时间为周一下午，在商贸学校派单，不过需要在中央城领单页。一小时10块，下午发五个小时', '', '2,3,4', 1431659672, 3, 16, 0, 1, 0, '天', NULL, NULL, 0, 0, '', '', 0, 1431849600, '普通', '', 2015051502, '', 2, 1, 1),
(1110481, '上元教育', '2015-05-16', '2015-05-17', '12:00', '19:00', '派单员', '来电', '', 1431748800, '&lt;p&gt;\r\n	工作时间是上午12:20-13:20，下午6:20-7:20，\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	工作时间不长，蛮轻松的，就是在该学校考试结束的时候，在门口发传单。\r\n&lt;/p&gt;', '', '2,3,4', 1431670181, 6, 13, 0, 1, 35, '天', NULL, NULL, 0, 0, '', '', 0, 1431682200, '双休', '', 2015051503, '商贸，机电门口', 3, 1, 1),
(1110482, '元素空间装饰有限公司', '2015-05-16', '2015-05-16', '09:00', '17:00', '话务员', '来电', '', 1431737400, '有话务员经验 &amp;nbsp;普通话标准 声音甜美', '', '2,3,4', 1431676640, 3, 12, 0, 1, 0, '天', 0, 2, 0, 0, '', '', 0, 1431680400, '双休', '', 2015051504, '', 2, 0, 0),
(1110483, '星河网购商城', '2015-05-23', '2015-06-30', '09:00', '17:00', '临促', '来电', '', 1431928800, '此工作需要面试，商家长期周末或者活动时期要人，每个学校只要一个人。', '', '2,3,4', 1431758930, 3, 27, 0, 1, 0, '天', NULL, NULL, 0, 0, '', '', 0, 1432087200, '双休', '', 2015051601, '', 7, 1, 1),
(1110484, '鸿艺美术学校', '2015-05-16', '2015-05-16', '18:00', '21:30', '人像模特', '来电', '', 1431769800, '此工作要男生 &amp;nbsp;做人像模特 &amp;nbsp;只是坐在那边给学生画画 &amp;nbsp;', '', '2,3,4', 1431762790, 3, 6, 0, 1, 30, '次', 1, 0, 0, 0, '', '', 0, 1431763200, '双休', '', 2015051602, '', 1, 0, 0),
(1110485, '芜湖县大众化教育中心', '2015-06-20', '2015-07-31', '08:00', '16:30', '辅导老师', '来电', '', 1433037600, '此工作是暑期兼职，在芜湖县做家教辅导老师，需要面试，参加试讲，提供食宿，综合工资在1800到2500之间', '', '2,3,4', 1431764832, 3, 17, 1, 1, 2000, '月', NULL, NULL, 0, 0, '', '', 0, 1432974600, '寒暑假', '', 2015051603, '', 8, 1, 1),
(1110486, '上元教育', '2015-05-17', '', '10:00', '17:00', '派单员', '来电', '2015-05-17 09:50', 1431827400, '&lt;p&gt;\r\n	是在步行街&lt;span style=&quot;line-height:1.5;&quot;&gt;发传单&lt;/span&gt; \r\n&lt;/p&gt;', '', '2,3,4', 1431766871, 6, 7, 0, 1, 10, '小时', 0, 0, 0, 0, '三泰大厦', '', 0, 1431768600, '双休', '', 2015051604, '', 1, 1, 1),
(1110487, '上元教育', '2015-05-17', '', '10:00', '13:30', '派单员', '来电', '2015-05-17 09:50', 1431827400, '在机电门口发传单', '', '2,3,4', 1431767039, 6, 6, 0, 1, 35, '天', 0, 0, 0, 0, '机电北门', '', 0, 1431768600, '双休', '', 2015051605, '', 2, 1, 1),
(1110488, '上元教育', '2015-05-17', '', '12:00', '19:00', '派单员', '来电', '2015-05-17 11:50', 1431834600, '&lt;p&gt;\r\n	在商贸门口发传单，\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	工作时间是两个时间段，\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上午12:00-13:30\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	下午17:30-19:00\r\n&lt;/p&gt;', '', '2,3,4', 1431767233, 6, 10, 0, 1, 35, '天', NULL, NULL, 0, 0, '商贸门口', '', 0, 1431768600, '双休', '', 2015051606, '', 1, 1, 1),
(1110489, '江伊达年糕料理', '2015-05-20', '2015-05-20', '08:30', '17:00', '餐饮派单', '来电', '', 1432081200, '商家要求认真派单哦，要靠谱的，不扔单页~~', '', '2,3,4', 1431840670, 3, 25, 0, 1, 70, '天', 0, 0, 0, 0, '', '', 0, 1432186020, '普通', '', 2015051701, '', 2, 1, 1),
(1110490, '代理', '2015-09-01', '2015-09-30', '08:00', '18:00', '代理', '来电', '', 1435913760, '&lt;p&gt;\r\n	下学期开学的时候，卖被子的代理，\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	先拿被子，价格自己定价，时间自己定，卖的差价就是自己的，最后把剩下的被子返还就可以了，不会有存货的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	还被子的时候，把卖掉的被子成本给了，就可以了。\r\n&lt;/p&gt;', '', '2,3,4', 1431853344, 6, 13, 0, 1, 0, '天', 0, 0, 0, 0, '', '', 0, 1435912860, '普通', '', 2015051702, '大学城各大学校附近', 10, 1, 1),
(1110491, '一统捞猪肚鸡', '2015-07-01', '2015-08-31', '10:00', '21:00', '暑期工', '去电', '', 1432530000, '火锅餐厅招服务员。暑期工早上10点到1点半。下午4点半到9点。包吃住。', '', '2,3,4', 1431926760, 7, 26, 0, 1, 0, '天', 2, 3, 0, 0, '', '', 0, 1432531080, '寒暑假', '', 2015051801, '餐厅内。', 5, 0, 0),
(1110492, '视平线广告文化传媒有限公司', '2015-05-20', '2015-05-20', '13:00', '17:00', '剧院派单', '来电', '', 1432097400, '要认真派单哦~~会要抽查的', '', '2,3,4', 1431999260, 3, 8, 0, 1, 40, '半天', 0, 0, 0, 0, '', '', 0, 1432200600, '普通', '', 2015051901, '', 2, 1, 1),
(1110493, '尚学教育', '2015-05-19', '2015-05-19', '16:00', '17:00', '教育派单', '来电', '', 1432018200, '实际工作时间不到一小时 &amp;nbsp; 工资是20加2块钱公交补助 在学校门口派发教育机构的单页', '', '1,2,3,4', 1432000256, 3, 5, 0, 1, 20, '小时', 0, 0, 0, 0, '', '', 0, 1432013400, '普通', '', 2015051902, '', 8, 1, 1),
(1110494, '尚学教育', '2015-05-20', '2015-05-20', '16:00', '17:00', '教育派单', '来电', '', 1432104600, '实际工作时间不到一小时 &amp;nbsp; 工资是20加2块钱公交补助 在学校门口派发教育机构的单页', '', '1,2,3,4', 1432000261, 3, 14, 0, 1, 20, '小时', 0, 0, 0, 0, '', '', 0, 1432090800, '普通', '', 2015051903, '', 10, 1, 1),
(1110495, '芜湖国际旅行社', '2015-05-20', '2015-05-20', '09:00', '18:00', '旅行社派单', '来电', '', 1432081800, '此工作需要在早上八点半之前到城北的欧尚附近集合，领旅行社的单页，商家会分配发单的地点。实际工作时间是9点到六点，80一天，工资做完结算', '', '2,3,4', 1432006561, 3, 4, 0, 1, 80, '天', 0, 0, 0, 0, '', '', 0, 1432092720, '普通', '', 2015051904, '', 2, 1, 1),
(1110496, '芜湖国际旅行社', '2015-05-21', '2015-05-21', '09:00', '18:00', '旅行社派单', '来电', '', 1432168200, '此工作需要在早上八点半之前到城北的欧尚附近集合，领旅行社的单页，商家会分配发单的地点。实际工作时间是9点到六点，80一天，工资做完结算', '', '2,3,4', 1432006567, 3, 3, 0, 1, 80, '天', 0, 0, 0, 0, '', '', 0, 1432179120, '普通', '', 2015051905, '', 2, 1, 1),
(1110497, '元素空间装饰有限公司', '2015-05-19', '', '17:00', '20:00', '派单员', '来电', '2015-05-19 17:30', 0, '万达发传单。', '', '1,2,3,4', 1432017231, 6, 10, 0, 1, 10, '小时', NULL, NULL, 0, 0, '', '', 0, 1432024200, '普通', '', 2015051906, '', 2, 1, 1),
(1110498, '元素空间装饰有限公司', '2015-05-23', '2015-05-23', '09:00', '17:00', '话务员', '来电', '', 1432342200, '装修公司话务员', '', '2,3,4', 1432022733, 3, 13, 0, 1, 60, '天', 0, 2, 0, 0, '', '', 0, 1432198800, '双休', '', 2015051907, '', 2, 0, 0),
(1110504, '亚夏驾校', '2015-05-21', '', '10:00', '18:30', '派单员', '来电', '', 1432177200, '在纬七派单，上午11:00-13:30,下午16:00-18:30,上午25元，下午35元。工资日结。', '', '2,3,4', 1432169966, 6, 4, 0, 1, 0, '天', NULL, NULL, 0, 0, '', '', 0, 1432175400, '普通', '', 2015052101, '纬七', 2, 1, 1),
(1110499, '元素空间装饰有限公司', '2015-05-20', '2015-05-20', '17:00', '20:00', '派单员', '来电', '', 1432111800, '工作地点在万达附近的小区发单，五点前到万达集合', '', '2,3,4', 1432023244, 3, 9, 0, 1, 30, '次', 0, 0, 0, 0, '', '', 0, 1432110600, '普通', '', 2015051908, '', 2, 1, 1),
(1110500, '元素空间装饰有限公司', '2015-05-22', '2015-05-22', '14:00', '17:00', '话务员', '来电', '', 1432287000, '装修公司话务员', '', '2,3,4', 1432023499, 3, 6, 0, 1, 30, '次', 0, 2, 0, 0, '', '', 0, 1432285200, '普通', '', 2015051909, '', 2, 0, 0),
(1110501, '爱你婚庆', '2015-05-20', '', '12:30', '22:00', '婚庆布置', '来电', '', 1432094400, '婚庆布置。。。', '', '1,2,3,4', 1432083752, 6, 9, 0, 1, 0, '天', NULL, 0, 0, 0, '四院对面小区', '', 0, 1432089000, '普通', '', 2015052001, '', 2, 1, 0),
(1110502, '亚夏驾校', '2015-05-20', '2015-05-20', '16:00', '18:30', '驾校宣传派单', '来电', '', 1432108200, '此工作是 &amp;nbsp;四点到六点半 &amp;nbsp; &amp;nbsp;但是需要来中央城领取单页 工资隔天商家结算 &amp;nbsp;大概是在纬七或者机电联大发', '', '1,2,3,4', 1432086658, 3, 5, 0, 1, 15, '小时', 0, 0, 0, 0, '', '', 0, 1432103400, '普通', '', 2015052002, '', 2, 1, 1),
(1110503, '元素空间装饰有限公司', '2015-05-22', '2015-05-22', '09:00', '12:00', '话务员', '来电', '', 1432255800, '装修公司话务员', '', '2,3,4', 1432104129, 3, 5, 0, 0, 30, '次', 0, 2, 0, 0, '', '', 0, 1432281600, '普通', '', 2015052003, '', 2, 0, 0),
(1110505, '元素空间装饰有限公司', '2015-05-22', '', '09:00', '17:00', '话务员', '来电', '', 1432255500, '做话务员，上午9:00-12:00，下午2:00-5:00，一天60，半天30.', '', '2,3,4', 1432170883, 6, 10, 0, 1, 60, '天', 0, 0, 0, 0, '', '', 0, 1432200600, '普通', '', 2015052102, '', 2, 0, 1),
(1110506, '和明教育', '2015-06-07', '', '08:00', '15:00', '信息登记员', '来电', '', 1432433880, '&lt;p&gt;\r\n	&amp;nbsp;6月7号需要一批高考填写登记表，在芜湖的高考考点，需要登记家长信息超过50条。 并且保证信息正确。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	然后要提前来办公室签定协议。越快越好。工资不是日结哦。他们要确认信息正确后，才会结工资的。\r\n&lt;/p&gt;', '', '2,3,4', 1432174967, 6, 61, 1, 1, 100, '天', NULL, NULL, 0, 0, '', '', 0, 1432433760, '普通', '', 2015052103, '芜湖高考考点', 30, 1, 1),
(1110507, '全友家私芜湖专卖店', '2015-05-22', '2015-05-22', '08:30', '17:00', '派单员', '来电', '2015-05-22 08:30', 1432254600, '发单工作，不需要爬楼，日结，服从分配即可，工作轻松。&amp;nbsp;', '', '2,3,4', 1432198753, 3, 10, 0, 1, 70, '天', 2, 0, 0, 0, '等通知', '', 0, 1432202400, '普通', '0553-2205066', 2015052104, '等通知', 2, 0, 0),
(1110508, '代理', '2015-05-24', '2015-05-24', '09:30', '18:00', '保安', '来电', '', 1432348200, '德盛广场周日保安，要求男生 &amp;nbsp;172左右（180也可）工作时不戴眼镜 &amp;nbsp;周六上午九点到九点半带学生证身份证乐天玛特领衣服 &amp;nbsp;周日工作 &amp;nbsp;工作时间是9点半到6点 &amp;nbsp;工作时需要穿工作服 &amp;nbsp; 工资60做完要周一带衣服领证件然后发工资 &amp;nbsp;提供两顿饭 &amp;nbsp;同学们加油哦~~', '', '2,3,4', 1432262318, 3, 9, 0, 1, 60, '天', 8, 0, 172, 0, '', '', 0, 1432285200, '双休', '', 2015052201, '德盛广场', 8, 0, 0),
(1110509, '芜湖祖名豆乳', '2015-06-01', '2015-08-30', '11:00', '21:00', '餐饮促销', '来电', '', 1433034000, '长期兼职 &amp;nbsp;在餐饮店促销王老吉，有可能会有一些其他的临时安排的工作，不过总体还算轻松 &amp;nbsp;现在每周五六日工作时间是11点到13点 5点到9点 &amp;nbsp;工资是10块一小时 每月十五号打卡 现在做的话可以暑期一直做下去', '', '1,2,3,4', 1432345596, 3, 7, 0, 1, 10, '小时', 0, 2, 0, 0, '', '', 0, 1432459800, '普通', '', 2015052301, '', 2, 0, 0),
(1110510, '爱尚烤肉', '2015-07-01', '2015-08-30', '09:00', '21:00', '领位', '来电', '', 1434160800, '暑期工，在火锅店领位，不是服务员，比较轻松，包吃包住，工资1800一个月。但是需要外向活泼一点。六月中旬的时候大概面试一下，放假就可以直接工作', '', '1,2,3,4', 1432346647, 3, 3, 0, 1, 0, '天', 0, 2, 0, 160, '', '', 0, 1433064600, '寒暑假', '', 2015052302, '', 2, 0, 0),
(1110511, '海信', '2015-05-24', '2015-05-28', '09:00', '18:00', '工作人员', '来电', '', 1432428600, '此工作是配合商家在小区进行宣传，大概是发单扫楼打杂什么的 &amp;nbsp; 要到29号结算 必须连做五天', '', '2,3,4', 1432355448, 3, 8, 1, 1, 0, '天', NULL, NULL, 0, 0, '', '', 0, 1432373400, '普通', '', 2015052303, '', 3, 1, 1),
(1110512, '芜湖祖名豆乳', '2015-06-13', '2015-06-14', '17:00', '21:00', '临时促销', '来电', '', 1433053800, '此工作需要面试，临时促销人员，工作地点在赤铸山西路，工资是底薪10块一小时，销量好会有奖金，近期报名，统一安排面试，面试没什么大问题，就是商家要确定到时候人员能够到岗。', '', '2,3,4', 1432364453, 3, 18, 1, 1, 10, '小时', 0, 10, 0, 158, '', '', 0, 1432890000, '双休', '', 2015052304, '', 10, 0, 0),
(1110513, '芜湖祖名豆乳', '2015-06-20', '2015-06-22', '17:00', '21:00', '临时促销', '来电', '', 1433053800, '此工作需要面试，临时促销人员，工作地点在赤铸山西路，工资是底薪10块一小时，销量好会有奖金，近期报名，统一安排面试，面试没什么大问题，就是商家要确定到时候人员能够到岗。', '', '2,3,4', 1432364459, 3, 8, 1, 1, 10, '小时', 0, 10, 0, 158, '', '', 0, 1432890000, '双休', '', 2015052305, '', 10, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `d_limit`
--

CREATE TABLE IF NOT EXISTS `d_limit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `ad_id` int(10) NOT NULL,
  `limittimes` int(10) NOT NULL,
  `limittimee` int(10) NOT NULL,
  `static` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `d_limit`
--

INSERT INTO `d_limit` (`id`, `uid`, `ad_id`, `limittimes`, `limittimee`, `static`) VALUES
(1, 1, 0, 1429718400, 1432224000, 0);

-- --------------------------------------------------------

--
-- 表的结构 `d_major`
--

CREATE TABLE IF NOT EXISTS `d_major` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='专业' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `d_major`
--

INSERT INTO `d_major` (`id`, `name`) VALUES
(1, '不限');

-- --------------------------------------------------------

--
-- 表的结构 `d_member`
--

CREATE TABLE IF NOT EXISTS `d_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `age` int(10) NOT NULL,
  `QQ` int(10) DEFAULT NULL,
  `education` varchar(4) NOT NULL COMMENT '学历',
  `school_id` smallint(5) NOT NULL,
  `campus_id` smallint(5) DEFAULT NULL COMMENT '校区',
  `major_id` smallint(5) DEFAULT NULL COMMENT '专业',
  `stature` int(10) DEFAULT NULL COMMENT '身高',
  `weight` int(10) DEFAULT NULL COMMENT '体重',
  `specialty` varchar(500) DEFAULT NULL COMMENT '特长',
  `toyear` smallint(5) NOT NULL,
  `freetime` varchar(200) DEFAULT NULL,
  `uid` int(10) NOT NULL,
  `hel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `school` (`school_id`),
  KEY `job_id` (`toyear`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- 转存表中的数据 `d_member`
--

INSERT INTO `d_member` (`id`, `age`, `QQ`, `education`, `school_id`, `campus_id`, `major_id`, `stature`, `weight`, `specialty`, `toyear`, `freetime`, `uid`, `hel`) VALUES
(8, 0, 526157318, '专科', 19, 15, 1, 182, 0, '', 2014, '6am,7am,6pm,7pm', 16, 0),
(9, 0, 1139470241, '专科', 19, 15, 1, 180, 0, '', 2013, '6am,7am,6pm,7pm', 17, 0),
(10, 0, 1529123229, '专科', 21, 16, 1, 158, 0, '', 2014, '6am,7am,3pm,5pm,6pm,7pm', 18, 0),
(6, 24, 0, '本科', 1, 3, 1, 188, 70, '', 2014, '2am,2pm', 14, 0),
(7, 23, 0, '高中', 1, 2, 2, 180, 50, '啊发送到发送到', 2013, '2am,3am,4am', 15, 0),
(11, 0, 41129623, '专科', 19, 15, 1, 179, 0, '', 2014, '6am,7am,6pm,7pm', 19, 0),
(12, 0, 544045650, '专科', 19, 15, 1, 173, 0, '', 2014, '6am,7am,6pm,7pm', 20, 0),
(13, 0, 1214547670, '专科', 21, 16, 1, 163, 0, '', 2014, '6am,7am,3pm,5pm,6pm,7pm', 21, 0),
(14, 0, 2040804782, '专科', 21, 16, 1, 162, 0, '', 2014, '3am,6am,7am,1pm,6pm,7pm', 22, 0),
(15, 0, 527941972, '专科', 21, 16, 1, 169, 0, '', 2013, '6am,7am,3pm,5pm,6pm,7pm', 23, 0),
(16, 0, 1341614279, '专科', 19, 15, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 24, 0),
(17, 0, 1677009574, '专科', 21, 16, 1, 171, 0, '', 2014, '6am,7am,6pm,7pm', 25, 0),
(18, 0, 1027896944, '专科', 19, 15, 1, 179, 0, '', 2014, '6am,7am,6pm,7pm', 26, 0),
(19, 0, 826312534, '专科', 21, 16, 1, 166, 0, '', 2014, '6am,7am,6pm,7pm', 27, 0),
(20, 0, 1378962820, '本科', 19, 15, 1, 167, 0, '', 2014, '6am,7am,1pm,2pm,3pm,4pm,5pm,6pm,7pm', 28, 0),
(21, 0, 975458164, '专科', 19, 15, 1, 173, 0, '', 2014, '6am,7am,6pm,7pm', 29, 0),
(22, 0, 894693526, '专科', 19, 15, 1, 172, 0, '', 2014, '6am,7am,6pm,7pm', 30, 0),
(23, 0, 978760006, '专科', 21, 16, 1, 170, 0, '', 2014, '6am,7am,3pm,5pm,6pm,7pm', 31, 0),
(24, 0, 1310636450, '专科', 19, 15, 1, 155, 0, '', 2014, '6am,7am,6pm,7pm', 32, 0),
(25, 0, 1639400214, '专科', 21, 16, 1, 170, 0, '', 2014, '6am,7am,3pm,4pm,6pm,7pm', 33, 0),
(26, 0, 1835631003, '专科', 19, 15, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 34, 0),
(27, 0, 1367845704, '本科', 14, 4, 1, 168, 0, '', 2011, '1am,2am,3am,4am,5am,6am,7am,1pm,2pm,3pm,4pm,5pm,6pm,7pm', 35, 0),
(28, 20, 1084926786, '专科', 19, 15, 1, 168, 54, '', 2014, '6am,7am,6pm,7pm', 36, 0),
(29, 0, 1490936732, '本科', 14, 4, 1, 174, 0, '生活委员', 2014, '4am,6am,7am,3pm,4pm,5pm,6pm,7pm', 37, 0),
(30, 0, 2108325439, '本科', 14, 4, 1, 177, 0, '', 2014, '6am,7am,6pm,7pm', 38, 0),
(31, 0, 2054406849, '本科', 14, 4, 1, 170, 0, '', 2014, '6am,7am,6pm,7pm', 39, 0),
(32, 0, 2147483647, '本科', 14, 4, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 40, 0),
(33, 0, 1031187387, '专科', 27, 18, 1, 180, 0, '', 2010, '1am,2am,3am,4am,5am,6am,7am,1pm,2pm,3pm,4pm,5pm,6pm,7pm', 41, 0),
(34, 0, 1195083015, '本科', 14, 5, 1, 170, 0, '', 2013, '4am,6am,7am,3pm,4pm,6pm,7pm', 42, 0),
(35, 0, 1294462562, '专科', 19, 15, 1, 155, 0, '', 2014, '6am,7am,6pm,7pm', 43, 0),
(36, 0, 2147483647, '专科', 19, 15, 1, 164, 0, '', 2014, '6am,7am,6pm,7pm', 45, 0),
(37, 0, 2147483647, '本科', 14, 5, 1, 170, 0, '', 2013, '6am,7am,3pm,6pm,7pm', 44, 0),
(38, 0, 1138443990, '专科', 19, 15, 1, 155, 0, '', 2014, '6am,7am,6pm,7pm', 46, 0),
(39, 0, 1175726028, '专科', 19, 15, 1, 165, 0, '', 2014, '6am,7am,6pm,7pm', 47, 0),
(40, 0, 1326973131, '专科', 17, 13, 1, 166, 0, '', 2014, '1am,6am,7am,6pm,7pm', 48, 0),
(41, 0, 1476058917, '中专', 17, 13, 1, 158, 0, '', 2014, '6am,7am,6pm,7pm', 49, 0),
(42, 0, 826074366, '专科', 27, 18, 1, 158, 0, '', 2007, '1am,2am,3am,4am,5am,6am,7am,1pm,2pm,3pm,4pm,5pm,6pm,7pm', 50, 0),
(43, 0, 649363701, '专科', 17, 13, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 51, 0),
(44, 0, 178453255, '本科', 14, 5, 1, 178, 0, '', 2013, '6am,7am,6pm,7pm', 52, 0),
(45, 0, 2114505437, '专科', 17, 13, 1, 165, 0, '', 2014, '6am,7am,6pm,7pm', 53, 0),
(46, 0, 838132045, '中专', 22, 12, 1, 160, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 54, 0),
(47, 0, 2147483647, '专科', 17, 13, 1, 164, 0, '', 2014, '6am,7am,6pm,7pm', 55, 0),
(48, 0, 1071560911, '专科', 17, 13, 1, 167, 0, '', 2014, '6am,7am,6pm,7pm', 56, 0),
(49, 0, 892347030, '中专', 22, 12, 1, 180, 0, '', 2014, '6am,7am,6pm,7pm', 57, 0),
(50, 0, 2147483647, '专科', 17, 13, 1, 158, 0, '', 2014, '2am,6am,7am,2pm,6pm,7pm', 58, 0),
(51, 0, 2147483647, '专科', 17, 13, 1, 165, 0, '', 2014, '6am,7am,6pm,7pm', 59, 0),
(52, 0, 541916783, '中专', 22, 12, 1, 170, 0, '', 2013, '6am,7am,6pm,7pm', 60, 0),
(53, 0, 2147483647, '专科', 17, 13, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 61, 0),
(54, 0, 1481973470, '中专', 22, 12, 1, 172, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 62, 0),
(55, 0, 1748502148, '专科', 17, 13, 1, 163, 0, '', 2014, '6am,7am,6pm,7pm', 63, 0),
(56, 0, 2147483647, '专科', 17, 13, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 64, 0),
(57, 0, 1192095674, '专科', 17, 13, 1, 164, 0, '', 2014, '6am,7am,6pm,7pm', 65, 0),
(58, 0, 894694803, '专科', 17, 13, 1, 164, 0, '', 2014, '6am,7am,6pm,7pm', 66, 0),
(59, 0, 1690181198, '专科', 21, 16, 1, 170, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 67, 0),
(60, 0, 1076099038, '专科', 17, 13, 1, 151, 0, '', 2014, '3am,6am,7am,3pm,6pm,7pm', 68, 0),
(61, 0, 1453050900, '专科', 17, 13, 1, 167, 0, '', 2014, '5am,6am,7am,6pm,7pm', 69, 0),
(62, 0, 1031194297, '专科', 17, 13, 1, 175, 0, '', 2014, '5am,6am,7am,6pm,7pm', 70, 0),
(63, 0, 1719237865, '专科', 17, 13, 1, 156, 0, '', 2014, '5am,6am,7am,6pm,7pm', 72, 0),
(64, 0, 2147483647, '专科', 18, 14, 1, 160, 0, '', 2014, '6am,7am,2pm,3pm,6pm,7pm', 71, 0),
(65, 0, 2147483647, '专科', 17, 13, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 73, 0),
(66, 0, 2147483647, '专科', 18, 14, 1, 163, 0, '', 2014, '6am,7am,3pm,5pm,6pm,7pm', 74, 0),
(67, 0, 2147483647, '专科', 17, 13, 1, 165, 0, '', 2014, '6am,7am,6pm,7pm', 75, 0),
(68, 0, 1277997148, '中专', 17, 13, 1, 156, 0, '', 2014, '6am,7am,6pm,7pm', 76, 0),
(69, 0, 2147483647, '专科', 18, 14, 1, 156, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 77, 0),
(70, 0, 1184255172, '专科', 17, 13, 1, 163, 0, '', 2014, '6am,7am,6pm,7pm', 78, 0),
(71, 0, 981203138, '专科', 18, 14, 1, 165, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 79, 0),
(72, 0, 1743819913, '专科', 17, 13, 1, 166, 0, '', 2014, '6am,7am,6pm,7pm', 80, 0),
(73, 0, 1819734005, '专科', 17, 13, 1, 158, 0, '', 2014, '6am,7am,6pm,7pm', 81, 0),
(74, 0, 2147483647, '专科', 18, 14, 1, 160, 0, '', 2014, '6am,7am,1pm,3pm,6pm,7pm', 82, 0),
(75, 0, 2147483647, '专科', 17, 13, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 83, 0),
(76, 0, 2079129695, '专科', 17, 13, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 84, 0),
(77, 0, 1292067289, '专科', 18, 14, 1, 167, 0, '', 2014, '6am,7am,5pm,6pm,7pm', 85, 0),
(78, 0, 1778144021, '专科', 17, 13, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 86, 0),
(79, 0, 183608210, '专科', 17, 13, 1, 167, 0, '', 2014, '6am,7am,4pm,6pm,7pm', 87, 0),
(80, 0, 2147483647, '专科', 18, 14, 1, 157, 0, '唱歌.绘画', 2013, '6am,7am,5pm,6pm,7pm', 88, 0),
(81, 0, 1591675661, '专科', 17, 13, 1, 155, 0, '', 2014, '6am,7am,6pm,7pm', 89, 0),
(82, 0, 1250289622, '专科', 18, 14, 1, 156, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 90, 0),
(83, 0, 1550458014, '专科', 17, 13, 1, 161, 0, '', 2014, '6am,7am,6pm,7pm', 91, 0),
(84, 0, 1263656886, '专科', 17, 13, 1, 168, 0, '', 2014, '6am,7am,6pm,7pm', 92, 0),
(85, 0, 1164578047, '专科', 18, 14, 1, 165, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 93, 0),
(86, 0, 934332797, '专科', 17, 13, 1, 157, 0, '', 2014, '6am,7am,6pm,7pm', 94, 0),
(87, 0, 115904095, '专科', 17, 13, 1, 161, 0, '', 2014, '6am,7am,6pm,7pm', 96, 0),
(88, 0, 2147483647, '专科', 18, 14, 1, 157, 0, '', 2013, '6am,7am,3pm,6pm,7pm', 95, 0),
(89, 0, 1506193251, '专科', 17, 13, 1, 172, 0, '', 2014, '6am,7am,6pm,7pm', 97, 0),
(90, 0, 2147483647, '专科', 18, 14, 1, 164, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 98, 0),
(91, 0, 819795908, '专科', 18, 14, 1, 163, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 99, 0),
(92, 0, 1023096511, '本科', 16, 10, 1, 180, 0, '', 2013, '6am,7am,4pm,6pm,7pm', 100, 0),
(93, 0, 296358215, '本科', 16, 10, 1, 165, 0, '', 2010, '1am,2am,3am,4am,5am,6am,7am,1pm,2pm,3pm,4pm,5pm,6pm,7pm', 101, 0),
(94, 0, 845980818, '专科', 18, 14, 1, 157, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 102, 0),
(95, 19, 1014273718, '专科', 18, 14, 1, 161, 50, '', 2013, '6am,7am,3pm,6pm,7pm', 103, 1),
(96, 0, 1650098340, '本科', 16, 10, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 104, 0),
(97, 0, 2147483647, '本科', 16, 10, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 105, 0),
(98, 0, 1546165974, '本科', 1, 2, 1, 0, 0, '唱歌、交流', 2014, '6am,7am,2pm,3pm,6pm,7pm', 106, 0),
(99, 0, 2147483647, '本科', 16, 10, 1, 180, 0, '', 2013, '6am,7am,6pm,7pm', 108, 0),
(100, 0, 2147483647, '本科', 1, 2, 1, 165, 0, '羽毛球.唱歌', 2014, '6am,7am,2pm,3pm,6pm,7pm', 107, 0),
(101, 0, 644399083, '本科', 16, 10, 1, 180, 0, '', 2013, '6am,7am,6pm,7pm', 109, 0),
(102, 0, 2147483647, '本科', 1, 2, 1, 161, 0, '羽毛球.唱歌', 2014, '6am,7am,3pm,6pm,7pm', 110, 0),
(103, 0, 327939802, '本科', 16, 10, 1, 170, 0, '', 2014, '6am,7am,6pm,7pm', 111, 0),
(104, 0, 779250049, '本科', 16, 10, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 112, 0),
(105, 0, 975175955, '本科', 1, 2, 1, 170, 0, '', 2014, '6am,7am,3pm,5pm,6pm,7pm', 113, 0),
(106, 23, 925084017, '本科', 16, 10, 1, 174, 65, '不断磨练，不断成长!', 2012, '1am,2am,3am,4am,5am,6am,7am,1pm,2pm,3pm,4pm,5pm,6pm,7pm', 114, 0),
(107, 0, 601873211, '本科', 16, 10, 1, 183, 0, '', 2014, '6am,7am,6pm,7pm', 115, 0),
(108, 0, 2147483647, '本科', 1, 2, 1, 168, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 116, 0),
(109, 0, 2147483647, '本科', 16, 10, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 117, 0),
(110, 0, 1109030307, '本科', 1, 2, 1, 162, 0, '', 2014, '6am,7am,2pm,3pm,6pm,7pm', 118, 0),
(111, 0, 1371011721, '本科', 16, 10, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 119, 0),
(112, 0, 599595135, '本科', 1, 2, 1, 165, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 120, 0),
(113, 0, 584885775, '本科', 1, 2, 1, 166, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 121, 0),
(114, 0, 1647529885, '本科', 16, 10, 1, 175, 0, '', 2014, '6am,6pm', 122, 0),
(115, 0, 434334627, '本科', 16, 10, 1, 178, 0, '', 2014, '6am,7am,6pm,7pm', 123, 0),
(116, 0, 643856084, '本科', 1, 2, 1, 163, 0, '摄影.绘画', 2013, '6am,7am,3pm,4pm,6pm,7pm', 124, 0),
(117, 0, 597709651, '本科', 16, 10, 1, 177, 0, '', 2014, '6am,7am,6pm,7pm', 125, 0),
(118, 0, 2147483647, '本科', 1, 2, 1, 158, 0, '绘画', 2014, '6am,7am,3pm,4pm,6pm,7pm', 126, 0),
(119, 0, 1330895614, '本科', 16, 10, 1, 170, 0, '', 2014, '6am,7am,5pm,6pm,7pm', 127, 0),
(120, 0, 1032942834, '本科', 16, 10, 1, 162, 0, '', 2013, '6am,7am,6pm,7pm', 128, 0),
(121, 0, 1796369175, '本科', 16, 10, 1, 0, 0, '', 2014, '6am,7am,6pm,7pm', 129, 0),
(122, 0, 1350604352, '本科', 16, 10, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 130, 0),
(123, 0, 853197071, '本科', 1, 2, 1, 160, 0, '', 2014, '1am,3am,4am,6am,7am,3pm,6pm,7pm', 131, 0),
(124, 0, 1054553396, '专科', 16, 10, 1, 154, 0, '', 2011, '6am,7am,6pm,7pm', 132, 0),
(125, 0, 1620832845, '专科', 17, 13, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 134, 0),
(126, 0, 892137057, '本科', 1, 2, 1, 162, 0, '', 2012, '1am,3am,4am,6am,7am,2pm,5pm,6pm,7pm', 133, 0),
(127, 0, 1597219572, '本科', 16, 10, 1, 165, 0, '', 2014, '6am,7am,6pm,7pm', 135, 0),
(128, 0, 1019859709, '本科', 1, 2, 1, 165, 0, '', 2014, '7am,6pm,7pm', 136, 0),
(129, 0, 1422298325, '本科', 1, 2, 1, 161, 0, '', 2014, '6am,7am,6pm,7pm', 137, 0),
(130, 0, 205468607, '本科', 16, 10, 1, 150, 0, '', 2014, '6am,7am,6pm,7pm', 138, 0),
(131, 0, 1564096697, '本科', 1, 2, 1, 161, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 139, 0),
(132, 0, 1840494606, '本科', 16, 10, 1, 161, 0, '', 2014, '6am,7am,6pm,7pm', 140, 0),
(133, 0, 2147483647, '本科', 1, 2, 1, 162, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 141, 0),
(134, 0, 1172075454, '本科', 16, 10, 1, 155, 0, '', 2014, '6am,7am,6pm,7pm', 142, 0),
(135, 0, 1319942887, '本科', 1, 2, 1, 160, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 143, 0),
(136, 0, 785832401, '本科', 16, 10, 1, 155, 0, '', 2010, '1am,3am,4am,5am,6am,7am,2pm,6pm,7pm', 144, 0),
(137, 0, 905222514, '本科', 1, 2, 1, 165, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 145, 0),
(138, 0, 1716585281, '本科', 1, 2, 1, 168, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 146, 0),
(139, 0, 1658546780, '本科', 16, 10, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 147, 0),
(140, 0, 779507138, '本科', 1, 2, 1, 165, 0, '', 2014, '6am,7am,2pm,3pm,5pm,6pm,7pm', 148, 0),
(141, 0, 2147483647, '本科', 16, 10, 1, 160, 0, '', 2015, '6am,7am,6pm,7pm', 149, 0),
(142, 0, 1042646092, '本科', 1, 2, 1, 162, 0, '', 2014, '6am,7am,3pm', 150, 0),
(143, 0, 1442199029, '本科', 16, 10, 1, 156, 0, '', 2014, '6am,7am,6pm,7pm', 151, 0),
(144, 0, 2147483647, '本科', 1, 2, 1, 160, 0, '', 2011, '1am,2am,4am,5am,6am,7am,2pm,3pm,4pm,5pm,6pm,7pm', 152, 0),
(145, 0, 982123573, '本科', 16, 10, 1, 162, 0, '', 2014, '5am,6am,7am,6pm,7pm', 153, 0),
(146, 0, 1615400154, '本科', 1, 2, 1, 165, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 154, 0),
(147, 0, 2147483647, '本科', 16, 10, 1, 164, 0, '', 2012, '6am,7am,6pm,7pm', 155, 0),
(148, 0, 745688450, '本科', 1, 2, 1, 166, 0, '', 2014, '6am,7am,6pm,7pm', 156, 0),
(149, 0, 1175161724, '本科', 16, 10, 1, 158, 0, '', 2014, '6am,7am,6pm,7pm', 157, 0),
(150, 0, 1043175347, '本科', 1, 2, 1, 164, 0, '', 2014, '6am,7am,6pm,7pm', 158, 0),
(151, 0, 779984150, '本科', 16, 10, 1, 164, 0, '', 2014, '6am,7am,6pm,7pm', 159, 0),
(152, 0, 1396856776, '本科', 1, 2, 1, 167, 0, '', 2014, '6am,7am,2pm,3pm,6pm,7pm', 160, 0),
(153, 0, 929725117, '本科', 1, 2, 1, 158, 0, '', 2014, '6am,7am,1pm,3pm,6pm,7pm', 161, 0),
(154, 0, 1429095148, '本科', 1, 2, 1, 160, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 162, 0),
(155, 0, 1752640710, '本科', 1, 2, 1, 160, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 163, 0),
(156, 0, 2147483647, '本科', 1, 2, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 164, 0),
(157, 0, 1660896966, '本科', 1, 2, 1, 166, 0, '书法', 2014, '6am,7am,3pm,6pm,7pm', 165, 0),
(158, 0, 2147483647, '本科', 1, 2, 1, 163, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 166, 0),
(159, 0, 1970675072, '本科', 1, 2, 1, 163, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 167, 0),
(160, 0, 192133829, '本科', 1, 2, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 168, 0),
(161, 0, 995915293, '本科', 1, 2, 1, 165, 0, '', 2014, '6am,7am,2pm,3pm,6pm,7pm', 169, 0),
(162, 0, 283085722, '本科', 1, 2, 1, 158, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 170, 0),
(163, 0, 879911805, '本科', 1, 2, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 171, 0),
(164, 0, 2147483647, '本科', 1, 2, 1, 161, 0, '', 2014, '6am,7am,6pm,7pm', 172, 0),
(165, 0, 1746130530, '本科', 1, 2, 1, 165, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 173, 0),
(166, 0, 775201927, '本科', 1, 2, 1, 172, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 174, 0),
(167, 0, 1895336973, '专科', 17, 13, 1, 163, 0, '', 2014, '6am,7am,6pm,7pm', 175, 0),
(168, 0, 308591041, '本科', 1, 2, 1, 161, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 176, 0),
(169, 0, 1337069859, '本科', 16, 10, 1, 168, 0, '', 2014, '6am,7am,6pm,7pm', 177, 0),
(170, 0, 1642848859, '本科', 1, 2, 1, 158, 0, '', 2014, '6am,7am,1pm,3pm,6pm,7pm', 178, 0),
(171, 0, 1127848072, '本科', 1, 2, 1, 164, 0, '', 2014, '7am,1pm,3pm,6pm,7pm', 179, 0),
(172, 0, 1539801843, '本科', 16, 10, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 180, 0),
(173, 0, 1732070109, '本科', 1, 2, 1, 158, 0, '', 2012, '3am,6am,3pm,6pm', 181, 0),
(174, 0, 2147483647, '本科', 16, 10, 1, 160, 0, '', 2014, '6am,7am,6pm,7pm', 182, 0),
(175, 0, 2147483647, '本科', 1, 2, 1, 165, 0, '', 2011, '1am,2am,3am,4am,5am,6am,7am,1pm,2pm,3pm,4pm,5pm,6pm,7pm', 183, 0),
(176, 0, 937173797, '本科', 16, 10, 1, 158, 0, '', 2014, '6am,7am,6pm,7pm', 184, 0),
(177, 0, 870191922, '本科', 16, 10, 1, 158, 0, '', 2014, '6am,7am,6pm,7pm', 186, 0),
(178, 0, 2147483647, '本科', 1, 2, 1, 178, 0, '', 2012, '6am,7am,1pm,3pm,6pm,7pm', 185, 0),
(179, 0, 2147483647, '本科', 16, 10, 1, 163, 0, '', 2014, '6am,7am,6pm,7pm', 187, 0),
(180, 0, 1773235519, '本科', 1, 2, 1, 167, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 188, 0),
(181, 0, 2147483647, '本科', 16, 10, 1, 165, 0, '', 2014, '6am,7am,6pm,7pm', 189, 0),
(182, 0, 849776218, '专科', 1, 2, 1, 170, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 190, 0),
(183, 0, 1044623986, '本科', 16, 10, 1, 162, 0, '', 2014, '6am,7am,6pm,7pm', 191, 0),
(184, 0, 2147483647, '本科', 1, 2, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 192, 0),
(185, 0, 878806336, '本科', 1, 2, 1, 172, 0, '', 2014, '6am,7am,3pm,5pm,6pm,7pm', 193, 0),
(186, 0, 982944503, '本科', 1, 2, 1, 175, 0, '舞蹈', 2014, '6am,3pm,4pm,5pm,6pm', 194, 0),
(187, 0, 2116529047, '本科', 1, 2, 1, 172, 0, '', 2014, '6am,7am,3pm,6pm,7pm', 195, 0),
(188, 0, 2147483647, '本科', 16, 10, 1, 168, 0, '', 2014, '6am,7am,6pm,7pm', 196, 0),
(196, 0, 1306419266, '专科', 21, 17, 1, 177, 0, '', 2014, '6am,7am,6pm,7pm', 204, 0),
(190, 0, 1245518070, '本科', 1, 2, 1, 168, 0, '', 2014, '6am,7am,6pm,7pm', 198, 0),
(191, 0, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 199, 0),
(192, 0, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 200, 0),
(193, 0, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 201, 0),
(194, 0, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 202, 0),
(195, 20, 2147483647, '专科', 21, 17, 1, 180, 130, '', 2015, NULL, 203, 1),
(197, 0, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 205, 0),
(198, 0, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 206, 0),
(199, 0, 923937655, '本科', 16, 10, 1, 175, 0, '', 2014, '6am,7am,6pm,7pm', 207, 0),
(200, 0, 1042192424, '本科', 16, 10, 1, 180, 0, '', 2014, '6am,7am,6pm,7pm', 208, 0),
(201, 21, 811616520, '专科', 21, 16, 1, 172, 62, '', 2014, NULL, 209, 0);

-- --------------------------------------------------------

--
-- 表的结构 `d_member_grade`
--

CREATE TABLE IF NOT EXISTS `d_member_grade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(10) NOT NULL,
  `sertime` tinyint(2) NOT NULL DEFAULT '12',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `d_member_grade`
--

INSERT INTO `d_member_grade` (`id`, `gname`, `sertime`) VALUES
(1, '注册会员', 12),
(2, 'VIP-A', 12),
(3, 'VIP-B', 24),
(4, 'VIP-C', 48);

-- --------------------------------------------------------

--
-- 表的结构 `d_member_user`
--

CREATE TABLE IF NOT EXISTS `d_member_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `tel` char(11) NOT NULL,
  `grade` tinyint(2) NOT NULL DEFAULT '1',
  `locks` tinyint(1) NOT NULL DEFAULT '0',
  `regtime` int(10) NOT NULL,
  `viptime` int(10) NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `token` varchar(50) NOT NULL,
  `tokentime` int(10) NOT NULL,
  `mid` char(18) NOT NULL,
  `mcard` varchar(50) NOT NULL,
  `addtype` tinyint(1) NOT NULL DEFAULT '1',
  `endstime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`email`),
  KEY `types` (`grade`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=210 ;

--
-- 转存表中的数据 `d_member_user`
--

INSERT INTO `d_member_user` (`id`, `email`, `password`, `realname`, `sex`, `tel`, `grade`, `locks`, `regtime`, `viptime`, `lastip`, `token`, `tokentime`, `mid`, `mcard`, `addtype`, `endstime`) VALUES
(16, '526157318@qq.com', '573cad84fa679cb979fcc78b8', '李晨晨', 0, '18315311087', 2, 1, 1431306006, 1430409600, '', '', 0, '341282199502061416', 'A100158', 0, 1462032000),
(17, '1139470241@qq.com', '76d59800b65b2d62459539987', '王博涵', 0, '18315387960', 2, 1, 1431306180, 1430409600, '', '', 0, '34122219603069170', 'A100102', 0, 1462032000),
(18, '1529123229@qq.com', '881bc6b3ab7b78d499aeb716b', '钱晶晶', 1, '18130373587', 2, 1, 1431306247, 1430409600, '', '', 0, '342923199502116623', 'A100149', 0, 1462032000),
(19, '41129623@qq.com', '4fcc486e16a38951822a4584f', '陈丰', 0, '18895333580', 2, 1, 1431306306, 1430409600, '', '', 0, '34120419901008249X', 'A100038', 0, 1462032000),
(20, '544045650@qq.com', 'ca403fde60e20a7182e2d221b', '陶德俊', 0, '18155539335', 2, 1, 1431306451, 1430409600, '', '', 0, '340521199510124053', 'A100037', 0, 1462032000),
(21, '1214547670@qq.com', '3b03004706d0e1135a4f5f7dc', '慈曾珠', 1, '18895331724', 2, 1, 1431306625, 1430409600, '', '', 0, '3429211931002502x', 'A100150', 0, 1462032000),
(22, '2040804782@qq.com', '7a5ef47c4533cf9daaa826ab3', '李灿灿', 1, '15955530803', 2, 1, 1431306860, 1430409600, '', '', 0, '302626199508280021', 'A100009', 0, 1462032000),
(23, '527941972@qq.com', '8a786b720850c8ab271b1764a', '陈媛', 1, '18226536951', 2, 1, 1431307072, 1430409600, '', '', 0, '340223199607022324', 'A100013', 0, 1462032000),
(24, '1341614279@qq.com', '9f7d81223f062e760cf0f8fd6', '朱良峰', 0, '18315310313', 2, 1, 1431307172, 1430409600, '', '', 0, '340825199603281359', 'A100019', 0, 1462032000),
(25, '1677009574@qq.com', '499505d2e148055d7dcbff00d', '朱文娣', 1, '18326546896', 2, 1, 1431307284, 1430409600, '', '', 0, '342423199502071763', 'A100008', 0, 1462032000),
(26, '1027896944@qq.com', 'e44701389417b913601c57111', '杨俊祥', 0, '18110456309', 2, 1, 1431307436, 1430409600, '', '', 0, '342523199510096712', 'A100017', 0, 1462032000),
(27, '826312534@qq.com', 'b8005a70db37c671e1fb02f91', '张笑', 1, '18895335906', 2, 1, 1431307544, 1430409600, '', '', 0, '340604199603271246', 'A100007', 0, 1462032000),
(28, '1378962820@qq.com', '204f2d10104b9d00db54330c6', '刘磊', 0, '18895311500', 2, 1, 1431307638, 1430409600, '', '', 0, '340602199411072610', 'A100020', 0, 1462032000),
(29, '975458164@qq.com', '28aefe08ba57c53da86d3c050', '丁浩', 0, '18895349866', 2, 1, 1431307866, 1430409600, '', '', 0, '342422199507173594', 'A100021', 0, 1462032000),
(30, '894693526@qq.com', 'a7bbcd73eabc54bed9e58a330', '童杰', 0, '18110291012', 2, 1, 1431308088, 1430409600, '', '', 0, '330822199605182716', 'A100018', 0, 1462032000),
(31, '978760006@qq.com', 'c3fd7b549e3a8386a33fcfafe', '宋江山', 0, '15555394013', 2, 1, 1431308159, 1430409600, '', '', 0, '342201199411212816', 'A100151', 0, 1462032000),
(32, '1310636450@qq.com', 'e0fdcbbc5ea2e847a4b1a0825', '吴琪', 0, '18895339607', 2, 1, 1431308252, 1430409600, '', '', 0, '340823199602093724', 'A100123', 0, 1462032000),
(33, '1636400214@qq.com', '9aa0aa4e899ef1c29e930850e', '胡春生', 0, '18130375438', 2, 1, 1431308318, 1430409600, '', '', 0, '341181199503061619', 'A100112', 0, 1462032000),
(34, '1835631003@qq.com', '7a34869b901e2055af289b613', '王婷婷', 0, '18655465897', 2, 1, 1431308509, 1430409600, '', '', 0, '340121199511041602', 'A100098', 0, 1462032000),
(35, '1367845704@qq.com', 'd9cd182ae6119ffb6ac4d331d', '单大虎', 0, '18355325801', 2, 1, 1431308571, 1430409600, '', '', 0, '340323199111102916', 'A100147', 0, 1462032000),
(36, '1084926786@qq.com', '8ecd4e66a54d96e6bbe35154a', '李继雪', 0, '18895331094', 2, 1, 1431308622, 1430409600, '', '', 0, '341225199701143820', 'A100097', 0, 1462032000),
(37, '1490936732@QQ.COM', '2e1761292e99eddeac54060e8', '俞毓先', 0, '18755356398', 2, 1, 1431308789, 1430409600, '', '', 0, '342427199609166012', 'A100145', 0, 1462032000),
(38, '2108325439@qq.com', '801861adb72f45ebb25fe6cc5', '唐松章', 0, '18895330297', 3, 1, 1431309107, 1430409600, '', '', 0, '431121199601161037', 'B100015', 0, 1493568000),
(39, '2054406849@qq.com', '9417095c189188ef40b994f84', '黄胜猛', 0, '18895317578', 3, 1, 1431309272, 1430409600, '', '', 0, '342401199606039276', 'B100014', 0, 1493568000),
(40, '2986260735@qq.com', 'd45fa385e2ebd495d56e780a0', '徐浩', 0, '18895303322', 2, 1, 1431309414, 1430409600, '', '', 0, '342401199609137277', 'A100057', 0, 1462032000),
(41, '1031187387@qq.com', '96abf67dc9969f692d9fa4144', '周强', 0, '18365392025', 2, 1, 1431309619, 1430409600, '', '', 0, '340226199111143210', 'A100162', 0, 1462032000),
(42, '1195083015@qq.com', '2c6d6ffb8e380207ef819c0cf', '程功', 0, '18375321769', 2, 1, 1431309940, 1430409600, '', '', 0, '341125199212237759', 'A100160', 0, 1462032000),
(43, '1294462562@qq.com', '3260efdb8e0f497dca2f0be88', '钱蓓蓓', 1, '18325333933', 2, 1, 1431310026, 1430409600, '', '', 0, '34262319960322482X', 'A100078', 0, 1462032000),
(44, '2500828972@qq.com', '73d78120e4a2d0370ccb0e156', '汪洋', 0, '18130613380', 2, 1, 1431310122, 1430409600, '', '', 0, '342425199503164219', 'A100066', 0, 1462032000),
(45, '2560884306@qq.com', 'ea1d23d06abf766ff0de0a106', '时云侠', 1, '18895335037', 2, 1, 1431310128, 1430409600, '', '', 0, '341202199302152143', 'A100040', 0, 1462032000),
(46, '1138443990@qq.com', '7e86daa850cda4c56e2b74561', '杜燕', 1, '18315368277', 2, 1, 1431310242, 1430409600, '', '', 0, '341226199604255725', 'A100039', 0, 1462032000),
(47, '1175726028@qq.com', 'e27e09541ead5baeacbbd245b', '石小凡', 1, '18895303611', 2, 1, 1431310334, 1430409600, '', '', 0, '340825199508081068', 'A100027', 0, 1462032000),
(48, '1326973131@qq.com', 'cf9855911a268290ed9d8feaa', '万银慧', 1, '18895330271', 2, 1, 1431310485, 1431014400, '', '', 0, '34625199506052125', 'A100169', 0, 1462636800),
(49, '1476058917@qq.com', '2a04a45aa48d3dbf7c93d58d2', '毛芳丽', 1, '15267921541', 2, 1, 1431310601, 1430841600, '', '', 0, '330726199607035322', 'A100167', 0, 1462464000),
(50, '826074366@qq.com', '52b005dad756cf5eb1c1544ee', '余江霞', 1, '18356587356', 2, 1, 1431310665, 1431100800, '', '', 0, '342622198708250468', 'A100170', 0, 1462723200),
(51, '649363701@qq.com', '6e7eae2aa0a6490341d81e8d3', '尹春瑶', 1, '18895309124', 2, 1, 1431310734, 1430841600, '', '', 0, '460200199512064700', 'A100168', 0, 1462464000),
(52, '178453255@qq.com', '52ad3fc35a152989406d2e49f', '孟庆远', 0, '15755370118', 2, 1, 1431310808, 1430409600, '', '', 0, '342221199212280010', 'A100122', 0, 1462032000),
(53, '2114505437@qq.com', '60a165d7b3c8d6008456b89e7', '许梦洁', 1, '18895342075', 2, 1, 1431310971, 1430409600, '', '', 0, '342626199612160361', 'A100155', 0, 1462032000),
(54, '838132045@qq.com', 'd623fee3fadec7ff5e4a563aa', '余洪梅', 1, '18756393902', 2, 1, 1431311009, 1430409600, '', '', 0, '342501199611111063', 'A100033', 0, 1462032000),
(55, '2631924357@qq.com', '3fc3ebd43248f91515ae49110', '陈燕', 1, '13083269355', 2, 1, 1431311072, 1430409600, '', '', 0, '341124199509086826', 'A100154', 0, 1462032000),
(56, '1071560911@qq.com', 'fd85554e03fb19b9748191102', '徐玉文', 1, '18895304320', 2, 1, 1431311184, 1430409600, '', '', 0, '341222199708033588', 'A100152', 0, 1462032000),
(57, '892347030@qq.com', 'a82647eba0326c7f64d151f74', '郑霈阳', 0, '15655308130', 2, 1, 1431311231, 1430409600, '', '', 0, '331021199601101254', 'A100164', 0, 1462032000),
(58, '3079676184@qq.com', '51becbdf1a5c42f0d0427b2de', '周慧', 1, '18315317221', 2, 1, 1431311310, 1430409600, '', '', 0, '34062119921210122X', 'A100132', 0, 1462032000),
(59, '2226771275@qq.com', '71cd56af98403ea6afb836825', '刘瑞华', 1, '18325330776', 2, 1, 1431311398, 1430409600, '', '', 0, '341223199510104527', 'A100120', 0, 1462032000),
(60, '541916783@qq.com', '6adc0639fde91a2acd9103678', '李辉', 0, '15375117340', 2, 1, 1431311435, 1430409600, '', '', 0, '34260119930818621x', 'A100109', 0, 1462032000),
(61, '2581595949@qq.com', '60152e26190a1dd20e44b96cf', '赵小晶', 1, '18895335044', 2, 1, 1431311557, 1430409600, '', '', 0, '34082619950309582X', 'A100121', 0, 1462032000),
(62, '1481973470@qq.com', '38008f2a99646df5cf94e6928', '胡挺', 0, '18756586819', 2, 1, 1431311598, 1430409600, '', '', 0, '340123199411205457', 'A100077', 0, 1462032000),
(63, '1748502148@qq.com', '8d7ce1be08fa3e06b7511bcca', '黄金环', 1, '18895310442', 2, 1, 1431311969, 1430409600, '', '', 0, '340123199405104828', 'A100095', 0, 1462032000),
(64, '2522745813@qq.com', '1dd03622bd098a3ae93c13140', '谢双双', 1, '18895358936', 2, 1, 1431312055, 1430409600, '', '', 0, '341222199508062448', 'A100096', 0, 1462032000),
(65, '1192095674@qq.com', '50397dae03b3118db9bc18ef2', '管芳琴', 1, '18226938324', 2, 1, 1431312170, 1430409600, '', '', 0, '342623199606140920', 'A100051', 0, 1462032000),
(66, '894694803@qq.com', '6da2e00fca4cc9ea9b4efa4f5', '汤伶俐', 1, '13170237522', 2, 1, 1431312288, 1430409600, '', '', 0, '340881199502041322', 'A100087', 0, 1462032000),
(67, '1690181198@qq.com', '7d8972236c28db6211b1072b0', '陆笑', 0, '18555350187', 2, 1, 1431312411, 1430409600, '', '', 0, '342224199408300115', 'A100163', 0, 1462032000),
(68, '1076099038@qq.com', '7018ed0467da226a4288b47b6', '孔虹宇', 1, '18895328517', 2, 1, 1431312589, 1430409600, '', '', 0, '330483199511302327', 'A100086', 0, 1462032000),
(69, '1453050900@qq.com', 'd192e47e034ac2f5eb285faf1', '李莹', 1, '18895310256', 2, 1, 1431313443, 1430409600, '', '', 0, '341224199304166125', 'A100060', 0, 1462032000),
(70, '1031194297@qq.com', '6dadb77923a141718bd78e062', '张婷婷', 1, '18895348339', 2, 1, 1431313598, 1430409600, '', '', 0, '41148119405063025', 'A100061', 0, 1462032000),
(71, '2465591868@qq.com', '5554869f2b168de7cdddf07f3', '孙克燕', 1, '18895301685', 2, 1, 1431313673, 1430409600, '', '', 0, '341124199410135626', 'A100133', 0, 1472659200),
(72, '1719237865@qq.com', '105fa3e13780d2e19964d5f1d', '朱颜', 1, '18895330019', 2, 1, 1431313720, 1430409600, '', '', 0, '34082519951109322X', 'A100062', 0, 1462032000),
(73, '2293879649@qq.com', 'e427b6effee687bb8ed06c209', '马倩男', 1, '18895334250', 2, 1, 1431313852, 1430409600, '', '', 0, '34242219950716484X', 'A100055', 0, 1462032000),
(74, '2427947878@qq.com', '041ad6ad323d4e64fba4ef37f', '沈林红', 1, '18315393387', 2, 1, 1431314017, 1430409600, '', '', 0, '340826199509044847', 'A100131', 0, 1462032000),
(75, '2427302636@qq.com', 'dc9f8a8bbc6b2a5792d1ef5ed', '刘昱利', 0, '18075067107', 2, 1, 1431314096, 1430409600, '', '', 0, '342423199505166186', 'A100058', 0, 1462032000),
(76, '1277997148@qq.com', 'ca006da0014474bef808257a1', '王晓艳', 1, '18895349228', 2, 1, 1431314182, 1430409600, '', '', 0, '341223199501022140', 'A100059', 0, 1462032000),
(77, '23616119276@qq.com', '124a8c6611c5ffa32a05ea3b2', '张冉冉', 1, '18895328852', 2, 1, 1431314193, 1430409600, '', '', 0, '342201199607262049', 'A100126', 0, 1462032000),
(78, '1184255172@qq.com', '61081dc99a0ef1dc0db8629ef', '王家佳', 1, '18895334269', 2, 1, 1431314270, 1430409600, '', '', 0, '34242519961026424X', 'A100052', 0, 1462032000),
(79, '981203138@qq.com', 'b17333ebd4b27979290fe377d', '钱静文', 1, '18895319716', 2, 1, 1431314344, 1430409600, '', '', 0, '342523149960930734', 'A100127', 0, 1462032000),
(80, '1743819913@qq.com', '37093f66417050f41795183ce', '魏星月', 1, '18130395766', 2, 1, 1431314359, 1430409600, '', '', 0, '320722199512307789', 'A100026', 0, 1462032000),
(81, '1819734005@qq.com', 'd8df68087171d63cce01fe105', '陈诚', 1, '18895310158', 2, 1, 1431314454, 1430409600, '', '', 0, '340826199509186626', 'A100014', 0, 1462032000),
(82, '3081817953@qq.com', 'cf956e307ad261a98538c3bca', '黄友婷', 1, '18895331973', 2, 1, 1431314524, 1430409600, '', '', 0, '342423199602222127', 'A100113', 0, 1462032000),
(83, '2501023361@qq.com', '4d6e7909352dc728b62fc91d4', '龙群', 1, '13399565466', 2, 1, 1431314561, 1430409600, '', '', 0, '340827199509094349', 'A100015', 0, 1462032000),
(84, '2079129695@qq.com', 'f5a0dfd9c39336175f0f4cfe4', '刘秋月', 1, '18895335927', 2, 1, 1431314644, 1430409600, '', '', 0, '340621199610073623', 'A100012', 0, 1462032000),
(85, '1292067289@qq.com', '4a054ccdba5b4f55933d67c64', '张层', 1, '18325319259', 2, 1, 1431314665, 1430409600, '', '', 0, '342221199502066549', 'A100116', 0, 1462032000),
(86, '1778144021@qq.com', '98d10bfc8ec151ec938e1894f', '候亚玲', 1, '18315386331', 2, 1, 1431314745, 1430409600, '', '', 0, '341221199301081303', 'A100011', 0, 1462032000),
(87, '183608210@qq.com', '11bc76d4069834c5f005a1b3a', '姚珊', 1, '13083266099', 2, 1, 1431314896, 1430409600, '', '', 0, '152104199505043820', 'A100010', 0, 1462032000),
(88, '2637621139@qq.com', '2b54846dec0f2347f071d993f', '黄丽丽', 1, '18315356806', 2, 1, 1431314908, 1430409600, '', '', 0, '340822199308200924', 'A100117', 0, 1462032000),
(89, '1591675661@qq.com', '8bc618b417d4dc2f5cc47c60f', '程双双', 1, '18895328879', 2, 1, 1431314988, 1430409600, '', '', 0, '340825199505154540', 'A100005', 0, 1462032000),
(90, '1250289622@qq.com', 'aa3c855ca1bd8412a8298ea42', '张燕', 1, '13093638228', 2, 1, 1431315049, 1430409600, '', '', 0, '340824199503052026', 'A100107', 0, 1462032000),
(91, '1550458014@qq.com', '8cda27339d22298818b9b0d9e', '叶文娟', 1, '13966272154', 2, 1, 1431315088, 1430409600, '', '', 0, '342425199612072225', 'A100004', 0, 1462032000),
(92, '1263656886@qq.com', '59808b59aedb0ca58c731dc5d', '王伟金', 1, '18895304911', 2, 1, 1431315166, 1430409600, '', '', 0, '342622199601148185', 'A100006', 0, 1462032000),
(93, '1164578047@qq.com', 'f6b0c0ce56438376697febc94', '朱燕', 1, '18726204259', 2, 1, 1431315216, 1430409600, '', '', 0, '340826199701170827', 'A100071', 0, 1462032000),
(94, '934332797@qq.com', '2ad8688e2e8b7c3a2cbef5b41', '崔缘', 1, '18895310634', 2, 1, 1431315252, 1430409600, '', '', 0, '220323199702076927', 'A100001', 0, 1462032000),
(95, '1243662082@qq.com', 'a30d430e5adfaa8717373c695', '张京', 1, '18895341021', 2, 1, 1431315325, 1430409600, '', '', 0, '340881199602115122', 'A100069', 0, 1462032000),
(96, '115904095@qq.com', 'e5547eee970ad45c63d7903e3', '高悦', 1, '18325200591', 2, 1, 1431315329, 1430409600, '', '', 0, '3411229961224', 'A100002', 0, 1462032000),
(97, '1506193251@qq.com', '854be2a4aa9abe96839aad6c8', '武新宇', 1, '18665765135', 2, 1, 1431315444, 1430409600, '', '', 0, '653101199512252049', 'A100003', 0, 1462032000),
(98, '2416419784@qq.com', 'd04e1e290449fe5f7af7f8cf9', '唐牵', 1, '18315365115', 2, 1, 1431315476, 1430409600, '', '', 0, '34082219960623', 'A100070', 0, 1462032000),
(99, '819795908@qq.com', '643ab27f841b8537aa377edd2', '纪莉平', 1, '18315393017', 2, 1, 1431315640, 1430409600, '', '', 0, '341623199702062327', 'A100064', 0, 1462032000),
(100, '1023096511@qq.com', '09780ad254d782ccffa93de8b', '张龙', 0, '18110275970', 2, 1, 1431315680, 1430409600, '', '', 0, '342625199606251690', 'A100165', 0, 1462032000),
(101, '296358215@qq.com', 'e77ac060ad6174be3654e0288', '黄友才', 0, '15398178982', 2, 1, 1431315781, 1430409600, '', '', 0, '341221198806014259', 'A100159', 0, 1462032000),
(102, '845980818@qq.com', '14ac0c4f8a0ed355be151a47f', '周敏', 1, '18315396601', 2, 1, 1431315853, 1430409600, '', '', 0, '342425199412255748', 'A100035', 0, 1462032000),
(103, '1014273718@qq.com', '04a2e1699273e748af0f4757d', '陈墨', 1, '18130379155', 2, 1, 1431315956, 1430409600, '', '', 0, '34082299603141840', 'A100034', 0, 1462032000),
(104, '1650098340@qq.com', 'c11463a4a6eaf1711d9813a55', '徐征逸', 0, '18895339908', 3, 1, 1431315961, 1430409600, '', '', 0, '34122199304052811', 'B100016', 0, 1493568000),
(105, '2319138104@qq.com', 'b77e8c93c71ce36f3918b3053', '辛照', 0, '18325330057', 3, 1, 1431316083, 1430409600, '', '', 0, '342221199409041515', 'B100011', 0, 1493568000),
(106, '1546165974@qq.com', '2d4a9c2dfdd2d375757eb3747', '孟格', 1, '18895323576', 2, 1, 1431316102, 1430409600, '', '', 0, '32331119950613792X', 'A100166', 0, 1462032000),
(107, '2288971808@qq.com', '9c347f63af9c4957579699bef', '徐曼丽', 1, '18855395682', 2, 1, 1431316278, 1430409600, '', '', 0, '342623199601177724', 'A100200', 0, 1462032000),
(108, '2420127047@qq.com', 'd2382515afa8c9481bea37b0b', '杨志梁', 0, '18355306858', 2, 1, 1431316279, 1430409600, '', '', 0, '340827199301165259', 'A100125', 0, 1462032000),
(109, '644399083@qq.com', 'e7df302190d1cbe692cc7c96a', '朱林', 0, '18375336598', 2, 1, 1431316365, 1430409600, '', '', 0, '340823199308140817', 'A100124', 0, 1462032000),
(110, '2295018459@qq.com', '8085d5bd5de1647d305e7326e', '唐贺晴', 1, '18196544582', 2, 1, 1431316456, 1430409600, '', '', 0, '341202199202232322', 'A100157', 0, 1462032000),
(111, '327939802@qq.com', 'ad0c6c0131620ce2c67626d11', '王仲玉', 0, '18895311126', 3, 1, 1431316536, 1430409600, '', '', 0, '341203199710104139', 'B100008', 0, 1493568000),
(112, '779250049@qq.com', '1b0a720438222767d235bcc0d', '孙鹏', 0, '18895328918', 2, 1, 1431316648, 1430409600, '', '', 0, '321322199702031831', 'A100111', 0, 1462032000),
(113, '975175955@qq.com', '850c1414c5a71c397bab02f72', '侯哲涵', 1, '18895309633', 2, 1, 1431316654, 1430409600, '', '', 0, '341221199306302850', 'A100156', 0, 1462032000),
(114, '925084017@qq.com', 'ff96edd7b26228150234f98cf', '韦伟', 0, '15755359692', 2, 1, 1431316771, 1430409600, '', '', 0, '341221199003014153', 'A100110', 0, 1462032000),
(115, '601873211@qq.com', 'ee7a5de80721148e6aa140a2c', '李贵洲', 0, '18895339527', 2, 1, 1431316907, 1430409600, '', '', 0, '34220119950302541X', 'A100105', 0, 1462032000),
(116, '3097516380@qq.com', 'e34a96a6bcae1f32d81f09531', '刘雨', 1, '18895318501', 2, 1, 1431316925, 1430409600, '', '', 0, '340822199511036226', 'A100153', 0, 1462032000),
(117, '2367397584@qq.com', 'a8c5b5bf4aefa76fc82da886a', '汪永昌', 0, '18895333212', 3, 1, 1431317013, 1430409600, '', '', 0, '341181199608161077', 'B100007', 0, 1493568000),
(118, '1109030307@qq.com', 'ad4e1b9eac34419d1369f0bcc', '陈燕', 1, '18895307817', 2, 1, 1431317043, 1430409600, '', '', 0, '341221199303156989', 'A100146', 0, 1462032000),
(119, '1371011721@qq.com', '77cd7976da9b17a9acaa8c57e', '许亚辉', 0, '18895347018', 3, 1, 1431317149, 1430409600, '', '', 0, '342622199508044613', 'B100006', 0, 1493568000),
(120, '599595135@qq.com', '6fc358e84f100360491c67458', '王思情', 1, '18895353239', 2, 1, 1431317168, 1430409600, '', '', 0, '342222199702027225', 'A100144', 0, 1462032000),
(121, '584885775@qq.com', '0e9576f99927792f6ad53629e', '赵蕾', 1, '18895326072', 2, 1, 1431317262, 1430409600, '', '', 0, '321322199601091261', 'A100143', 0, 1462032000),
(122, '1647529885@qq.com', '35d5e4bb04d7a94e7789ef008', '管绍奇', 0, '18655379856', 2, 1, 1431317274, 1430409600, '', '', 0, '34022119404217858', 'A100053', 0, 1462032000),
(123, '434334627@qq.com', 'd558eba2d7cecfe5703a94ee9', '陈旭', 0, '13195537755', 2, 1, 1431317371, 1430409600, '', '', 0, '342221199509081039', 'A100054', 0, 1462032000),
(124, '643856084@qq.com', '2e2baf657d42dcc3854a5bb7f', '梁如梦', 1, '15255876599', 2, 1, 1431317374, 1430409600, '', '', 0, '341221199406167568', 'A100141', 0, 1462032000),
(125, '597709651@qq.com', '2b4ef7c5ddc9ac3968736752c', '张余夫', 0, '18895339997', 2, 1, 1431317462, 1430409600, '', '', 0, '342423199507133396', 'A100031', 0, 1462032000),
(126, '2464809060@qq.com', '12c6b08c2119c5db474fe93b8', '郝秀芹', 1, '18895330080', 2, 1, 1431317521, 1430409600, '', '', 0, '372922199403055043', 'A100140', 0, 1462032000),
(127, '1330895614@qq.com', 'b2b4809a4a7dd8b8cc400b9bb', '汪烈武', 0, '18315365961', 2, 1, 1431317555, 1430409600, '', '', 0, '341021199310151931', 'A100032', 0, 1462032000),
(128, '1032942834@qq.com', 'a69e3c9adfe3e0eaea296bedd', '叶琴', 1, '18895334979', 2, 1, 1431317709, 1430409600, '', '', 0, '342921199509044025', 'A100137', 0, 1462032000),
(129, '1796369175@qq.com', 'd9ed29910689ba976e446af27', '任苗苗', 1, '18895334981', 2, 1, 1431317825, 1430409600, '', '', 0, '320723199509104645', 'A100138', 0, 1462032000),
(130, '1350604352@qq.com', '79074b476271f736b5e7db30d', '陈文利', 1, '17729917345', 2, 1, 1431317951, 1430409600, '', '', 0, '342201199702256229', 'A100136', 0, 1462032000),
(131, '853197071@qq.com', '3a2c2c524627d88c9a0767b6f', '落爱', 1, '18895312395', 2, 1, 1431318013, 1430409600, '', '', 0, '140602199409290523', 'A100135', 0, 1462032000),
(132, '1054553396@qq.com', '6f5bda756f39822e238daede5', '刘燕午', 1, '18226797756', 2, 1, 1431318052, 1430409600, '', '', 0, '34082619901215002X', 'A100148', 0, 1462032000),
(133, '892137057@qq.com', '8e4395c2850624bf6e065bf4a', '余三春', 1, '15755373904', 2, 1, 1431318166, 1430409600, '', '', 0, '340825199207411434', 'A100128', 0, 1462032000),
(134, '1620832845@qq.com', 'c7022f0c3318639e68e874f02', '王仕琦', 1, '18895342143', 2, 1, 1431318175, 1430409600, '', '', 0, '340603199603040628', 'A100056', 0, 1462032000),
(135, '1597219572@qq.com', '133875b23bf93af4165daed34', '李玲', 1, '18895310733', 2, 1, 1431318284, 1430409600, '', '', 0, '341222199403124403', 'A100134', 0, 1462032000),
(136, '1019859709@qq.com', 'cc9529c389a2fa4f60ef292d7', '吴静', 1, '18895312324', 2, 1, 1431318285, 1430409600, '', '', 0, '342502199603246829', 'A100114', 0, 1462032000),
(137, '1422298325@qq.com', 'bc90845bdffa636eb6a1d845c', '束文娟', 1, '18895312301', 2, 1, 1431318389, 1430409600, '', '', 0, '34011119608084542', 'A100094', 0, 1462032000),
(138, '205468607@qq.com', 'a87401f254175f43c758dce58', '赵汝娟', 1, '18895338038', 3, 1, 1431318390, 1430409600, '', '', 0, '530126199508140463', 'B100013', 0, 1493568000),
(139, '1564096697@qq.com', '3d0ea3f585733119d094c315b', '王仲', 1, '18955995126', 2, 1, 1431318486, 1430409600, '', '', 0, '341021199510298065', 'A100093', 0, 1462032000),
(140, '1840494606@qq.com', '68b05bc1fa9b6a2d5443e57b9', '杨雪荣', 1, '18895339969', 3, 1, 1431318536, 1430409600, '', '', 0, '533023199603151943', 'B100012', 0, 1493568000),
(141, '2460154274@qq.com', '81b5c8761717681b2bd1ff63b', '张雅玲', 1, '15255337739', 2, 1, 1431318603, 1430409600, '', '', 0, '34290119960926066X', 'A100092', 0, 1462032000),
(142, '1172075454@qq.com', 'ce397844d47de27c5ab652003', '王余娟', 1, '18895347401', 3, 1, 1431318636, 1430409600, '', '', 0, '342425199501264048', 'B100010', 0, 1493568000),
(143, '1319942887@qq.com', '2e8fcffe785334b10760e7ea0', '刘金炎', 1, '13093627565', 2, 1, 1431318709, 1430409600, '', '', 0, '210624199503300720', 'A100091', 0, 1462032000),
(144, '785832401@qq.com', '3f59d216035609b6e7700d89d', '张慧芳', 1, '15551279966', 2, 1, 1431318744, 1430409600, '', '', 0, '341223199011082482', 'A100129', 0, 1462032000),
(145, '905222514@qq.com', '971413d81152f5cea5d55b8e4', '李泽旭', 1, '18895326214', 2, 1, 1431318829, 1430409600, '', '', 0, '211203199604140022', 'A100090', 0, 1462032000),
(146, '1716585281@qq.com', '066598e5b8369fd06297f0e49', '张亭亭', 1, '18895330702', 2, 1, 1431318939, 1430409600, '', '', 0, '341221199606015083', 'A100089', 0, 1462032000),
(147, '1658546780@qq.com', '62c08255c573c7aa66e03c451', '黄四妹', 1, '18895358219', 2, 1, 1431319002, 1430409600, '', '', 0, '341004199607080429', 'A100118', 0, 1462032000),
(148, '779507138@qq.com', 'eb588dbb6fe75a41b2afce054', '刘晓倩', 1, '18895300330', 2, 1, 1431319046, 1430409600, '', '', 0, '34122519970518016X', 'A100099', 0, 1462032000),
(149, '2210154889@qq.com', '3af27aa92a47a5e5575ee6e0f', '张甜甜', 1, '13155336211', 2, 1, 1431319111, 1430409600, '', '', 0, '41150319940221172X', 'A100108', 0, 1462032000),
(150, '1042646092@qq.com', '4e197fca7e75f207f82b052ce', '张玉婷', 1, '18130380270', 2, 1, 1431319145, 1430409600, '', '', 0, '360203199703111528', 'A100101', 0, 1462032000),
(151, '1442199029@qq.com', 'a398b7c12d9aa7734d284e27e', '刘小晴', 1, '18895316485', 2, 1, 1431319196, 1430409600, '', '', 0, '341221199411084126', 'A100104', 0, 1462032000),
(152, '2541669204@qq.com', '25d83fcf890c2be60d8ec11f6', '赵欣欣', 1, '18355311531', 2, 1, 1431319314, 1430409600, '', '', 0, '341221199104089023', 'A100085', 0, 1462032000),
(153, '982123573@qq.com', '33c604066ff2dfc1085f93c5a', '郭南', 1, '18895339289', 2, 1, 1431319398, 1430409600, '', '', 0, '342222199412183246', 'A100103', 0, 1462032000),
(154, '1615400154@qq.com', '0c5edb839f904dee02da55ef2', '李秀萍', 1, '18895309921', 2, 1, 1431319443, 1430409600, '', '', 0, '342224199306290323', 'A100084', 0, 1462032000),
(155, '2422011164@qq.com', 'fb4141aedf82672515be9d4cc', '金朝月', 1, '18551060501', 2, 1, 1431319521, 1430409600, '', '', 0, '341124199402081621', 'A100100', 0, 1462032000),
(156, '745688450@qq.com', '7de714a43e4541602a6cd0b87', '孙景悦', 1, '18895325557', 2, 1, 1431319602, 1430409600, '', '', 0, '34162199605290026', 'A100081', 0, 1462032000),
(157, '1175161724@qq.com', '8ca4e80f25fb520c4c64b5168', '刘晓庆', 1, '18895339843', 2, 1, 1431319626, 1430409600, '', '', 0, '62042119930203512X', 'A100068', 0, 1462032000),
(158, '1043175347@qq.com', '84a9ca2cb376598f09d9b32a5', '向珍珍', 1, '18895308482', 2, 1, 1431319719, 1430409600, '', '', 0, '342501199601081542', 'A100082', 0, 1462032000),
(159, '779984150@qq.com', 'e822f4d209a983625427387f5', '汪婕', 1, '18955986116', 2, 1, 1431319786, 1430409600, '', '', 0, '341021199509282269', 'A100067', 0, 1462032000),
(160, '1396856776@qq.com', 'bb0bd5fbbdb2cb8e39a7b1450', '刘丽', 1, '18956413106', 2, 1, 1431319808, 1430409600, '', '', 0, '342401199705153883', 'A10083', 0, 1462032000),
(161, '929725117@qq.com', '060550cf78d7a3b1a7858e7b0', '凯麦尔斯曼', 1, '18895341034', 2, 1, 1431320045, 1430409600, '', '', 0, '65312919930401152X', 'A100079', 0, 1462032000),
(162, '1429095148@qq.com', '923600a584e7e67159cf1701b', '古丽尼沙', 1, '18196549796', 2, 1, 1431320157, 1430409600, '', '', 0, '65312799410201367', 'A100080', 0, 1462032000),
(163, '1752640710@qq.com', '37e76a5a0a13d1b9231f51e2b', '王倩', 1, '18895330508', 2, 1, 1431320280, 1430409600, '', '', 0, '34023199501087124', 'A100076', 0, 1462032000),
(164, '2832038397@qq.com', '5adc8e43e135390974d5653bf', '冯瑞芳', 1, '18895320679', 2, 1, 1431320433, 1430409600, '', '', 0, '530302199411172485', 'A100075', 0, 1462032000),
(165, '1660896966@qq.om', '850534e4bfe06aea967b27d21', '胡悦', 1, '18895327748', 2, 1, 1431320526, 1430409600, '', '', 0, '342423199608103567', 'A100073', 0, 1462032000),
(166, '2742237173@qq.com', 'f5f6156f53b3d1f7b2e53b8fc', '胡晓敏', 1, '18895308535', 2, 1, 1431320644, 1430409600, '', '', 0, '342626199612081567', 'A100074', 0, 1462032000),
(167, '1970675072@qq.com', 'b6083d7609ea3c0aebda2426f', '申爽爽', 1, '18895309675', 3, 1, 1431320883, 1430409600, '', '', 0, '34032219941004748X', 'B10003', 0, 1493568000),
(168, '192133829@qq.com', 'c5f6780273aaba59829167048', '黄燕梅', 1, '18895325336', 3, 1, 1431321488, 1430409600, '', '', 0, '340858119941008652', 'B100004', 0, 1493568000),
(169, '995915293@qq.com', '4cdb2ab18be442d42a0639824', '乔倩', 1, '15305649297', 2, 1, 1431321636, 1430409600, '', '', 0, '342401199607280344', 'A100041', 0, 1462032000),
(170, '283085722@qq.com', '43dc7e967e51a7cc5f20870e3', '蒲茂睿', 1, '18895312027', 3, 1, 1431321734, 1430409600, '', '', 0, '510802199502270025', 'B100005', 0, 1493568000),
(171, '879911805@qq.com', 'ee8d83487cd6ed01b7a926c72', '谢子彦', 1, '18895330562', 2, 1, 1431321839, 1430409600, '', '', 0, '360781199607180028', 'A100115', 0, 1462032000),
(172, '2416912127@qq.com', 'faa9a66be38a5488876372208', '许怡君', 1, '18355395792', 2, 1, 1431321927, 1430409600, '', '', 0, '340122199509141221', 'A100042', 0, 1462032000),
(173, '1746130530@qq.com', 'c04dd6926b37d5c38dde17a44', '刘静圆', 1, '18895311808', 2, 1, 1431322042, 1430409600, '', '', 0, '341221199510080825', 'A100047', 0, 1462032000),
(174, '775201927@qq.com', '5c6082a7b784a2e2f2bab40dc', '何嘉欣', 1, '18895351996', 2, 1, 1431322243, 1430409600, '', '', 0, '460003.19960715522', 'A100048', 0, 1462032000),
(175, '2902260684@qq.com', 'cea2f20f356a9f3ce9af53103', '张福活', 1, '18895336073', 2, 1, 1431322269, 1430409600, '', '', 0, '340826199008100089', 'A100161', 0, 1462032000),
(176, '308591041@qq.com', '98404223068776670e3f4683a', '林晓颖', 1, '13585409521', 2, 1, 1431322453, 1430409600, '', '', 0, '342623199502103607', 'A100046', 0, 1462032000),
(177, '1337069859@qq.com', '1602942f1d142339c72407379', '邓雯雯', 1, '18325328190', 2, 1, 1431322558, 1430409600, '', '', 0, '341621199609115129', 'A100065', 0, 1462032000),
(178, '1642848859@qq.com', '147d4cb6c2f923498109b4ded', '哈色依提吐尔孙', 1, '18355371845', 2, 1, 1431322656, 1430409600, '', '', 0, '653125199401041266', 'A100050', 0, 1462032000),
(179, '1127848072@qq.com', 'd8d7f51a75724a4547a540db4', '再努兰木阿布都外力', 1, '18196544325', 2, 1, 1431322813, 1430409600, '', '', 0, '654121199509085223', 'A100049', 0, 1462032000),
(180, '1539801843@qq.com', '3b64bf32f3b897273bf988b08', '江帆', 1, '18895348226', 2, 1, 1431322860, 1430409600, '', '', 0, '34102119940219076X', 'A100044', 0, 1462032000),
(181, '1732070109@qq.com', 'bbafe3772a65f736ef45e5878', '关月', 1, '18356975545', 2, 1, 1431322894, 1430409600, '', '', 0, '340406199302072026', 'A100016', 0, 1462032000),
(182, '2581274853@qq.com', '541140ded8ea2dfa0291176c3', '程秋莉', 1, '18375348512', 2, 1, 1431322950, 1430409600, '', '', 0, '34102119951104004X', 'A100045', 0, 1462032000),
(183, '2215492448@qq.com', 'a8335286b42577609e77c67d2', '孔奇', 0, '18355311675', 2, 1, 1431322996, 1430409600, '', '', 0, '342622199108262398', 'A100142', 0, 1462032000),
(184, '937173797@qq.com', 'af2fbfe8dbf38f27b2cfadd1a', '唐琴', 1, '18895334732', 2, 1, 1431323038, 1430409600, '', '', 0, '340827199508101084', 'A100029', 0, 1462032000),
(185, '11581146709@qq.com', '9d08a12b8109d9bf37e56654e', '姚尧', 0, '18355365762', 2, 1, 1431323103, 1430409600, '', '', 0, '340826199304158939', 'A100130', 0, 1462032000),
(186, '870191922@qq.com', 'd3f071868cc2bea6f41bfc2dd', '胡飞', 1, '18895304068', 2, 1, 1431323122, 1430409600, '', '', 0, '340826199511252223', 'A100030', 0, 1462032000),
(187, '2684255885@qq.com', '198bb4d3d19610c57e65d3c85', '徐萌卉', 1, '18315366013', 2, 1, 1431323205, 1430409600, '', '', 0, '340824199705012823', 'A100028', 0, 1462032000),
(188, '1773235519@qq.com', '8207cf8c5fa16d6f1d5a8efdd', '程基明', 0, '18895321651', 3, 1, 1431323216, 1430409600, '', '', 0, '342401199610088214', 'B100009', 0, 1493568000),
(189, '2834759861@qq.com', '0880a95e1ae473e37961cfd1d', '王晓乐', 1, '18315366057', 2, 1, 1431323311, 1430409600, '', '', 0, '340322199604127824', 'A100024', 0, 1462032000),
(190, '849776218@qq.com', 'f96703c7d206c9ca74bf78bec', '李超', 0, '15256003864', 2, 1, 1431323330, 1430409600, '', '', 0, '340123199509136496', 'A100106', 0, 1462032000),
(191, '1044623986@qq.com', '3aae929b52ddb54bd2d7fe959', '刘鑫', 1, '18895334883', 2, 1, 1431323396, 1430409600, '', '', 0, '522628199609226223', 'A100025', 0, 1462032000),
(192, '8755626439@qq.com', '86c3aeb1c594cb7f76a0b22ba', '李桩', 0, '18895307514', 2, 1, 1431323448, 1430409600, '', '', 0, '340421199502063451', 'A100072', 0, 1462032000),
(193, '878806336@qq.com', '990a39ef414cc27e59730355f', '邹书鑫', 0, '18895308086', 3, 1, 1431323558, 1430409600, '', '', 0, '34011119*970120751', 'B100002', 0, 1493568000),
(194, '982944503@qq.com', '6074abd1f515d549a9bedab59', '郭金雨', 0, '13170239699', 2, 1, 1431323647, 1430409600, '', '', 0, '422802199851023343', 'A100036', 0, 1462032000),
(195, '2116529047@qq.com', '3292ae21c4810aefc5f112d3b', '魏志宏', 0, '18895351879', 3, 1, 1431323737, 1430409600, '', '', 0, '340823619960408083', 'B100001', 0, 1493568000),
(196, '2501500512@qq.com', '14fc4bb04e8a487c7dce15d4d', '关广玲', 1, '18895338840', 3, 1, 1431323981, 1430409600, '', '', 0, '340421199403064846', 'B100017', 0, 1493568000),
(204, '1306419266@qq.com', '360f5c3b0e0db0c044a832f33', '蒋高齐', 0, '18315311221', 2, 1, 1431684097, 1431619200, '', '', 0, '341221199412233752', 'A100171', 0, 1463241600),
(198, '1245518070@qq.com', '93373793a0ec7a0e8e1364af9', '全毛晴', 1, '18951447420', 2, 1, 1431394046, 1430409600, '', '', 0, '341221199302163423', 'A100063', 0, 1462032000),
(199, '1843200767@qq.com', '1e5fdeffb15f84e1e5fe0abe3', '胡腾达', 0, '18655354698', 1, 1, 1431491607, 0, '', '', 0, '34253119950112251x', '', 1, 1463114007),
(200, 'test@2.com', '5e3ec88917df2295d0f9fe7e5', '订单', 0, '15155553333', 1, 0, 1431501387, 0, '', 'b10a84eaac72e4a953fc0ddd50ee7cf2', 1431501387, '342601199011182138', '', 1, 1463123787),
(201, '724507961@qq.com', '5e3ec88917df2295d0f9fe7e5', '订带带', 0, '15155553334', 1, 1, 1431501455, 0, '', '', 0, '342601199011185566', '', 1, 1463123855),
(202, '1075440421@qq.com', 'c19e0fdf39d414a945e44693b', '秦霄霄', 0, '13311547872', 1, 1, 1431528316, 0, '', '', 0, '340828199506091413', '', 1, 1463150716),
(203, 'yingzimo1@163.com', 'd5df99ebae1178ff88c1ac1f1', '殷子默', 0, '18010770591', 1, 1, 1431575518, 0, '', '', 0, '340203199412141838', '', 1, 1463197918),
(205, '1301621921@qq.com', 'f1b6e89e559f1a860190ae9e5', '陶旭', 0, '18715314717', 1, 1, 1431748843, 0, '', '', 0, '340203199608302226', '', 1, 1463371243),
(206, '786238524@qq.com', 'a1f34a9e651556d6ae42c0465', '王亚楷', 0, '13095419190', 1, 1, 1431933085, 0, '', '', 0, '130425199308117512', '', 1, 1463555485),
(207, '923937655@qq.com', '12043e80c7871e6e78b234b75', '肖康俊', 0, '13225533311', 2, 1, 1432359746, 1432310400, '', '', 0, '340502199605720013', 'A100172', 0, 1463932800),
(208, '1042192424@qq.com', '791a2c0c80291e2ac70702909', '岳文龙', 0, '18155246596', 2, 1, 1432360003, 1432310400, '', '', 0, '340303199606270414', 'A100173', 0, 1463932800),
(209, '811616520@qq.com', '0a172d1771bd88d7c657c6c32', '胡汪辉', 0, '18130378304', 1, 1, 1432379927, 0, '', '', 0, '340822199503032217', '', 1, 1464002327);

-- --------------------------------------------------------

--
-- 表的结构 `d_memor`
--

CREATE TABLE IF NOT EXISTS `d_memor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warntime` int(10) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `addtime` int(10) NOT NULL,
  `ad_id` int(10) NOT NULL,
  `info` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='备忘录' AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `d_memor`
--

INSERT INTO `d_memor` (`id`, `warntime`, `cname`, `addtime`, `ad_id`, `info`) VALUES
(8, 1433919600, '芜湖尚唯汽车饰件有限公司', 1431421312, 6, '再次打电话询问是否有招暑期工的消息。'),
(7, 1431483540, '安徽中加学校', 1431400813, 6, '打电话，再次联系杨，询问一下是否需要线下宣传活动。'),
(9, 1433990580, '芜湖宏景电子股份有限公司', 1431485049, 6, '再次致电宏景电子股份有限公司，看是否有了要招聘暑期工的消息。'),
(10, 1432620240, '芜湖楚江合金铜材有限公司', 1431497271, 6, '再打一下电话5313090，再次询问一下对暑期工的具体要求。对吃住，人数，性别，工资，工作内容，结算方式，什么的。再次确认一下。'),
(11, 1431584100, '安徽中加学校', 1431497780, 6, '明天再次打电话3832888再次询问一下。是否需要做宣传。'),
(12, 1431914400, '芜湖县大众化教育中心', 1431760812, 3, '致电联系'),
(13, 1432173600, '芜湖县大众化教育中心', 1432026256, 3, '上门拜访'),
(14, 1432191600, '芜湖新泉汽车饰件系统有限公司', 1432191409, 6, '暑期工的信息是否有了，六月底会有消息的，到时候在电话联系一下。'),
(15, 1432191600, '芜湖毅联塑胶科技有限公司', 1432191478, 6, '告诉我打错了。'),
(16, 1432191600, '芜湖圣志达科技有限公司', 1432191536, 6, '110-150元每天，12个小时工作时间，六月份在联系。'),
(17, 1432191600, '芜湖尚唯汽车饰件有限公司', 1432191583, 6, '4点半之前再打电话确认一下。暑期工'),
(18, 1432191900, '芜湖中瑞弹簧有限公司', 1432191671, 6, '有寒假工，暑假工有消息会通知，6月份在联系'),
(19, 1432279080, '芜湖诚立塑业有限公司', 1432192760, 6, '明天下午再打电话询问一下。');

-- --------------------------------------------------------

--
-- 表的结构 `d_notice`
--

CREATE TABLE IF NOT EXISTS `d_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `put` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发布',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL,
  `ad_id` smallint(5) NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) DEFAULT NULL,
  `contents` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `d_notice`
--

INSERT INTO `d_notice` (`id`, `title`, `put`, `top`, `addtime`, `ad_id`, `hits`, `endtime`, `contents`) VALUES
(4, '多多兼职网喜迎母亲节正式上线！', 1, 0, 1431252991, 1, 45, 1439827200, '&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:24px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:24px;&quot;&gt;&lt;strong&gt;多多兼职网喜迎母亲节5月10日正式上线！&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:24px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:24px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;'),
(5, '关于网站登录公告!', 1, 0, 1431331312, 1, 84, 1439913600, '&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#337FE5;font-size:24px;&quot;&gt;关于多多兼职网VIP会员登录公告如下：&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;目前网站所有VIP会员资料已经录入完毕，用户名和密码默认为各位VIP会员的手机号&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;所有VIP会员账号默认绑定了各位资料中的QQ邮箱，VIP会员可以登录后通过绑定的邮箱来修改密码&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;多多兼职网是实名制网站，VIP资料一旦会服中心录入不可自主修改，部分活动项可自主修改（例“业余时间”）&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;无权修改项资料若有变动，请联系多多兼职会服中心修改&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;有任何问题，请在工作人员上班时间 9:00-18:00 致电 0553-2205002&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;'),
(6, '网站报名操作使用说明....', 1, 0, 1431332287, 1, 110, 1439913600, '&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:24px;&quot;&gt;&lt;strong&gt;网站报名操作使用说明如下：&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;网站所有会员可在首页“最新兼职信息”和“最新活动培训”栏了解最新兼职、培训、活动的相关动态&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;登陆后，在“最新兼职信息”列表内，点击想要了解的招聘岗位，即可进入该条信息详细了解，选择合适工作进行报名&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;所有“待遇”状态信息，只要没有时间冲突和重叠即可报名，反之同一时间只能选择一份报名，&lt;strong&gt;网站不限制报名岗位和次数&lt;/strong&gt;&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;报名后请准时准点按照面试/集合/工作时间，参加预订的&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;面试/集合/工作&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;预订后不能参加者，请在该条信息报名截止时间提前3个小时，在网站“用户中心”“工作记录”里申请取消报名&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;超出退订时间，不可退订；申请退定后3个小时内不可再次预订该条和其他信息，24小时之内只有一次退订机会&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `d_page`
--

CREATE TABLE IF NOT EXISTS `d_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `addtime` int(10) NOT NULL,
  `contents` text NOT NULL,
  `locks` tinyint(1) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='单页面' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `d_page`
--

INSERT INTO `d_page` (`id`, `title`, `keywords`, `description`, `addtime`, `contents`, `locks`, `hits`) VALUES
(1, '联系我们', '联系我们', '联系我们', 1428127021, '&lt;h2 style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:32px;color:#337FE5;&quot;&gt;关于多多兼职网&lt;/span&gt; \r\n&lt;/h2&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;客服咨询&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;：&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;0553—2205055、2205066&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;客户 Q Q&lt;/strong&gt;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;：&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;3119388552&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;会服咨询：&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;0553—2205002、2205003&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;会服&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;&amp;nbsp;Q Q&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.3333339691162px;&quot;&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;：&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;3216656004&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:13.3333339691162px;&quot;&gt;&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;申请合作：&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;0553—2205001&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;公司地址：芜湖市弋江区中央城财富街1#611室&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;乘车路线：&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&quot;中央城”下车：10路、24路、26路、32路、36路、37路、109路、114路&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;', 0, 84),
(2, '联系方式', '联系方式', '联系方式', 1428852205, '&lt;p&gt;\r\n	联系方式\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	地址：\r\n&lt;/p&gt;', 1, 25),
(3, '申请合作', '申请合作', '申请合作', 1428932587, '申请合作页面', 1, 14),
(6, '健康证办理地址', '健康证办理地址', '健康证办理地址', 1431253327, '&lt;h2 style=&quot;text-align:center;margin-left:0pt;text-indent:0pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#337FE5;&quot;&gt;&lt;span style=&quot;font-size:24px;color:#337FE5;&quot;&gt;芜湖市健康证办理地址&lt;/span&gt;&lt;/span&gt; \r\n&lt;/h2&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#337FE5;&quot;&gt;&lt;span style=&quot;font-size:24px;color:#337FE5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;办理健康证地点&lt;/strong&gt;：芜湖市赭山公园东大门对面疾病预防控制中心&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;乘车路线&lt;/strong&gt;：大学城乘10路车到赭山公园下&amp;nbsp;，&amp;nbsp;市内乘4路到赭山公园下&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;联系电话&lt;/strong&gt;：0553-3855194&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;办理时间&lt;/strong&gt;：周一到周五早上8：00-10：30办理，一般四个工作日之后可以拿&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;价格&lt;/strong&gt;：50元&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;strong&gt;需带物品&lt;/strong&gt;：一张1寸照片（黑白彩照都可以）&amp;nbsp;及一张身份证复印件&lt;/span&gt; \r\n&lt;/p&gt;', 0, 46),
(5, '诚聘英才', '诚聘英才', '诚聘英才', 1431077998, '&lt;h3 style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#337FE5;font-size:24px;&quot;&gt;目前因公司业务发展需要，现统一招聘以下职位（销售文员、客户内勤、客户代表）&lt;/span&gt; \r\n&lt;/h3&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:24px;color:#337FE5;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:24px;color:#337FE5;&quot;&gt;&lt;strong&gt;销售文员&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;岗位职责：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;1.来访客户的咨询接待及服务介绍、产品的销售&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;2.品牌在校园市场的宣传和监管、校园渠道代理的培养和管理&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;3.电话回访及邀约、基本工作在办公室，有时需要外出监管和宣传&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;任职资格：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;1.大专及以上学历、年龄20-28岁之间、男女不限&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;2.普通话标准、拥有良好的沟通和应变能力、较强的上进心、热爱校园市场&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:24px;color:#337FE5;&quot;&gt;&lt;strong&gt;客户内勤&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;岗位职责：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;1.老客户的电话跟进和维护、线上线下文件和信息的发布，跟进，通知&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;2.办公室电话的接听和打出、新客户的开发&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;3.客户部相关事务的联络、处理、协调、安排等（基本工作在办公室）&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;任职资格：&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;1.大专及以上学历、年龄20-28岁之间、男女不限&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;2.普通话标准、拥有良好的沟通和应变能力、积极主动、胆大心细&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:24px;color:#337FE5;&quot;&gt;&lt;strong&gt;客户代表&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;岗位职责：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;1.客户关系维护、招聘信息的发布、跟进、安排&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;2.新客户开发及陌拜、市场调研和分析&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;3.相关培训和活动执行，突发事件的处理&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;任职资格：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;1.大专及以上学历、年龄22-30岁之间、男女不限&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;2.普通话标准、拥有良好的沟通和应变能力、具有一定得市场开拓能力&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;color:#337FE5;&quot;&gt;3.具有先关经验或者资源的男士优先&lt;/span&gt; \r\n&lt;/p&gt;', 0, 39);

-- --------------------------------------------------------

--
-- 表的结构 `d_question`
--

CREATE TABLE IF NOT EXISTS `d_question` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `d_question`
--

INSERT INTO `d_question` (`id`, `question`) VALUES
(1, '你的小学老师名字是？'),
(2, '你的初中老师名字是？'),
(3, '你的高中老师名字是？'),
(4, '你的大学老师名字是？'),
(5, '你的学生证号是？'),
(6, '你父亲的生日是？'),
(7, '你母亲的生日是？'),
(8, '你的第一份工作是？'),
(9, '你的宠物昵称是？');

-- --------------------------------------------------------

--
-- 表的结构 `d_safequestion`
--

CREATE TABLE IF NOT EXISTS `d_safequestion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `qid1` int(2) DEFAULT NULL,
  `qid2` int(2) DEFAULT NULL,
  `qid3` int(2) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `ans1` varchar(30) DEFAULT NULL,
  `ans2` varchar(30) DEFAULT NULL,
  `ans3` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `d_safequestion`
--


-- --------------------------------------------------------

--
-- 表的结构 `d_school`
--

CREATE TABLE IF NOT EXISTS `d_school` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `d_school`
--

INSERT INTO `d_school` (`id`, `name`) VALUES
(1, '安徽师范大学'),
(22, '安徽扬子职业技术学院'),
(14, '安徽工程大学'),
(16, '皖南医学院'),
(17, '安徽中医药高等专科学校'),
(18, '安徽商贸职业技术学院'),
(19, '安徽机电职业技术学院'),
(21, '芜湖职业技术学院'),
(23, '芜湖职业教育中心'),
(24, '芜湖工业学校'),
(25, '芜湖师范学校'),
(26, '芜湖地区卫生学校'),
(27, '其他学校');

-- --------------------------------------------------------

--
-- 表的结构 `d_site`
--

CREATE TABLE IF NOT EXISTS `d_site` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) NOT NULL,
  `siteurl` varchar(50) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `copyright` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='站点信息' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `d_site`
--

INSERT INTO `d_site` (`id`, `sitename`, `siteurl`, `keywords`, `description`, `copyright`) VALUES
(3, '多多兼职网', 'http://www.51ddjz.com', '多多兼职网校园兼职网芜湖兼职网大学生兼职暑假工寒假工', '多多兼职网校园兼职网芜湖兼职网大学生兼职暑假工寒假工', '51ddjz.com 皖ICP备15007616（1/3）多多兼职网版权所有');

-- --------------------------------------------------------

--
-- 表的结构 `d_trains`
--

CREATE TABLE IF NOT EXISTS `d_trains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `ad_id` smallint(5) NOT NULL,
  `put` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核',
  `contents` text NOT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `addtime` int(10) NOT NULL,
  `addr` varchar(60) DEFAULT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL,
  `bstarttime` int(10) NOT NULL,
  `bendtime` int(10) NOT NULL,
  `ps` int(10) NOT NULL DEFAULT '0',
  `grade` varchar(100) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `itype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='培训' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `d_trains`
--


-- --------------------------------------------------------

--
-- 表的结构 `d_trainsnamelist`
--

CREATE TABLE IF NOT EXISTS `d_trainsnamelist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trai_id` int(10) NOT NULL,
  `mem_id` int(10) DEFAULT NULL,
  `types` tinyint(1) NOT NULL DEFAULT '0' COMMENT '报名方式',
  `regtime` int(10) NOT NULL,
  `arrive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否到场',
  `visit` tinyint(1) NOT NULL DEFAULT '0',
  `sub` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否退订',
  `canceltime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `d_trainsnamelist`
--


-- --------------------------------------------------------

--
-- 表的结构 `d_visit`
--

CREATE TABLE IF NOT EXISTS `d_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` smallint(5) NOT NULL COMMENT '拜访人',
  `vistime` int(10) NOT NULL,
  `methods` tinyint(1) NOT NULL DEFAULT '1' COMMENT '方式',
  `addtime` int(10) NOT NULL,
  `info` text NOT NULL,
  `com_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `methods` (`methods`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='拜访' AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `d_visit`
--

INSERT INTO `d_visit` (`id`, `ad_id`, `vistime`, `methods`, `addtime`, `info`, `com_id`) VALUES
(1, 1, 1427925600, 1, 1427954386, '阿斯达阿斯达1', 9),
(2, 1, 1430323200, 1, 1430380340, '娃儿发顺丰', 16),
(4, 4, 1431273600, 1, 1431315359, '近期兼职人员已经找好，发了联系方式，后面有需要联系', 35),
(5, 4, 1431273600, 1, 1431339019, '近期需要临促和长促', 54),
(6, 4, 1431360000, 1, 1431397615, '双休会需要发单人员，暂时还不确定', 55),
(7, 6, 1431273600, 1, 1431399083, '是否招聘暑期工，有消息通知', 56),
(8, 6, 1431273600, 1, 1431399675, '是否招用暑期工，有消息再通知', 57),
(9, 6, 1431360000, 1, 1431400275, '是否需要做地下宣传活动。说再联系383288，杨', 58),
(10, 6, 1431360000, 1, 1431400725, '是否需要线下宣传活动，有需要再联系。', 59),
(11, 6, 1431360000, 1, 1431421161, '是否招聘暑期工，有消息会通知的，留了我的手机号', 75),
(12, 6, 1431360000, 1, 1431421244, '是否招聘暑期工，有消息会通知的。互留了手机号。', 76),
(13, 6, 1431446400, 1, 1431484960, '是否招聘暑期工，有消息通知。', 80),
(14, 6, 1431446400, 1, 1431484990, '是否招聘暑期工，六月份在联系。', 81),
(15, 6, 1431446400, 1, 1431497036, '5313090,女士接的电话，说去年暑假工是2个男的，3班倒，每个月1500，包住，没有体力活，只是负责买水什么的，不是现金交易。要求要坐的住。\r\n5月底就会有消息、到时候再联系、', 95),
(16, 6, 1431446400, 1, 1431500910, '手机号，是否要招暑期工，有消息再通知。', 113),
(17, 4, 1431532800, 1, 1431573969, '现需的已经找好，后期可定期拜访', 174),
(18, 3, 1431532800, 2, 1431594790, '需要话务员，有经验的，长期的', 292),
(19, 3, 1431705600, 1, 1431760439, '暑期有用人需求，需要上门了解详情', 334),
(20, 3, 1432051200, 1, 1432109690, '暑期也要兼职  具体改天上门谈细节', 292),
(21, 3, 1432051200, 1, 1432109705, '暑期也要兼职  具体改天上门谈细节', 292),
(22, 6, 1432137600, 1, 1432192229, '暑期工的信息是否有了，六月底会有消息的，到时候在电话联系一下。', 56),
(23, 6, 1432137600, 1, 1432192260, '告诉我打错了。', 57),
(24, 6, 1432137600, 1, 1432192282, '110-150元每天，12个小时工作时间，六月份在联系。', 75),
(25, 6, 1432137600, 1, 1432192501, '4点半之前再打电话确认一下暑期工的信息', 76),
(26, 6, 1432137600, 1, 1432192532, '有寒假工，暑假工有消息会通知，6月份在联系', 80),
(27, 6, 1432137600, 1, 1432192566, '六月份在联系。', 81),
(28, 6, 1432137600, 1, 1432192615, '5月底6月初再联系', 95),
(29, 6, 1432137600, 1, 1432192653, '有过寒假工，但是暑假工的消息再通知', 93),
(30, 6, 1432137600, 1, 1432192700, '明天下午再打电话询问一下。', 113);

-- --------------------------------------------------------

--
-- 表的结构 `d_warning`
--

CREATE TABLE IF NOT EXISTS `d_warning` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `ad_id` int(10) NOT NULL,
  `warnmess` varchar(500) NOT NULL,
  `addtime` int(10) NOT NULL,
  `readstatic` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `d_warning`
--

INSERT INTO `d_warning` (`id`, `uid`, `ad_id`, `warnmess`, `addtime`, `readstatic`) VALUES
(16, 1, 1, '警告测试信息', 1429799104, 1430039181);
