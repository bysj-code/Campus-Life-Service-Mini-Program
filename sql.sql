DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` text COMMENT '添加字段：',
  `field_set` text COMMENT '修改字段：',
  `field_get` text COMMENT '查询字段：',
  `table_nav_name` varchar(500) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限管理';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告';
insert into `notice` values ('1','网站公告','<p>公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。</p>','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0');
insert into `notice` values ('2','关于我们','<p>       一个网站要取得成功，要有先进的理念、先进的思想，更为重要的是抢占先机，及时行动。网络世界可谓一日千里、 日新月异，一个网站只有把握先机，抓住机遇，才</p><p>可能有更多的机会获得成功，可能处于网络行业发展的致高点，可能创建出成功的网站，才能能获得成功。要知道一种网站新模式在网络上只有保持几天的优势,因为人们很容易“COPY" 和模仿，因此，唯有不</p><p>断创新，不失时机地推出新的服务、新的模式、新的思想，网站才可能长久立于不败之地。</p>','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0');
insert into `notice` values ('3','联系方式','<h3>网站内容及品牌合作</h3><p>Email：xxxx@qq.com</p><h3>商务合作</h3><p>电话：010-xxxxxxx</p><p>Email：xxxx@qq.com</p><h3><br></h3><h3><br></h3><p><br></p>','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0');
insert into `notice` values ('4','网站介绍','<p>此处可上传文字、图片、视频、超链接、表格等内容区</p>','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0');
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章分类';
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞';
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('101','84e31b291f2bde6b7ceb27af5fe8eee3',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏';
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员','2023-03-31 18:21:49.0',null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/admin_avatar.jpg','2023-03-31 17:35:13.0');
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`(system_user_id int(11) NOT NULL AUTO_INCREMENT COMMENT '系统用户ID',
`user_name` varchar(64) comment '用户姓名',
`gender` varchar(64) comment '性别',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (system_user_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '系统用户';

DROP TABLE IF EXISTS `revelation`;
CREATE TABLE `revelation`(revelation_id int(11) NOT NULL AUTO_INCREMENT COMMENT '寻物启示ID',
`item_name` varchar(64) comment '物品名称',
`item_type` varchar(64) comment '物品类型',
`item_picture` varchar(255) comment '物品图片',
`missing_address` varchar(64) comment '丢失地址',
`lost_time` datetime comment '丢失时间',
`item_status` varchar(64) comment '物品状态',
`publishing_users` int(11) DEFAULT 0 comment '发布用户',
`details` text comment '详情内容',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (revelation_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '寻物启示';
insert into `revelation` values (1,'物品名称1','物品类型1','/api/upload/1584017709794852864.jpg','丢失地址1','2023-03-27 17:46:10','物品状态1',0,'此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `revelation` values (2,'物品名称2','物品类型2','/api/upload/1584017844004192257.jpg','丢失地址2','2023-03-27 17:46:10','物品状态2',0,'此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `revelation` values (3,'物品名称3','物品类型3','/api/upload/1584017607596441601.jpg','丢失地址3','2023-03-27 17:46:10','物品状态3',0,'此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `revelation` values (4,'物品名称4','物品类型4','/api/upload/1584018025961488384.jpg','丢失地址4','2023-03-27 17:46:10','物品状态4',0,'此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `revelation` values (5,'物品名称5','物品类型5','/api/upload/1584017770272522240.jpg','丢失地址5','2023-03-27 17:46:10','物品状态5',0,'此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `revelation` values (6,'物品名称6','物品类型6','/api/upload/1584017501614768129.jpg','丢失地址6','2023-03-27 17:46:10','物品状态6',0,'此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `revelation` values (7,'物品名称7','物品类型7','/api/upload/1584017954754789377.jpg','丢失地址7','2023-03-27 17:46:10','物品状态7',0,'此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `revelation` values (8,'物品名称8','物品类型8','/api/upload/1584016939141824512.jpg','丢失地址8','2023-03-27 17:46:10','物品状态8',0,'此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');

DROP TABLE IF EXISTS `lost_and_found`;
CREATE TABLE `lost_and_found`(lost_and_found_id int(11) NOT NULL AUTO_INCREMENT COMMENT '失物招领ID',
`item_name` varchar(64) comment '物品名称',
`item_type` varchar(64) comment '物品类型',
`item_picture` varchar(255) comment '物品图片',
`pickup_address` varchar(64) comment '招领地址',
`item_status` varchar(64) comment '物品状态',
`publishing_users` int(11) DEFAULT 0 comment '发布用户',
`details` text comment '详情内容',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (lost_and_found_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '失物招领';
insert into `lost_and_found` values (1,'物品名称1','物品类型1','/api/upload/1573868031610716161.jpg','招领地址1','物品状态1',0,'此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `lost_and_found` values (2,'物品名称2','物品类型2','/api/upload/1573867692425740288.jpg','招领地址2','物品状态2',0,'此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `lost_and_found` values (3,'物品名称3','物品类型3','/api/upload/1573867851146592256.jpg','招领地址3','物品状态3',0,'此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `lost_and_found` values (4,'物品名称4','物品类型4','/api/upload/1574324930663677953.jpg','招领地址4','物品状态4',0,'此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `lost_and_found` values (5,'物品名称5','物品类型5','/api/upload/1573868132919934977.jpg','招领地址5','物品状态5',0,'此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `lost_and_found` values (6,'物品名称6','物品类型6','/api/upload/1574324865966538752.jpg','招领地址6','物品状态6',0,'此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `lost_and_found` values (7,'物品名称7','物品类型7','/api/upload/1573867934198005760.jpg','招领地址7','物品状态7',0,'此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `lost_and_found` values (8,'物品名称8','物品类型8','/api/upload/1574324768247644161.jpg','招领地址8','物品状态8',0,'此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');

DROP TABLE IF EXISTS `exchange_forum`;
CREATE TABLE `exchange_forum`(exchange_forum_id int(11) NOT NULL AUTO_INCREMENT COMMENT '交流论坛ID',
`forum_title` varchar(64) comment '论坛标题',
`cover` varchar(255) comment '封面',
`forum_label` varchar(64) comment '论坛标签',
`post_content` text comment '帖子内容',
`publishing_users` int(11) DEFAULT 0 comment '发布用户',
`release_date` date comment '发布日期',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (exchange_forum_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '交流论坛';
insert into `exchange_forum` values (1,'论坛标题1','/api/upload/1588455544144789504.jpg','论坛标签1','此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2023-03-27',260,309,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `exchange_forum` values (2,'论坛标题2','/api/upload/1588455618736291841.jpg','论坛标签2','此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2023-03-27',211,534,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `exchange_forum` values (3,'论坛标题3','/api/upload/1588455688319795201.jpg','论坛标签3','此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2023-03-27',353,119,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `exchange_forum` values (4,'论坛标题4','/api/upload/1588455840975683584.jpg','论坛标签4','此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2023-03-27',939,163,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `exchange_forum` values (5,'论坛标题5','/api/upload/1588455795303907328.jpg','论坛标签5','此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2023-03-27',760,441,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `exchange_forum` values (6,'论坛标题6','/api/upload/1601165903049785345.jpg','论坛标签6','此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2023-03-27',961,871,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `exchange_forum` values (7,'论坛标题7','/api/upload/1601165803086938113.jpg','论坛标签7','此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2023-03-27',539,634,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `exchange_forum` values (8,'论坛标题8','/api/upload/1588455486275977217.jpg','论坛标签8','此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2023-03-27',439,641,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');

DROP TABLE IF EXISTS `item_type`;
CREATE TABLE `item_type`(item_type_id int(11) NOT NULL AUTO_INCREMENT COMMENT '物品类型ID',
`item_type` varchar(64) comment '物品类型',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (item_type_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '物品类型';
insert into `item_type` values (1,'物品类型1',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `item_type` values (2,'物品类型2',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `item_type` values (3,'物品类型3',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `item_type` values (4,'物品类型4',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `item_type` values (5,'物品类型5',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `item_type` values (6,'物品类型6',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `item_type` values (7,'物品类型7',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `item_type` values (8,'物品类型8',0,'2023-03-27 17:46:10','2023-03-27 17:46:10');

DROP TABLE IF EXISTS `second_hand_goods`;
CREATE TABLE `second_hand_goods`(second_hand_goods_id int(11) NOT NULL AUTO_INCREMENT COMMENT '二手物品ID',
`item_no` varchar(64) comment '物品序号',
`item_name` varchar(64) comment '物品名称',
`cover` varchar(255) comment '封面',
`item_type` varchar(64) comment '物品类型',
`item_specification` varchar(64) comment '物品规格',
`item_quantity` int(11) DEFAULT 0 comment '物品数量',
`item_unit_price` int(11) DEFAULT 0 comment '物品单价',
`transaction_address` varchar(64) comment '交易地址',
`seller` int(11) DEFAULT 0 comment '卖方',
`product_description` text comment '商品描述',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (second_hand_goods_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '二手物品';
insert into `second_hand_goods` values (1,'物品序号1','物品名称1','/api/upload/1584017844004192257.jpg','物品类型1','物品规格1',1,1,'交易地址1',0,'此处可上传文字、图片、视频、超链接、表格等内容区1',80,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `second_hand_goods` values (2,'物品序号2','物品名称2','/api/upload/1584017954754789377.jpg','物品类型2','物品规格2',2,2,'交易地址2',0,'此处可上传文字、图片、视频、超链接、表格等内容区2',273,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `second_hand_goods` values (3,'物品序号3','物品名称3','/api/upload/1584017607596441601.jpg','物品类型3','物品规格3',3,3,'交易地址3',0,'此处可上传文字、图片、视频、超链接、表格等内容区3',819,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `second_hand_goods` values (4,'物品序号4','物品名称4','/api/upload/1584017501614768129.jpg','物品类型4','物品规格4',4,4,'交易地址4',0,'此处可上传文字、图片、视频、超链接、表格等内容区4',913,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `second_hand_goods` values (5,'物品序号5','物品名称5','/api/upload/1584018025961488384.jpg','物品类型5','物品规格5',5,5,'交易地址5',0,'此处可上传文字、图片、视频、超链接、表格等内容区5',65,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `second_hand_goods` values (6,'物品序号6','物品名称6','/api/upload/1584017770272522240.jpg','物品类型6','物品规格6',6,6,'交易地址6',0,'此处可上传文字、图片、视频、超链接、表格等内容区6',506,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `second_hand_goods` values (7,'物品序号7','物品名称7','/api/upload/1584017709794852864.jpg','物品类型7','物品规格7',7,7,'交易地址7',0,'此处可上传文字、图片、视频、超链接、表格等内容区7',584,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');
insert into `second_hand_goods` values (8,'物品序号8','物品名称8','/api/upload/1584016939141824512.jpg','物品类型8','物品规格8',8,8,'交易地址8',0,'此处可上传文字、图片、视频、超链接、表格等内容区8',246,0,'2023-03-27 17:46:10','2023-03-27 17:46:10');

insert into `auth` values ('1','管理员','系统用户','system_user','系统用户','/system_user/table','','_blank','1','1','1','1','user_name,gender','user_name,gender','user_name,gender',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('2','管理员','系统用户','system_user','系统用户详情','/system_user/view','','_blank','1','1','1','1','user_name,gender','user_name,gender','user_name,gender',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('3','管理员','寻物启示','revelation','寻物启示','/revelation/table','','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('4','管理员','寻物启示','revelation','寻物启示详情','/revelation/view','','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('5','管理员','寻物启示','revelation','寻物启示','/revelation/list','top','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('6','管理员','寻物启示','revelation','寻物启示详情','/revelation/details','','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('7','管理员','失物招领','lost_and_found','失物招领','/lost_and_found/table','','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('8','管理员','失物招领','lost_and_found','失物招领详情','/lost_and_found/view','','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('9','管理员','失物招领','lost_and_found','失物招领','/lost_and_found/list','top','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('10','管理员','失物招领','lost_and_found','失物招领详情','/lost_and_found/details','','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('11','管理员','交流论坛','exchange_forum','交流论坛','/exchange_forum/table','','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('12','管理员','交流论坛','exchange_forum','交流论坛详情','/exchange_forum/view','','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('13','管理员','交流论坛','exchange_forum','交流论坛','/exchange_forum/list','top','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('14','管理员','交流论坛','exchange_forum','交流论坛详情','/exchange_forum/details','','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('15','管理员','物品类型','item_type','物品类型','/item_type/table','','_blank','1','1','1','1','item_type','item_type','item_type',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('16','管理员','物品类型','item_type','物品类型详情','/item_type/view','','_blank','1','1','1','1','item_type','item_type','item_type',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('17','管理员','二手物品','second_hand_goods','二手物品','/second_hand_goods/table','','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('18','管理员','二手物品','second_hand_goods','二手物品详情','/second_hand_goods/view','','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('19','管理员','二手物品','second_hand_goods','二手物品','/second_hand_goods/list','top','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('20','管理员','二手物品','second_hand_goods','二手物品详情','/second_hand_goods/details','','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('21','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('22','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('23','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('24','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('25','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('26','管理员','新闻','article','校园资讯','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"export_db":true,"import_db":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('27','管理员','新闻','article','校园资讯','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('28','管理员','新闻','article','校园资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('29','管理员','新闻','article','校园资讯','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('30','管理员','新闻分类','article_type','资讯分类','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('31','管理员','新闻分类','article_type','资讯分类详情','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('32','管理员','公告','notice','公告列表','/notice/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('33','管理员','公告','notice','公告详情','/notice/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('34','管理员','公告','notice','公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('35','管理员','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('36','游客','系统用户','system_user','系统用户','/system_user/table','','_blank','1','0','0','0','user_name,gender','user_name,gender','user_name,gender',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('37','游客','系统用户','system_user','系统用户详情','/system_user/view','','_blank','1','0','0','0','user_name,gender','user_name,gender','user_name,gender',null,'0','{}','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `auth` values ('38','游客','寻物启示','revelation','寻物启示','/revelation/table','','_blank','0','0','0','0','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{"can_show_comment":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('39','游客','寻物启示','revelation','寻物启示详情','/revelation/view','','_blank','0','0','0','0','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('40','游客','寻物启示','revelation','寻物启示','/revelation/list','top','_blank','0','0','0','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('41','游客','寻物启示','revelation','寻物启示详情','/revelation/details','','_blank','0','0','0','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{"can_comment":false,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('42','游客','失物招领','lost_and_found','失物招领','/lost_and_found/table','','_blank','0','0','0','0','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{"can_show_comment":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('43','游客','失物招领','lost_and_found','失物招领详情','/lost_and_found/view','','_blank','0','0','0','0','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('44','游客','失物招领','lost_and_found','失物招领','/lost_and_found/list','top','_blank','0','0','0','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('45','游客','失物招领','lost_and_found','失物招领详情','/lost_and_found/details','','_blank','0','0','0','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{"can_comment":false,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('46','游客','交流论坛','exchange_forum','交流论坛','/exchange_forum/table','','_blank','0','0','0','0','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{"can_show_comment":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('47','游客','交流论坛','exchange_forum','交流论坛详情','/exchange_forum/view','','_blank','0','0','0','0','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('48','游客','交流论坛','exchange_forum','交流论坛','/exchange_forum/list','top','_blank','0','0','0','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('49','游客','交流论坛','exchange_forum','交流论坛详情','/exchange_forum/details','','_blank','0','0','0','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{"can_comment":false,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('50','游客','物品类型','item_type','物品类型','/item_type/table','','_blank','0','0','0','0','item_type','item_type','item_type',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('51','游客','物品类型','item_type','物品类型详情','/item_type/view','','_blank','0','0','0','0','item_type','item_type','item_type',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('52','游客','二手物品','second_hand_goods','二手物品','/second_hand_goods/table','','_blank','0','0','0','0','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{"can_show_comment":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('53','游客','二手物品','second_hand_goods','二手物品详情','/second_hand_goods/view','','_blank','0','0','0','0','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('54','游客','二手物品','second_hand_goods','二手物品','/second_hand_goods/list','top','_blank','0','0','0','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('55','游客','二手物品','second_hand_goods','二手物品详情','/second_hand_goods/details','','_blank','0','0','0','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{"can_comment":false,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('56','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('57','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('58','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('59','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('60','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('61','游客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('62','游客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('63','游客','新闻','article','校园资讯','/article/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('64','游客','新闻','article','校园资讯','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_comment":false,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('65','游客','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('66','游客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('67','游客','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('68','游客','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('69','游客','公告','notice','公告','/notice/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('70','游客','公告','notice','公告详情','/notice/details','','_blank','0','0','0','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('71','系统用户','系统用户','system_user','系统用户','/system_user/table','','_blank','0','0','0','0','user_name,gender','user_name,gender','user_name,gender',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('72','系统用户','系统用户','system_user','系统用户详情','/system_user/view','','_blank','0','0','0','0','user_name,gender','user_name,gender','user_name,gender',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('73','系统用户','寻物启示','revelation','寻物启示','/revelation/table','','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('74','系统用户','寻物启示','revelation','寻物启示详情','/revelation/view','','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('75','系统用户','寻物启示','revelation','寻物启示','/revelation/list','top','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('76','系统用户','寻物启示','revelation','寻物启示详情','/revelation/details','','_blank','1','1','1','1','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details','item_name,item_type,item_picture,missing_address,lost_time,item_status,publishing_users,details',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('77','系统用户','失物招领','lost_and_found','失物招领','/lost_and_found/table','','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('78','系统用户','失物招领','lost_and_found','失物招领详情','/lost_and_found/view','','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('79','系统用户','失物招领','lost_and_found','失物招领','/lost_and_found/list','top','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('80','系统用户','失物招领','lost_and_found','失物招领详情','/lost_and_found/details','','_blank','1','1','1','1','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details','item_name,item_type,item_picture,pickup_address,item_status,publishing_users,details',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('81','系统用户','交流论坛','exchange_forum','交流论坛','/exchange_forum/table','','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('82','系统用户','交流论坛','exchange_forum','交流论坛详情','/exchange_forum/view','','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('83','系统用户','交流论坛','exchange_forum','交流论坛','/exchange_forum/list','top','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('84','系统用户','交流论坛','exchange_forum','交流论坛详情','/exchange_forum/details','','_blank','1','1','1','1','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date','forum_title,cover,forum_label,post_content,publishing_users,release_date',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('85','系统用户','物品类型','item_type','物品类型','/item_type/table','','_blank','0','0','0','0','item_type','item_type','item_type',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('86','系统用户','物品类型','item_type','物品类型详情','/item_type/view','','_blank','0','0','0','0','item_type','item_type','item_type',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('87','系统用户','二手物品','second_hand_goods','二手物品','/second_hand_goods/table','','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('88','系统用户','二手物品','second_hand_goods','二手物品详情','/second_hand_goods/view','','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('89','系统用户','二手物品','second_hand_goods','二手物品','/second_hand_goods/list','top','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('90','系统用户','二手物品','second_hand_goods','二手物品详情','/second_hand_goods/details','','_blank','1','1','1','1','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description','item_no,item_name,cover,item_type,item_specification,item_quantity,item_unit_price,transaction_address,seller,product_description',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('91','系统用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('92','系统用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('93','系统用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('94','系统用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('95','系统用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('96','系统用户','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('97','系统用户','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('98','系统用户','新闻','article','校园资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('99','系统用户','新闻','article','校园资讯','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_show_comment":true}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('100','系统用户','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('101','系统用户','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('102','系统用户','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('103','系统用户','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('104','系统用户','公告','notice','公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `auth` values ('105','系统用户','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `user_group` values ('1','100','管理员',null,'','','0','0','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `user_group` values ('2','100','游客',null,'','','0','0','2023-03-27 17:46:10.0','2023-03-27 17:46:10.0');
insert into `user_group` values ('3','100','系统用户',null,'system_user','system_user_id','0','3','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/1565526499723837441.jpg','279','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/1565526092209455105.jpg','946','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/1565524124921495553.jpg','368','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
insert into `article` values ('1','扎紧扎牢校园疫情防线 全力守护师生健康安全','学校','327','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p>9月1日，省委副书记、省委教育工委书记李荣灿深入武汉市中小学和高校，调研检查秋季学期开学校园疫情防控和安全稳定工作。他强调，要深入学习贯彻习近平总书记关于疫情防控和安全稳定的重要指示批示精神，认真落实省委工作要求，以“时时放心不下”的责任感，进一步压紧压实防控责任、落实落细防疫措施，坚决守住不发生校园聚集性疫情底线，全力守护校园和师生健康安全。</p><p><br></p><p>武汉市中小学9月1日全面开学，各区结合疫情形势和防控政策，因地因校采取线上或线下教学模式。在洪山高级中学，高三年级正常线下教学，学校实行封闭管理。李荣灿走进校园监控室、临时留观室、教学楼、运动场馆、学生宿舍等地，详细询问校园疫情防控和师生安全保障等情况。他强调，要严格落实“四方责任”，学校切实履行校内安全管理主体责任，属地履行疫情防控管理职责，不折不扣把各项防控措施落实到位。要加强校内闭环管理，做好学生心理辅导、教育引导等工作，加强教职工健康监测，全力做好校园后勤保障工作，确保师生健康安全、教学秩序井然。</p><p>洪山实验外国语小学全校采取线上教学。李荣灿走进教室，关切询问线上教学情况，他叮嘱学校负责人要保证线上教学质量，随时做好恢复线下教学准备，加强与家庭联动，引导家长严格遵守属地疫情防控规定，最大限度减少疫情对教育教学的影响。</p><p>在华中师范大学，李荣灿实地查看智能测温入校通道、学生食堂、校园110报警指挥中心等地，详细了解学生开学报到、校园出入管理、学校安防大数据系统运行情况。他强调，要毫不松懈抓好常态化疫情防控和校园安全管理，把好门、看住车、管住人，科学精准织密扎牢校园疫情防控网。要紧盯关键环节，做好学生入校后连续7天健康监测及相对静态管理，督促教职工严格落实“两点一线”防控要求，加强与属地对接，校地联动共筑疫情联防联控防线，共同维护校园平安稳定。(记者李婷)</p>','/api/upload/1565523191009378304.jpg',null);
insert into `article` values ('2','我校22项作品在“立志·修身·博学·报国”主题教育活动中获奖','学校','920','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p class="ql-align-justify">近日，广东省教育厅公布了2022年“立志·修身·博学·报国”主题教育系列活动结果，我校共获奖22项，其中一等奖6项、二等奖11项、三等奖5项，学校荣获“优秀组织奖”。</p><p class="ql-align-justify">为深入贯彻落实习近平总书记关于高校思想政治工作的重要论述，繁荣校园文化，积极发挥校园活动的育人作用，增强大学生思想政治教育的针对性和吸引力，省教育厅面向全省高校组织开展2022年“立志·修身·博学·报国”主题教育系列活动。本次活动设置了社会实践调研类、宣讲诵读类、歌曲演绎类、主题摄影类、公益广告类、教育工作类等6类项目。</p><p class="ql-align-justify">我校党委学生工作部（党委研究生工作部）广泛组织动员全校师生积极参与教育活动，把“立志·修身·博学·报国”主题教育系列活动与学生日常思想政治教育工作结合起来，提高了活动融合度，增强了活动实效。经过师生的精心准备，一批优秀的活动作品涌现出来。&nbsp;</p><p>附：获奖名单</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/d2/6a/cdd9e88f4782b627071a47182899/bc99341a-80cc-4ddd-9ae3-70e7a9a6c5d3.png" height="896" width="600"></p><p><br></p>','/api/upload/1601839931645231105.jpg',null);
insert into `article` values ('3','美国开学季家长多忧愁 四成多家长担心校园安全','学校','743','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p>	中国日报网9月2日电 美国咨询公司盖洛普1日发布民调显示，全美校园陆续开学之际，有44%的美国家长担忧其孩子在学校的人身安全，比2019年的前值激增10%，创24年来最高读数。</p><p>	有20%的家长表示，他们的孩子曾主动表达过对校园安全的担忧。</p><p>	近半年来全美各地发生大规模枪击案，令美国家长和孩子忧心忡忡，尤其是今年5月得州“罗布小学枪击案”，19名儿童和2名教师遇害。</p>','/api/upload/1565523313478860801.jpg',null);
insert into `article` values ('4','党的二十大代表、校长刘雅红作学习宣传贯彻党的二十大精神专题辅导报告','学校','862','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p> 为深入学习贯彻党的二十大精神，把学习成果转化为工作动力，不断推动党的二十大精神在华南农业大学落地生根开花结果,12月9日，党的二十大代表、校长刘雅红作学习宣传贯彻党的二十大精神专题辅导报告。校党委副书记邓国安主持报告会。报告会采取线上线下相结合的方式进行。学校党政领导、党委委员和纪委委员，校党委理论学习中心组成员和各二级学院党委书记在图书馆报告厅现场参会；全校其他处级领导干部，学校各民主党派、侨联会、知联会主要负责人，全体辅导员，马克思主义学院全体教师，师生党员代表等在各个分会场通过校内直播平台集中观看学习。	&nbsp;&nbsp;</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/51/6d/4cca86e94e83acda43b5c360552a/f55f6076-8b63-4ec3-8a04-5e2893cf5066.jpg"></p><p class="ql-align-center">	主会场</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/51/6d/4cca86e94e83acda43b5c360552a/76c233f6-21d2-4eea-b52d-85bcba458112.jpg"></p><p class="ql-align-center">党的二十大代表、校长刘雅红作专题辅导报告</p><p>刘雅红结合自己作为党代表参加党的二十大的经历和感受，从“党的二十大的主题及取得的主要成果”“过去5年的工作和新时代10年的伟大变革”“马克思主义中国化时代化”“中国式现代化”“全面建设社会主义现代化国家的目标任务”“坚持党的全面领导和全面从严治党”“应对风险挑战”等方面阐述了党的二十大的重要意义和主要内容，厘清了党的二十大精神的逻辑脉络和精神要义。</p><p>作为高校党代表，刘雅红尤其关注教育领域的发展规划。在专题辅导报告中，她系统总结了新时代十年中国教育和广东教育的非凡成就，并从“办好人民满意的大学”“助力完善科技创新体系”“落实创新驱动发展战略”“加快实施人才强国战略”等四个方面提出了高校推动科教兴国战略落地生根的思路举措。</p><p>	刘雅红校长的报告主题鲜明、内涵丰富、生动鲜活，全面系统地阐释了党的二十大精神的核心要义、精神实质和丰富内涵，对全校上下准确把握和深刻领悟党的二十大精神具有很强的指导性和启发性。这场报告会也是学校党的二十大精神“1+6+N”宣讲行动的首场报告会。接下来，学校还将对照中央、省委和省委教育工委关于学习宣传贯彻党的二十大精神的相关通知要求，扎实落实好各项部署安排，广泛开展党的二十大精神宣讲活动，把党的二十大精神传递至每一位师生，确保全覆盖、无遗漏，引导广大干部师生更加深刻领悟“两个确立”的决定性意义，增强“四个意识”、坚定“四个自信”、做到“两个维护”，用党的二十大精神和习近平新时代中国特色社会主义思想武装头脑、统一思想、指导实践、推动工作，铆足干劲推进学校“双一流”建设开创新局面，为建设农业特色世界一流大学而团结奋斗。</p><p>最后，刘雅红校长对学校近期疫情防控工作、学校2022年工作总结和2023年工作谋划作了部署。</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/51/6d/4cca86e94e83acda43b5c360552a/91dc5507-e770-44d6-87a7-5b144f69a973.jpg"></p><p class="ql-align-center">学校科技工作者代表在分会场参会</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/51/6d/4cca86e94e83acda43b5c360552a/5d83b01a-5c32-42b6-a6db-a80c0efbd4df.jpg"></p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/51/6d/4cca86e94e83acda43b5c360552a/3a164868-5962-4a62-99ac-952d86e48fed.jpg"></p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/51/6d/4cca86e94e83acda43b5c360552a/f5ac4552-123e-4de1-913c-a54e9ce066e0.jpg"></p><p class="ql-align-center">各单位在分会场组织参会</p><p><br></p>','/api/upload/1601839824384294912.jpg',null);
insert into `article` values ('5','法治宣传进校园 讲好“开学第一课”','学校','886','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p>		央广网哈尔滨9月1日消息（记者庞淼）“刷单兼职是近几年比较高发的诈骗类型，同学们，这个坑咱们可千万不能跳。”“同学们，这可不是跳跳糖，这是一种新型毒品，一定要小心！”</p><p>	8月31日，哈尔滨市公安局民警通过“线上”模式，向虹桥中学学生讲解了反电诈和禁毒知识，开启了冰城公安开展“开学第一课”系列安全知识宣讲活动序幕。</p><p>	活动中，刑侦支队反诈民警陈思思通过线上讲座、互动交流、播放反电诈PPT等形式，介绍了诈骗分子惯用手法和作案方式，讲解了不良“校园贷”、“套路贷”、网络购物退款等针对学生的常见诈骗类型，并阐述了目前全市电信网络诈骗的发案特点和治理成效，提醒同学们牢记防范电信网络诈骗“四不”：不轻信、不透露、不链接、不转账，筑牢反诈防线，远离电信诈骗。</p><p>	南岗分局法制宣传员李嘉男通过播放PPT的方式，就毒品危害向同学们进行了详细讲解，让师生对目前迷惑性较强的新型毒品有了更为直观的认识。通过播放禁毒视频，让同学们更加深刻了解毒品对个人、家庭及社会的危害。提醒大家时刻保持清醒的头脑，从我做起，自觉远离和抵制毒品。</p><p>	据了解，为进一步增强全市中小学广大师生安全防范的意识和能力，哈尔滨市公安局在开学季重要时间节点，将先后举办线上专题宣讲、网络安全小课堂、网络答疑等系列活动，以“安全守护进校园”为主题，制作发布反诈、禁毒、消防、交通、防疫、校园安全等宣传视频片30余部，安全宣讲PPT课件20余部，为全市学校师生上了一堂堂生动详实的安全宣讲课。此外，社区民警还充分发挥“14+N”网群作用，将“开学第一课，新冠疫情知识篇”的PPT，在辖区内的各个微信群进行发布，让学生们充分认识疫情防控的重要性，同时了解到做好自我防护、需要注意的事项，如何主动配合学校工作人员和老师的工作。</p><p><br></p>','/api/upload/1565523096520097793.jpg',null);
insert into `article` values ('6','促爱国主义教育 香港举行“光影进校园”活动','学校','384','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p>新华社香港9月1日电(记者韦骅、张雅诗)为将优秀爱国爱港电影送至香港中小学，“光影进校园”系列活动1日在香港爱国教育支援中心举行启动仪式。</p><p><br></p><p>本次活动由紫荆文化集团、香港教育工作者联会(简称“香港教联会”)主办，爱国教育支援中心、银都机构有限公司承办。“光影进校园”遴选包括《我和我的祖国》《革命者》《妈妈的神奇小子》在内的10部优秀爱国爱港主题电影，面向全港中小学开展为期一年的公益放映，并配合香港特区政府教育局全年规划安排相关活动。</p><p>同时，紫荆文化集团和香港教联会还将同步推进“紫荆杯影评征文比赛”“紫荆电影大师课”“紫荆电影体验营”三项活动。</p><p>香港教联会会长黄均瑜表示，此次系列活动以崭新的教学方法提升爱国教育成效，期望通过电影的声、光、影深化学生对国家重要历史事件的认识，借此增强青少年对国家及民族的认同。</p><p>1日，是香港中小学开学日。特区政府教育局局长蔡若莲于开学前夕在社交媒体上表示，价值观教育十分重要，须培育学生增强国家观念、国民身份认同和民族自豪感，成为未来的社会栋梁、“一国两制”的接班人。教育局向学校发出了“国民教育——活动规划年历”，将重要日子结合校园日常生活，让同学感悟家国情怀。</p>','/api/upload/1565522840772411392.jpg',null);
insert into `article` values ('7','学校党委常委会开展专题学习','学校','751','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/73/56/bcc476a146f0813feabdda627b6f/e8d8583d-f28b-416a-a7cd-8ef9a077850d.jpg"></p><p class="ql-align-center">专题学习现场&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3月27日下午，学校党委常委会“第一议题”安排专题学习，传达学习习近平总书记在学校思想政治理论课教师座谈会上的重要讲话精神。校党政领导参加学习，组织部、宣传部、学工部、人事处、教务处、研究生工作部、马克思主义学院负责人列席会议。会议由校党委书记李大胜主持。&nbsp;&nbsp;&nbsp;&nbsp;</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/73/56/bcc476a146f0813feabdda627b6f/223e4492-b053-4952-b917-3e33f5250cfa.jpg"></p><p class="ql-align-center">李大胜书记讲话&nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李大胜书记在传达学习时强调，习近平总书记3月18日主持召开学校思想政治理论课教师座谈会并发表重要讲话，这是新中国成立以来党中央第一次召开的思想政治理论课教师座谈会，充分体现了以习近平同志为核心的党中央对学校思想政治理论课和思想政治工作的高度重视。李大胜传达学习了省委书记李希在主持召开学习贯彻习近平总书记关于学校思想政治理论课建设重要讲话精神座谈会上讲话精神。就学校如何学习贯彻习近平总书记重要讲话精神，李大胜提出4点意见：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一是理直气壮开好思政课，用习近平新时代中国特色社会主义思想铸魂育人。要深刻领会习近平总书记的讲话精神，把用习近平新时代中国特色社会主义思想铸魂育人作为思政课的核心任务，增强办好思政课的责任感、使命感、荣誉感，落实好、完成好总书记和党中央交给我们的这项重要任务。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二是聚焦发挥教师的关键作用，努力建设一支高素质专业化思政课教师队伍。要牢牢把握“政治要强”这个首要标准，选优配强思政课教师队伍。更加关心、支持思政课教师的成长，按照“六要”标准提升思政课教师的素质和水平。按照“人类灵魂工程师”要求，加强对思政课教师的管理、监督和激励。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三是在坚持“八个相统一”上下功夫，推动思政课改革创新。要着眼于铸魂育人，把习近平新时代中国特色社会主义思想作为思政课的核心课程，坚持以增强思想性、理论性为改革创新的根本。着眼于触及心灵，着力增强课程的亲和力、针对性。坚持开门办课、多方借力，增强思政课实效，实现全员全程全方位育人。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四是采取切实措施，深入学习贯彻总书记讲话精神。要全方位抓好对讲话精神的学习，引导学校各级干部和思政课教师学深悟透精髓要义，切实把思想统一到总书记重要讲话精神上来。全面对标总书记关于办好思政课的要求，坚持问题导向，列出问题清单，及时出台贯彻落实习近平总书记重要讲话精神的实施意见和工作方案。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会上，校党委副书记钟仰进传达习近平总书记在学校思想政治理论课教师座谈会上重要讲话的主要精神和基本内容，与会人员共同学习领会习近平总书记重要讲话精神。（文/图 汪路勇）</p>','/api/upload/1601840088357011456.jpg',null);
insert into `article` values ('8','校领导参加“2022广东拉美友城交流日”活动','学校','57','0','2023-03-27 17:46:11.0','2023-03-27 17:46:11.0',null,null,null,'<p class="ql-align-justify">为进一步加深广东省与拉美国家友好城市的交流合作，12月8日上午，“2022广东拉美友城交流日”活动在江门市以线上线下相结合方式顺利举办。外交部拉美司、广东省外事办公室、江门市政府、中拉使领馆官员代表及粤拉友城官员代表等参加了会议。副校长仇荣亮代表我校和“中国—拉丁美洲农业教育科技创新联盟”（中拉联盟）参加活动并致辞。</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/1a/a0/46a9e2e3473cb39c8738b809fcb8/7c56f3a3-739a-4131-83f9-cd372379b66f.jpg" height="309" width="550"></p><p class="ql-align-justify">活动以“赓续友好纽带，共创发展机遇”为主题，由广东省外事办公室和江门市政府联合主办。广东省外办主任柳琛子、江门市市长吴晓晖、外交部拉美司副司长陈鲁宁及拉美领馆轮值主任哥伦比亚驻穗总领事埃尔南·巴尔加斯分别致辞。</p><p class="ql-align-center"><img src="https://zsjyc.scau.edu.cn/_upload/article/images/1a/a0/46a9e2e3473cb39c8738b809fcb8/c614aae9-3e7e-47f8-807b-aced505ab683.jpg" height="309" width="550"></p><p class="ql-align-justify">仇荣亮在致辞中重点介绍了我校和中拉联盟的基本情况，他指出中拉农业科教合作前景光明，我校将在中拉命运共同体框架下，聚焦数字农业、智慧农业和绿色农业理念，丰富“中文+农业”科教合作模式的内涵与实践，提高中拉农业科教合作的层次与水平，为深化平等互利、共同发展的中拉全面合作伙伴关系，为中拉农业科教事业的发展壮大贡献华农智慧和华农方案。</p><p class="ql-align-justify">据悉，由我校牵头组建的中拉联盟现有中拉15个国家的67个盟员单位，签订了40多份合作协议。联盟成立两年来，各项工作稳定推进，为中拉农业科教可持续发展做出了积极贡献。</p><p class="ql-align-justify">我校国际交流处相关负责人陪同参加了上述活动。</p><p><br></p>','/api/upload/1601839706180419584.jpg',null);
insert into `article_type` values ('1','100','学校','0',null,null,null,'2023-03-27 17:46:11.0','2023-03-27 17:46:11.0');
