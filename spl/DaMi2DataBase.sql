drop database if exists DaMi2;

create database DaMi2
go

use DaMi2
go

--用户表--
create table loginuser
(
	userid int identity(10001,1) primary key, --ID
	usernickname varchar(50),--昵称
	username varchar(50) not null, --登录名
	userpsw varchar(50) not null, --密码
	usertel varchar(20) default '无', --注册电话
	usermail varchar(50) default '无', --注册邮箱
	usercode int default '0', --是否激活 0为未激活 1为激活
	usertime datetime default getdate(), --用户注册时间
	sex varchar(10), --性别
	ip varchar(20), --本次登录ip
	loginip varchar(20), --上次登录ip	

)
go

insert loginuser values('好个飞飞','540744679@qq.com','123','7200110','123456@qq.com','','','','168.0.0.2','')
insert into loginuser(usernickname,username,userpsw) select  '晓晓','541287397@qq.com','123'

select*from loginuser


--收货地址表--
create table address
(
	addressid int identity(0,1) primary key, --ID
	addressname varchar(20) not null, --姓名
	addressadd varchar(100) not null, --地址
	zipcode varchar(20) not null, --邮编
	telnumber varchar(20) not null, --电话
	aid	int not null foreign key references loginuser(userid),--绑定用户id，外键
	
)
go



--管理员表--
create table master
(
	masterid int identity(20001,1) primary key, --ID
	mastername varchar(50) not null unique, --管理员名称
	masterpsw varchar(20) not null, --管理员密码
	adminkey int default 0, ----管理员权限
		
)
go

insert into master(mastername,masterpsw) select  'admin','123'
insert into master(mastername,masterpsw) select  'admin2','123'
select*from master

--商品分类表--
create table psort
(
	id int identity(1,1) primary key, --分类ID
	sort varchar(20) not null, --商品分类
)
go

insert psort values('电源')
insert psort values('耳机与音箱')
insert psort values('保护')
insert psort values('后盖')
insert psort values('贴膜')
insert psort values('挂饰')
insert psort values('贴纸')
insert psort values('支架')
insert psort values('手机刷卡器')
insert psort values('储存卡与读卡器')
insert psort values('生活应用类')
insert psort values('优惠套餐')
select*from psort

--手机分类适配表--
create table phone
(
	id int identity(1,1) primary key,
	sort int not null,
)
go
insert phone values(0)
insert phone values(1)
insert phone values(2)
/**
	注：0代表大米1
		1代表大米2
		2代表大米1大米2都能用

**/


--商品表--
create table product
(
	psid int identity(1000001,1) primary key, --商品ID
	pname varchar(50) not null, --商品名称
	pnameid varchar(20) not null , --商品小名称
	pselect varchar(20) not null, --关联名称
	pxx varchar(100) not null ,--关联商品
	psort int references psort(id),--商品分类
	phone int references phone(id),--商品适配手机
	pinfo varchar(50) , -- 商品小简介
	price varchar(20) not null, --商品单价
	pmoblie varchar(50), --适配的手机
	pmessage text , --商品简介
	pnorms text , --商品规格
	pimg varchar(50), --商品展示图
	pimgbig varchar(50), --商品大图
	pimgmiddle varchar(50), --商品中等图
	pimgsmall varchar(50), --商品小图
	
)
go

insert into product(pname,pnameid,pselect,pxx,psort,phone,pinfo,price,pmoblie,pmessage,pnorms,pimg,pimgbig,pimgmiddle,pimgsmall) 
select '移动电源','移动电源','无','','1','1','','199','','','','img/test/1299_1_1344938511_8.jpg','','',''
insert into product(pname,pnameid,pselect,pxx,psort,phone,pinfo,price,pmoblie,pmessage,pnorms,pimg,pimgbig,pimgmiddle,pimgsmall) 
select 'IDEASKIN贴纸（鲸鱼）','贴纸','无','','1','1','','39','','','','img/test/1148_1_1344924846_8.jpg','','',''
insert into product(pname,pnameid,pselect,pxx,psort,phone,pinfo,price,pmoblie,pmessage,pnorms,pimg,pimgbig,pimgmiddle,pimgsmall) 
select 'SanDisk16GB存储卡（TF Class6）','储存卡','容量','16GB','10','1','Class6高速读取速度，全新震撼的极速传输体验','60','大米手机1','','','img/test/1146_1_1346817900_8.jpg','img/test/1146_1_1.jpg','img/test/1146_1_1346817900_8.jpg','img/test/1146_1_2.jpg'

select * from product

--购物车明细表--
create table CartItem
(
	id int identity(1,1) primary key , --ID
	uniqueprice varchar(20) not null, --商品的价格
	pcount varchar(20) not null, --商品数量
	product int references product(psid),--商品ID--
	
	
)

--购物车表--
create table shopcart
(
	shopid int identity(123001,1) primary key, --ID
	userid	int references loginuser(userid),--用户ID--
	cartitem int references CartItem(id), --关联购物车明细
	shoppingcartStatus int default 0, --购物车状态
	createtime datetime default getdate(), --创建时间--
	
)
go


--订单信息--
create table indent
(
	id int identity(1101,1) primary key, --订单ID
	userid int not null foreign key references loginuser(userid),
	totalprices varchar(30) not null, --订单商品总价
	addressname varchar(20) not null, --姓名
	addressadd varchar(100) not null, --地址
	zipcode varchar(20) not null, --邮编
	telnumber varchar(20) not null, --电话	
	time datetime default getdate(), --创建时间--成交时间
	info int default '1', --状态**（注）--
)
go

select * from indent
--drop table indent
--drop table indentproduct
	--　　注：购物车状态是订单的付款状态，初始值为1，
　　--    1：提交订单
　　--    2：已发货
　　--    3：收到货物，已付款
　　--    4：交易结束-



--订单商品--
create table indentproduct
(
	shopid int identity(1,1) primary key, --ID
	did int not null foreign key references indent(id),
	pid int not null foreign key references product(psid),--商品ID--
	price varchar(30) not null, --购物商品的价格--
	number varchar(20) not null, --购买商品的数量--

)
go

select * from indentproduct

	
	