SET NAMES UTF8;
DROP DATABASE IF EXISTS jiaju;
CREATE DATABASE jiaju CHARSET=UTF8;
USE jiaju;

/*用户信息*/
CREATE TABLE jiaju_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(100),
  email VARCHAR(64),
  phone VARCHAR(16)
);

/*首页轮播图*/
CREATE TABLE shouye_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/*首页图文列表*/
CREATE TABLE shouye_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  tag VARCHAR(64)     #文章标签
);

/*首页广告图文*/
CREATE TABLE shouye_guanggaotuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img1 VARCHAR(128),
  img2 VARCHAR(128),
  img3 VARCHAR(128),
  title VARCHAR(128)
);

/*设计页面轮播*/
CREATE TABLE sheji_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*设计页面图文列表*/
CREATE TABLE sheji_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  tag VARCHAR(64)     #文章标签
);

/*装修页面轮播*/
CREATE TABLE zhuangxiu_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*装修页面图文列表*/
CREATE TABLE zhuangxiu_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  tag VARCHAR(64)     #文章标签
);

/*装饰页面轮播*/
CREATE TABLE zhuangshi_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*装饰页面图文列表*/
CREATE TABLE zhuangshi_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  tag VARCHAR(64)     #文章标签
);

/*生活页面轮播*/
CREATE TABLE life_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*生活页面图文列表*/
CREATE TABLE life_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  tag VARCHAR(64)     #文章标签
);

/*评测页面轮播*/
CREATE TABLE review_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*评测页面图文列表*/
CREATE TABLE review_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  tag VARCHAR(64)     #文章标签
);

/*视频页面轮播*/
CREATE TABLE video_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  time VARCHAR(64),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*视频页面图文列表*/
CREATE TABLE video_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  tag VARCHAR(64),     #文章标签
  time VARCHAR(128)    #时间
);

/**专题页面图文列表*/
CREATE TABLE special_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128)  #标题
);
/*试用页面图文列表*/
CREATE TABLE trial_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  quota VARCHAR(32) ,      #名额
  applying  VARCHAR(32),   #申请
  report VARCHAR(64)     #查看报告
);
/*品牌库页面轮播*/
CREATE TABLE brand_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*品牌库页面建材列表*/
CREATE TABLE brand_material(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  price DECIMAL(10,2),       #名额
  original  DECIMAL(10,2)   #原价
);
/*品牌库页面家具列表*/
CREATE TABLE brand_furniture(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  price DECIMAL(10,2),       #名额
  original  DECIMAL(10,2)   #原价
);
/*品牌库页面软装列表*/
CREATE TABLE brand_soft(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  price DECIMAL(10,2),       #名额
  original  DECIMAL(10,2)   #原价
);
/*问答页面图文列表*/
CREATE TABLE wenda_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(128), #标题
  article VARCHAR(128) #文章
);
/*问答页面问答列表*/
CREATE TABLE aquestions_tuwen(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128), #标题
  tag VARCHAR(64),     #文章标签
  reply VARCHAR(16)  #回复
);

/**品牌大全页面*/
CREATE TABLE brand_alllogo(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  titlename VARCHAR(128)
);
CREATE TABLE brand_jiancai(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  titlename VARCHAR(128)
);
CREATE TABLE brand_jiaju(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  titlename VARCHAR(128)
);
CREATE TABLE brand_ruanzhuang(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  titlename VARCHAR(128)
);
CREATE TABLE brand_jiadian(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  titlename VARCHAR(128)
);

/*宜家宜居页面*/
/*综合页面*/
CREATE TABLE livable_zonghe (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128),
  price DECIMAL(5,2)
);
CREATE TABLE livable_zonghewenzhang (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128),
  tag2 VARCHAR(64),
  time DATE
);
CREATE TABLE livable_zonghezhuanti (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title1 VARCHAR(128),
  tag VARCHAR(128),
  title2 VARCHAR(128),
  tag2 VARCHAR(64),
  time DATE 
);
CREATE TABLE livable_zonghetupian (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128)
);
CREATE TABLE livable_zongheshipin (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128),
  tag2 VARCHAR(64),
  atime VARCHAR(64)
);
/*产品页*/
CREATE TABLE livable_chanpin (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128),
  price DECIMAL(5,2) 
);
/*文章页*/
CREATE TABLE livable_wenzhang (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128),
  tag2 VARCHAR(64),
  time DATE 
);
/*专题页*/
CREATE TABLE livable_zhuanti (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title1 VARCHAR(128),
  tag VARCHAR(128),
  title2 VARCHAR(128),
  tag2 VARCHAR(64),
  time DATE 
);
/*图片页*/
CREATE TABLE livable_tupian (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128)
);
/*视频页*/
CREATE TABLE livable_shipin (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  tag VARCHAR(128),
  title VARCHAR(128),
  tag2 VARCHAR(64),
  atime INT 
);

INSERT INTO jiaju_user VALUES(null,'musheng',md5('123456'),'643416323@qq.com','13318737887');

-- 首页轮播图
INSERT INTO `shouye_carousel` (`cid`,`img`,`title`,`href`) VALUES
(1,'1.jpg',NULL,NULL),
(2,'2.jpg',NULL,NULL),
(3,'3.jpg',NULL,NULL),
(4,'4.jpg',NULL,NULL),
(5,'5.jpg',NULL,NULL);

-- 首页图文
INSERT INTO `shouye_tuwen` (`cid`,`img`,`title`,`tag`) VALUES
(1,'sytuwen1.jpg','66狂欢购 1元预定秒杀价','整屋案例'),
(2,'sytuwen2.jpg','艾芬达618品牌钜惠狂欢购，抗霉远潮',NULL),
(3,'sytuwen3.jpg','在家里享自然森呼吸，绿色生活新态度','家居百搭推荐'),
(4,'sytuwen4.jpg','不想在垃圾堆里做干湿分离？你需要它们','家居日用'),
(5,'sytuwen5.jpg','值得回购的H&amp;M家居好物，抓紧来一波提升家居质感！','搭配-家居生活'),
(6,'sytuwen6.jpg','入手几件东南亚风小物，小清新鼻祖都要甘拜下风','搭配-家居生活'),
(7,'sytuwen7.jpg','李想新作：MELAND CLUB突破想象的梦幻国度','作品库'),
(8,'sytuwen8.jpg','时间与风丨风在流动，让光阴可以被保留','整屋案例'),
(9,'sytuwen9.jpg','方磊新作|苏州常熟中南林樾香庭188 ㎡样板间','作品库');

-- 首页广告图文
INSERT INTO `shouye_guanggaotuwen` (`cid`,`img1`,`img2`,`img3`,`title`) VALUES
(1,'1080.jpg','1081.jpg','1082.jpg','精致线条&amp;温柔色彩，大男孩的家也可以很治愈'),
(2,'1083.jpg','1084.jpg','1085.jpg','李想作品：龙格亲子游泳俱乐部'),
(3,'1086.jpg','1087.jpg','1088.jpg','将每一寸面积利用最大化，体验另一种生活的可能');

/*设计页面*/
INSERT INTO `sheji_carousel` (`cid`,`img`,`title`,`href`) VALUES
(1,'sjcarousel1.jpg','设计榜样丨静享悠然生活 临海而居的素雅现代设计',null),
(2,'sjcarousel2.jpg','设计与艺术共生 有色彩的地方就有嘉宝莉',null),
(3,'sjcarousel3.jpg','《城市生活家》| 青城山下倾城·慢 理想之地即是生活家',null);

INSERT INTO `sheji_tuwen` (`cid`,`img`,`title`,`tag`) VALUES
(1,'thumb1.jpg','设计好时光，曲美家居以旧换新第七季开启啦！','设计动态'),
(2,'thumb2.jpg','刘荣禄新作：超美学设计 | 造梦空间Cabbeen Love','作品库'),
(3,'thumb3.jpg','潘冉新作|长物之宅 九月森林四期样板单元','作品库'),
(4,'thumb4.jpg','设计师王晨：养老设计进化论(一)','设计动态'),
(5,'thumb5.jpg','李想作品：龙格亲子游泳俱乐部','作品库'),
(6,'thumb6.jpg','李想新作：MELAND CLUB突破想象的梦幻国度','作品库'),
(7,'thumb7.jpg','我爱你！一封迟来的2018广州设计周告白信','设计动态'),
(8,'thumb8.jpg','方磊新作|苏州常熟中南林樾香庭188 ㎡样板间','作品库'),
(9,'thumb9.jpg','瀚观设计 | 改造台湾市区30年老屋成最美栖身处','作品库'),
(10,'thumb10.jpg','魅无界设计丨在3000㎡别墅中，聆享优雅法式生活意境','作品库');

/*装修页面*/
INSERT INTO `zhuangxiu_carousel` (`cid`,`img`,`title`,`href`) VALUES
(1,'zxcarousel1.jpg','没有杂木异味？原来是竹香板起作用了',null),
(2,'zxcarousel2.jpg','空间与容量如何兼得?西门子冰箱评测',null),
(3,'zxcarousel3.jpg','室内更须警惕空气污染 中高端空净产品实测推荐',null);
INSERT INTO `zhuangxiu_tuwen` (`cid`,`img`,`title`,`tag`) VALUES
(1,'3010.jpg','调整装修心态 理清装修需求','了解装修'),
(2,'3011.jpg','明确预期效果 选择装修风格','了解装修'),
(3,'3012.jpg','选择最合适的装修方式','了解装修'),
(4,'3013.jpg','看装修支出项 做好资金准备','了解装修'),
(5,'3014.jpg','百位装修网友踩过的“坑”，千万要注意！','装修技巧'),
(6,'3015.jpg','家居1分钟：真皮沙发如何选购？','家居1分钟'),
(7,'3016.jpg','德国菲斯曼支招采暖系统安装 11步打造舒适的家','装修技巧'),
(8,'3017.jpg','装修槽点千万条 哪个让你最想吐槽','装修技巧'),
(9,'3018.jpg','小小阳台打造绿意花园，照看植物很简单','装修技巧'),
(10,'3019.jpg','该如何拯救你? 我家的破旧老墙','装修技巧'),
(11,'3020.jpg','卫生间吊顶安装步步为营 这些装修步骤不得不知','装修流程'),
(12,'3021.jpg','电视背景墙的常见误区 你中了几个?','装修技巧'),
(13,'3022.jpg','家居1分钟：小生活大智慧|锡纸的妙用','装修1分钟'),
(14,'3023.jpg','多乐士焕新服务 上海宜川路案例','家居装修效果图'),
(15,'3024.jpg','多乐士焕新服务 马桥万科城案例','家居装修效果图'),
(16,'3025.jpg','多乐士焕新服务 上海陆家浜路案例','家居装修效果图'),
(17,'3026.jpg','多乐士焕新服务  南通万科案例','家居装修效果图'),
(18,'3027.jpg','多乐士焕新服务  南京中华广场案例','家居装修效果图'),
(19,'3028.jpg','多乐士焕新服务  上海闵行腾冲路案例','家居装修效果图'),
(20,'3029.jpg','多乐士焕新服务  上海马桥万科城案例','家居装修效果图'),
(21,'3030.jpg','多乐士焕新服务  南京江东北路案例','家居装修效果图'),
(22,'3031.jpg','多乐士焕新服务  上海羽山路案例','家居装修效果图'),
(23,'3032.jpg','多乐士焕新服务  东明路案例','家居装修效果图'),
(24,'3033.jpg','多乐士焕新服务  华山路案例','家居装修效果图'),
(25,'3034.jpg','家居燃气管道改造注意事项','结构拆改'),
(26,'3035.jpg','卫浴浴缸安装施工','瓦工工程'),
(27,'3036.jpg','瓷砖铺贴施工注意事项','瓦工工程');


/*装饰页面*/
INSERT INTO `zhuangshi_carousel` (`cid`,`img`,`title`,`href`) VALUES
(1,'zscarousel1.jpg','那片海，这栋楼——民宿主理人鸽子的诗和远方',null),
(2,'zscarousel2.jpg','《城市生活家》| 青城山下倾城·慢 理想之地即是生活家',null),
(3,'zscarousel3.jpg','重新定义淋浴房极简的真正标准',null);

INSERT INTO `zhuangshi_tuwen` (`cid`,`img`,`title`,`tag`) VALUES
(1,'10201.jpg','夏日烦闷？为家居增添一抹白，清爽好看不出错','搭配-家居生活'),
(2,'10202.jpg','除了宜家、MUJI，还有哪些高颜值家居品牌值得买?','搭配-家居生活'),
(3,'10203.jpg','值得回购N次的H&amp;M家居好物，抓紧来一波提升家居质感！','搭配-家居生活'),
(4,'10204.jpg','入手几件东南亚风小物，小清新鼻祖都要甘拜下风','搭配-家居生活'),
(5,'10205.jpg','两种速成法，瞬间提升家的艺术感！','搭配-家居生活'),
(6,'10206.jpg','在第99次被审美代沟气哭后，我研究出了适合父母的混搭风','搭配-家居生活'),
(7,'10207.jpg','父亲节送上它，老爸开心得像个两百斤的孩子……','搭配-家居生活'),
(8,'10208.jpg','单品推荐！教你打造一个和井柏然一样的家','搭配-家居生活'),
(9,'10209.jpg','食趣丨六件热门原木餐具，三餐秒变治愈杂志风','搭配-家居生活'),
(10,'10210.jpg','毕业租房季，花最少的预算搭配最舒适的家','搭配-家居生活'),
(11,'10211.jpg','时代科技与舒适家居 美女总裁的民宿体验之旅','生活故事'),
(12,'10212.jpg','民宿“改”造大不同 法国必维检测集团专业人士来支招Ⅱ','生活故事'),
(13,'10213.jpg','从老房子到茶室花园，过神仙眷侣的简单生活','家装案例'),
(14,'10214.jpg','民宿“改”造大不同 法国必维检测集团专业人士来支招','生活故事'),
(15,'10215.jpg','普乐美卫浴生活体验馆 设计美学的生活蓝图','搭配-家居生活'),
(16,'10216.jpg','那片海，这栋楼——民宿主理人鸽子的诗和远方','生活故事'),
(17,'10217.jpg','火爆的《都挺好》，少不了宜家神助攻','搭配-达人生活馆'),
(18,'10218.jpg','头等舱轻奢体验，精英小夫妻筑爱的理想家','生活故事'),
(19,'10219.jpg','安全放“芯” IT潮男的智能锁换新体验','生活故事'),
(20,'10220.jpg','7位生活家的特色家宴 激发新年灵感','生活故事'),
(21,'10221.jpg','去湿气益补佳肴 温暖软糯南瓜饭盅','生活故事'),
(22,'10222.jpg','酸甜好滋味 鲜虾茄酱意大利面','生活故事'),
(23,'10223.jpg','家常中式烤箱菜 五香口味烤肋排','生活故事'),
(24,'10224.jpg','冬季养生有道 营养美味烤杂蔬','生活故事'),
(25,'10225.jpg','不一样的美味 地中海式香料烤鱼','生活故事'),
(26,'10226.jpg','幸福过节心 梦幻白色系手捧花亲手做','生活故事'),
(27,'10227.jpg','一室之间的流光艺术 发现繁忙之外的新视界','家装案例'),
(28,'10228.jpg','“喵宠夫妻”除尘新体验 美好生活更“净”一步','生活故事'),
(29,'10229.jpg','我和我的小精灵们 “浴”见美标小精灵','家装案例'),
(30,'10230.jpg','有格调 品质范 美女主持的浪漫生活美学','生活故事');

/*生活页面*/
INSERT INTO `life_carousel` (`cid`,`img`,`title`,`href`) VALUES 
(1,'shcarousel1.jpg','原装进口芯 80后咖啡师的手艺进阶体验记',null),
(2,'shcarousel2.jpg','净享美味：海归美女主厨的魔幻厨房新体验',null),
(3,'shcarousel3.jpg','IN设计 | 自由搭随心配 卫浴间PLAY MATCH配趣新指南',null);
INSERT INTO `life_tuwen` (`cid`,`img`,`title`,`tag`) VALUES
(1,'10101.jpg','随时随地掌控浴室，告别夏季浴室闷湿臭','生活窍门'),
(2,'10102.jpg','脑洞大开！这些“特立独行”的家居好物还挺实用的……','生活窍门'),
(3,'10103.jpg','你绝对想不到，我是怎么榨干家里的最后1平米','生活窍门'),
(4,'10104.jpg','想在父亲节把对象领回家，老爸知道后气哭了……','生活窍门'),
(5,'10105.jpg','在厕所五分钟，我就忘了被剧透《复联4》的痛','生活窍门'),
(6,'10106.jpg','当民宿达人萱萱遇见“倾城·慢”民宿','生活咖'),
(7,'10107.jpg','民宿慢生活 设计师娟子的色彩体验','生活咖'),
(8,'10108.jpg','畅享舒适 旅游达人Sasa的民宿体验之旅','生活咖'),
(9,'10109.jpg','美食新妙招 达人小满的民宿新体验','生活咖'),
(10,'10110.jpg','遇见媒体人聃聃 缔造民宿新体验','生活咖');

/**评测页面*/
INSERT INTO `review_carousel` (`cid`,`img`,`title`,`href`) VALUES
(1,'pccarousel1.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测',null),
(2,'pccarousel2.jpg','没有杂木异味？原来是竹香板起作用了',null),
(3,'pccarousel3.jpg','空间与容量如何兼得?西门子冰箱评测',null);
INSERT INTO `review_tuwen` (`cid`,`img`,`title`,`tag`) VALUES
(1,'101.jpg','水性科天闻海达：坚持无毒无味的核心竞争力','产品最新资讯'),
(2,'102.jpg','奥普吴兴杰：有机结合智能科技与大师美学','产品最新资讯'),
(3,'103.jpg','友邦吊顶吴伟江：从1到10为用户创造更高价值','产品最新资讯'),
(4,'104.jpg','索菲亚高玉坤：不断呈现体验更好的产品和服务','产品最新资讯'),
(5,'105.jpg','安华瓷砖程总：极简风格瓷砖 打造原味家居生活体验','产品最新资讯'),
(6,'106.jpg','安华瓷砖程总：极简风格瓷砖 打造原味家居生活体验','产品最新资讯'),
(7,'107.jpg','无毒全屋定制彻底解决家装毒害 水性科天或成行业巨头','产品最新资讯'),
(8,'108.jpg','水性科天推出无毒全屋定制 彻底解决家装毒害','产品最新资讯'),
(9,'109.jpg','联邦家私李虹瑶：为用户提供高品质生活方式定制','卫浴评测'),
(10,'110.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','卫浴导购'),
(11,'111.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','卫浴导购'),
(12,'112.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','产品最新资讯'),
(13,'113.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','地板导购'),
(14,'114.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','卫浴导购'),
(15,'115.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','卫浴导购'),
(16,'116.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','涂料导购'),
(17,'117.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','地板导购'),
(18,'118.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','地板导购'),
(19,'119.jpg','拯救潮湿梅雨天 艾芬达电热毛巾架评测','涂料导购');

/**视频页面*/
INSERT INTO `video_carousel` (`cid`,`img`,`time`,`title`,`href`) VALUES
(1,'spcarousel1.jpg','05’57’’','蒸锅不如电蒸箱 美的天悦电蒸箱评测',null),
(2,'spcarousel2.jpg',"07’26’’",'嵌入式蒸烤箱哪家好？对比测评和你讲讲硬道理',null),
(3,'spcarousel3.jpg',"07’26’’",'四级过滤多重净化 普乐美净水机评测',null);
INSERT INTO `video_tuwen` (`cid`,`img`,`title`,`tag`,`time`) VALUES
(1,'1.jpg','斐讯智能空气检测仪悟空M1评测','产品评测','04’37’’'),
(2,'2.jpg','晨阳水漆稚爱儿童水漆王牌评测','产品评测','04’37’’'),
(3,'3.jpg','美的极光烟灶套餐评测','产品评测','04’37’’'),
(4,'4.jpg','王牌评测晾霸智能晾衣机','产品评测','04’37’’'),
(5,'5.jpg','微波炉会武功 美的M3-L236E微波炉','产品评测','04’37’’'),
(6,'6.jpg','梦百合幻梦记忆棉床垫·好睡眠','产品评测','04’37’’'),
(7,'7.jpg','太平洋恒洁卫浴智能马桶','不见不散-视频','04’37’’'),
(8,'8.jpg','公牛重刮油泼脚踩 开关视频评测','产品评测','04’37’’'),
(9,'9.jpg','家居1分钟 你家的预埋烟管合格吗？','家居1分钟-视频','04’37’’'),
(10,'10.jpg','京韵新奢侈 北京融创使馆壹号','设计会客厅-视频','04’37’’');

/*专题页面*/
INSERT INTO `special_tuwen` (`cid`,`img`,`title`) VALUES
(1,'zt1.jpg','蒸锅不如电蒸箱 美的天悦电蒸箱评测'),
(2,'zt2.jpg','我有一个心愿 想拥有一面可以画画的墙'),
(3,'zt3.jpg','原装“进口”芯，造就咖啡新魔力——魔都80后咖啡师的手艺进阶体验记'),
(4,'zt4.jpg','编织无数少女梦 新锐设计师叶蔚'),
(5,'zt5.jpg','减轻宝妈负担 乐享清洁白科技'),
(6,'zt6.jpg','与爱一起成长的暖意之家 壁挂炉体验日记'),
(7,'zt7.jpg','温暖你的冬季 感恩节装修贴心攻略'),
(8,'zt8.jpg','快乐男“煮”角 摄影师的抽油烟机体验日记'),
(9,'zt9.jpg','享受智能新生活 新手妈妈的幸福进化论'),
(10,'zt10.jpg','春风十里不如TA 文艺咖啡师的净水器体验日记'),
(11,'zt11.jpg','忙里偷“轻” 当摄影师遇上对的笔记本'),
(12,'zt12.jpg','乐享美妆生活 元气美眉的智能镜子体验记'),
(13,'zt13.jpg','质享美好幸福生活 家的厨房承载一室温情'),
(14,'zt14.jpg','让淋浴变得更舒适 德立淋浴房体验记'),
(15,'zt15.jpg','跨时代的艺术之旅 85后CEO的多元化美式家'),
(16,'zt16.jpg','畅享无限美好 律政佳人的激光超投电视体验日记'),
(17,'zt17.jpg','小家居出大幸福 家装达人的空气净化器体验日记'),
(18,'zt18.jpg','35平清爽两人居 巧妙小改动实现理想功能区'),
(19,'zt19.jpg','妙搭复古深色系 37万打造100平米豪宅范美居'),
(20,'zt20.jpg','乐享洁净 美厨娘的厨房体验记');

/*试用页面*/
INSERT INTO `trial_tuwen` (`cid`,`img`,`title`,`quota`,`applying`,`report`) VALUES
(1,'1551.jpg','siau诗杭远红外吹风机试用','5','479','0'),
(2,'1552.jpg','A.O.史密斯 E60VDW电热水器试用','1','424','0'),
(3,'1553.jpg','奥普风暖浴霸试用','1','550','1'),
(4,'1554.jpg','舒纳沃恩环保黑板漆试用','5','109','5'),
(5,'1555.jpg','帝王恒温淋浴器','2','518','2'),
(6,'1556.jpg','卓力增压智能挂烫机试用','2','557','2'),
(7,'1557.jpg','早先生减负舒睡枕试用','3','471','3'),
(8,'1558.jpg','COOGHI酷骑儿童滑板车试用','1','280','1'),
(9,'1559.jpg','COOGHI酷骑COCO儿童学步车','1','246','1');

/*品牌库页面*/
INSERT INTO `brand_carousel` (`cid`,`img`,`title`,`href`) VALUES
(1,'wapgou_1.jpg','达人42万打造150平纯正美式之家',null),
(2,'wapgou_2.jpg','千万别乱摆！ 客厅装饰品摆放风水大公开',null),
(3,'wapgou_3.jpg','说洗碗机洗不干净的人，良心难道不会痛？',null),
(4,'wapgou_4.jpg','淋浴花洒试用报告：全新的沐浴体验',null);
INSERT INTO `brand_material` (`cid`,`img`,`title`,`price`,`original`) VALUES
(1,'1.jpg','马可波罗釉面砖CZ8018AS','78.0','362.0'),
(2,'2.jpg','圣象实木复合地板NA2005','174.0','398.0'),
(3,'3.jpg','欧派实木门OPM-051','1299.0','2380.0'),
(4,'4.jpg','志邦整体厨房zbom_jqlq','6699.0','12428.0'),
(5,'5.jpg','大自然实木复合地板DSJ01Z','299.0',null),
(6,'6.jpg','东鹏玻化砖800EFG20002','108.0','403.04');
INSERT INTO `brand_furniture` (`cid`,`img`,`title`,`price`,`original`) VALUES
(7,'7.jpg','索菲亚门厅柜玄关鞋柜','100.0',null),
(8,'8.jpg','林氏木业布艺沙发961','376.0','752.0'),
(9,'9.jpg','岭林木质沙发LL-821L转角沙发','2598.0','5770.0'),
(10,'10.jpg','卓匠木质沙发SF0445','5225.0','5500.0'),
(11,'11.jpg','全友家居双色皮布艺沙发102011Y','2899.0',null),
(12,'12.jpg','克莎蒂木质沙发LA121#','10240.0','21210.0');
INSERT INTO `brand_soft` (`cid`,`img`,`title`,`price`,`original`) VALUES
(13,'13.jpg','索菲亚 梦百合舒梦记忆绵弹簧床垫','2499.0',null),
(14,'14.jpg','墙纸QHO-B','110.0',null),
(15,'15.jpg','旭日东升十字绣KSFF-xk002','288.0',null),
(16,'16.jpg','墙纸KME-H','176.0',null),
(17,'17.jpg','格莱美墙纸kg90000','880.0',null),
(18,'18.jpg','青飞十字绣q-TXNF','38.0','76.0');
/*
(19,'19.jpg','','78.0','362.0'),
(20,'20.jpg','','78.0','362.0'),
(21,'21.jpg','','78.0','362.0'),
(22,'22.jpg','','78.0','362.0'),
(23,'23.jpg','','78.0','362.0'),
(24,'24.jpg','','78.0','362.0'),
(25,'25.jpg','','78.0','362.0'),
*/

/*问答页面*/
INSERT INTO `wenda_tuwen` (`cid`,`img`,`title`,`article`) VALUES
(1,'wdzt321.jpg','【专题第三期】装修设计大盘点','现在大家都越来越重视生活品质，如何将房屋装修设计得更完美考验着每一个准备装修的朋友……'),
(2,'wdzt322.jpg','【专题第二期】装修甲醛大盘点','关于房屋装修，大家都非常看重安全两个字，房子在装修后通常有个后遗症——甲醛遗留，现在就一起来看看装修甲醛大盘点……'),
(3,'wdzt323.jpg','【专题第一期】夏日电器大盘点','坐在家里都会汗流浃背的季节到了，为了能够不被这种天气折磨，我们尽量避免在太阳最晒……');
INSERT INTO `aquestions_tuwen` (`cid`,`title`,`tag`,`reply`) VALUES
(1,'家里有老人孩子，平时吹不了空调，听说巴慕达的风扇很好用还适合老人孩子，有了解的吗？','家用电器-生活家电','2'),
(2,'被巴慕达风扇种草了，实在是太好看了，有用过的同学吗？用起来怎么样啊？可以分享一下使用心得吗？','家用电器-生活家电','2'),
(3,'巴慕达创始人是谁啊？有人了解吗？','家用电器-生活家电','2'),
(4,'国内的京东和天猫上买的巴慕达是日本原装的吗？想买一个巴慕达电扇，有使用过的吗？','家用电器-生活家电','2'),
(5,'有用过巴慕达家产品的吗？感觉怎么样？哪里能买到啊？','家用电器-生活家电','2'),
(6,'请问靠垫都有哪些材料呢？','装饰搭配-靠垫','1'),
(7,'车里必须要放靠垫实用吗？放最好弄个靠垫比较好？','装饰搭配-靠垫','1'),
(8,'请问靠垫一般多少钱的几个比较合适？','装饰搭配-靠垫','1'),
(9,'厨房适合铺地毯吗？','装饰搭配-地毯','1'),
(10,'请问客厅的沙发上的靠垫用处大吗？','装饰搭配-靠垫','1');

/*品牌大全页面*/
INSERT INTO `brand_alllogo` (`cid`,`img`,`titlename`) VALUES
(1,'brand1.jpg','东鹏家具'),
(2,'brand2.jpg','一统木门'),
(3,'brand3.jpg','林氏木业'),
(4,'brand4.jpg','麦克维德'),
(5,'brand5.jpg','鹰卫浴'),
(6,'brand6.jpg','宜家宜居'),
(7,'brand7.jpg','安信地板'),
(8,'brand8.jpg','箭牌卫浴'),
(9,'brand9.jpg','欧派'),
(10,'brand10.jpg','康耐登'),
(11,'brand11.jpg','立邦'),
(12,'brand12.jpg','新中源陶瓷'),
(13,'brand13.jpg','好莱客'),
(14,'brand14.jpg','城市之窗'),
(15,'brand30.jpg','罗莱家纺'),
(16,'brand31.jpg','马可波罗');
INSERT INTO `brand_jiancai` (`cid`,`img`,`titlename`) VALUES
(1,'brand15.jpg','三棵树'),
(2,'brand16.jpg','大自然家居'),
(3,'brand17.jpg','芬琳'),
(4,'brand18.jpg','傲胜地板');
INSERT INTO `brand_jiaju` (`cid`,`img`,`titlename`) VALUES
(1,'brand19.jpg','全友家居'),
(2,'brand20.jpg','华源轩'),
(3,'brand13.jpg','好莱客'),
(4,'brand29.jpg','华日家居');
INSERT INTO `brand_ruanzhuang` (`cid`,`img`,`titlename`) VALUES
(1,'brand21.jpg','友家园艺'),
(2,'brand22.jpg','多样屋'),
(3,'brand23.jpg','梦洁家纺'),
(4,'brand24.jpg','玛堡壁纸');
INSERT INTO `brand_jiadian` (`cid`,`img`,`titlename`) VALUES
(1,'brand25.jpg','TCL'),
(2,'brand26.jpg','索尼'),
(3,'brand27.jpg','格力'),
(4,'brand28.jpg','西门子家电');

/**宜家宜居页面*/
INSERT INTO `livable_zonghe` (`cid`,`img`,`tag`,`title`,`price`) VALUES
(1,'14520.jpg','宜家宜居','帕克思衣柜，黑褐色，弗桑维克多','3360.00'),
(2,'14521.jpg','宜家宜居','六人转角沙发床092.776.40','16199.00'),
(3,'14522.jpg','宜家宜居','床架带4储物盒593.041.08','8199.00'),
(4,'14523.jpg','宜家宜居','佩尔桌含搁架件, 白色,绿色592.451.90','799.00');
INSERT INTO `livable_zonghewenzhang` (`cid`,`img`,`tag`,`title`,`tag2`,`time`) VALUES
(1,'14524.jpg','宜家宜居','荣获2018年度消费口碑品牌奖','品牌资讯','2019-01-11'),
(2,'14525.jpg','宜家宜居','丨为每一件心爱之物打造专属容身空间','品牌资讯','2018-05-22'),
(3,'14526.jpg','宜家宜居','柜子选购技巧,宜家宜居柜子品质如何','柜子专区','2018-04-17');
INSERT INTO `livable_zonghezhuanti` (`cid`,`img`,`title1`,`tag`,`title2`,`tag2`,`time`) VALUES
(1,'14527.jpg',null,'宜家宜居','灵感专区','装饰专题','2018-11-01'),
(2,'14528.jpg','玩转','宜家宜居','指南新品折扣添置家灵感_宜家购物_太平洋','装饰专题','2012-09-25'),
(3,'14529.jpg','用“新”布置家空间','宜家','为你打造团圆幸福年','装饰专题','2018-11-01');
INSERT INTO `livable_zonghetupian` (`cid`,`img`,`tag`,`title`) VALUES
(1,'14530.jpg','宜家宜居','斯沃塔双层床架002.665.04'),
(2,'14531.jpg','宜家宜居','艾思福床架790.197.04'),
(3,'14532.jpg','宜家宜居','艾思福床架790.197.04'),
(4,'14533.jpg','宜家宜居','餐桌诺顿桌子401.620.76');
INSERT INTO `livable_zongheshipin` (`cid`,`img`,`tag`,`title`,`tag2`,`atime`) VALUES
(1,'14534.jpg','宜家宜居','衣柜，随心配','销售配合','01’19'),
(2,'14535.jpg','宜家宜居','IKEA_小改造大不同_杭州用餐区域篇','销售配合','01’48'),
(3,'14536.jpg','宜家宜居','PS灯具产品创意','销售配合','01’28');
/*产品页*/
INSERT INTO `livable_chanpin` (`cid`,`img`,`tag`,`title`,`price`) VALUES
(1,'14520.jpg','宜家宜居','帕克思衣柜, 黑褐色, 弗桑维克多','3360.00'),
(2,'14521.jpg','宜家宜居','六人转角沙发床092.776.40','16199.00'),
(3,'14522.jpg','宜家宜居','床架带4储物盒593.041.08','8199.00'),
(4,'14523.jpg','宜家宜居','佩尔桌含搁架件, 白色, 绿色592.451.90','799.00'),
(5,'14537.jpg','宜家宜居','舒法特储物组合带盒, 白色392.265.45','634.00'),
(6,'14538.jpg','宜家宜居','儿童扶手椅, 桦木贴面, 艾姆丝402.994.04','199.00'),
(7,'14539.jpg','宜家宜居','短绒地毯, 蝴蝶, 粉红色304.270.39','299.00'),
(8,'14540.jpg','宜家宜居','储物组合带长凳, 白色291.881.72','2697.00'),
(9,'14541.jpg','宜家宜居','思丹塞桌子, 淡灰色292.882.37','999.00'),
(10,'14542.jpg','宜家宜居','斯佳蒙靠背椅, 诺瓦拉 红色604.332.46','1299.00');
/*文章页*/
INSERT INTO `livable_wenzhang` (`cid`,`img`,`tag`,`title`,`tag2`,`time`) VALUES
(1,'14524.jpg','宜家宜居','荣获2018年度消费口碑品牌奖','品牌资讯','2019-01-11'),
(2,'14525.jpg','宜家宜居','丨为每一件心爱之物打造专属容身空间','品牌资讯','2019-01-11'),
(3,'14526.jpg','宜家宜居','柜子选购技巧，宜家宜居柜子品质如何','柜子专区','2019-01-11'),
(4,'14543.jpg','宜家宜居','沙发品质如何，宜家宜居沙发品质如何，','沙发专区','2019-07-17'),
(5,'14544.jpg','宜家宜居','沙发选购技巧，宜家宜居沙发具体报价','沙发专区','2018-06-11'),
(6,'14545.jpg','宜家宜居','沙发新品推荐，宜家宜居沙发最新价格','沙发专区','2019-05-30'),
(7,'14546.jpg','宜家宜居','沙发清洁方法，宜家宜居沙发保养方法','沙发专区','2016-07-28'),
(8,'14547.jpg','宜家宜居','沙发产品种类款式，宜家宜居沙发质量好不好','沙发专区','2018-05-11'),
(9,'14548.jpg',null,'烛台的选购和保养 宜家宜居烛台价格','家居饰品专区','2017-11-10'),
(10,'14528.jpg',null,'不送礼我摔手机!靓宜家宜居十一周年庆9月22-24日','品牌资讯','2017-09-11');
/*专题页*/
INSERT INTO `livable_zhuanti` (`cid`,`img`,`title1`,`tag`,`title2`,`tag2`,`time`) VALUES
(1,'14527.jpg',null,'宜家','家居灵感-专区','装饰专题','2018-11-01'),
(2,'14528.jpg','玩转宜家宜居指南-新品折扣添置家灵感_','宜家','购物_太平洋','淘家记','2018-11-01'),
(3,'14529.jpg','用“新”布置家空间 ','宜家','为你打造团圆幸福年','产品大搜查-王牌导购','2018-11-01'),
(4,'blank.gif','筑梦幻','宜家','城堡-送孩子一个幸福小世界','产品大搜查-王牌导购','2018-11-01'),
(5,'14549.jpg','巧造童趣天地-儿童房墙面刷新有门道__家装大讲堂_PChouse太平洋','宜家',null,'家装大讲堂-问题来了','2018-11-01'),
(6,'14528.jpg','四大空间收纳灵感-解决小户型','宜家','生活难题__家装大讲堂_PChouse太平洋','家装大讲堂-装修大学','2018-11-01'),
(7,'14550.jpg',null,null,'别让宝宝受伤害-严选安全儿童家具__家装大讲堂_PChouse太平洋','家装大讲堂-装修大学','2018-11-01'),
(8,'14551.jpg',null,null,'小厨房的橱柜战术-综合布局 完美逆袭__家装大讲堂_PChouse太平洋','家装大讲堂-问题来了','2018-11-01'),
(9,'14528.jpg','家装改造赶年前-广州精品','宜家','卖场逐个数_产品大搜查_PChouse太平洋','产品大搜查-卖场大全','2018-11-01'),
(10,'14552.jpg','给','宜家','卖场逐个数_产品大搜查_PChouse太平洋','全能大改造-装修篇','2018-11-01');
/*图片页*/
INSERT INTO `livable_tupian` (`cid`,`img`,`tag`,`title`) VALUES
(1,'14530.jpg','宜家宜居','斯沃塔双层床架002.665.04'),
(2,'14531.jpg','宜家宜居','艾思福床架790.197.04'),
(3,'14532.jpg','宜家宜居','艾思福床架790.197.04'),
(4,'14533.jpg','宜家宜居','餐桌诺顿桌子401.620.76'),
(5,'14557.jpg','宜家宜居','比尔斯塔双桌面桌791.287.17'),
(6,'14558.jpg','宜家宜居','索德汉499.020.22组合式布艺沙发'),
(7,'14559.jpg','宜家宜居','奇维组合式皮沙发399.047.00'),
(8,'14560.jpg','宜家宜居','奇维组合式皮沙发399.047.00'),
(9,'14561.jpg','宜家宜居','奇维组合式皮沙发399.047.00'),
(10,'14562.jpg','宜家宜居','诺顿 / 艾多弗餐桌一桌二椅');
/*视频页*/
INSERT INTO `livable_shipin` (`cid`,`img`,`tag`,`title`,`tag2`,`atime`) VALUES
(1,'15469.jpg','宜家宜居','衣柜，随心配','销售配合','01’19’’'),
(2,'15470.jpg','宜家宜居','IKEA_小改造大不同_杭州用餐区域篇','销售配合','01’19’’'),
(3,'15471.jpg','宜家宜居','PS灯具-产品创意','销售配合','01’19’’'),
(4,'15472.jpg','宜家宜居','莫拉Mala系列背后的故事','销售配合','01’19’’'),
(5,'15470.jpg','宜家宜居','IKEA_小改造大不同_杭州用餐区域篇','销售配合','01’19’’'),
(6,'15473.jpg','宜家宜居','成都员工家庭改造','销售配合','01’19’’'),
(7,'15474.jpg','宜家宜居','海沃格系列背后的故事','销售配合','01’19’’'),
(8,'15475.jpg','宜家宜居','罗格朗系列背后的故事','销售配合','01’19’’'),
(9,'15476.jpg',null,'前方高能！IKEA x BEA A?KERLUND，哥特式魅惑来袭','销售配合','01’19’’'),
(10,'15477.jpg',null,'IKEA_Smabit_斯莫比背后的故事','销售配合','01’19’’');













