
#Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными

use home_work_2;
create table sales (
id int primary key auto_increment,
order_date DATE,
count_product int);

insert into sales (order_date, count_product)
values (20220101, 156),
(20220102, 180),
(20220103, 21),
(20220104, 124),
(20220105, 341);

select * from sales;