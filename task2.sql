
#Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.

select id as "id заказа",
if (count_product < 100, "Маленький заказ",
	if (count_product between 100 and 300, "Средний заказ", "Большой заказ"))
 as "Тип заказа"
 from sales;