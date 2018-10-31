set Names utf8;

DROP DATABASE if exists vue;

CREATE DATABASE vue CHARSET=utf8;

use vue;


CREATE TABLE vue_imagelist(
    id INT primary key AUTO_INCREMENT,
    img_url varchar(255),
    title varchar(50)
);
INSERT INTO vue_imagelist VALUES
(null,'http://127.0.0.1:3000/img/lunbo1.jpg','图片1'),
(null,'http://127.0.0.1:3000/img/lunbo2.jpg','图片2'),
(null,'http://127.0.0.1:3000/img/lunbo1.jpg','图片3'),
(null,'http://127.0.0.1:3000/img/lunbo2.jpg','图片4');

CREATE TABLE vue_drink(
    id INT primary key AUTO_INCREMENT,
    classify varchar(16),
    kind varchar(16),
    title varchar(32),
    price double(10,2),
    img_url varchar(255),
    sell int
);

INSERT INTO vue_drink values
(null,'茅台','白酒','贵州茅台王子酒',669.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',18),
(null,'茅台','白酒','贵州茅台王子酒',133.79,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',81),
(null,'茅台','白酒','贵州茅台王子酒',1269.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',38),
(null,'茅台','白酒','贵州茅台王子酒',369.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',18),
(null,'茅台','白酒','贵州茅台王子酒',769.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',58),
(null,'茅台','白酒','贵州茅台王子酒',469.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',48),
(null,'茅台','白酒','贵州茅台王子酒',869.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',38),
(null,'茅台','白酒','贵州茅台王子酒',669.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',18),
(null,'茅台','白酒','贵州茅台王子酒',969.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',28),
(null,'茅台','白酒','贵州茅台王子酒',269.99,'http://127.0.0.1:3000/img/guizhoumaotai.jpg',8),
(null,'五粮液','白酒','52°五粮液陈酿',200.00,'http://127.0.0.1:3000/img/wuliangye.jpg',28),
(null,'五粮液','白酒','52°五粮液陈酿',300.00,'http://127.0.0.1:3000/img/wuliangye.jpg',38),
(null,'五粮液','白酒','52°五粮液陈酿',400.00,'http://127.0.0.1:3000/img/wuliangye.jpg',18),
(null,'五粮液','白酒','52°五粮液陈酿',500.00,'http://127.0.0.1:3000/img/wuliangye.jpg',28),
(null,'五粮液','白酒','52°五粮液陈酿',600.00,'http://127.0.0.1:3000/img/wuliangye.jpg',68),
(null,'五粮液','白酒','52°五粮液陈酿',700.00,'http://127.0.0.1:3000/img/wuliangye.jpg',28),
(null,'五粮液','白酒','52°五粮液陈酿',800.00,'http://127.0.0.1:3000/img/wuliangye.jpg',48),
(null,'五粮液','白酒','52°五粮液陈酿',900.00,'http://127.0.0.1:3000/img/wuliangye.jpg',38),
(null,'五粮液','白酒','52°五粮液陈酿',1000.00,'http://127.0.0.1:3000/img/wuliangye.jpg',18),
(null,'五粮液','白酒','52°五粮液陈酿',2100.00,'http://127.0.0.1:3000/img/wuliangye.jpg',28),
(null,'剑南春','白酒','52°剑南春东方红',300.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',68),
(null,'剑南春','白酒','52°剑南春东方红',400.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',28),
(null,'剑南春','白酒','52°剑南春东方红',500.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',68),
(null,'剑南春','白酒','52°剑南春东方红',600.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',48),
(null,'剑南春','白酒','52°剑南春东方红',700.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',8),
(null,'剑南春','白酒','52°剑南春东方红',800.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',18),
(null,'剑南春','白酒','52°剑南春东方红',900.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',28),
(null,'剑南春','白酒','52°剑南春东方红',1000.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',38),
(null,'剑南春','白酒','52°剑南春东方红',1100.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',18),
(null,'郎酒','白酒','红花郎酒',300.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',28),
(null,'郎酒','白酒','红花郎酒',400.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',38),
(null,'郎酒','白酒','红花郎酒',500.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',68),
(null,'郎酒','白酒','红花郎酒',600.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',48),
(null,'郎酒','白酒','红花郎酒',700.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',58),
(null,'郎酒','白酒','红花郎酒',800.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',28),
(null,'郎酒','白酒','红花郎酒',900.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',38),
(null,'郎酒','白酒','红花郎酒',1000.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',28),
(null,'郎酒','白酒','红花郎酒',1100.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',18),
(null,'郎酒','白酒','红花郎酒',1200.00,'http://127.0.0.1:3000/img/jiannanchun.jpg',81),
(null,'今世缘','白酒','今世缘国缘',500.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',83),
(null,'今世缘','白酒','今世缘国缘',600.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',18),
(null,'今世缘','白酒','今世缘国缘',700.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',28),
(null,'今世缘','白酒','今世缘国缘',800.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',58),
(null,'今世缘','白酒','今世缘国缘',900.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',38),
(null,'今世缘','白酒','今世缘国缘',1000.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',81),
(null,'今世缘','白酒','今世缘国缘',1100.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',38),
(null,'今世缘','白酒','今世缘国缘',1200.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',8),
(null,'今世缘','白酒','今世缘国缘',1300.00,'http://127.0.0.1:3000/img/jinshiyuan.jpg',18),
(null,'张裕','红酒','张裕解百纳干红葡萄酒',1300.00,'http://127.0.0.1:3000/img/hongjiu.jpg',18),
(null,'张裕','红酒','张裕解百纳干红葡萄酒',800.00,'http://127.0.0.1:3000/img/hongjiu.jpg',8),
(null,'CASTEL','红酒','法国CASTEL家族牌精制红家族牌干红葡萄酒',1300.00,'http://127.0.0.1:3000/img/hongjiu.jpg',18),
(null,'CASTEL','红酒','法国CASTEL家族牌精制红家族牌干红葡萄酒',800.00,'http://127.0.0.1:3000/img/hongjiu.jpg',8),
(null,'王朝','红酒','法国王朝朗格多克干红葡萄酒',1300.00,'http://127.0.0.1:3000/img/hongjiu.jpg',18),
(null,'王朝','红酒','法国王朝朗格多克干红葡萄酒',800.00,'http://127.0.0.1:3000/img/hongjiu.jpg',8),
(null,'伊莎贝拉','红酒','伊莎贝拉莫纳谷佳美娜高级干红葡萄酒',1300.00,'http://127.0.0.1:3000/img/hongjiu.jpg',18),
(null,'伊莎贝拉','红酒','伊莎贝拉莫纳谷佳美娜高级干红葡萄酒',800.00,'http://127.0.0.1:3000/img/hongjiu.jpg',8),
(null,'费雷兄弟','红酒','费雷兄弟加本内苏维翁红葡萄酒',1300.00,'http://127.0.0.1:3000/img/hongjiu.jpg',18),
(null,'费雷兄弟','红酒','费雷兄弟加本内苏维翁红葡萄酒',800.00,'http://127.0.0.1:3000/img/hongjiu.jpg',8),
(null,'白兰地','洋酒','拿破仑特级VSOP干邑白兰地',1800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',18),
(null,'白兰地','洋酒','拿破仑特级VSOP干邑白兰地',800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',8),
(null,'人头马','洋酒','人头马洋酒',1800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',18),
(null,'人头马','洋酒','人头马洋酒',800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',8),
(null,'百利甜酒','洋酒','百利甜酒',1800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',18),
(null,'百利甜酒','洋酒','百利甜酒',800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',8),
(null,'伏特加','洋酒','伏特加',1800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',18),
(null,'伏特加','洋酒','伏特加',800.00,'http://127.0.0.1:3000/img/yangjiu.jpg',8),
(null,'茶','茶','红茶',1800.00,'http://127.0.0.1:3000/img/cha.jpg',18),
(null,'茶','茶','绿茶',800.00,'http://127.0.0.1:3000/img/cha.jpg',8);