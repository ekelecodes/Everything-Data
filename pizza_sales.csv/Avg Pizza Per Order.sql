select sum(quantity) / count(distinct order_id) as Average_Pizzas_Per_Order
from pizza_sales_data;
