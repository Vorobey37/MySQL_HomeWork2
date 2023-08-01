/*Создайте таблицу “orders”, заполните ее значениями. 
Покажите “полный” статус заказа, используя оператор CASE*/

use home_work_2;
create table orders (
id int primary key auto_increment,
employee_id varchar(10),
amount double,
order_status varchar(10));

insert into orders (employee_id, amount, order_status)
values ("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED");

select * from orders;

select *,
case
	when order_status = "OPEN"
		then "Order is in open state"
	when order_status = "CLOSED"
		then "Order is closed"
	when order_status = "CANCELLED"
		then "Order is cancelled"
end as "full_order_status"
from orders;