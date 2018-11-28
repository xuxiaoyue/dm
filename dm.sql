set names utf8;
drop database if exists dm;
create database dm charset=utf8;
use dm;
#创建用户信息列表
create table dm_user(
    uid int primary key auto_increment,
    uname varchar(25),
    upwd varchar(32),
    sex int,
    birthday date,
    id_card varchar(24),
    phone varchar(20),
    email varchar(32),
    sit varchar(64)
) ;
insert into dm_user values(null,'dangdang',123456,1,'1990-5-5','511324199206050478','17380644589','240829631@qq.com','成都市金牛区春熙路');
insert into dm_user values(null,'许潇月',333333,1,'1992-5-5','511324199206090486','17380615693','240829683@qq.com','成都市新都区');
insert into dm_user values(null,'PEONY',111111,0,'2000-12-5','511324199206002000','17380614568','240829683@qq.com','成都市新都区');
#创建用户常用购票人信息
create table dm_user_info(
    id  int  primary key  auto_increment,
    uid int,
    uname varchar(25),
    id_card varchar(18),
    foreign key (uid ) references dm_user(uid)
) ;
insert into dm_user_info values(null,1,'小小',511478945612345678);
insert into dm_user_info values(null,1,'潇潇',512345665612345678);
insert into dm_user_info values(null,2,'李强',500478945612345678);
insert into dm_user_info values(null,2,'李晓',500478941111145678);
insert into dm_user_info values(null,2,'李玲',500478923232345678);
#创建用户浏览信息列表

#创建商品种类表
create table dm_product_family(
    
    family_id int primary key ,
    family_name varchar(32)
);
insert into dm_product_family values(1,'话剧歌剧');
insert into dm_product_family values(2,'音乐会');
insert into dm_product_family values(3,'曲苑杂坛');
insert into dm_product_family values(4,'演唱会');
insert into dm_product_family values(5,'度假休闲');
insert into dm_product_family values(6,'舞蹈芭蕾');
insert into dm_product_family values(7,'体育比赛');
insert into dm_product_family values(8,'周边商品');
insert into dm_product_family values(9,'儿童亲子');
insert into dm_product_family values(10,'动漫');
insert into dm_product_family values(11,'旅游展览');
insert into dm_product_family values(12,'旅游演艺');
#创建商品详细信息
create table dm_product_search(
    pid int primary key auto_increment,
    title varchar(32),
    details varchar(16),
     p_time varchar(32),
     place varchar(32),
     price varchar(16),
     zt varchar(16),
     pic varchar(64),
     href varchar(64),
     city varchar(16),
     family_id int,
     dz int,  #点赞数
     foreign key ( family_id ) references dm_product_family(family_id)    
);
insert into dm_product_search values(null,'【深圳】2018深圳草莓音乐节','草莓音乐节','2018.12.08-12.09','华润深圳湾体育中心“春茧”体育场 - 深圳','280-520','预定','img/167315_n.jpg','http:127.0.0.1:3000/167315.html','深圳',2,0);
insert into dm_product_search values(null,'【重庆】重庆格力20周年庆 汪峰2018“就这样”巡回演唱会-重庆站','艺人: 汪峰','2018.12.15','重庆国际博览中心中央大厅(四面台) - 重庆','380-1680','售票中','img/167843_n.jpg','http:127.0.0.1:3000/167843.html','重庆',2,0);
insert into dm_product_search values(null,'
【北京】【霸王票】1元购买5元优惠券！赢霸王票抽奖机会爽一年','用户仅需支付1元即可参与本活动','大麦网北京站 - 北京','2018.12.08-12.09','280-520','售票中','img/167269_n.jpg','http:127.0.0.1:3000/167269.html','北京',11,0);
insert into dm_product_search values(null,'【金华】2018 王力宏“龙的传人2060” 世界巡回演唱会-金华站','艺人: 王力宏','2018.12.08','金华市体育中心体育场 - 金华','280-1280','售票中','img/167146_n.jpg','http:127.0.0.1:3000/167146.html','金华',2,0);
insert into dm_product_search values(null,'【深圳】2018大鹏金沙湾沙滩音乐现场','艺人: 二手玫瑰、后海大鲨鱼、林宥嘉、吹波糖、南征北战NZBZ','2018.12.01','佳兆业金沙湾国际乐园 - 深圳','166-260','预定','img/166947_n.jpg','http:127.0.0.1:3000/166947.html','深圳',2,0);
insert into dm_product_search values(null,'【沈阳】2018-2019赛季辽宁衡润飞豹男篮常规赛单场票','辽宁衡润飞豹男篮常规赛单场票','2018.10.21-2019.03.13','辽宁体育馆(奥体中心西侧) - 沈阳','80-880','售票中','img/165799_n.jpg','http:127.0.0.1:3000/165799.html','沈阳',7,0);
insert into dm_product_search values(null,'【深圳】陈绮贞20周年演唱会－漫漫长夜 Cheer 20','艺人: 陈绮贞','2019.03.23','华润深圳湾体育中心“春茧”体育场 - 深圳','280-520','预定','img/167399_n.jpg','http:127.0.0.1:3000/167399.html','深圳',2,0);
insert into dm_product_search values(null,'【东莞】2018-2019赛季CBA常规赛广东东莞银行主场','2018-2019赛季CBA常规赛广东东莞银行主场','2018.11.14-2019.03.10','东风日产文体中心（东莞篮球中心） - 东莞','100-1200','售票中','img/166028_n.jpg','http:127.0.0.1:3000/166028.html','深圳',2,0);
insert into dm_product_search values(null,'【北京】《贝莉缇之夜北京德云社“己亥”伊始开箱相声专场演出》','艺人: 郭德纲、于谦','2019.02.19 19:30','北京展览馆剧场 - 北京','280-1800','售票中','img/167417_n.jpg','http:127.0.0.1:3000/167417.html','北京',3,0);
insert into dm_product_search values(null,'【上海】京剧麒派专场 新浪潮戏曲节 上海','艺人: 郭德纲','2018.12.24-12.25','兰心大戏院 - 上海','80-880','售票中','img/167928_n.jpg','http:127.0.0.1:3000/167928.html','上海',3,0);
insert into dm_product_search values(null,'【上海】2018咪咕音乐现场杨乃文“Fearless 无惧”上海站','艺人: 杨乃文','2018.12.14','喜玛拉雅艺术中心-大观舞台 - 上海','480-880','售票中','img/168014_n.jpg','http:127.0.0.1:3000/168014.html','上海',2,0);
insert into dm_product_search values(null,'【广州】2018咪咕音乐现场广州站郭静专场','艺人: 郭静','2018.12.15 19:30','中央车站展演中心 - 广州','280-480','售票中','img/168166_n.jpg','http:127.0.0.1:3000/168166.html','广州',2,0);
insert into dm_product_search values(null,'【北京】维也纳之音--2019新年音乐会','维也纳之音--2019新年音乐会','2018.12.31','北京饭店金色大厅 - 北京','108-2400','售票中','img/167829_n.jpg','http:127.0.0.1:3000/167829.html','北京',2,0);
insert into dm_product_search values(null,'【北京】第23届北京新年音乐会','国内历史长、影响力大、知名度高、最具国际影响力的新年音乐会。','2018.12.31 19:30','人民大会堂 - 北京','180-2019','预定','img/167975_n.jpg','http:127.0.0.1:3000/167975.html','北京',2,0);
insert into dm_product_search values(null,'【北京】开心麻花2019爆笑贺岁舞台剧《窗前不止明月光》','选举夜，风流案，骗子开派对','2018.10.18-11.18','地质礼堂剧场 - 北京','80-1088','售票中','img/162901_n.jpg','http:127.0.0.1:3000/162901.html','北京',1,0);
insert into dm_product_search values(null,'【北京】德云社《北京相声大会》——德云社南京分社','面向百姓，服务工薪”，也是我们的经营宗旨，每天演出精彩不断，以低廉的票价、优质的服务、让中外游客了解传统文化，感受现代风情。','常年','南京德云社剧场 - 南京','30-1500','售票中','img/78089_n.jpg','http:127.0.0.1:3000/78089.html','北京',3,0);
insert into dm_product_search values(null,'【北京】2018中国足球协会超级联赛大连一方主场赛事（单场票）','大连足球时隔三年重回顶 级联赛，我就喜欢大连赢！','2018.11.11','大连体育中心体育场 - 大连','60-80','售票中','img/144809_n.jpg','http:127.0.0.1:3000/144809.html','大连',7,0);
insert into dm_product_search values(null,'【上海】2018-2019赛季CBA上海哔哩哔哩篮球队常规赛主场比赛','上海哔哩哔哩篮球队常规赛主场','2018.10.25-2019.3.13','上海源深体育馆 - 上海','48-380','售票中','img/162119_n.jpg','http:127.0.0.1:3000/162119.html','上海',7,0);
insert into dm_product_search values(null,'【广州】2018广东双城超级草莓音乐节广州站 暨长隆度假区岁末狂欢派对','近百组音乐人和乐队……','2018.12.08-12.09','广州长隆欢乐世界8号停车场 - 广州','280-520','预定','img/160529_n.jpg','http:127.0.0.1:3000/160529.html','广州',2,0);
insert into dm_product_search values(null,'【广州】洪卓立拉阔演唱会','艺人: 洪卓立','2018.12.29 20:00','广州体育馆2号馆 - 广州','380-580','预定','img/166179_n.jpg','http:127.0.0.1:3000/166179.html','广州',2,0);
insert into dm_product_search values(null,'【北京】英文原版音乐剧《芝加哥》','音乐剧《芝加哥》','2018.11.01-11.18','天桥艺术中心-大剧场 - 北京','100-1180','售票中','img/152109_n.jpg','http:127.0.0.1:3000/152109.html','北京',2,0);
insert into dm_product_search values(null,'【深圳】2018深圳草莓音乐节','两大会场，七个舞台','2018.12.08-12.09','华润深圳湾体育中心“春茧”体育场 - 深圳','280-520','预定','img/167315_n.jpg','http:127.0.0.1:3000/167315.html','深圳',2,0);
insert into dm_product_search values(null,'【重庆】重庆格力20周年庆 汪峰2018“就这样”巡回演唱会-重庆站','艺人: 汪峰','2018.12.15','重庆国际博览中心中央大厅(四面台) - 重庆','380-1680','售票中','img/167843_n.jpg','http:127.0.0.1:3000/167843.html','重庆',2,0);
insert into dm_product_search values(null,'
【北京】【霸王票】1元购买5元优惠券！赢霸王票抽奖机会爽一年','用户仅需支付1元即可参与本活动','大麦网北京站 - 北京','2018.12.08-12.09','280-520','售票中','img/167269_n.jpg','http:127.0.0.1:3000/167269.html','北京',11,0);
insert into dm_product_search values(null,'【金华】2018 王力宏“龙的传人2060” 世界巡回演唱会-金华站','艺人: 王力宏','2018.12.08','金华市体育中心体育场 - 金华','280-1280','售票中','img/167146_n.jpg','http:127.0.0.1:3000/167146.html','金华',2,0);
insert into dm_product_search values(null,'【深圳】2018大鹏金沙湾沙滩音乐现场','艺人: 二手玫瑰、后海大鲨鱼、林宥嘉、吹波糖、南征北战NZBZ','2018.12.01','佳兆业金沙湾国际乐园 - 深圳','166-260','预定','img/166947_n.jpg','http:127.0.0.1:3000/166947.html','深圳',2,0);
insert into dm_product_search values(null,'【沈阳】2018-2019赛季辽宁衡润飞豹男篮常规赛单场票','辽宁衡润飞豹男篮常规赛单场票','2018.10.21-2019.03.13','辽宁体育馆(奥体中心西侧) - 沈阳','80-880','售票中','img/165799_n.jpg','http:127.0.0.1:3000/165799.html','沈阳',7,0);
insert into dm_product_search values(null,'【深圳】陈绮贞20周年演唱会－漫漫长夜 Cheer 20','艺人: 陈绮贞','2019.03.23','华润深圳湾体育中心“春茧”体育场 - 深圳','280-520','预定','img/167399_n.jpg','http:127.0.0.1:3000/167399.html','深圳',2,0);
insert into dm_product_search values(null,'【东莞】2018-2019赛季CBA常规赛广东东莞银行主场','2018-2019赛季CBA常规赛广东东莞银行主场','2018.11.14-2019.03.10','东风日产文体中心（东莞篮球中心） - 东莞','100-1200','售票中','img/166028_n.jpg','http:127.0.0.1:3000/166028.html','深圳',2,0);
insert into dm_product_search values(null,'【北京】《贝莉缇之夜北京德云社“己亥”伊始开箱相声专场演出》','艺人: 郭德纲、于谦','2019.02.19 19:30','北京展览馆剧场 - 北京','280-1800','售票中','img/167417_n.jpg','http:127.0.0.1:3000/167417.html','北京',3,0);
insert into dm_product_search values(null,'【上海】京剧麒派专场 新浪潮戏曲节 上海','艺人: 郭德纲','2018.12.24-12.25','兰心大戏院 - 上海','80-880','售票中','img/167928_n.jpg','http:127.0.0.1:3000/167928.html','上海',3,0);
insert into dm_product_search values(null,'【上海】2018咪咕音乐现场杨乃文“Fearless 无惧”上海站','艺人: 杨乃文','2018.12.14','喜玛拉雅艺术中心-大观舞台 - 上海','480-880','售票中','img/168014_n.jpg','http:127.0.0.1:3000/168014.html','上海',2,0);
insert into dm_product_search values(null,'【广州】2018咪咕音乐现场广州站郭静专场','艺人: 郭静','2018.12.15 19:30','中央车站展演中心 - 广州','280-480','售票中','img/168166_n.jpg','http:127.0.0.1:3000/168166.html','广州',2,0);
insert into dm_product_search values(null,'【北京】维也纳之音--2019新年音乐会','维也纳之音--2019新年音乐会','2018.12.31','北京饭店金色大厅 - 北京','108-2400','售票中','img/167829_n.jpg','http:127.0.0.1:3000/167829.html','北京',2,0);
insert into dm_product_search values(null,'【北京】第23届北京新年音乐会','国内历史长、影响力大、知名度高、最具国际影响力的新年音乐会。','2018.12.31 19:30','人民大会堂 - 北京','180-2019','预定','img/167975_n.jpg','http:127.0.0.1:3000/167975.html','北京',2,0);
insert into dm_product_search values(null,'【北京】开心麻花2019爆笑贺岁舞台剧《窗前不止明月光》','选举夜，风流案，骗子开派对','2018.10.18-11.18','地质礼堂剧场 - 北京','80-1088','售票中','img/162901_n.jpg','http:127.0.0.1:3000/162901.html','北京',1,0);
insert into dm_product_search values(null,'【北京】德云社《北京相声大会》——德云社南京分社','面向百姓，服务工薪”，也是我们的经营宗旨，每天演出精彩不断，以低廉的票价、优质的服务、让中外游客了解传统文化，感受现代风情。','常年','南京德云社剧场 - 南京','30-1500','售票中','img/78089_n.jpg','http:127.0.0.1:3000/78089.html','北京',3,0);
insert into dm_product_search values(null,'【北京】2018中国足球协会超级联赛大连一方主场赛事（单场票）','大连足球时隔三年重回顶 级联赛，我就喜欢大连赢！','2018.11.11','大连体育中心体育场 - 大连','60-80','售票中','img/144809_n.jpg','http:127.0.0.1:3000/144809.html','大连',7,0);
insert into dm_product_search values(null,'【上海】2018-2019赛季CBA上海哔哩哔哩篮球队常规赛主场比赛','上海哔哩哔哩篮球队常规赛主场','2018.10.25-2019.3.13','上海源深体育馆 - 上海','48-380','售票中','img/162119_n.jpg','http:127.0.0.1:3000/162119.html','上海',7,0);
insert into dm_product_search values(null,'【广州】2018广东双城超级草莓音乐节广州站 暨长隆度假区岁末狂欢派对','近百组音乐人和乐队……','2018.12.08-12.09','广州长隆欢乐世界8号停车场 - 广州','280-520','预定','img/160529_n.jpg','http:127.0.0.1:3000/160529.html','广州',2,0);
insert into dm_product_search values(null,'【广州】洪卓立拉阔演唱会','艺人: 洪卓立','2018.12.29 20:00','广州体育馆2号馆 - 广州','380-580','预定','img/166179_n.jpg','http:127.0.0.1:3000/166179.html','广州',2,0);
insert into dm_product_search values(null,'【北京】英文原版音乐剧《芝加哥》','音乐剧《芝加哥》','2018.11.01-11.18','天桥艺术中心-大剧场 - 北京','100-1180','售票中','img/152109_n.jpg','http:127.0.0.1:3000/152109.html','北京',2,0);
insert into dm_product_search values(null,'【深圳】2018深圳草莓音乐节','两大会场，七个舞台','2018.12.08-12.09','华润深圳湾体育中心“春茧”体育场 - 深圳','280-520','预定','img/167315_n.jpg','http:127.0.0.1:3000/167315.html','深圳',2,0);
insert into dm_product_search values(null,'【重庆】重庆格力20周年庆 汪峰2018“就这样”巡回演唱会-重庆站','艺人: 汪峰','2018.12.15','重庆国际博览中心中央大厅(四面台) - 重庆','380-1680','售票中','img/167843_n.jpg','http:127.0.0.1:3000/167843.html','重庆',2,0);
insert into dm_product_search values(null,'
【北京】【霸王票】1元购买5元优惠券！赢霸王票抽奖机会爽一年','用户仅需支付1元即可参与本活动','大麦网北京站 - 北京','2018.12.08-12.09','280-520','售票中','img/167269_n.jpg','http:127.0.0.1:3000/167269.html','北京',11,0);
insert into dm_product_search values(null,'【金华】2018 王力宏“龙的传人2060” 世界巡回演唱会-金华站','艺人: 王力宏','2018.12.08','金华市体育中心体育场 - 金华','280-1280','售票中','img/167146_n.jpg','http:127.0.0.1:3000/167146.html','金华',2,0);
insert into dm_product_search values(null,'【深圳】2018大鹏金沙湾沙滩音乐现场','艺人: 二手玫瑰、后海大鲨鱼、林宥嘉、吹波糖、南征北战NZBZ','2018.12.01','佳兆业金沙湾国际乐园 - 深圳','166-260','预定','img/166947_n.jpg','http:127.0.0.1:3000/166947.html','深圳',2,0);
insert into dm_product_search values(null,'【沈阳】2018-2019赛季辽宁衡润飞豹男篮常规赛单场票','辽宁衡润飞豹男篮常规赛单场票','2018.10.21-2019.03.13','辽宁体育馆(奥体中心西侧) - 沈阳','80-880','售票中','img/165799_n.jpg','http:127.0.0.1:3000/165799.html','沈阳',7,0);
insert into dm_product_search values(null,'【深圳】陈绮贞20周年演唱会－漫漫长夜 Cheer 20','艺人: 陈绮贞','2019.03.23','华润深圳湾体育中心“春茧”体育场 - 深圳','280-520','预定','img/167399_n.jpg','http:127.0.0.1:3000/167399.html','深圳',2,0);
insert into dm_product_search values(null,'【东莞】2018-2019赛季CBA常规赛广东东莞银行主场','2018-2019赛季CBA常规赛广东东莞银行主场','2018.11.14-2019.03.10','东风日产文体中心（东莞篮球中心） - 东莞','100-1200','售票中','img/166028_n.jpg','http:127.0.0.1:3000/166028.html','深圳',2,0);
insert into dm_product_search values(null,'【北京】《贝莉缇之夜北京德云社“己亥”伊始开箱相声专场演出》','艺人: 郭德纲、于谦','2019.02.19 19:30','北京展览馆剧场 - 北京','280-1800','售票中','img/167417_n.jpg','http:127.0.0.1:3000/167417.html','北京',3,0);
insert into dm_product_search values(null,'【上海】京剧麒派专场 新浪潮戏曲节 上海','艺人: 郭德纲','2018.12.24-12.25','兰心大戏院 - 上海','80-880','售票中','img/167928_n.jpg','http:127.0.0.1:3000/167928.html','上海',3,0);
insert into dm_product_search values(null,'【上海】2018咪咕音乐现场杨乃文“Fearless 无惧”上海站','艺人: 杨乃文','2018.12.14','喜玛拉雅艺术中心-大观舞台 - 上海','480-880','售票中','img/168014_n.jpg','http:127.0.0.1:3000/168014.html','上海',2,0);
insert into dm_product_search values(null,'【广州】2018咪咕音乐现场广州站郭静专场','艺人: 郭静','2018.12.15 19:30','中央车站展演中心 - 广州','280-480','售票中','img/168166_n.jpg','http:127.0.0.1:3000/168166.html','广州',2,0);
insert into dm_product_search values(null,'【北京】维也纳之音--2019新年音乐会','维也纳之音--2019新年音乐会','2018.12.31','北京饭店金色大厅 - 北京','108-2400','售票中','img/167829_n.jpg','http:127.0.0.1:3000/167829.html','北京',2,0);
insert into dm_product_search values(null,'【北京】第23届北京新年音乐会','国内历史长、影响力大、知名度高、最具国际影响力的新年音乐会。','2018.12.31 19:30','人民大会堂 - 北京','180-2019','预定','img/167975_n.jpg','http:127.0.0.1:3000/167975.html','北京',2,0);
insert into dm_product_search values(null,'【北京】开心麻花2019爆笑贺岁舞台剧《窗前不止明月光》','选举夜，风流案，骗子开派对','2018.10.18-11.18','地质礼堂剧场 - 北京','80-1088','售票中','img/162901_n.jpg','http:127.0.0.1:3000/162901.html','北京',1,0);
insert into dm_product_search values(null,'【北京】德云社《北京相声大会》——德云社南京分社','面向百姓，服务工薪”，也是我们的经营宗旨，每天演出精彩不断，以低廉的票价、优质的服务、让中外游客了解传统文化，感受现代风情。','常年','南京德云社剧场 - 南京','30-1500','售票中','img/78089_n.jpg','http:127.0.0.1:3000/78089.html','北京',3,0);
insert into dm_product_search values(null,'【北京】2018中国足球协会超级联赛大连一方主场赛事（单场票）','大连足球时隔三年重回顶 级联赛，我就喜欢大连赢！','2018.11.11','大连体育中心体育场 - 大连','60-80','售票中','img/144809_n.jpg','http:127.0.0.1:3000/144809.html','大连',7,0);
insert into dm_product_search values(null,'【上海】2018-2019赛季CBA上海哔哩哔哩篮球队常规赛主场比赛','上海哔哩哔哩篮球队常规赛主场','2018.10.25-2019.3.13','上海源深体育馆 - 上海','48-380','售票中','img/162119_n.jpg','http:127.0.0.1:3000/162119.html','上海',7,0);
insert into dm_product_search values(null,'【广州】2018广东双城超级草莓音乐节广州站 暨长隆度假区岁末狂欢派对','近百组音乐人和乐队……','2018.12.08-12.09','广州长隆欢乐世界8号停车场 - 广州','280-520','预定','img/160529_n.jpg','http:127.0.0.1:3000/160529.html','广州',2,0);
insert into dm_product_search values(null,'【广州】洪卓立拉阔演唱会','艺人: 洪卓立','2018.12.29 20:00','广州体育馆2号馆 - 广州','380-580','预定','img/166179_n.jpg','http:127.0.0.1:3000/166179.html','广州',2,0);
insert into dm_product_search values(null,'【北京】英文原版音乐剧《芝加哥》','音乐剧《芝加哥》','2018.11.01-11.18','天桥艺术中心-大剧场 - 北京','100-1180','售票中','img/152109_n.jpg','http:127.0.0.1:3000/152109.html','北京',2,0);
#创建商品价格及时间信息列表
create table dm_product_info(
    pid int ,
     p_time varchar(32),
    p_price varchar(32),
    p_zs int,  #票数
    foreign key (  pid ) references dm_product_search(pid )   
);
insert into dm_product_info values(1,'2018-12-08周六14:00','预售单日票280元',30);
insert into dm_product_info values(1,'2018-12-08周六14:00','PRO单日票280元',0);
insert into dm_product_info values(1,'2018-12-09周日14:00','预售单日票280元',30);
insert into dm_product_info values(1,'2018-12-08周日14:00','PRO单日票280元',20);
insert into dm_product_info values(2,'2018-12-15周六20:00','380',0);
insert into dm_product_info values(2,'2018-12-15周六20:00','580',20);
insert into dm_product_info values(2,'2018-12-15周六20:00','880',20);
insert into dm_product_info values(2,'2018-12-15周六20:00','1280',20);
insert into dm_product_info values(2,'2018-12-15周六20:00','1680',20);
#创建订单详情表
create table dm_shopingcart_item(
    uid int,
    pid int,
    count int,
    foreign key (uid ) references dm_user(uid) 
);
insert into dm_shopingcart_item values(1,1,3);
insert into dm_shopingcart_item values(2,1,1);
insert into dm_shopingcart_item values(2,2,2);

