set names utf8;
drop database if exists xd;
create database xd charset=utf8;
use xd;
create table styles(
	uid int primary key auto_increment,
   	type varchar(12)
);
insert into styles values(null,'独立');
insert into styles values(null,'脱口秀');
insert into styles values(null,'摇滚');
insert into styles values(null,'HipHop');
insert into styles values(null,'话剧歌剧');
insert into styles values(null,'流行');
insert into styles values(null,'民谣');
insert into styles values(null,'朋克');
insert into styles values(null,'电子');
insert into styles values(null,'儿童亲子');
insert into styles values(null,'轻音乐');
insert into styles values(null,'金属');
insert into styles values(null,'古典');
insert into styles values(null,'核');
insert into styles values(null,'极端金属');
insert into styles values(null,'布鲁斯');
insert into styles values(null,'世界音乐');
insert into styles values(null,'放克');
insert into styles values(null,'爵士');
insert into styles values(null,'雷鬼');
insert into styles values(null,'动漫');
insert into styles values(null,'曲苑杂坛');
insert into styles values(null,'节奏布鲁斯');
insert into styles values(null,'灵魂乐');
insert into styles values(null,'乡村乐');
create table yanchu(
	lid int primary key auto_increment,
	avatar varchar(12),
   	heading varchar(36),
	city varchar(12),
	address varchar(12),
	data varchar(24),
	keyword varchar(12),
	price  varchar(12),
	jingxuan varchar(12)
);
insert into yanchu values(null,'1.jpg','#展览#杭州奇葩减压管·射箭·星空水床·摔碗·发泄·蹦床一站畅玩','杭州','杭州奇葩减压馆','01.01-12.31','#展览','￥78-128',null);
insert into yanchu values(null,'2.jpg','松果喜剧(脱口秀)周三开麦','杭州','开心麻花D空间','03.31 本周三 20:00','#脱口秀','￥28',null);
insert into yanchu values(null,'3.jpg','仙人掌喜剧|脱口秀开放麦','杭州','杭州大剧院·悦亮之家','04.01 本周四 19:30','#脱口秀','￥20',null);
insert into yanchu values(null,'4.jpg','【秀动呈献】白日密语2021“DaydreamSecrets”春季巡演 杭州站','杭州','杭州 MAO Livehouse','04.02 本周五 20:30','#独立','￥6-120',null);
insert into yanchu values(null,'5.jpg','愚人节 JUST KIDDING开玩笑舞会','杭州','杭州 MAO Livehouse','04.01 本周四 20:00','#爵士','￥80-100',null);
insert into yanchu values(null,'6.jpg','#[滚哈混站派对] 姜云升+霓虹花园+LeeyOn李昂','杭州','杭州 大麦66LiveHouse','04.02 本周五 20:00','#展览','￥78-128',null);
insert into yanchu values(null,'7.jpg','赫兹乐队“你喜欢的样子我都没有”巡演 杭州站','杭州','酒球会','04.02 本周五 19:30','#朋克 摇滚','￥80-100','精选');
insert into yanchu values(null,'8.jpg','[春日和]结冰水/温和治疗/帆布小镇 联合巡演 杭州站','杭州','杭州 MAO Livehouse','04.03 本周六 20:30','#摇滚 独立','￥120-269',null);
insert into yanchu values(null,'9.jpg','松果喜剧脱口秀|周五小剧场','杭州','开心麻花D空间','04.02 本周五 20:30','#脱口秀','￥88-158','精选');
insert into yanchu values(null,'10.jpg','[大咖双拼秀]4月3日奇葩说孙郁/南京台柱子芝麻强势来袭','杭州','杭州 EDU MALL未来学习中心(立塑空间)','04.03 本周六 16:00','#脱口秀','￥120-228','精选');
insert into yanchu values(null,'11.jpg','4.29不舍','西安','初相遇剧场·南门王府井店','04.29 周四 19:30','#话剧歌剧','￥99-120',null);
insert into yanchu values(null,'11.jpg','4.22不舍','西安','初相遇剧场·南门王府井店','04.22 周四 19:30','#话剧歌剧','￥99-120',null);
insert into yanchu values(null,'11.jpg','4.22不舍','西安','初相遇剧场·南门王府井店','04.15 周四 19:30','#话剧歌剧','￥99-120',null);
insert into yanchu values(null,'12.jpg','4.30 夜未央','西安','初相遇剧场·南门王府井店','04.30 周五 19:30','#话剧歌剧','￥99-120','精选');
insert into yanchu values(null,'12.jpg','4.28 夜未央','西安','初相遇剧场·南门王府井店','04.28 周三 19:30','#话剧歌剧','￥99-120','精选');
insert into yanchu values(null,'12.jpg','4.25 夜未央','西安','初相遇剧场·南门王府井店','04.25 周日 19:30','#话剧歌剧','￥99-120','精选');
insert into yanchu values(null,'12.jpg','4.24 夜未央','西安','初相遇剧场·南门王府井店','04.24 周六 19:30','#话剧歌剧','￥99-120',null);
insert into yanchu values(null,'12.jpg','4.23 夜未央','西安','初相遇剧场·南门王府井店','04.23 周五 19:30','#话剧歌剧','￥99-120',null);
insert into yanchu values(null,'12.jpg','4.21 夜未央','西安','初相遇剧场·南门王府井店','04.21 周三 19:30','#话剧歌剧','￥99-120',null);
insert into yanchu values(null,'13.jpg','4.25 爱的十二时辰','西安','初相遇剧场·南门王府井店','04.27 周二 19:30','#话剧歌剧','￥99-120',null);

insert into yanchu values(null,'14.jpg','#展览#【春节营业北京奇葩减压馆2.0 36项奇葩体验】','北京','国瑞城购物中心LG层-奇葩减压馆','01.01-12.31','#展览','￥58-158',null);
insert into yanchu values(null,'15.jpg','2021北京国际光影艺术季“万物共生-蔚蓝”户外光影艺术沉浸式体验展','北京','玉渊潭公园樱珞花谷区域','03.25-10.10','#展览','￥68-88',null);
insert into yanchu values(null,'16.jpg','V89乐队首张专辑《不离十》冬季巡演 北京站','北京','北京MAOLivehouse','04.30 周五 19:30','#摇滚','￥50-80',null);
insert into yanchu values(null,'17.jpg','邵帅“走亲访友”2021巡演 北京站','北京','北京MAOLivehouse','04.25 周日 19:30','#民谣','￥128-158',null);
insert into yanchu values(null,'18.jpg','【北京站】大雄“异乡人”单口戏剧专场|硬核戏剧脱口秀','北京','中国木偶剧院-小铃铛精品剧场','04.09 周五 20:30','#脱口秀','￥120',null);
insert into yanchu values(null,'19.jpg','【北京站】饱和打击Burpees脱口秀+漫才专场|硬核喜剧','北京','中国木偶剧院-小铃铛精品剧场','04.3 周六 20:30','#脱口秀','￥120-150',null);
insert into yanchu values(null,'20.jpg','三里屯【爆笑脱口秀专场】袋鼠喜剧搞笑零距离','北京','工体雷剧场','04.03 周六 16:30','#脱口秀','￥39-279',null);
insert into yanchu values(null,'21.jpg','生番“而立”2021巡演 北京站','北京','北京MAOLivehouse','04.10 周六 18:30','HipHop','￥150-180','精选');
insert into yanchu values(null,'22.jpg','[康姆士COM`Z [寻找范艾伦]巡回演出 北京站','北京','糖果LIVE三层','04.21 周三 20:30','#摇滚','￥160-200','精选');
insert into yanchu values(null,'23.jpg','惘闻《十万个为什么》新专辑巡演 北京站','北京','北京MAOLivehouse','05.02 周日 20:30','#独立','￥150-180','精选');

insert into yanchu values(null,'24.jpg','4月21号|OG专场xAKOMACLUB','上海','AKOMA CLUB','04.21 周三 23:59','#流行','￥100-150',null);
insert into yanchu values(null,'25.jpg','宿羽阳|不醒之梦(Fall in Aether)|四城梦游派对 上海站','上海','上海MAO Livehouse','06.25 周五 20:30','#民谣','￥150-430',null);
insert into yanchu values(null,'26.jpg','苏紫旭&Paramecia《狂人农场的往事》2021 Try Our Tour','上海','上海MAO Livehouse','04.09 周五 20:30','#摇滚 独立','￥120-150','精选');
insert into yanchu values(null,'27.jpg','04.24|新秀巡演AfterPartyxAKOMA','上海','AKOMA CLUB','04.24 周六 23:59','#HipHop','￥100-150',null);
insert into yanchu values(null,'28.jpg','直火帮2020“SFG Revenge Season”巡演 下半程 上海站','上海','BUDX VAS','04.30 周五 20:30','#HipHop','￥200-230',null);

insert into yanchu values(null,'29.jpg','津湾小剧场儿童剧《美人鱼》','天津','津湾大剧院小剧场','04.21 周三 23:59','#儿童亲子','￥50-120',null);
insert into yanchu values(null,'30.jpg','美国原版授权科普亲子据《神奇校车·气候大挑战》','天津','津湾大剧院','06.25 周五 20:30','#儿童亲子','￥40-900',null);
insert into yanchu values(null,'31.jpg','古琴弦歌--经典名曲音乐会','天津','津湾大剧院小剧场','04.09 周五 20:30','#古典','￥59-280','精选');
insert into yanchu values(null,'32.jpg','【惊喜喜剧脱口秀】单口戏剧欢乐大会','天津','津湾大剧院小剧场','04.24 周六 23:59','#脱口秀','￥100-150',null);
insert into yanchu values(null,'33.jpg','午夜蠕动','天津','66Livehouse天津','04.30 周五 20:30','#HipHop','￥120-220',null);

#周边乐队
create table band(
	id int primary key auto_increment,
	image varchar(12),
	head varchar(24),
	solgan varchar(24)
);
insert into band values(null,'6.jpg','木马乐队2021巡演','木马乐队');
insert into band values(null,'4.jpg','个人收藏转让专区','个人');
insert into band values(null,'5.jpg','孤独的利里','孤独的利里');
insert into band values(null,'3.jpg','薛之谦','薛之谦');
insert into band values(null,'2.jpg','陈奕迅','陈奕迅');
insert into band values(null,'1.jpg','周杰伦专辑合集','周杰伦');
create table product(
	aid int primary key auto_increment,
	image varchar(12),
	title varchar(64),
	price int
);
insert into product values(null,'1.jpg','功夫胖《梦剧院》专辑CD','199');
insert into product values(null,'3.jpg','丹镇北京 帽衫 教练夹克','299');
insert into product values(null,'2.jpg','木马乐队2021巡演限定卫衣','288');
insert into product values(null,'6.jpg','合辑《成都2020》实体磁带(含画册)','50');
insert into product values(null,'4.jpg','F.U.N《重启》专辑CD','120');
insert into product values(null,'5.jpg','《南京早上好》音乐合辑CD','120');
insert into product values(null,'7.jpg','周杰伦第1-10张专辑 杰伦十代10周年珍藏版 唱片10CD+歌词','199');
insert into product values(null,'8.jpg','王以太《演.说.家》专辑CD','68');
insert into product values(null,'9.jpg','刘俊麟《画像》专辑CD【预售】','100');
insert into product values(null,'10.jpg','落日飞车《柔性风暴》专辑CD','120');
#众筹列表
create table zhongchou(
	lid int primary key auto_increment,
	image varchar(12),
	title varchar(64),
	price int
);
insert into zhongchou values(null,'4.jpg','奇袭翠虎团同名EP众筹','272');
insert into zhongchou values(null,'1.jpg','苏紫旭&Theparamcia双唱片《狂人农场的往事》众筹','89420');
insert into zhongchou values(null,'2.jpg','杨朗朗个人第三张原创专辑《歌宋》预售','1488');
insert into zhongchou values(null,'3.jpg','2021年独立音乐人阮振海第二张原创声音《光芒》发动众筹和预售,开启新的启程','16100');
insert into zhongchou values(null,'5.jpg','海风过荒野|西南独立摇滚乐团Mind Freek首张专辑预售上线','38298');
insert into zhongchou values(null,'6.jpg','曹萌第四张个人专辑<燃烧>预售众筹','5140');
insert into zhongchou values(null,'8.jpg','刘冬虹与沙子乐队《爱与自由》限量版双色磁带预订','13210');
insert into zhongchou values(null,'7.jpg','郭旭 第二张原创专辑“烟火”众筹预售','13762');
insert into zhongchou values(null,'9.jpg','唱作女声 徐斗珍——首张录音室专辑 [生长] ','23587');
insert into zhongchou values(null,'10.jpg','张典《观海》实体专辑 预售众筹','28348');

#轮播图
create table lunbo(
	uid int primary key auto_increment,
   	image varchar(12),
	city varchar(64)
);
insert into lunbo values(null,'1.jpg','杭州上海西安北京天津');
insert into lunbo values(null,'2.jpg','杭州上海西安北京天津');
insert into lunbo values(null,'3.jpg','杭州上海西安北京天津');
insert into lunbo values(null,'4.jpg','杭州');
insert into lunbo values(null,'5.jpg','杭州上海北京');
insert into lunbo values(null,'6.jpg','杭州');
insert into lunbo values(null,'7.jpg','杭州');
insert into lunbo values(null,'8.jpg','北京上海西安');
insert into lunbo values(null,'9.jpg','西安');
insert into lunbo values(null,'10.jpg','北京');
insert into lunbo values(null,'11.jpg','北京');
insert into lunbo values(null,'12.jpg','上海');
insert into lunbo values(null,'13.jpg','上海');
insert into lunbo values(null,'14.jpg','天津');
insert into lunbo values(null,'15.jpg','天津');
