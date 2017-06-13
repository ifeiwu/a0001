DROP TABLE IF EXISTS `a0001_admin`;
CREATE TABLE `a0001_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `name` varchar(20) DEFAULT '',
  `pass` varchar(100) DEFAULT '',
  `face` varchar(10) DEFAULT '',
  `realname` varchar(20) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `qq` varchar(20) DEFAULT '',
  `sex` char(2) DEFAULT '',
  `rbac` varchar(255) DEFAULT '',
  `json` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0001_item`;
CREATE TABLE `a0001_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `nid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '1',
  `sortby` int(11) DEFAULT '100',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `title2` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `image2` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT '',
  `summary2` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `url_title` varchar(50) DEFAULT '',
  `url_target` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `a0001_item` VALUES("7","0","1","1","96","1439969712","1487142010","Sex","时尚牛皮高跟鞋","bg.jpg","image2.jpg","data/photo/7","性感其实很简单","甄选顶级材质，做工考究，立体感十足，散发奢华气息，勾勒出典雅风范。每一道工序都需花费数小时手工完成，贴合脚形的鞋形设计以便在第一次穿入时就舒适无比。","","","");
INSERT INTO `a0001_item` VALUES("8","0","1","1","97","1444960274","1487141997","Passion","时尚牛皮高跟鞋","bg.jpg","image2.jpg","data/photo/8","热情本身即是专注","甄选顶级材质，做工考究，立体感十足，散发奢华气息，勾勒出典雅风范。每一道工序都需花费数小时手工完成，贴合脚形的鞋形设计以便在第一次穿入时就舒适无比。","","","");
INSERT INTO `a0001_item` VALUES("9","0","1","1","98","1444960382","1495332111","Explore","时尚牛皮高跟鞋","bg.jpg","image2.jpg","data/photo/9","探索是永远的态度","甄选顶级材质，做工考究，立体感十足，散发奢华气息，勾勒出典雅风范。每一道工序都需花费数小时手工完成，贴合脚形的鞋形设计以便在第一次穿入时就舒适无比。","","","");
INSERT INTO `a0001_item` VALUES("10","0","1","1","100","1494556485","1494556485","Fashion","时尚牛皮高跟鞋","bg.jpg","image2.jpg","data/photo/10","时尚是个暧昧的字眼","甄选顶级材质，做工考究，立体感十足，散发奢华气息，勾勒出典雅风范。每一道工序都需花费数小时手工完成，贴合脚形的鞋形设计以便在第一次穿入时就舒适无比。","http://www.ifeiwu.com/","了解详细 &gt;&gt;","_blank");
INSERT INTO `a0001_item` VALUES("11","0","1","1","99","1444960396","1490511962","Cool","","bg.jpg","","data/photo/11","冷酷不是冷漠","","","","");
INSERT INTO `a0001_item` VALUES("12","0","1","1","95","1444961793","1487141892","Explore","时尚牛皮高跟鞋","bg.jpg","","data/photo/12","探索是永远的态度","甄选顶级材质，做工考究，立体感十足，散发奢华气息，勾勒出典雅风范。每一道工序都需花费数小时手工完成，贴合脚形的鞋形设计以便在第一次穿入时就舒适无比。","","","");
INSERT INTO `a0001_item` VALUES("13","0","1","1","94","1487059100","1487141923","Passion","","bg.jpg","","data/photo/13","性感其实很简单","","","","");


DROP TABLE IF EXISTS `a0001_log`;
CREATE TABLE `a0001_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(20) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `table` varchar(20) DEFAULT '',
  `table_id` int(11) DEFAULT '0',
  `ip` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0001_site`;
CREATE TABLE `a0001_site` (
  `state` tinyint(1) DEFAULT '1',
  `name` varchar(100) DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `a0001_site` VALUES("1","domain","qing.com/a0001");
INSERT INTO `a0001_site` VALUES("1","favicon","");
INSERT INTO `a0001_site` VALUES("1","logo","logo.png");
INSERT INTO `a0001_site` VALUES("1","touch_icon","");
INSERT INTO `a0001_site` VALUES("1","swiper_speed","800");
INSERT INTO `a0001_site` VALUES("1","footer","门店地址：大连市西岗区中山路261号\n\n服务热线：4008876543\n\n天猫店：FASHION官方旗舰店\n\nEMAIL：Fashion@service.com");
INSERT INTO `a0001_site` VALUES("1","swiper_slidesPerView","5");
INSERT INTO `a0001_site` VALUES("1","swiper_spaceBetween","6");
INSERT INTO `a0001_site` VALUES("1","title","");
INSERT INTO `a0001_site` VALUES("1","keywords","");
INSERT INTO `a0001_site` VALUES("1","home_bg","home-bg.png");
INSERT INTO `a0001_site` VALUES("1","description","");
INSERT INTO `a0001_site` VALUES("1","stats_open","1");
INSERT INTO `a0001_site` VALUES("1","stats_much","1");
INSERT INTO `a0001_site` VALUES("1","stats_unit","year");
INSERT INTO `a0001_site` VALUES("1","stats3_open","0");
INSERT INTO `a0001_site` VALUES("1","stats3_code","");
INSERT INTO `a0001_site` VALUES("1","style","");
INSERT INTO `a0001_site` VALUES("1","theme-skin","001-default");
INSERT INTO `a0001_site` VALUES("1","theme","001");
INSERT INTO `a0001_site` VALUES("1","skin","default");
INSERT INTO `a0001_site` VALUES("1","version","1496730999");
INSERT INTO `a0001_site` VALUES("1","name","");
INSERT INTO `a0001_site` VALUES("0","stats_data","");
INSERT INTO `a0001_site` VALUES("1","stats_date","");


DROP TABLE IF EXISTS `a0001_stats`;
CREATE TABLE `a0001_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `screen` varchar(20) DEFAULT '',
  `cookie` varchar(32) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `referer` varchar(255) DEFAULT '',
  `keyword` varchar(255) DEFAULT '',
  `os` varchar(20) DEFAULT '',
  `os_version` varchar(20) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `browser` varchar(20) DEFAULT '',
  `browser_version` varchar(20) DEFAULT '',
  `ip` varchar(20) DEFAULT '',
  `ip_isp` varchar(20) DEFAULT '',
  `ip_country` varchar(20) DEFAULT '',
  `ip_region` varchar(20) DEFAULT '',
  `ip_area` varchar(20) DEFAULT '',
  `ip_city` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0001_trash`;
CREATE TABLE `a0001_trash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `table` varchar(255) DEFAULT '',
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



